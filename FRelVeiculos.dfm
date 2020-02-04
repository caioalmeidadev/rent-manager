object FrmRelVeiculo: TFrmRelVeiculo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Ve'#237'culos'
  ClientHeight = 330
  ClientWidth = 259
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 259
    Height = 65
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Relat'#243'rio de Ve'#237'culos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Width = 257
      AnchorX = 130
      AnchorY = 33
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 71
    Caption = 'Tipo de Ve'#237'culo'
    TabOrder = 1
    Height = 50
    Width = 233
    object cb_tp_veiculo: TcxComboBox
      Left = 7
      Top = 16
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'TODOS'
        'CARRO'
        'MOTOCICLETA')
      TabOrder = 0
      Text = 'TODOS'
      Width = 214
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 183
    Caption = 'Situa'#231#227'o do Ve'#237'culo'
    TabOrder = 2
    Height = 50
    Width = 233
    object cb_tp_situacao: TcxComboBox
      Left = 11
      Top = 16
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'TODOS'
        'NOVO'
        'SEMINOVO'
        'USADO'
        'SUCATA'
        'VENDIDO'
        'SOMENTE ATIVOS'
        'SOMENTE INATIVOS')
      TabOrder = 0
      Text = 'TODOS'
      Width = 214
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 8
    Top = 127
    Caption = 'Status do Ve'#237'culo'
    TabOrder = 3
    Height = 50
    Width = 233
    object cb_tp_status: TcxComboBox
      Left = 10
      Top = 16
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'TODOS'
        'LOCADOS'
        'DISPONIVEIS')
      TabOrder = 0
      Text = 'TODOS'
      Width = 214
    end
  end
  object btn_imprimir: TcxButton
    Left = 33
    Top = 239
    Width = 88
    Height = 65
    Caption = 'Imprimir'
    OptionsImage.ImageIndex = 14
    OptionsImage.Images = FrmPrincipal.imgs32x32
    TabOrder = 4
    OnClick = btn_imprimirClick
  end
  object btn_cancelar: TcxButton
    Left = 121
    Top = 239
    Width = 88
    Height = 65
    Caption = 'Cancelar'
    OptionsImage.ImageIndex = 31
    OptionsImage.Images = FrmPrincipal.imgs32x32
    TabOrder = 5
    OnClick = btn_cancelarClick
  end
  object qrVeiculos: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_veiculos')
    Left = 312
    Top = 176
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
    object qrVeiculosfl_combustivel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_combustivel'
      Origin = 'fl_combustivel'
      Size = 15
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
    Left = 352
    Top = 176
  end
  object frxDBVeiculos: TfrxDBDataset
    UserName = 'frxDBVeiculos'
    CloseDataSource = False
    DataSource = dsVeiculos
    BCDToCurrency = False
    Left = 392
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43594.646183425900000000
    ReportOptions.LastChange = 43594.646183425900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 176
    Datasets = <
      item
        DataSet = frxDBVeiculos
        DataSetName = 'frxDBVeiculos'
      end
      item
        DataSet = DM.frxDBDsEmpresa
        DataSetName = 'frxDBDsEmpresa'
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
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Fill.BackColor = clScrollBar
          Fill.ForeColor = clGray
          Frame.Color = clGray
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Ve'#237'culos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 52.913420000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Placa')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Chassis')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 52.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBVeiculos
        DataSetName = 'frxDBVeiculos'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'id_veiculo'
          DataSet = frxDBVeiculos
          DataSetName = 'frxDBVeiculos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBVeiculos."id_veiculo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = frxDBVeiculos
          DataSetName = 'frxDBVeiculos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVeiculos."descricao"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'placa'
          DataSet = frxDBVeiculos
          DataSetName = 'frxDBVeiculos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBVeiculos."placa"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'chassis'
          DataSet = frxDBVeiculos
          DataSetName = 'frxDBVeiculos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBVeiculos."chassis"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'vl_diaria'
          DataSet = frxDBVeiculos
          DataSetName = 'frxDBVeiculos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBVeiculos."vl_diaria"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vital Solutions')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
      end
    end
  end
end
