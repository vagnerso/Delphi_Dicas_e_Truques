object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 413
  ClientWidth = 636
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 25
  object Button1: TButton
    Left = 24
    Top = 136
    Width = 273
    Height = 118
    Caption = 'Produtos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 136
    Width = 273
    Height = 118
    Caption = 'Vendas'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Exemplo de uso de Class Helpers'
    Color = 12319873
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitWidth = 634
  end
  object Panel2: TPanel
    Left = 0
    Top = 387
    Width = 636
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner | Dicas de Programa'#231#227'o'
    Color = 12319873
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    StyleName = 'Windows'
    ExplicitTop = 379
    ExplicitWidth = 634
  end
end
