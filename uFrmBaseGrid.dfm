object frmBaseGrid: TfrmBaseGrid
  Left = 0
  Top = 0
  Caption = 'Grid Base'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 622
    ExplicitHeight = 392
    object Grid: TDBGrid
      Left = 0
      Top = 0
      Width = 628
      Height = 401
      Align = alClient
      DataSource = dsDados
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object pnlButton: TPanel
    Left = 0
    Top = 401
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 392
    ExplicitWidth = 622
    DesignSize = (
      628
      41)
    object btnFechar: TButton
      Left = 514
      Top = 6
      Width = 75
      Height = 25
      Action = acFechar
      Anchors = [akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 508
    end
    object btnEditar: TButton
      Left = 418
      Top = 6
      Width = 75
      Height = 25
      Action = acEditar
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 412
    end
    object btnExcluir: TButton
      Left = 322
      Top = 6
      Width = 75
      Height = 25
      Action = acExcluir
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 316
    end
    object btnQuatro: TButton
      Left = 226
      Top = 6
      Width = 75
      Height = 25
      Action = acIncluir
      Anchors = [akTop, akRight]
      TabOrder = 3
      ExplicitLeft = 220
    end
  end
  object dsDados: TDataSource
    Left = 520
    Top = 32
  end
  object acGeral: TActionList
    Left = 456
    Top = 32
    object acExcluir: TAction
      Caption = 'Excluir'
    end
    object acEditar: TAction
      Caption = 'Editar'
    end
    object acIncluir: TAction
      Caption = 'Incluir'
    end
    object acFechar: TAction
      Caption = 'Fechar'
    end
  end
end
