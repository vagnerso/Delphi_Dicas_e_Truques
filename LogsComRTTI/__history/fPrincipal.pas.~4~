unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Rtti;

type
  TfrmPrincipal = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    btnGravarLogs: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    procedure btnGravarLogsClick(Sender: TObject);
  private
    { Private declarations }
    procedure GravarLogErro(Form: TForm; Exception: Exception);
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

procedure TfrmPrincipal.btnGravarLogsClick(Sender: TObject);
begin

  try
    StrToInt(edit1.Text);
  except on E: Exception do
    GravarLogErro(Self, E);
  end;

end;

procedure TfrmPrincipal.GravarLogErro(Form: TForm; Exception: Exception);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Field: TRttiField;
  Obj: TObject;
  Log: TStringList;
begin

  Log := TStringList.Create;
  try

    Log.Add('--------------------------------------');
    Log.Add('Erro em: ' + Form.Name);
    Log.Add('Classe: ' + Form.ClassName);
    Log.Add('Data/Hora: ' + DateTimeToStr(Now));
    Log.Add('Mensagem de erro: ' + Exception.Message);
    Log.Add('--------------------------------------');
    Log.Add('--- Valores dos componentes (via RTTI em Fields) ---');

    Contexto := TRttiContext.Create;
    Tipo := Contexto.GetType(Form.ClassType);

    for Field in Tipo.GetFields do
    begin

      if Field.Visibility = mvPublished then
      begin

        Obj := Field.GetValue(Form).AsObject;

        if obj is TEdit then
          Log.Add(field.Name + ' = ' + TEdit(Obj).Text)
        else if obj is TComboBox then
          Log.Add(field.Name + ' = ' + TComboBox(Obj).Text)
        else if obj is TCheckBox then
          Log.Add(field.Name + ' = ' + BoolToStr(TCheckBox(obj).Checked, True));

      end;

    end;

    ShowMessage(log.Text);

  finally
    Log.Free;
  end;

end;

end.
