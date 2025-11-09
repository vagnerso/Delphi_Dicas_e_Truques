program ComponentesModernos;

uses
  Vcl.Forms,
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  fProdutos in 'fProdutos.pas' {frmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.Run;
end.
