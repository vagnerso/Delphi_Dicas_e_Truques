object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Gerar Logs com RTTI'
  ClientHeight = 527
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object Label1: TLabel
    Left = 32
    Top = 82
    Width = 49
    Height = 21
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 328
    Top = 82
    Width = 49
    Height = 21
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 32
    Top = 161
    Width = 133
    Height = 21
    Caption = 'Escolha uma op'#231#227'o'
  end
  object Label4: TLabel
    Left = 32
    Top = 226
    Width = 49
    Height = 21
    Caption = 'Valor 1'
  end
  object Label5: TLabel
    Left = 328
    Top = 226
    Width = 49
    Height = 21
    Caption = 'Valor 2'
  end
  object Label6: TLabel
    Left = 32
    Top = 298
    Width = 49
    Height = 21
    Caption = 'Valor 1'
  end
  object Label7: TLabel
    Left = 328
    Top = 298
    Width = 49
    Height = 21
    Caption = 'Valor 2'
  end
  object Edit1: TEdit
    Left = 32
    Top = 109
    Width = 257
    Height = 29
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 328
    Top = 109
    Width = 265
    Height = 29
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 188
    Width = 257
    Height = 29
    TabOrder = 2
    Items.Strings = (
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3'
      '')
  end
  object CheckBox1: TCheckBox
    Left = 328
    Top = 194
    Width = 97
    Height = 17
    Caption = 'Ativar'
    TabOrder = 3
  end
  object btnGravarLogs: TButton
    Left = 136
    Top = 376
    Width = 337
    Height = 81
    Caption = 'Gerar Logs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnGravarLogsClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Gerar Logs com RTTI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    ExplicitWidth = 706
  end
  object Panel2: TPanel
    Left = 0
    Top = 497
    Width = 635
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner | Dicas de Programa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    ExplicitTop = 464
    ExplicitWidth = 706
  end
  object Edit3: TEdit
    Left = 32
    Top = 253
    Width = 257
    Height = 29
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 328
    Top = 253
    Width = 265
    Height = 29
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 32
    Top = 325
    Width = 257
    Height = 29
    TabOrder = 9
  end
  object Edit6: TEdit
    Left = 328
    Top = 325
    Width = 265
    Height = 29
    TabOrder = 10
  end
end
