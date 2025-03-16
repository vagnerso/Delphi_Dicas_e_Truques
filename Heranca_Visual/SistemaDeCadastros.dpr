program SistemaDeCadastros;

uses
  Vcl.Forms,
  fMenu in 'fMenu.pas' {frmMenu},
  fBase in 'fBase.pas' {frmBase},
  fBasePesquisa in 'fBasePesquisa.pas' {frmBasePesquisa},
  fBaseCadastro in 'fBaseCadastro.pas' {frmBaseCadastro},
  fPesquisaProdutos in 'fPesquisaProdutos.pas' {frmPesquisaProdutos},
  fPesquisaClientes in 'fPesquisaClientes.pas' {frmPesquisaClientes},
  fCadastroProdutos in 'fCadastroProdutos.pas' {frmCadastroProdutos},
  fCadastroClientes in 'fCadastroClientes.pas' {frmCadastroClientes};

{$R *.res}

begin
  Application.Title := 'Sistema de Cadastros';
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
