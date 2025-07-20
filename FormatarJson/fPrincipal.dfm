object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 377
  ClientWidth = 501
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Button1: TButton
    Left = 104
    Top = 152
    Width = 289
    Height = 89
    Caption = 'Gerar arquivo JSON'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 352
    Width = 501
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner | Dicas de Programa'#231#227'o'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Exemplo de como gerar arquivo JSON formatado'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
  end
end
