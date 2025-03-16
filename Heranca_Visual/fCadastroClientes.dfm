inherited frmCadastroClientes: TfrmCadastroClientes
  Caption = 'frmCadastroClientes'
  ExplicitLeft = 2
  ExplicitTop = 2
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = 'Cadastro de Clientes'
    ExplicitWidth = 713
  end
  inherited Panel1: TPanel
    ExplicitLeft = 0
    ExplicitTop = 405
    ExplicitWidth = 713
    inherited btnCancelar: TButton
      ExplicitLeft = 413
    end
    inherited btnSalvar: TButton
      ExplicitLeft = 563
      ExplicitTop = 0
    end
  end
  inherited Panel3: TPanel
    ExplicitLeft = 0
    ExplicitTop = 461
    ExplicitWidth = 713
  end
  inherited frmBaseCadastro: TPanel
    ExplicitWidth = 713
    ExplicitHeight = 332
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 47
      Height = 23
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 16
      Top = 104
      Width = 71
      Height = 23
      Caption = 'Endere'#231'o'
    end
    object Edit1: TEdit
      Left = 16
      Top = 56
      Width = 401
      Height = 31
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 16
      Top = 136
      Width = 401
      Height = 31
      TabOrder = 1
    end
  end
end
