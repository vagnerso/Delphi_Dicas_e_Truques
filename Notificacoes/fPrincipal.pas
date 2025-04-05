unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.TlHelp32, System.SysUtils, Vcl.StdCtrls, Vcl.Forms,
  Vcl.Controls, System.Classes, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter, rest.Json;

type
  TUSDBRL = class
    private
    FCode: string;
    FCodeIn: string;
    FName: string;
    FHigh: Double;
    FLow: Double;
    FVarBid: Double;
    FPctChange: Double;
    FBid: Double;
    FAsk: Double;
    FTimeStamp: Double;
    FCreate_Date: string;

    public
    property Code: string read FCode write FCode;
    property CodeIn: string read FCodeIn write FCodeIn;
    property Name: string read FName write FName;
    property High: Double read FHigh write FHigh;
    property Low: Double read FLow write FLow;
    property VarBid: Double read FVarBid write FVarBid;
    property PctChange: Double read FPctChange write FPctChange;
    property Bid: Double read FBid write FBid;
    property Ask: Double read FAsk write FAsk;
    property TimeStamp: Double read FTimeStamp write FTimeStamp;
    property Create_Date: string read FCreate_Date write FCreate_Date;

//    "code": "USD",
//    "codein": "BRL",
//    "name": "Dólar Americano/Real Brasileiro",
//    "high": "5.7476",
//    "low": "5.67049",
//    "varBid": "-0.0171",
//    "pctChange": "-0.300082",
//    "bid": "5.6814",
//    "ask": "5.6844",
//    "timestamp": "1743545076",
//    "create_date": "2025-04-01 19:04:36"
  end;


type
  TForm1 = class(TForm)
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Memo1: TMemo;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Winapi.Messages;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
  RESTRequest1.Execute;

  if RESTResponse1.StatusCode = 200 then
  begin
    memo1.Text := RESTResponse1.Content;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  JSONString: string;
  USDBRL: TUSDBRL;
begin

  RESTRequest1.Execute;

  if RESTResponse1.StatusCode = 200 then
  begin
    memo1.Text := RESTResponse1.Content;

    JSONString := '{"code": "USD","codein": "BRL","name": "Dólar Americano/Real Brasileiro","high": "5.7476","low": "5.67049","varBid": "-0.0171","pctChange": "-0.300082","bid": "5.6814","ask": "5.6844","timestamp": "1743545076","create_date": "2025-04-01 19:04:36"}';
  USDBRL := TJson.JsonToObject<TUSDBRL>(JSONString);


  if Assigned(USDBRL) then
  begin

    ShowMessage('Code : ' + USDBRL.Code);
    ShowMessage('CodeIn : ' + USDBRL.CodeIn);
    ShowMessage('Name : ' + USDBRL.Name);
    ShowMessage('High : ' + USDBRL.High.ToString);
    ShowMessage('Low : ' + USDBRL.Low.ToString);
    ShowMessage('VarBid : '  + USDBRL.VarBid.ToString);
    ShowMessage('PctChange : ' + USDBRL.PctChange.ToString);
    ShowMessage('Bid : ' + USDBRL.Bid.ToString);
    ShowMessage('Ask : ' + USDBRL.Ask.ToString);
    ShowMessage('TimeStamp : ' + USDBRL.TimeStamp.ToString);
    ShowMessage('Create_Date : ' + USDBRL.Create_Date);

    USDBRL.Free; // Libere a memória após o uso
  end;

  end;



end;

end.
