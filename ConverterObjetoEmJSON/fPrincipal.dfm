object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Converter Objeto em JSON'
  ClientHeight = 614
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 28
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Converter Objeto em JSON'
    Color = 12615808
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
  end
  object Button1: TButton
    Left = 136
    Top = 106
    Width = 481
    Height = 73
    Caption = 'Objeto para JSON'
    TabOrder = 1
    OnClick = Button1Click
  end
  object mmoJson: TMemo
    Left = 0
    Top = 188
    Width = 765
    Height = 426
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8388672
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 224
  end
end
