unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uApiClient;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  Api: TApiClient;
  Response: string;
begin
  Api := TApiClient.Create('https://reqres.in/');
  try
    if Api.Login('eve.holt@reqres.in', 'cityslicka') then
    begin
      ShowMessage('Login realizado com sucesso!');
      Response := Api.Get('api/users/2');
      Memo1.Lines.Text := Response;
    end
    else
      ShowMessage('Falha ao autenticar');
  finally
    Api.Free;
  end;
end;

end.
