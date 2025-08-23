object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Gerar Logs com RTTI'
  ClientHeight = 575
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 21
  object Label1: TLabel
    Left = 32
    Top = 82
    Width = 43
    Height = 21
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 328
    Top = 82
    Width = 38
    Height = 21
    Caption = 'Idade'
  end
  object edtNome: TEdit
    Left = 32
    Top = 109
    Width = 257
    Height = 29
    TabOrder = 0
  end
  object edtIdade: TEdit
    Left = 328
    Top = 109
    Width = 265
    Height = 29
    TabOrder = 1
  end
  object btnSalvar: TButton
    Left = 184
    Top = 161
    Width = 257
    Height = 81
    Caption = 'Salvar Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Cadastro de Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitWidth = 633
  end
  object Panel2: TPanel
    Left = 0
    Top = 545
    Width = 660
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
    TabOrder = 4
    ExplicitTop = 489
    ExplicitWidth = 633
  end
  object mmoLog: TMemo
    Left = 32
    Top = 264
    Width = 593
    Height = 275
    TabOrder = 5
  end
end
