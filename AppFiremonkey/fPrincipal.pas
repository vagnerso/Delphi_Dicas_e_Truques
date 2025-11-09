unit fPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.MagnifierGlass, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.DateTimeCtrls, FMX.SpinBox, FMX.ComboTrackBar, FMX.ComboEdit, FMX.Edit,
  FMX.EditBox, FMX.NumberBox, FMX.Calendar;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Expander1: TExpander;
    Button1: TButton;
    CalloutPanel1: TCalloutPanel;
    Label1: TLabel;
    Switch1: TSwitch;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    CheckBox1: TCheckBox;
    TimeEdit1: TTimeEdit;
    CornerButton1: TCornerButton;
    Calendar1: TCalendar;
    NumberBox1: TNumberBox;
    ComboEdit1: TComboEdit;
    ComboTrackBar1: TComboTrackBar;
    SpinBox1: TSpinBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
