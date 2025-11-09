unit dExemplo;

interface

uses
  System.SysUtils, System.Classes;

type
  TdtmExemplo = class(TDataModule)
  private
    { Private declarations }
  public
      constructor Create(AOwner: TComponent; const AName: string); reintroduce;
    { Public declarations }

  end;

var
  dtmExemplo: TdtmExemplo;

implementation

uses
  Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

constructor TdtmExemplo.Create(AOwner: TComponent; const AName: string);
begin
  inherited Create(AOwner);
  ShowMessage('DataModule criado com nome: ' + AName);
end;

end.
