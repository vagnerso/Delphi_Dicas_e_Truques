object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 
    'Explorando o ShellExecute no Delphi: Abra Sites e Programas Faci' +
    'lmente!'
  ClientHeight = 394
  ClientWidth = 794
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
    Width = 794
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    Caption = 
      'Explorando o ShellExecute no Delphi: Abra Sites e Programas Faci' +
      'lmente!'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 788
  end
  object Panel2: TPanel
    Left = 0
    Top = 64
    Width = 794
    Height = 306
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleName = 'Windows'
    ExplicitWidth = 788
    ExplicitHeight = 297
    object pnlAbrirPrograma: TPanel
      Left = 24
      Top = 32
      Width = 360
      Height = 65
      Cursor = crHandPoint
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Abrir Programa'
      Color = 16711808
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      StyleName = 'Windows'
      OnClick = pnlAbrirProgramaClick
    end
    object pnlAbrirSite: TPanel
      Left = 24
      Top = 120
      Width = 360
      Height = 65
      Cursor = crHandPoint
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Abrir Site'
      Color = 16711808
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      StyleName = 'Windows'
      OnClick = pnlAbrirSiteClick
    end
    object pnlAbrirProgramaComParametros: TPanel
      Left = 24
      Top = 208
      Width = 360
      Height = 65
      Cursor = crHandPoint
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Abrir Programa Com Par'#226'metros'
      Color = 16711808
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      StyleName = 'Windows'
      OnClick = pnlAbrirProgramaComParametrosClick
    end
    object pnlAbrirArquivo: TPanel
      Left = 408
      Top = 32
      Width = 360
      Height = 65
      Cursor = crHandPoint
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Abrir Arquivo'
      Color = 16711808
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      StyleName = 'Windows'
      OnClick = pnlAbrirArquivoClick
    end
    object pnlAbrirPasta: TPanel
      Left = 408
      Top = 120
      Width = 360
      Height = 65
      Cursor = crHandPoint
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Abrir Pasta'
      Color = 16711808
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      StyleName = 'Windows'
      OnClick = pnlAbrirPastaClick
    end
    object pnlTratarErroAoAbrirArquivo: TPanel
      Left = 408
      Top = 208
      Width = 360
      Height = 65
      Cursor = crHandPoint
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Tratar Erro ao Tentar Abrir Arquivo'
      Color = 16711808
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      StyleName = 'Windows'
      OnClick = pnlTratarErroAoAbrirArquivoClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 370
    Width = 794
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Vagner Oliveira | Dicas de Programa'#231#227'o'
    Color = 14276567
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    ExplicitTop = 361
    ExplicitWidth = 788
  end
end
