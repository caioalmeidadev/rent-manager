object FrmRelClientes: TFrmRelClientes
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Relat'#243'rios de Clientes'
  ClientHeight = 168
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Relat'#243'rios de Clientes'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 51
    Caption = 'Situa'#231#227'o:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cbStatus: TcxComboBox
    Left = 63
    Top = 51
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Todos'
      'Ativos'
      'Bloqueados')
    TabOrder = 2
    Text = 'Todos'
    Width = 121
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 80
    Caption = 'Ordem'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cbOrdem: TcxComboBox
    Left = 63
    Top = 78
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 4
    Text = 'C'#243'digo'
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 128
    Width = 105
    Height = 25
    Caption = 'Imprimir'
    OptionsImage.ImageIndex = 20
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 176
    Top = 128
    Width = 91
    Height = 25
    Caption = 'Cancelar'
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 6
    OnClick = cxButton2Click
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43546.012882835600000000
    ReportOptions.LastChange = 43546.012882835600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 648
    Top = 160
    Datasets = <
      item
        DataSet = frxdbClientes
        DataSetName = 'frxdbClientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Lista de Clientes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baBottom
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 211.653680000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxdbClientes
        DataSetName = 'frxdbClientes'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 706.772110000000000000
          Height = 162.519790000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object frxdbClientesid_cliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 687.874460000000000000
          Height = 143.622140000000000000
          DataSet = frxdbClientes
          DataSetName = 'frxdbClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo: [frxdbClientes."id_cliente"]'
            
              'Raz'#227'o Social: [frxdbClientes."nome_razao"]  - Fantasia: [frxdbCl' +
              'ientes."apelido_fantasia"]'
            
              'Telefone Fixo: [<frxdbClientes."telefone1">] - Celular: [<frxdbC' +
              'lientes."telefone2">]'
            'CNPJ/CPF: [<frxdbClientes."cpf_cnpj">] '
            
              'RG: [<frxdbClientes."rg">] - [<frxdbClientes."rg_orgao_emisor">]' +
              '/[ <frxdbClientes."rg_uf">]'
            'CNH: [<frxdbClientes."cnh">]'
            
              'Endere'#231'o: [<frxdbClientes."endereco">],[<frxdbClientes."nu_ender' +
              'eco">] - [<frxdbClientes."bairro">]'
            'CEP: [<frxdbClientes."cep">]'
            '[<frxdbClientes."municipio">]/[<frxdbClientes."uf">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 676.535870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema de Loca'#231#227'o - Vital Solutions')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbClientes: TfrxDBDataset
    UserName = 'frxdbClientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_cliente=id_cliente'
      'nome_razao=nome_razao'
      'apelido_fantasia=apelido_fantasia'
      'telefone1=telefone1'
      'telefone2=telefone2'
      'cpf_cnpj=cpf_cnpj'
      'fl_tipo_pessoa=fl_tipo_pessoa'
      'rg=rg'
      'rg_uf=rg_uf'
      'rg_orgao_emisor=rg_orgao_emisor'
      'cnh=cnh'
      'ref_nome_1=ref_nome_1'
      'ref_contato_1=ref_contato_1'
      'ref_nome_2=ref_nome_2'
      'ref_contato_2=ref_contato_2'
      'endereco=endereco'
      'nu_endereco=nu_endereco'
      'cep=cep'
      'obs=obs'
      'fl_status=fl_status'
      'estado_id=estado_id'
      'municipio_id=municipio_id'
      'bairro_id=bairro_id'
      'insc_est=insc_est'
      'estado=estado'
      'uf=uf'
      'municipio=municipio'
      'bairro=bairro')
    DataSource = dsClientes
    BCDToCurrency = False
    Left = 616
    Top = 160
  end
  object qrClientes: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from vw_clientes')
    Left = 552
    Top = 160
    object qrClientesid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
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
    object qrClientesestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 40
    end
    object qrClientesuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object qrClientesmunicipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipio'
      Origin = 'municipio'
      Size = 80
    end
    object qrClientesbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
  end
  object dsClientes: TDataSource
    DataSet = qrClientes
    Left = 584
    Top = 160
  end
end
