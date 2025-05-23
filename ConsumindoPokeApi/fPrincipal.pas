unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls, Rest.Json,
  System.JSON,IdSSLOpenSSL, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, IdIOHandler,
  System.Net.HttpClient, System.Net.HttpClientComponent, System.Net.URLClient,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, Vcl.ComCtrls, Vcl.WinXPanels;

type
  TfrmPrincipal = class(TForm)
    pnlRodape: TPanel;
    Label1: TLabel;
    pnlTitulo: TPanel;
    PageControl1: TPageControl;
    tabPesquisa: TTabSheet;
    tabResponse: TTabSheet;
    edtPesquisa: TEdit;
    btnBuscar: TButton;
    Memo1: TMemo;
    pnlPokemonImage: TPanel;
    imgPokemon: TImage;
    pnlPokemonInfo: TPanel;
    lblNome: TLabel;
    lblAltura: TLabel;
    lblPeso: TLabel;
    Label3: TLabel;
    lblBaseExperience: TLabel;
    lblId: TLabel;
    Label2: TLabel;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    NetHTTPClient: TNetHTTPClient;
    procedure btnBuscarClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LimparCampos;
    procedure CarregarImagem(AURL: string);
    { Private declarations }


  public
    { Public declarations }

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
var
  lNomePokemon, lImgUrl: string;
  lJsonObj: TJsonObject;
begin

  Screen.Cursor := crHourGlass;
  lNomePokemon := Trim(edtPesquisa.Text);
  RESTClient.BaseURL := 'https://pokeapi.co/api/v2/pokemon/' + lNomePokemon;
  RESTRequest.Method := rmGET;

  try
    RESTRequest.Execute;

    if RESTResponse.StatusCode = 200 then
    begin

      Memo1.Text := RESTResponse.Content;
      lJsonObj := RESTResponse.JSONValue as TJSONObject;

      lblNome.Caption   := lJsonObj.GetValue<string>('name');
      lblId.Caption     := 'ID: ' + lJsonObj.GetValue<string>('id');
      lblAltura.Caption := 'Altura: ' + lJsonObj.GetValue<string>('height');
      lblPeso.Caption   := 'Peso: ' + lJsonObj.GetValue<string>('weight');
      lblBaseExperience.Caption := 'Experi�ncia Base: ' + lJsonObj.GetValue<string>('base_experience');

      lImgUrl :=
                  lJsonObj
                  .GetValue<TJSONObject>('sprites')
                  .GetValue<string>('front_default');

      if Trim(lImgUrl) <> '' then
      begin
        CarregarImagem(lImgUrl);
      end
      else
      begin
        ShowMessage('Imagem do Pok�mon n�o encontrada!');
      end;

    end
    else
    begin
      ShowMessage('Pok�mon n�o encontrado!');
    end;

  except on E: Exception do
    ShowMessage('Erro ao tentar buscar o Pokemon: ' + E.Message);
  end;

  Screen.Cursor := crDefault;

end;

procedure TfrmPrincipal.CarregarImagem(AURL: string);
var
  lMemoryStream: TMemoryStream;
  lPNGImage: TPngImage;
begin

  lMemoryStream := TMemoryStream.Create;
  try

    NetHTTPClient.Get(AURL, lMemoryStream);
    lMemoryStream.Position := 0;

    lPNGImage := TPngImage.Create;
    try

      lPNGImage.LoadFromStream(lMemoryStream);
      imgPokemon.Picture.Assign(lPNGImage);

    finally
      lPNGImage.Free;
    end;

  finally
    lMemoryStream.Free;
  end;

end;

procedure TfrmPrincipal.edtPesquisaChange(Sender: TObject);
begin

  if Trim(edtPesquisa.Text) = EmptyStr then
  begin
    LimparCampos;
  end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  LimparCampos;
  edtPesquisa.SetFocus;
end;

procedure TfrmPrincipal.LimparCampos;
begin
  imgPokemon.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '/Pokebola.png');
  lblId.Caption := '';
  lblNome.Caption := '';
  lblAltura.Caption := '';
  lblPeso.Caption := '';
  lblBaseExperience.Caption := '';
end;

end.
