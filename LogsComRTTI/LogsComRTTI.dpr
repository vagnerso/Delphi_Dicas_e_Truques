program LogsComRTTI;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Lavender Classico');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
