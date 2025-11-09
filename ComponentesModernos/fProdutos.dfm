object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 582
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Cadastro de Produtos'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 758
  end
  object Panel2: TPanel
    Left = 0
    Top = 545
    Width = 910
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = 14610677
    ParentBackground = False
    TabOrder = 1
  end
  object SearchBox1: TSearchBox
    Left = 0
    Top = 57
    Width = 910
    Height = 29
    Align = alTop
    TabOrder = 2
    TextHint = 'Pesquisar produtos'
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 745
  end
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 86
    Width = 910
    Height = 459
    Align = alClient
    BevelOuter = bvNone
    Color = 14610677
    ParentBackground = False
    TabOrder = 3
    ExplicitHeight = 235
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 393
      Height = 73
      BevelOuter = bvNone
      Color = 14610677
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 43
        Height = 21
        Caption = 'Nome'
      end
      object Edit1: TEdit
        Left = 8
        Top = 33
        Width = 361
        Height = 29
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 393
      Top = 0
      Width = 393
      Height = 73
      BevelOuter = bvNone
      Color = 14610677
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 6
        Width = 39
        Height = 21
        Caption = 'Pre'#231'o'
      end
      object Edit2: TEdit
        Left = 8
        Top = 33
        Width = 361
        Height = 29
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 73
      Width = 257
      Height = 56
      BevelOuter = bvNone
      Color = 14610677
      ParentBackground = False
      TabOrder = 2
      object ToggleSwitch1: TToggleSwitch
        Left = 8
        Top = 6
        Width = 205
        Height = 25
        StateCaptions.CaptionOn = 'Controla estoque'
        StateCaptions.CaptionOff = 'N'#227'o controla estoque'
        SwitchHeight = 25
        TabOrder = 0
        ThumbWidth = 25
      end
    end
    object Panel6: TPanel
      Left = 257
      Top = 73
      Width = 393
      Height = 73
      BevelOuter = bvNone
      Color = 14610677
      ParentBackground = False
      TabOrder = 3
      object Label3: TLabel
        Left = 8
        Top = 6
        Width = 115
        Height = 21
        Caption = 'Data de validade'
      end
      object CalendarPicker1: TCalendarPicker
        Left = 6
        Top = 36
        Width = 307
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -17
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -25
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Selecione a data de validade'
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 146
      Width = 521
      Height = 73
      BevelOuter = bvNone
      Color = 14610677
      ParentBackground = False
      TabOrder = 4
      object Label4: TLabel
        Left = 8
        Top = 6
        Width = 191
        Height = 21
        Caption = 'Data de entrada no estoque'
      end
      object Label5: TLabel
        Left = 219
        Top = 6
        Width = 193
        Height = 21
        Caption = 'Hora de entrada no estoque'
      end
      object DatePicker1: TDatePicker
        Left = 8
        Top = 33
        Width = 169
        Date = 45962.000000000000000000
        DateFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
      end
      object TimePicker1: TTimePicker
        Left = 219
        Top = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 45962.061708379630000000
        TimeFormat = 'hh:nn'
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 219
      Width = 910
      Height = 234
      Align = alCustom
      BorderStyle = bsNone
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
