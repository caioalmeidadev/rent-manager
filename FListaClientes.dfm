object FrmListaClientes: TFrmListaClientes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lista de Clientes'
  ClientHeight = 521
  ClientWidth = 962
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
    Left = 0
    Top = 113
    Width = 962
    Height = 408
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 221
    ExplicitWidth = 818
    ExplicitHeight = 310
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      OnKeyPress = cxGrid1DBTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsClientes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem registros a serem exibidos'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'id_cliente'
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Raz'#227'o Social / Nome'
        DataBinding.FieldName = 'nome_razao'
        Width = 271
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Nome Fantasia / Apelido'
        DataBinding.FieldName = 'apelido_fantasia'
        Width = 333
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'CNPJ/ CPF'
        DataBinding.FieldName = 'cpf_cnpj'
        Width = 119
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 113
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Lista de Clientes'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 481
      AnchorY = 16
    end
    object Panel2: TPanel
      Left = 1
      Top = 30
      Width = 960
      Height = 82
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 59
      object cxLabel2: TcxLabel
        Left = 16
        Top = 6
        Caption = 'Tipo de Busca'
      end
      object cxLabel3: TcxLabel
        Left = 184
        Top = 6
        Caption = 'Tipo de Busca'
      end
      object cxComboBox1: TcxComboBox
        Left = 16
        Top = 29
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'CPF'
          'CODIGO'
          'NOME')
        TabOrder = 2
        Width = 121
      end
      object cxTextEdit1: TcxTextEdit
        Left = 184
        Top = 29
        TabOrder = 3
        Text = 'cxTextEdit1'
        Width = 593
      end
      object cxButton1: TcxButton
        Left = 790
        Top = 27
        Width = 75
        Height = 25
        Caption = 'cxButton1'
        TabOrder = 4
      end
    end
  end
  object qrClientes: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_clientes where fl_status = '#39'A'#39)
    Left = 96
    Top = 136
    object qrClientesid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrClientesnome_razao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_razao'
      Origin = 'nome_razao'
      Size = 120
    end
    object qrClientesapelido_fantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'apelido_fantasia'
      Origin = 'apelido_fantasia'
      Size = 120
    end
    object qrClientestelefone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone1'
      Origin = 'telefone1'
      Size = 14
    end
    object qrClientestelefone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 14
    end
    object qrClientescpf_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 14
    end
    object qrClientesfl_tipo_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_tipo_pessoa'
      Origin = 'fl_tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object qrClientesrg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      Size = 12
    end
    object qrClientesrg_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_uf'
      Origin = 'rg_uf'
      Size = 2
    end
    object qrClientesrg_orgao_emisor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_orgao_emisor'
      Origin = 'rg_orgao_emisor'
      Size = 45
    end
    object qrClientescnh: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnh'
      Origin = 'cnh'
      Size = 45
    end
    object qrClientesref_nome_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_nome_1'
      Origin = 'ref_nome_1'
      Size = 120
    end
    object qrClientesref_contato_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_contato_1'
      Origin = 'ref_contato_1'
      Size = 14
    end
    object qrClientesref_nome_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_nome_2'
      Origin = 'ref_nome_2'
      Size = 120
    end
    object qrClientesref_contato_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_contato_2'
      Origin = 'ref_contato_2'
      Size = 14
    end
    object qrClientesendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 160
    end
    object qrClientesnu_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nu_endereco'
      Origin = 'nu_endereco'
      Size = 8
    end
    object qrClientescep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qrClientesobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 160
    end
    object qrClientesfl_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_status'
      Origin = 'fl_status'
      FixedChar = True
      Size = 1
    end
    object qrClientesestado_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'estado_id'
      Origin = 'estado_id'
    end
    object qrClientesmunicipio_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'municipio_id'
      Origin = 'municipio_id'
    end
    object qrClientesbairro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'bairro_id'
      Origin = 'bairro_id'
    end
    object qrClientesinsc_est: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'insc_est'
      Origin = 'insc_est'
      Size = 14
    end
  end
  object dsClientes: TDataSource
    DataSet = qrClientes
    Left = 128
    Top = 136
  end
end
