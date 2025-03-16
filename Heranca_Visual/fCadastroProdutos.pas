unit fCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBaseCadastro, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmCadastroProdutos = class(TfrmBaseCadastro)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

{$R *.dfm}

procedure TfrmCadastroProdutos.btnSalvarClick(Sender: TObject);
begin
  ShowMessage('Clicou em salvar produto');
  inherited;

end;

end.
