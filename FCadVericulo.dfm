object FrmCadVeiculo: TFrmCadVeiculo
  Left = 0
  Top = 0
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 613
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxLabel18: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Align = alClient
      Caption = 'Cadastro de Ve'#237'culos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 436
      AnchorY = 29
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 57
    Width = 872
    Height = 487
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 483
    ClientRectLeft = 4
    ClientRectRight = 868
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Listagem'
      ImageIndex = 0
      DesignSize = (
        864
        459)
      object cxGrid1: TcxGrid
        Left = 3
        Top = 16
        Width = 858
        Height = 417
        Anchors = [akLeft, akRight]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsVeiculos
          DataController.DetailKeyFieldNames = 'id_veiculo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = 'Sem registros a serem exibidos'
          OptionsView.GroupByBox = False
          object tvIdVeiculo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'id_veiculo'
            HeaderAlignmentHorz = taCenter
          end
          object tvPlaca: TcxGridDBColumn
            Caption = 'Placa'
            DataBinding.FieldName = 'placa'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            HeaderAlignmentHorz = taCenter
            Width = 91
          end
          object tvStatus: TcxGridDBColumn
            Caption = 'Alugado'
            DataBinding.FieldName = 'fl_locacao'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 116
          end
          object tvDescricao: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'descricao'
            Width = 199
          end
          object tvTipo: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'fl_tipo_veiculo'
            Width = 118
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
        Left = 3
        Top = 68
        DataBinding.DataField = 'id_veiculo'
        DataBinding.DataSource = dsVeiculos
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 86
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 16
        Caption = 'Geral'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel2: TcxLabel
        Left = 3
        Top = 160
        Caption = 'Dados do Ve'#237'culo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel3: TcxLabel
        Left = 3
        Top = 45
        Caption = 'C'#243'digo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 95
        Top = 67
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 314
      end
      object cxLabel4: TcxLabel
        Left = 95
        Top = 45
        Caption = 'Descri'#231#227'o'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 3
        Top = 117
        DataBinding.DataField = 'ano_veiculo'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Width = 86
      end
      object cxLabel5: TcxLabel
        Left = 3
        Top = 94
        Caption = 'Ano Ve'#237'culo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel6: TcxLabel
        Left = 424
        Top = 45
        Caption = 'Combustivel'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel7: TcxLabel
        Left = 107
        Top = 94
        Caption = 'Cor do ve'#237'culo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 107
        Top = 117
        DataBinding.DataField = 'cor_veiculo'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 10
        Width = 86
      end
      object cxLabel8: TcxLabel
        Left = 211
        Top = 94
        Caption = 'Marca'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 211
        Top = 117
        DataBinding.DataField = 'marca_veiculo'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 12
        Width = 86
      end
      object cxLabel9: TcxLabel
        Left = 323
        Top = 94
        Caption = 'Modelo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 323
        Top = 117
        DataBinding.DataField = 'modelo_veiculo'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 14
        Width = 86
      end
      object cxLabel10: TcxLabel
        Left = 11
        Top = 190
        Caption = 'Placa'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 11
        Top = 213
        DataBinding.DataField = 'placa'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 16
        Width = 86
      end
      object cxLabel13: TcxLabel
        Left = 181
        Top = 256
        Caption = 'KM Inicial'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 181
        Top = 279
        DataBinding.DataField = 'km_compra'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 18
        Width = 86
      end
      object cxLabel14: TcxLabel
        Left = 418
        Top = 190
        Caption = 'Status do Compra'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 424
        Top = 68
        DataBinding.DataField = 'fl_combustivel'
        DataBinding.DataSource = dsVeiculos
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'GASOLINA'
          'ALCOOL'
          'FLEX'
          'DIESIL')
        TabOrder = 20
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 199
        Top = 213
        DataBinding.DataField = 'valor_veiculo'
        DataBinding.DataSource = dsVeiculos
        TabOrder = 21
        Width = 86
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 424
        Top = 95
        Caption = 'Situa'#231#227'o de Loca'#231#227'o'
        DataBinding.DataField = 'fl_locacao'
        DataBinding.DataSource = dsVeiculos
        Properties.Columns = 2
        Properties.DefaultValue = 'N'
        Properties.Items = <
          item
            Caption = 'Liberado'
            Value = 'N'
          end
          item
            Caption = 'Locado'
            Value = 'S'
          end>
        Properties.ReadOnly = True
        TabOrder = 22
        Height = 44
        Width = 152
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 13
        Top = 279
        DataBinding.DataField = 'data_cadastro'
        DataBinding.DataSource = dsVeiculos
        Enabled = False
        Properties.ReadOnly = True
        TabOrder = 23
        Width = 158
      end
      object cxDBComboBox2: TcxDBComboBox
        Left = 418
        Top = 213
        DataBinding.DataField = 'fl_status_veiculo'
        DataBinding.DataSource = dsVeiculos
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'NOVO'
          'SEMINOVO'
          'USADO'
          'SUCATA'
          'VENDIDO'
          'INATIVO')
        TabOrder = 24
        Width = 158
      end
      object cxLabel15: TcxLabel
        Left = 273
        Top = 256
        Caption = 'KM Atual'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 273
        Top = 279
        DataBinding.DataField = 'km_atual'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 26
        Width = 86
      end
      object cxDBComboBox3: TcxDBComboBox
        Left = 291
        Top = 213
        DataBinding.DataField = 'fl_tipo_veiculo'
        DataBinding.DataSource = dsVeiculos
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'CARRO'
          'MOTOCICLETA')
        TabOrder = 27
        Width = 121
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 107
        Top = 213
        DataBinding.DataField = 'chassis'
        DataBinding.DataSource = dsVeiculos
        Properties.CharCase = ecUpperCase
        TabOrder = 28
        Width = 86
      end
      object cxLabel11: TcxLabel
        Left = 107
        Top = 190
        Caption = 'Chassis'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel12: TcxLabel
        Left = 199
        Top = 190
        Caption = 'Valor do ve'#237'culo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel16: TcxLabel
        Left = 291
        Top = 190
        Caption = 'Tipo do Ve'#237'culo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel17: TcxLabel
        Left = 13
        Top = 256
        Caption = 'Data de Cadastro'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel19: TcxLabel
        Left = 14
        Top = 306
        Caption = 'Valor di'#225'ria'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 14
        Top = 329
        DataBinding.DataField = 'vl_diaria'
        DataBinding.DataSource = dsVeiculos
        Properties.Nullable = False
        TabOrder = 34
        Width = 121
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 872
    Height = 69
    Align = alBottom
    TabOrder = 2
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
    object btnSalvar: TcxButton
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
      OnClick = btnSalvarClick
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
      OnClick = btnCancelarClick
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
  object qrVeiculos: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_veiculos')
    Left = 316
    Top = 17
    object qrVeiculosid_veiculo: TFDAutoIncField
      FieldName = 'id_veiculo'
      Origin = 'id_veiculo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrVeiculosdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 150
    end
    object qrVeiculosano_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ano_veiculo'
      Origin = 'ano_veiculo'
      Size = 10
    end
    object qrVeiculoscor_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cor_veiculo'
      Origin = 'cor_veiculo'
      Size = 45
    end
    object qrVeiculosmarca_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_veiculo'
      Origin = 'marca_veiculo'
      Size = 45
    end
    object qrVeiculosplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qrVeiculoschassis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chassis'
      Origin = 'chassis'
      Size = 45
    end
    object qrVeiculosvalor_veiculo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor_veiculo'
      Origin = 'valor_veiculo'
      Precision = 10
      Size = 2
    end
    object qrVeiculoskm_compra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'km_compra'
      Origin = 'km_compra'
      Size = 45
    end
    object qrVeiculoskm_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'km_atual'
      Origin = 'km_atual'
      Size = 45
    end
    object qrVeiculosdata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
    object qrVeiculosfl_tipo_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_tipo_veiculo'
      Origin = 'fl_tipo_veiculo'
      Size = 45
    end
    object qrVeiculosfl_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_locacao'
      Origin = 'fl_locacao'
      FixedChar = True
      Size = 1
    end
    object qrVeiculosfl_status_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_status_veiculo'
      Origin = 'fl_status_veiculo'
      Size = 45
    end
    object qrVeiculosfl_combustivel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_combustivel'
      Origin = 'fl_combustivel'
      Size = 15
    end
    object qrVeiculosvl_diaria: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_diaria'
      Origin = 'vl_diaria'
      Precision = 10
      Size = 2
    end
    object qrVeiculosmodelo_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo_veiculo'
      Origin = 'modelo_veiculo'
      Size = 40
    end
  end
  object dsVeiculos: TDataSource
    DataSet = qrVeiculos
    OnStateChange = dsVeiculosStateChange
    Left = 348
    Top = 17
  end
end
