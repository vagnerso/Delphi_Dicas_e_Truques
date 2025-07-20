unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.JSON, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  lPessoaJSON, lEnderecoJSON, lContatoJSON: TJSONObject;
  lContatosArray: TJSONArray;
  lJSONFormatado: string;
  lArquivoTexto: TStringList;
begin

  lPessoaJSON := TJSONObject.Create;
  try
    lPessoaJSON.AddPair('nome', 'Vagner Oliveira');
    lPessoaJSON.AddPair('idade', TJSONNumber.Create(40));
    lPessoaJSON.AddPair('cadastroAtivo', TJSONBool.Create(True));

    // Endereço da pessoa
    lEnderecoJSON := TJSONObject.Create;
    lEnderecoJSON.AddPair('rua', 'Rua das Palmeiras');
    lEnderecoJSON.AddPair('cidade', 'Camaquã');
    lEnderecoJSON.AddPair('cep', '01234-567');
    lPessoaJSON.AddPair('endereco', lEnderecoJSON);

    // Contatos da pessoa
    lContatosArray := TJSONArray.Create;

    lContatoJSON := TJSONObject.Create;
    lContatoJSON.AddPair('tipo', 'email');
    lContatoJSON.AddPair('valor', 'vagner@email.com');
    lContatosArray.AddElement(lContatoJSON);

    lContatoJSON := TJSONObject.Create;
    lContatoJSON.AddPair('tipo', 'telefone');
    lContatoJSON.AddPair('valor', '+55 51 99999-8888');
    lContatosArray.AddElement(lContatoJSON);

    lPessoaJSON.AddPair('contatos', lContatosArray);

    lJSONFormatado := lPessoaJSON.Format(2);
    ShowMessage(lJSONFormatado);

//    lArquivoTexto := TStringList.Create;
//    try
//      lArquivoTexto.Text := lJSONFormatado;
//      lArquivoTexto.SaveToFile('D:\Temp\arquivo_pessoa.json');
//    finally
//      lArquivoTexto.Free;
//    end;

  finally
    lPessoaJSON.Free;
  end;

end;

end.
