unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Rest.Json;

type TCidade = class
  private
    FCodigo: integer;
    FNome: string;
    FEstado: string;

  public
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Estado: string read FEstado write FEstado;
end;

type TEndereco = class
  private
    FRua: string;
    FBairro: string;
    FCep: string;
    FCidade: TCidade;

  public
    destructor Destroy; override;
    property Rua: string read FRua write FRua;
    property Bairro: string read FBairro write FBairro;
    property Cep: string read FCep write FCep;
    property Cidade: TCidade read FCidade write FCidade;
    constructor Create;

end;

type TPessoa = class
  private
    FNome: string;
    FIdade: integer;
    FCpf: string;
    FLimiteDeCredito: Currency;
    FEndereco: TEndereco;

  public
    destructor Destroy; override;
    property Nome: string read FNome write FNome;
    property Idade: integer read FIdade write FIdade;
    property Cpf: string read FCpf write FCpf;
    property LimiteDeCredito: Currency read FLimiteDeCredito write FLimiteDeCredito;
    property Endereco: TEndereco read FEndereco write FEndereco;
    constructor Create;

end;



type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    mmoJson: TMemo;
    procedure Button2Click(Sender: TObject);
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
  lPessoa: TPessoa;
  lJsonString: string;
begin

  if Trim(mmoJson.Text) = EmptyStr then
  begin
    raise Exception.Create('JSON n�o pode ser vazio');
  end;

  lJsonString := mmoJson.Text;

  lPessoa := TPessoa.Create;
  try
    lPessoa := TJson.JsonToObject<TPessoa>(lJsonString);

    ShowMessage('Nome da pessoa: ' + lPessoa.Nome + sLineBreak+
    'Endere�o: ' + lPessoa.Endereco.Rua + sLineBreak +
    'Cidade: ' + lPessoa.Endereco.Cidade.Nome);

  finally
    lPessoa.Free;
  end;

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin

end;

{ TPessoa }

{ TEndereco }

{ TEndereco }

constructor TEndereco.Create;
begin
  FCidade := TCidade.Create;
end;

destructor TEndereco.Destroy;
begin
  FCidade.Free;
  inherited;
end;

{ TPessoa }

constructor TPessoa.Create;
begin
  FEndereco := TEndereco.Create;
end;

destructor TPessoa.Destroy;
begin
  FEndereco.Free;
  inherited;
end;

end.
