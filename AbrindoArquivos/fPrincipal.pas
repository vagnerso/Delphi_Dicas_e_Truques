unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, ShellApi;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlAbrirPrograma: TPanel;
    pnlAbrirSite: TPanel;
    pnlAbrirProgramaComParametros: TPanel;
    pnlAbrirArquivo: TPanel;
    pnlAbrirPasta: TPanel;
    pnlTratarErroAoAbrirArquivo: TPanel;
    procedure pnlAbrirProgramaClick(Sender: TObject);
    procedure pnlAbrirArquivoClick(Sender: TObject);
    procedure pnlAbrirSiteClick(Sender: TObject);
    procedure pnlAbrirPastaClick(Sender: TObject);
    procedure pnlAbrirProgramaComParametrosClick(Sender: TObject);
    procedure pnlTratarErroAoAbrirArquivoClick(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.pnlAbrirArquivoClick(Sender: TObject);
begin

  ShellExecute(Handle,
               'open',
               'C:\temp\linguagem_programacao.pdf',
               nil,
               nil,
               SW_SHOWNORMAL);

end;

procedure TfrmPrincipal.pnlAbrirPastaClick(Sender: TObject);
begin

  ShellExecute(Handle,
               'open',
               'c:\temp',
               nil,
               nil,
               SW_SHOWNORMAL);

end;

procedure TfrmPrincipal.pnlAbrirProgramaClick(Sender: TObject);
begin

  ShellExecute(Handle,
              'open',
              'calc.exe',
              nil,
              nil,
              SW_SHOWNORMAL);

end;

procedure TfrmPrincipal.pnlAbrirProgramaComParametrosClick(Sender: TObject);
begin

  ShellExecute(
              Handle,
              'open',
              'C:\Program Files\Google\Chrome\Application\chrome.exe',
              'C:\temp\linguagem_programacao.pdf',
              nil,
              SW_SHOWNORMAL);

end;

procedure TfrmPrincipal.pnlAbrirSiteClick(Sender: TObject);
begin

  ShellExecute(Handle,
               'open',
               'www.google.com.br',
               nil,
               nil,
               SW_SHOWMAXIMIZED);

end;

procedure TfrmPrincipal.pnlTratarErroAoAbrirArquivoClick(Sender: TObject);
var
  lRetorno: HINST;
begin

  lRetorno := ShellExecute(Handle,
                           'open',
                           'c:\temp\linguagem_programacao.pdf',
                           nil,
                           nil,
                           SW_SHOWNORMAL);

  if lRetorno <= 32 then
  begin
    ShowMessage('Erro ao tentar executar o comando!');
  end;

end;

end.
