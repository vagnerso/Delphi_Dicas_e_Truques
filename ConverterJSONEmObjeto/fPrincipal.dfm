object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Converter JSON em Objeto'
  ClientHeight = 658
  ClientWidth = 705
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Windows'
  TextHeight = 28
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    Caption = 'JSON para Objeto no Delphi: A Maneira Mais Simples!'
    Color = 9594676
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
    Left = 0
    Top = 80
    Width = 705
    Height = 73
    Align = alTop
    Caption = 'Fazer o parser de JSON para Objeto'
    TabOrder = 1
    OnClick = Button1Click
  end
  object mmoJson: TMemo
    Left = 0
    Top = 153
    Width = 705
    Height = 505
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8388672
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
  end
end
