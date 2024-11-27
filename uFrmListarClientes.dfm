inherited FrmListarClientes: TFrmListarClientes
  Caption = 'FrmListarClientes'
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  inherited pnlCentral: TPanel
    inherited Grid: TDBGrid
      OnCellClick = GridCellClick
    end
  end
  inherited pnlButton: TPanel
    ExplicitTop = 401
    ExplicitWidth = 628
    inherited btnFechar: TButton
      Left = 508
      ExplicitLeft = 502
    end
    inherited btnEditar: TButton
      Left = 412
      ExplicitLeft = 406
    end
    inherited btnExcluir: TButton
      Left = 316
      ExplicitLeft = 310
    end
    inherited btnQuatro: TButton
      Left = -2
      ExplicitLeft = -8
    end
  end
  inherited acGeral: TActionList
    Left = 448
    inherited acEditar: TAction
      OnExecute = acEditarExecute
    end
    inherited acIncluir: TAction
      OnExecute = acIncluirExecute
    end
  end
end
