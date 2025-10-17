unit uAppFunctions;

interface

type TAppFunctions = class
  private

  public
  class function GetIniPath: string;
end;

implementation

uses
  System.SysUtils, Vcl.Forms, uAppConstants;

{ TAppFunctions }

class function TAppFunctions.GetIniPath: string;
begin
  Result := ExtractFilePath(Application.ExeName) + CONFIG_INI;
end;

end.
