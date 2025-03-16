unit fBasePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBase, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmBasePesquisa = class(TfrmBase)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btnAdicionar: TButton;
    btnExcluir: TButton;
    btnFechar: TButton;
    SearchBox1: TSearchBox;
    Label1: TLabel;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBasePesquisa: TfrmBasePesquisa;

implementation

{$R *.dfm}

procedure TfrmBasePesquisa.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
