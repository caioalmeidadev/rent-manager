object FrmCadCliente: TFrmCadCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 645
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 73
    Align = alTop
    TabOrder = 0
    object cxLabel18: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Align = alLeft
      Caption = 'Cadastro de Clientes'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      AnchorY = 37
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 579
    Width = 891
    Height = 66
    Align = alBottom
    TabOrder = 1
    object btnNovo: TcxButton
      Left = 11
      Top = 6
      Width = 75
      Height = 56
      Caption = '[Novo]'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000023744558745469746C65004164643B46696C653B416464
        46696C653B426172733B526962626F6E3B15DCAA0A0000009649444154785EED
        D2310AC6200C8661CFE7817A0257E74ECE3D9553E13F44FFC17E42EBA0B59080
        7168022F38C5678849294DAD0B5080029C7389D88E2C329DE800CA6484F7FE1F
        42B0D52E39408CB120A6003015421ED020A40135E2C80861408B00C04A00DEFA
        0D00D070D3011839800214B06CEB5D01E06DAE3E0850001A07C042720A90BC81
        727CAC1B60C405F07BFA800250C009AB9E8E8F614C1AC30000000049454E44AE
        426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object bttnSalvar: TcxButton
      Left = 92
      Top = 6
      Width = 75
      Height = 56
      Caption = '[Salvar]'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000B744558745469746C6500536176653BF9E8F909000000
        8F49444154785EEDD7CB09C4300C45517566C84AB5A49D143275A40F83CA50B4
        C8220A8C186CE5E3E105EE2E3CCEC2184CAAFA680E00C0327F8AB55A7A884EE9
        AFD9E7FEDFB74B04104BD3013E8900DA0120CBED7CDB4C00000040DC9F03E2DC
        5E1320BB1E00009345CD67C0EF4E2D00EA03F88604000000009C7811F1305771
        BD015023005B7221402C7ED5D30C800D5A0B6A53214F41820000000049454E44
        AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      OnClick = bttnSalvarClick
    end
    object btnCancelar: TcxButton
      Left = 173
      Top = 6
      Width = 75
      Height = 56
      Caption = '[Cancelar]'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000020744558745469746C65005361766520416E6420436C6F
        73653B536176653B436C6F73653B2A84087B000000AD49444154785EEDD3C109
        C3300C86D16C16303D648FDCB24E0729648B6C9001021E43950E41540781FD57
        35141D3E022298879C4C4434B48F41029EDB6BE60E8EEE2C40660DD9F70F6EF6
        0095A31080563D0001804973011404484002B4BF07340403F0104002CA3D37C8
        9E4A13409538C026678400CEF5413D450112B00B569ECE2C0CA07845EC66F69B
        0DD8C237E02374FD3E405B86007AFAE6155C1800FF0817AE0200E0370413404F
        09780317BC94605C2D41B50000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
    end
    object btnEditar: TcxButton
      Left = 254
      Top = 6
      Width = 75
      Height = 56
      Caption = '[Editar]'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000024744558745469746C6500496E736572743B506167653B
        4164643B4974656D3B4C6973743B506C7573581275E40000007549444154785E
        ED96C10980301004AF6A2BB8128494600396623F97457CF9D0789C2C813D1808
        248F6108241611541E37252001778F4A52024553232081753F3EA102B7E11658
        B676729535AC7F2FF026C02B007202B01E65E83C5D8072098101D625CC0BCC5F
        00E8319AA0800A4880F52DA722810EB75AD9B9FDD248E90000000049454E44AE
        426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = btnEditarClick
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 73
    Width = 891
    Height = 506
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 502
    ClientRectLeft = 4
    ClientRectRight = 887
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Lista'
      ImageIndex = 0
      DesignSize = (
        883
        478)
      object cxGrid1: TcxGrid
        Left = 3
        Top = 16
        Width = 877
        Height = 449
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCliente
          DataController.DetailKeyFieldNames = 'id_cliente'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'id_cliente'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Raz'#227'o Social / Nome'
            DataBinding.FieldName = 'nome_razao'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 226
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Fantasia / Apelido'
            DataBinding.FieldName = 'apelido_fantasia'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 163
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'CPF  / CNPJ'
            DataBinding.FieldName = 'cpf_cnpj'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '000\.000\.000-00;1;_'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'fl_tipo_pessoa'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = 'Bloqueado'
            DataBinding.FieldName = 'fl_status'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'B'
            Properties.ValueUnchecked = 'A'
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxGrid1DBTableView1Column7: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'telefone2'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '!\(999\)0000-0000;1;_'
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 70
        DataBinding.DataField = 'id_cliente'
        DataBinding.DataSource = dsCliente
        TabOrder = 0
        Width = 81
      end
      object cxLabel2: TcxLabel
        Left = 24
        Top = 47
        Caption = 'C'#243'digo'
      end
      object cxLabel3: TcxLabel
        Left = 111
        Top = 47
        Caption = 'Raz'#227'o Social / Nome'
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 111
        Top = 70
        DataBinding.DataField = 'nome_razao'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Width = 306
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 152
        Top = 118
        DataBinding.DataField = 'cpf_cnpj'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 137
      end
      object cxLabel4: TcxLabel
        Left = 152
        Top = 95
        Caption = 'CPF / CNPJ'
      end
      object cxPageControl2: TcxPageControl
        Left = 24
        Top = 168
        Width = 619
        Height = 257
        TabOrder = 6
        Properties.ActivePage = cxTabSheet4
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 253
        ClientRectLeft = 4
        ClientRectRight = 615
        ClientRectTop = 24
        object cxTabSheet3: TcxTabSheet
          Caption = 'Principal'
          ImageIndex = 0
          object cxLabel11: TcxLabel
            Left = 3
            Top = 3
            Caption = 'IE'
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 3
            Top = 26
            DataBinding.DataField = 'insc_est'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 115
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 3
            Top = 76
            DataBinding.DataField = 'cnh'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 115
          end
          object cxLabel12: TcxLabel
            Left = 3
            Top = 53
            Caption = 'CNH'
          end
          object cxLabel13: TcxLabel
            Left = 236
            Top = 3
            Caption = 'Refer'#234'ncia 1'
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 236
            Top = 26
            DataBinding.DataField = 'ref_nome_1'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 263
          end
          object cxLabel14: TcxLabel
            Left = 236
            Top = 53
            Caption = 'Refer'#234'ncia 2'
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 236
            Top = 76
            DataBinding.DataField = 'ref_nome_2'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 7
            Width = 263
          end
          object cxLabel15: TcxLabel
            Left = 515
            Top = 3
            Caption = 'Contato Ref. 1'
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 515
            Top = 26
            DataBinding.DataField = 'ref_contato_1'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 9
            Width = 81
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 515
            Top = 76
            DataBinding.DataField = 'ref_contato_2'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 10
            Width = 81
          end
          object cxLabel20: TcxLabel
            Left = 515
            Top = 53
            Caption = 'Contato Ref. 2'
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 3
            Top = 140
            DataBinding.DataField = 'telefone1'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 12
            Width = 115
          end
          object cxLabel21: TcxLabel
            Left = 3
            Top = 117
            Caption = 'Telefone Fixo'
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 141
            Top = 140
            DataBinding.DataField = 'telefone2'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 14
            Width = 115
          end
          object cxLabel22: TcxLabel
            Left = 141
            Top = 117
            Caption = 'Telefone Celular'
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 1
          object cxLabel6: TcxLabel
            Left = 3
            Top = 3
            Caption = 'Endere'#231'o'
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 3
            Top = 26
            DataBinding.DataField = 'endereco'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 374
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 383
            Top = 24
            DataBinding.DataField = 'nu_endereco'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 81
          end
          object cxLabel7: TcxLabel
            Left = 383
            Top = 3
            Caption = 'N'#250'mero'
          end
          object cxLabel8: TcxLabel
            Left = 3
            Top = 53
            Caption = 'Estado'
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 3
            Top = 126
            DataBinding.DataField = 'cep'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 157
          end
          object cxLabel9: TcxLabel
            Left = 188
            Top = 53
            Caption = 'Municipio'
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 3
            Top = 176
            DataBinding.DataField = 'obs'
            DataBinding.DataSource = dsCliente
            Properties.CharCase = ecUpperCase
            TabOrder = 7
            Width = 549
          end
          object cxLabel10: TcxLabel
            Left = 373
            Top = 53
            Caption = 'Bairro'
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 3
            Top = 76
            DataBinding.DataField = 'estado_id'
            DataBinding.DataSource = dsCliente
            Properties.KeyFieldNames = 'id_estado'
            Properties.ListColumns = <
              item
                FieldName = 'nome'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsEstado
            Properties.OnCloseUp = cxDBLookupComboBox1PropertiesCloseUp
            TabOrder = 9
            Width = 179
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox
            Left = 188
            Top = 76
            DataBinding.DataField = 'municipio_id'
            DataBinding.DataSource = dsCliente
            Properties.KeyFieldNames = 'id_municipio'
            Properties.ListColumns = <
              item
                FieldName = 'nome'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsMunicipio
            Properties.OnCloseUp = cxDBLookupComboBox2PropertiesCloseUp
            TabOrder = 10
            Width = 179
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 373
            Top = 76
            DataBinding.DataField = 'bairro_id'
            DataBinding.DataSource = dsCliente
            Properties.KeyFieldNames = 'id_bairro'
            Properties.ListColumns = <
              item
                FieldName = 'nome'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsBairro
            TabOrder = 11
            Width = 179
          end
          object cxLabel23: TcxLabel
            Left = 3
            Top = 103
            Caption = 'CEP'
          end
          object cxLabel24: TcxLabel
            Left = 3
            Top = 153
            Caption = 'Obs'
          end
        end
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 423
        Top = 70
        DataBinding.DataField = 'apelido_fantasia'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Width = 306
      end
      object cxLabel5: TcxLabel
        Left = 423
        Top = 47
        Caption = 'Nome Fantasia / Apelido'
      end
      object cxLabel1: TcxLabel
        Left = 423
        Top = 95
        Caption = 'Org'#227'o Emissor'
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 423
        Top = 118
        DataBinding.DataField = 'rg_orgao_emisor'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        TabOrder = 10
        Width = 81
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 24
        Top = 97
        Width = 122
        Height = 44
        Caption = 'Tipo de Pessoa'
        Columns = 2
        DataField = 'fl_tipo_pessoa'
        DataSource = dsCliente
        Items.Strings = (
          'Fisica'
          'Juridica')
        TabOrder = 11
        Values.Strings = (
          'F'
          'J')
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 597
        Top = 118
        Caption = 'Liberado'
        DataBinding.DataField = 'fl_status'
        DataBinding.DataSource = dsCliente
        Properties.ValueChecked = 'A'
        TabOrder = 12
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 305
        Top = 118
        DataBinding.DataField = 'rg'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        TabOrder = 13
        Width = 112
      end
      object cxLabel16: TcxLabel
        Left = 305
        Top = 95
        Caption = 'RG'
      end
      object cxDBTextEdit18: TcxDBTextEdit
        Left = 510
        Top = 118
        DataBinding.DataField = 'rg_uf'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        TabOrder = 15
        Width = 81
      end
      object cxLabel19: TcxLabel
        Left = 510
        Top = 95
        Caption = 'UF'
      end
    end
  end
  object qrCliente: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_clientes')
    Left = 272
    Top = 16
    object qrClienteid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrClientenome_razao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_razao'
      Origin = 'nome_razao'
      Size = 120
    end
    object qrClienteapelido_fantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'apelido_fantasia'
      Origin = 'apelido_fantasia'
      Size = 120
    end
    object qrClientetelefone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone1'
      Origin = 'telefone1'
      Size = 14
    end
    object qrClientetelefone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 14
    end
    object qrClientecpf_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 14
    end
    object qrClientefl_tipo_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_tipo_pessoa'
      Origin = 'fl_tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object qrClienterg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      Size = 12
    end
    object qrClienterg_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_uf'
      Origin = 'rg_uf'
      Size = 2
    end
    object qrClienterg_orgao_emisor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_orgao_emisor'
      Origin = 'rg_orgao_emisor'
      Size = 45
    end
    object qrClientecnh: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnh'
      Origin = 'cnh'
      Size = 45
    end
    object qrClienteref_nome_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_nome_1'
      Origin = 'ref_nome_1'
      Size = 120
    end
    object qrClienteref_contato_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_contato_1'
      Origin = 'ref_contato_1'
      Size = 14
    end
    object qrClienteref_nome_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_nome_2'
      Origin = 'ref_nome_2'
      Size = 120
    end
    object qrClienteref_contato_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ref_contato_2'
      Origin = 'ref_contato_2'
      Size = 14
    end
    object qrClienteendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 160
    end
    object qrClientenu_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nu_endereco'
      Origin = 'nu_endereco'
      Size = 8
    end
    object qrClientecep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qrClienteobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 160
    end
    object qrClientefl_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_status'
      Origin = 'fl_status'
      FixedChar = True
      Size = 1
    end
    object qrClienteestado_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'estado_id'
      Origin = 'estado_id'
    end
    object qrClientemunicipio_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'municipio_id'
      Origin = 'municipio_id'
    end
    object qrClientebairro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'bairro_id'
      Origin = 'bairro_id'
    end
    object qrClienteinsc_est: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'insc_est'
      Origin = 'insc_est'
      Size = 14
    end
  end
  object dsCliente: TDataSource
    DataSet = qrCliente
    Left = 312
    Top = 16
  end
  object qrEstado: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_estados')
    Left = 552
    Top = 24
    object qrEstadoid_estado: TFDAutoIncField
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrEstadonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object qrEstadouf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object qrEstadoobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 120
    end
  end
  object qrMunicipio: TFDQuery
    MasterFields = 'id_estado'
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_municipios where estado_id = :id_estado')
    Left = 600
    Top = 24
    ParamData = <
      item
        Name = 'ID_ESTADO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrMunicipioid_municipio: TIntegerField
      FieldName = 'id_municipio'
      Origin = 'id_municipio'
      Required = True
    end
    object qrMunicipionome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object qrMunicipioestado_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'estado_id'
      Origin = 'estado_id'
    end
    object qrMunicipiosigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 5
    end
  end
  object qrBairro: TFDQuery
    MasterFields = 'id_municipio'
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_bairros where municipio_id = :id_municipio')
    Left = 648
    Top = 24
    ParamData = <
      item
        Name = 'ID_MUNICIPIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrBairroid_bairro: TFDAutoIncField
      FieldName = 'id_bairro'
      Origin = 'id_bairro'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrBairronome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object qrBairroobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 120
    end
    object qrBairrocep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qrBairromunicipio_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'municipio_id'
      Origin = 'municipio_id'
    end
  end
  object dsEstado: TDataSource
    DataSet = qrEstado
    Left = 552
    Top = 80
  end
  object dsMunicipio: TDataSource
    DataSet = qrMunicipio
    Left = 600
    Top = 80
  end
  object dsBairro: TDataSource
    DataSet = qrBairro
    Left = 656
    Top = 80
  end
end