object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 600
  ClientWidth = 1066
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 32
    Width = 145
    Height = 73
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 183
    Top = 24
    Width = 377
    Height = 361
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 566
    Top = 24
    Width = 465
    Height = 529
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 32
    Top = 504
    Width = 209
    Height = 65
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://economia.awesomeapi.com.br'
    Params = <>
    SynchronizedEvents = False
    Left = 40
    Top = 168
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 'last/USD-BRL,EUR-BRL,BTC-BRL'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 32
    Top = 232
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'USDBRL'
    Left = 40
    Top = 328
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 96
    Top = 432
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'code'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'codein'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'high'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'low'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'varBid'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'pctChange'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bid'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ask'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'timestamp'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'create_date'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 192
    Top = 368
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 448
    Top = 464
  end
end
