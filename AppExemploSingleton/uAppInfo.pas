unit uAppInfo;

interface

type
  TAppInfo = class
  private
    FNome: string;
    FVersao: string;
  public
    constructor Create;
    property Nome: string read FNome write FNome;
    property Versao: string read FVersao write FVersao;
  end;

implementation

uses
  Vcl.Forms;

{ TAppInfo }

constructor TAppInfo.Create;
begin
  inherited Create;
  FNome := 'App Exemplo de Singleton';
  FVersao := '1.0.0';
end;

end.
