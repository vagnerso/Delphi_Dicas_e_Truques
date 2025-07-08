unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnAtualizar: TButton;
    btnFechar: TButton;
    Panel5: TPanel;
    edtPesquisar: TSearchBox;
    pnlCadastro: TPanel;
    Panel4: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    conConexao: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    qryClientes: TFDQuery;
    qryClientesCustomerId: TIntegerField;
    qryClientesFirstName: TWideStringField;
    qryClientesLastName: TWideStringField;
    qryClientesCompany: TWideStringField;
    qryClientesAddress: TWideStringField;
    qryClientesCity: TWideStringField;
    qryClientesState: TWideStringField;
    qryClientesCountry: TWideStringField;
    qryClientesPostalCode: TWideStringField;
    qryClientesPhone: TWideStringField;
    qryClientesFax: TWideStringField;
    qryClientesEmail: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dtsClientes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
begin
  pnlCadastro.Visible := True;
  qryClientes.Append;
end;

procedure TfrmPrincipal.btnAtualizarClick(Sender: TObject);
begin
  Atualizar;
end;

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  qryClientes.Cancel;
  pnlCadastro.Visible := False;
end;

procedure TfrmPrincipal.btnEditarClick(Sender: TObject);
begin
  pnlCadastro.Visible := True;
  qryClientes.Edit;
end;

procedure TfrmPrincipal.btnExcluirClick(Sender: TObject);
begin
  qryClientes.Delete;
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
begin
  qryClientes.post;
  pnlCadastro.Visible := False;
end;

procedure TfrmPrincipal.edtPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  qryClientes.Locate('FirstName',
                     edtPesquisar.Text,
                     [TLocateOption.loCaseInsensitive, TLocateOption.loPartialKey]);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  pnlCadastro.Visible := False;
  Atualizar;
  edtPesquisar.SetFocus;
end;

procedure TfrmPrincipal.Atualizar;
begin
  qryClientes.Close;
  qryClientes.Open;
end;

end.
