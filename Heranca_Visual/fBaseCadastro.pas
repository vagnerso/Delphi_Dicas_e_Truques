unit fBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBase, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmBaseCadastro = class(TfrmBase)
    Panel1: TPanel;
    btnCancelar: TButton;
    btnSalvar: TButton;
    frmBaseCadastro: TPanel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseCadastro: TfrmBaseCadastro;

implementation

{$R *.dfm}

procedure TfrmBaseCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmBaseCadastro.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Cadastro efetuado com sucesso!');
  Close;

end;

end.
