unit uApiClient;

interface

uses
  System.SysUtils, System.Classes, REST.Client, REST.Types, System.JSON,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TApiClient = class
  private
    FClient: TRESTClient;
    FRequest: TRESTRequest;
    FResponse: TRESTResponse;
    FBaseURL: string;
    FToken: string;
  public
    constructor Create(const ABaseURL: string);
    destructor Destroy; override;

    function Login(const Email, Password: string): Boolean;
    function Get(const AEndpoint: string): string;

    property Token: string read FToken write FToken;
  end;

implementation

{ TApiClient }

constructor TApiClient.Create(const ABaseURL: string);
begin
  FBaseURL := ABaseURL;

  FClient := TRESTClient.Create(ABaseURL);
  FRequest := TRESTRequest.Create(nil);
  FResponse := TRESTResponse.Create(nil);

  FRequest.Client := FClient;
  FRequest.Response := FResponse;
end;

destructor TApiClient.Destroy;
begin
  FResponse.Free;
  FRequest.Free;
  FClient.Free;
  inherited;
end;

function TApiClient.Login(const Email, Password: string): Boolean;
var
  JSONObject: TJSONObject;
begin
  FRequest.Method := rmPOST;
  FRequest.Resource := 'api/login';
  FRequest.Params.Clear;

  JSONObject := TJSONObject.Create;
  try
    JSONObject.AddPair('email', Email);
    JSONObject.AddPair('password', Password);
    FRequest.AddBody(JSONObject.ToJSON, TRESTContentType.ctAPPLICATION_JSON);
    FRequest.Execute;

    if FResponse.StatusCode = 200 then
    begin
      FToken := TJSONObject.ParseJSONValue(FResponse.Content).GetValue<string>('token');
      Result := True;
    end
    else
      Result := False;
  finally
    JSONObject.Free;
  end;
end;

function TApiClient.Get(const AEndpoint: string): string;
begin
  FRequest.Method := rmGET;
  FRequest.Resource := AEndpoint;
  FRequest.Params.Clear;

  if FToken <> '' then
    FRequest.Params.AddHeader('Authorization', 'Bearer ' + FToken);

  FRequest.Execute;
  Result := FResponse.Content;
end;

end.

