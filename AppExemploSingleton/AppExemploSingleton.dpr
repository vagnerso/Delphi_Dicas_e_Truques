program AppExemploSingleton;

uses
  Vcl.Forms,
  fConfiguracoes in 'fConfiguracoes.pas' {frmConfiguracoes},
  Vcl.Themes,
  Vcl.Styles,
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  uAppInfo in 'uAppInfo.pas',
  uAppConstants in 'uAppConstants.pas',
  uAppFunctions in 'uAppFunctions.pas',
  uConfiguracoesGlobais in 'uConfiguracoesGlobais.pas',
  dExemplo in 'dExemplo.pas' {dtmExemplo: TDataModule};

{$R *.res}

begin

  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Dusk');

  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmExemplo, dtmExemplo);
  Application.Run;
end.
