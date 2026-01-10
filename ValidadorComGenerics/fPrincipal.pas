unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;


type
  TCofreGenerico<T> = class
    private

      FSegredo: T;

    public
      constructor Create(ASegredo: T);
      function RevelarSegredo: T;
  end;

type
  TfrmPrincipal = class(TForm)
    btnGuardarNumero: TButton;
    btnGuardarPalavra: TButton;
    MemoLog: TMemo;
    pnlTitulo: TPanel;
    edtNumero: TEdit;
    Label1: TLabel;
    edtPalavra: TEdit;
    Label2: TLabel;
    procedure btnGuardarNumeroClick(Sender: TObject);
    procedure btnGuardarPalavraClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGuardarNumeroClick(Sender: TObject);
var
  lCofreDeNumero: TCofreGenerico<integer>;
begin

  lCofreDeNumero := TCofreGenerico<integer>.Create(StrToIntDef(edtNumero.Text, 0));
  try

    MemoLog.Lines.Add('Cofre de número: ' +
      lCofreDeNumero.RevelarSegredo.ToString);

    edtNumero.Clear;
    edtNumero.SetFocus;

  finally
    lCofreDeNumero.Free;
  end;

end;

{ TCofreGenerico<T> }

constructor TCofreGenerico<T>.Create(ASegredo: T);
begin
  FSegredo := ASegredo;
end;

function TCofreGenerico<T>.RevelarSegredo: T;
begin
  Result := FSegredo;
end;

procedure TfrmPrincipal.btnGuardarPalavraClick(Sender: TObject);
var
  lCofreDePalavras: TCofreGenerico<string>;
begin

  lCofreDePalavras := TCofreGenerico<string>.Create(edtPalavra.Text);
  try

    MemoLog.Lines.Add('Cofre de palavra: ' +
      lCofreDePalavras.RevelarSegredo);

    edtPalavra.Clear;
    edtPalavra.SetFocus;

  finally
    lCofreDePalavras.Free;
  end;

end;

end.
