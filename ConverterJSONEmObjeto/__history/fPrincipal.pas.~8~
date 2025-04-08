unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Rest.Json;

type TEndereco = class
  private
    FRua: string;
    FBairro: string;
    FCidade: string;
    FCep: integer;

  public
    property Rua: string read FRua write FRua;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
    property Cep: integer read FCep write FCep;
end;


type TPessoa = class
  private
    FNome: string;
    FLimiteDeCredito: Currency;
    FCpf: string;
    FEndereco: TEndereco;
    FEmail: string;

  public
    destructor Destroy; override;
    property Nome: string read FNome write FNome;
    property LimiteDeCredito: Currency read FLimiteDeCredito write FLimiteDeCredito;
    property Cpf: string read FCpf write FCpf;
    property Endereco: TEndereco read FEndereco write FEndereco;
    property Email: string read FEmail write FEmail;

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

  lPessoa := TPessoa.Create;
  try

    lPessoa.Nome := 'Vagner Oliveira';
    lPessoa.LimiteDeCredito := 50.99;
    lPessoa.Cpf := '12121841181';
    lPessoa.Email := 'vagner@email.com';
    lPessoa.Endereco.Rua := 'Avenida dos Limoeiros';
    lPessoa.Endereco.Bairro := 'Centro';
    lPessoa.Endereco.Cidade := 'Porto Alegre';
    lPessoa.Endereco.Cep := 99999100;

    lJsonString := TJSON.ObjectToJsonString(lPessoa);
    mmoJson.Text := lJsonString;

  finally
    lPessoa.Free;
  end;

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin

end;

{ TPessoa }

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
