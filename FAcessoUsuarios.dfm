object FrmAcessoUsuarios: TFrmAcessoUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Acessos'
  ClientHeight = 523
  ClientWidth = 840
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
  object cxGrid1: TcxGrid
    Left = 8
    Top = 79
    Width = 409
    Height = 391
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAcessos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1id_acesso: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'id_acesso'
        Width = 46
      end
      object cxGrid1DBTableView1nome_acesso: TcxGridDBColumn
        Caption = 'Nome do Perfil'
        DataBinding.FieldName = 'nome_acesso'
        Width = 213
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 73
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 312
      Top = 12
      Caption = 'Perfis de Acesso'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 423
    Top = 79
    Caption = 'Acessos'
    TabOrder = 2
    Height = 434
    Width = 402
    object cxLabel2: TcxLabel
      Left = 20
      Top = 24
      Caption = 'Nome do Perfil:'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 104
      Top = 23
      DataBinding.DataField = 'nome_acesso'
      DataBinding.DataSource = dsAcessos
      TabOrder = 1
      Width = 257
    end
    object cxGroupBox2: TcxGroupBox
      Left = 20
      Top = 56
      Caption = 'Cadastros'
      TabOrder = 2
      Height = 169
      Width = 177
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 12
        Top = 26
        Caption = 'Cadastro de Clientes'
        DataBinding.DataField = 'cad_cliente'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 0
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 12
        Top = 53
        Caption = 'Cadastrro de Estados'
        DataBinding.DataField = 'cad_estado'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 1
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 12
        Top = 80
        Caption = 'Cadastro de Municipios'
        DataBinding.DataField = 'cad_municipio'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 2
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 12
        Top = 107
        Caption = 'Cadastro de Bairros'
        DataBinding.DataField = 'cad_bairro'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 3
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 12
        Top = 134
        Caption = 'Cadastro de Ve'#237'culos'
        DataBinding.DataField = 'cad_veiculo'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 4
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 20
      Top = 231
      Caption = 'Loca'#231#227'o'
      TabOrder = 4
      Height = 183
      Width = 177
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 10
        Top = 75
        Caption = 'Retorno de Loca'#231#227'o'
        DataBinding.DataField = 'finaliza_locacao'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 2
      end
      object cxDBCheckBox9: TcxDBCheckBox
        Left = 10
        Top = 48
        Caption = 'Devolu'#231#227'o de Loca'#231#227'o'
        DataBinding.DataField = 'cancela_locacao'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 1
      end
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 10
        Top = 21
        Caption = 'Realizar Loca'#231#227'o'
        DataBinding.DataField = 'nova_locacao'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 0
      end
      object cxDBCheckBox13: TcxDBCheckBox
        Left = 10
        Top = 102
        Caption = 'Desconto na Loca'#231#227'o'
        DataBinding.DataField = 'dar_desconto_locacao'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 3
      end
      object cxLabel3: TcxLabel
        Left = 36
        Top = 120
        Caption = 'Valor m'#225'ximo (%)'
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 41
        Top = 139
        DataBinding.DataField = 'prc_desconto_locacao'
        DataBinding.DataSource = dsAcessos
        TabOrder = 4
        Width = 78
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 203
      Top = 56
      Caption = 'Relat'#243'rios'
      TabOrder = 3
      Height = 169
      Width = 158
      object cxDBCheckBox14: TcxDBCheckBox
        Left = 11
        Top = 26
        Caption = 'Loca'#231#245'es'
        DataBinding.DataField = 'rel_locacoes'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 0
      end
      object cxDBCheckBox15: TcxDBCheckBox
        Left = 11
        Top = 53
        Caption = 'Clientes'
        DataBinding.DataField = 'rel_clientes'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 1
      end
      object cxDBCheckBox16: TcxDBCheckBox
        Left = 11
        Top = 80
        Caption = 'Ve'#237'culos'
        DataBinding.DataField = 'rel_veiculos'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 2
      end
      object cxDBCheckBox17: TcxDBCheckBox
        Left = 11
        Top = 107
        Caption = 'Contrato'
        DataBinding.DataField = 'rel_contrato'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 3
      end
      object cxDBCheckBox18: TcxDBCheckBox
        Left = 11
        Top = 134
        Caption = 'Recibo'
        DataBinding.DataField = 'rel_recibo'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 4
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 203
      Top = 231
      Caption = 'Configura'#231#245'es'
      TabOrder = 5
      Height = 183
      Width = 158
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 3
        Top = 18
        Caption = 'Cadastro de Usu'#225'rios'
        DataBinding.DataField = 'cad_usuario'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 0
      end
      object cxDBCheckBox10: TcxDBCheckBox
        Left = 3
        Top = 45
        Caption = 'Cadsatro de Acessos'
        DataBinding.DataField = 'cad_acesso_usuario'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 1
      end
      object cxDBCheckBox11: TcxDBCheckBox
        Left = 3
        Top = 72
        Caption = 'Cadastro da Empresa'
        DataBinding.DataField = 'cad_empresa'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 2
      end
      object cxDBCheckBox12: TcxDBCheckBox
        Left = 3
        Top = 99
        Caption = 'Parametros dos Sistema'
        DataBinding.DataField = 'cad_parametros'
        DataBinding.DataSource = dsAcessos
        Properties.ValueChecked = 'X'
        Properties.ValueUnchecked = 'N'
        TabOrder = 3
      end
    end
  end
  object btnNovo: TcxButton
    Left = 261
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Novo'
    OptionsImage.ImageIndex = 1
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 3
    OnClick = btnNovoClick
  end
  object btnGravar: TcxButton
    Left = 342
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Gravar'
    OptionsImage.ImageIndex = 3
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 4
    OnClick = btnGravarClick
  end
  object qrAcessos: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_usuario_acesso')
    Left = 648
    Top = 32
    object qrAcessosid_acesso: TFDAutoIncField
      FieldName = 'id_acesso'
      Origin = 'id_acesso'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrAcessosnome_acesso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_acesso'
      Origin = 'nome_acesso'
      Size = 50
    end
    object qrAcessoscad_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_usuario'
      Origin = 'cad_usuario'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_veiculo'
      Origin = 'cad_veiculo'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_cliente'
      Origin = 'cad_cliente'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_bairro'
      Origin = 'cad_bairro'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_municipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_municipio'
      Origin = 'cad_municipio'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_estado'
      Origin = 'cad_estado'
      FixedChar = True
      Size = 1
    end
    object qrAcessosnova_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nova_locacao'
      Origin = 'nova_locacao'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscancela_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancela_locacao'
      Origin = 'cancela_locacao'
      FixedChar = True
      Size = 1
    end
    object qrAcessosfinaliza_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'finaliza_locacao'
      Origin = 'finaliza_locacao'
      FixedChar = True
      Size = 1
    end
    object qrAcessosrel_clientes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_clientes'
      Origin = 'rel_clientes'
      FixedChar = True
      Size = 1
    end
    object qrAcessosrel_recibo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_recibo'
      Origin = 'rel_recibo'
      FixedChar = True
      Size = 1
    end
    object qrAcessosrel_contrato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_contrato'
      Origin = 'rel_contrato'
      FixedChar = True
      Size = 1
    end
    object qrAcessosconfig: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'config'
      Origin = 'config'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_empresa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_empresa'
      Origin = 'cad_empresa'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_parametros: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_parametros'
      Origin = 'cad_parametros'
      FixedChar = True
      Size = 1
    end
    object qrAcessoscad_acesso_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_acesso_usuario'
      Origin = 'cad_acesso_usuario'
      FixedChar = True
      Size = 1
    end
    object qrAcessosrel_veiculos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_veiculos'
      Origin = 'rel_veiculos'
      FixedChar = True
      Size = 1
    end
    object qrAcessosrel_locacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_locacoes'
      Origin = 'rel_locacoes'
      FixedChar = True
      Size = 1
    end
    object qrAcessosdar_desconto_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dar_desconto_locacao'
      Origin = 'dar_desconto_locacao'
      FixedChar = True
      Size = 1
    end
    object qrAcessosprc_desconto_locacao: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'prc_desconto_locacao'
      Origin = 'prc_desconto_locacao'
      Precision = 10
      Size = 2
    end
  end
  object dsAcessos: TDataSource
    DataSet = qrAcessos
    Left = 712
    Top = 32
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 472
    Top = 56
  end
end
