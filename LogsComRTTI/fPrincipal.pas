unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Rtti;

type
  TPessoa = class
  private
    FNome: string;
    FIdade: Integer;
    FSaldo: Currency;
    FEndereco: String;
  public
    property Nome: string read FNome write FNome;
    property Idade: Integer read FIdade write FIdade;
    property Saldo: Currency read FSaldo write FSaldo;
    property Endereco: String read FEndereco write FEndereco;
  end;

type
  TfrmPrincipal = class(TForm)
    edtNome: TEdit;
    edtIdade: TEdit;
    btnSalvar: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    mmoLog: TMemo;
    procedure btnSalvarClick(Sender: TObject);

  private
    { Private declarations }
    procedure GravarLogErro(obj:TObject; msgErro: string);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  System.TypInfo;

{$R *.dfm}

{ TfrmPrincipal }


procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
var
  lPessoa: TPessoa;
begin

  lPessoa := TPessoa.Create;
  try

    try

      lPessoa.Nome := edtNome.Text;
      lPessoa.Idade := StrToInt(edtIdade.Text);
      lPessoa.Saldo := 15;
      lPessoa.Endereco := 'Rua das Flores, 1000';

      raise Exception.Create('Um erro aleatório!');

    except on E: Exception do
      GravarLogErro(lPessoa, e.Message);
    end;

  finally
    lPessoa.Free;
  end;

end;

procedure TfrmPrincipal.GravarLogErro(obj: TObject; msgErro: string);
var
  lContexto: TRttiContext;
  lTipo: TRttiType;
  lProperty: TRttiProperty;
  lLog: TStringList;
begin

  lLog := TStringList.Create;
  try

    lLog.Add('Mensagem de erro: ' + msgErro);
    lLog.Add('Classe: ' + obj.ClassName);
    lLog.Add('Data e Hora do erro: ' + DateTimeToStr(Now));
    lLog.Add('--- Propriedades e valores do objeto ---');

    lTipo := lContexto.GetType(obj.ClassType);

    for lProperty in lTipo.GetProperties do
    begin

      lLog.Add(lProperty.Name + ' = ' + lProperty.GetValue(obj).ToString);

    end;

    mmoLog.Text := lLog.Text;

  finally
    lLog.Free;
  end;

end;

{ TPessoa }

end.
