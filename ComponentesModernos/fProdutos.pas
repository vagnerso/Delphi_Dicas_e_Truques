unit fProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.WinXCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCalendars, Vcl.WinXPickers;

type
  TfrmProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SearchBox1: TSearchBox;
    FlowPanel1: TFlowPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Panel5: TPanel;
    ToggleSwitch1: TToggleSwitch;
    Panel6: TPanel;
    Label3: TLabel;
    CalendarPicker1: TCalendarPicker;
    Panel7: TPanel;
    Label4: TLabel;
    DatePicker1: TDatePicker;
    TimePicker1: TTimePicker;
    Label5: TLabel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

end.
