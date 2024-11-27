inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro Clientes'
  ClientHeight = 442
  ClientWidth = 628
  Position = poMainFormCenter
  TextHeight = 15
  inherited pnlButton: TPanel
    Top = 401
    Width = 628
    ExplicitTop = 407
    ExplicitWidth = 628
  end
  inherited pnlCentral: TPanel
    Width = 628
    Height = 401
    ExplicitTop = 0
    object lblNome: TLabel
      Left = 32
      Top = 96
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object lblCPF_CNPJ: TLabel
      Left = 32
      Top = 161
      Width = 21
      Height = 15
      Caption = 'CPF'
    end
    object lblEndereco: TLabel
      Left = 40
      Top = 219
      Width = 49
      Height = 15
      Caption = 'Endereco'
    end
    object lblBairro: TLabel
      Left = 32
      Top = 269
      Width = 31
      Height = 15
      Caption = 'Bairro'
    end
    object lblCidade: TLabel
      Left = 32
      Top = 328
      Width = 37
      Height = 15
      Caption = 'Cidade'
    end
    object lblNumero: TLabel
      Left = 456
      Top = 216
      Width = 44
      Height = 15
      Caption = 'Numero'
    end
    object lblUF: TLabel
      Left = 456
      Top = 328
      Width = 14
      Height = 15
      Caption = 'UF'
    end
    object edtNome: TEdit
      Left = 32
      Top = 117
      Width = 545
      Height = 23
      TabOrder = 0
    end
    object edtCPF_CNPJ: TEdit
      Left = 32
      Top = 182
      Width = 161
      Height = 23
      TabOrder = 1
    end
    object edtEndereco: TEdit
      Left = 32
      Top = 240
      Width = 393
      Height = 23
      TabOrder = 2
    end
    object edtBairro: TEdit
      Left = 32
      Top = 299
      Width = 545
      Height = 23
      TabOrder = 3
    end
    object edtCidade: TEdit
      Left = 32
      Top = 352
      Width = 393
      Height = 23
      TabOrder = 4
    end
    object edtNumero: TEdit
      Left = 456
      Top = 240
      Width = 121
      Height = 23
      TabOrder = 5
    end
    object edtUF: TEdit
      Left = 456
      Top = 349
      Width = 121
      Height = 23
      TabOrder = 6
    end
    object rdgTipoPessoa: TRadioGroup
      Left = 32
      Top = 38
      Width = 185
      Height = 35
      Columns = 2
      Items.Strings = (
        'Fisica'
        'Juridica')
      ShowFrame = False
      TabOrder = 7
    end
  end
  inherited acGeral: TActionList
    Left = 592
    Top = 8
    inherited acOk: TAction
      OnExecute = acOkExecute
    end
  end
end
