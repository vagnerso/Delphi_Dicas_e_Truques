inherited frmBasePesquisa: TfrmBasePesquisa
  Caption = 'frmBasePesquisa'
  ClientHeight = 542
  ClientWidth = 873
  ExplicitWidth = 885
  ExplicitHeight = 580
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Width = 873
    Caption = 'Formul'#225'rio Base de Pesquisa'
    ExplicitTop = -6
    ExplicitWidth = 873
  end
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 873
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleName = 'Windows'
    object btnAdicionar: TButton
      Left = 0
      Top = 0
      Width = 150
      Height = 56
      Align = alLeft
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 80
    end
    object btnExcluir: TButton
      Left = 150
      Top = 0
      Width = 150
      Height = 56
      Align = alLeft
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitHeight = 80
    end
    object btnFechar: TButton
      Left = 300
      Top = 0
      Width = 150
      Height = 56
      Align = alLeft
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnFecharClick
      ExplicitLeft = 306
      ExplicitTop = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 873
    Height = 88
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 71
      Height = 23
      Caption = 'Pesquisar'
    end
    object SearchBox1: TSearchBox
      Left = 8
      Top = 41
      Width = 442
      Height = 31
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 217
    Width = 873
    Height = 303
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel3: TPanel
    Left = 0
    Top = 520
    Width = 873
    Height = 22
    Align = alBottom
    BevelOuter = bvNone
    Color = 3947771
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    StyleName = 'Windows'
  end
end
