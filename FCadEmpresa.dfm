object FrmCadEmpresa: TFrmCadEmpresa
  Left = 0
  Top = 0
  Caption = 'Cadastro da Empresa'
  ClientHeight = 393
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 801
    Height = 73
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 243
      Top = 15
      Caption = 'Cadastro da Empresa'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -32
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 79
    Width = 785
    Height = 258
    TabOrder = 1
    object cxLabel2: TcxLabel
      Left = 16
      Top = 16
      Caption = 'C'#243'digo'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 39
      DataBinding.DataField = 'id_empresa'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 78
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 100
      Top = 39
      DataBinding.DataField = 'razao_social'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 285
    end
    object cxLabel3: TcxLabel
      Left = 100
      Top = 16
      Caption = 'Raz'#227'o Social'
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 400
      Top = 39
      DataBinding.DataField = 'nome_fantasia'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 4
      Width = 369
    end
    object cxLabel4: TcxLabel
      Left = 327
      Top = 66
      Caption = 'Telefone'
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 496
      Top = 156
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 6
      Width = 265
    end
    object cxLabel5: TcxLabel
      Left = 143
      Top = 66
      Caption = 'CNPJ'
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 16
      Top = 156
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 8
      Width = 345
    end
    object cxLabel6: TcxLabel
      Left = 16
      Top = 133
      Caption = 'Endere'#231'o'
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 16
      Top = 89
      DataBinding.DataField = 'ins_est'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 10
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 16
      Top = 66
      Caption = 'Insc. Estadual'
    end
    object cxDBMaskEdit1: TcxDBMaskEdit
      Left = 143
      Top = 89
      DataBinding.DataField = 'cnpj'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '00\.000\.000\\0000\-00;1;_'
      TabOrder = 12
      Width = 121
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      Left = 327
      Top = 89
      DataBinding.DataField = 'telefone1'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '!\(99\)00000-0000;1;_'
      TabOrder = 13
      Width = 121
    end
    object cxDBMaskEdit3: TcxDBMaskEdit
      Left = 454
      Top = 89
      DataBinding.DataField = 'telefone2'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 14
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 454
      Top = 66
      Caption = 'Telefone'
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 362
      Top = 156
      DataBinding.DataField = 'nu_endereco'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 16
      Top = 212
      DataBinding.DataField = 'cep'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 17
      Width = 161
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 183
      Top = 212
      DataBinding.DataField = 'estado'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 18
      Width = 46
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 235
      Top = 212
      DataBinding.DataField = 'municipio'
      DataBinding.DataSource = DM.dsEmpresa
      Properties.CharCase = ecUpperCase
      TabOrder = 19
      Width = 133
    end
    object cxLabel9: TcxLabel
      Left = 367
      Top = 133
      Caption = 'N'#250'mero'
    end
    object cxLabel10: TcxLabel
      Left = 496
      Top = 133
      Caption = 'Bairro'
    end
    object cxLabel11: TcxLabel
      Left = 16
      Top = 189
      Caption = 'CEP'
    end
    object cxLabel12: TcxLabel
      Left = 235
      Top = 189
      Caption = 'Cidade'
    end
    object cxLabel13: TcxLabel
      Left = 183
      Top = 189
      Caption = 'Estado'
    end
    object cxLabel14: TcxLabel
      Left = 400
      Top = 16
      Caption = 'Nome Fantasia'
    end
  end
  object btnSalvar: TcxButton
    Left = 553
    Top = 343
    Width = 117
    Height = 42
    Caption = 'Salvar'
    OptionsImage.ImageIndex = 30
    OptionsImage.Images = FrmPrincipal.imgs32x32
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnCancelar: TcxButton
    Left = 676
    Top = 343
    Width = 117
    Height = 42
    Caption = 'Cancelar'
    OptionsImage.ImageIndex = 31
    OptionsImage.Images = FrmPrincipal.imgs32x32
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object btnEditar: TcxButton
    Left = 430
    Top = 343
    Width = 117
    Height = 42
    Caption = 'Editar'
    OptionsImage.ImageIndex = 33
    OptionsImage.Images = FrmPrincipal.imgs32x32
    TabOrder = 4
    OnClick = btnEditarClick
  end
end
