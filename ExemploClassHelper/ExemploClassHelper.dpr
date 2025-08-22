program ExemploClassHelper;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  fProdutos in 'fProdutos.pas' {frmProdutos},
  fVendas in 'fVendas.pas' {frmVendas},
  uFormHelper in 'class_helpers\uFormHelper.pas';

{$R *.res}

begin
  Application.Title := 'App exemplo de Class Helper';
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.Run;
end.
