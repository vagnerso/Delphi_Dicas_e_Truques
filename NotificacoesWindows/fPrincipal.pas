unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Notification;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnNotificacoes: TButton;
    Panel2: TPanel;
    edtMensagem: TEdit;
    Label1: TLabel;
    NotificationCenter1: TNotificationCenter;
    procedure btnNotificacoesClick(Sender: TObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject;
      ANotification: TNotification);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnNotificacoesClick(Sender: TObject);
var
  lNotification: TNotification;
begin

  lNotification := NotificationCenter1.CreateNotification;
  try

    lNotification.Name := 'notification001';
    lNotification.Title := 'Chegou mais um pedido';
    lNotification.AlertBody := edtMensagem.Text;
    lNotification.EnableSound := True;
    NotificationCenter1.PresentNotification(lNotification);

  finally
    lNotification.Free;
  end;

end;

procedure TfrmPrincipal.NotificationCenter1ReceiveLocalNotification(
  Sender: TObject; ANotification: TNotification);
begin
  ShowMessage('O usuário clicou na notificação: ' + ANotification.AlertBody);
end;

end.
