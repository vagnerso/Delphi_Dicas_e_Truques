unit fMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmMenu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses
  fPesquisaProdutos, fCadastroClientes, fCadastroProdutos, fPesquisaClientes;

{$R *.dfm}

procedure TfrmMenu.Panel2Click(Sender: TObject);
var
  lFormulario: TFrmPesquisaProdutos;
begin
  lFormulario := TfrmPesquisaProdutos.Create(nil);
  try
    lFormulario.ShowModal;
  finally
    lFormulario.Free;
  end;
end;

procedure TfrmMenu.Panel3Click(Sender: TObject);
var
  lFormulario: TFrmPesquisaClientes;
begin
  lFormulario := TfrmPesquisaClientes.Create(nil);
  try
    lFormulario.ShowModal;
  finally
    lFormulario.Free;
  end;

end;

procedure TfrmMenu.Panel4Click(Sender: TObject);
var
  lFormulario: TFrmCadastroProdutos;
begin
  lFormulario := TfrmCadastroProdutos.Create(nil);
  try
    lFormulario.ShowModal;
  finally
    lFormulario.Free;
  end;

end;

procedure TfrmMenu.Panel5Click(Sender: TObject);
var
  lFormulario: TFrmCadastroClientes;
begin
  lFormulario := TFrmCadastroClientes.Create(nil);
  try
    lFormulario.ShowModal;
  finally
    lFormulario.Free;
  end;

end;

end.
