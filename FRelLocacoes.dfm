object FrmRelLocacoes: TFrmRelLocacoes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Loca'#231#245'es'
  ClientHeight = 280
  ClientWidth = 469
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
    Width = 469
    Height = 81
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      AutoSize = False
      Caption = 'Relat'#243'rio de Loca'#231#245'es'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -35
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 79
      Width = 467
      AnchorX = 235
      AnchorY = 41
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 87
    Caption = 'Tipo de Loca'#231#227'o'
    TabOrder = 1
    Height = 50
    Width = 217
    object cb_tp_veiculo: TcxComboBox
      Left = 9
      Top = 17
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Todas'
        'Motociletas'
        'Carros')
      TabOrder = 0
      Text = 'TODAS'
      Width = 193
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 231
    Top = 87
    Caption = 'Situa'#231#227'o da Loca'#231#227'o'
    TabOrder = 2
    Height = 50
    Width = 217
    object cb_tp_status: TcxComboBox
      Left = 9
      Top = 17
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Todas'
        'Loca'#231#245'es em andamento'
        'Loca'#231#245'es Faturadas'
        'LOca'#231#245'es Devolvidas')
      TabOrder = 0
      Text = 'TODAS'
      Width = 193
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 8
    Top = 143
    Caption = 'Per'#237'odo'
    TabOrder = 3
    Height = 50
    Width = 440
    object ed_dt_inicial: TcxDateEdit
      Left = 9
      Top = 16
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 193
    end
    object ed_dt_final: TcxDateEdit
      Left = 232
      Top = 16
      TabOrder = 1
      Width = 193
    end
  end
  object cxButton1: TcxButton
    Left = 344
    Top = 199
    Width = 104
    Height = 66
    Caption = 'Imprimir'
    OptionsImage.ImageIndex = 14
    OptionsImage.Images = FrmPrincipal.imgs32x32
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object qrLocacoes: TFDQuery
    Active = True
    Connection = DM.Conn
    SQL.Strings = (
      
        'select v.descricao,v.cor_veiculo,v.placa,v.fl_tipo_veiculo, c.no' +
        'me_razao,l.*'#10'from tb_locacao as l, tb_veiculos as v, tb_clientes' +
        ' as c '#10'where v.id_veiculo = l.veiculo_id'#10'and c.id_cliente = l.cl' +
        'iente_id')
    Left = 40
    Top = 232
    object qrLocacoesdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 150
    end
    object qrLocacoescor_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cor_veiculo'
      Origin = 'cor_veiculo'
      Size = 45
    end
    object qrLocacoesplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qrLocacoesfl_tipo_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_tipo_veiculo'
      Origin = 'fl_tipo_veiculo'
      Size = 45
    end
    object qrLocacoesnome_razao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_razao'
      Origin = 'nome_razao'
      Size = 120
    end
    object qrLocacoesid_locacao: TFDAutoIncField
      FieldName = 'id_locacao'
      Origin = 'id_locacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrLocacoesdata_abertura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_abertura'
      Origin = 'data_abertura'
    end
    object qrLocacoesdata_retorno: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_retorno'
      Origin = 'data_retorno'
    end
    object qrLocacoesfl_situacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fl_situacao'
      Origin = 'fl_situacao'
    end
    object qrLocacoescliente_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
    end
    object qrLocacoescliente_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_fone'
      Origin = 'cliente_fone'
      Size = 14
    end
    object qrLocacoesveiculo_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'veiculo_id'
      Origin = 'veiculo_id'
    end
    object qrLocacoeskm_abertura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'km_abertura'
      Origin = 'km_abertura'
      Size = 10
    end
    object qrLocacoeskm_fechamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'km_fechamento'
      Origin = 'km_fechamento'
      Size = 10
    end
    object qrLocacoesvl_diaria: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_diaria'
      Origin = 'vl_diaria'
      Precision = 12
      Size = 2
    end
    object qrLocacoesvl_desconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_desconto'
      Origin = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object qrLocacoesvl_subtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_subtotal'
      Origin = 'vl_subtotal'
      Precision = 12
      Size = 2
    end
    object qrLocacoesvl_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_total'
      Origin = 'vl_total'
      Precision = 12
      Size = 2
    end
    object qrLocacoesobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object qrLocacoespc_desconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pc_desconto'
      Origin = 'pc_desconto'
      Precision = 12
      Size = 2
    end
  end
  object dsLocacoes: TDataSource
    DataSet = qrLocacoes
    Left = 80
    Top = 232
  end
  object frxDBLocacoes: TfrxDBDataset
    UserName = 'frxDBLocacoes'
    CloseDataSource = False
    DataSource = dsLocacoes
    BCDToCurrency = False
    Left = 144
    Top = 224
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43554.758698692100000000
    ReportOptions.LastChange = 43554.758698692100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 232
    Datasets = <
      item
        DataSet = frxDBLocacoes
        DataSetName = 'frxDBLocacoes'
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
        Height = 119.271137140000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Align = baWidth
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clScrollBar
          Fill.ForeColor = clGray
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 36.175501430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Loca'#231#245'es')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Top = 85.845967140000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd Contrato')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 93.625497140000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 93.625497140000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ve'#237'culo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 93.625497140000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Placa')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 93.625497140000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vl Di'#225'ria')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 618.401980000000000000
          Top = 93.625497140000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 119.271137140000000000
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
        Height = 22.897650000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLocacoes
        DataSetName = 'frxDBLocacoes'
        RowCount = 0
        object frxDBLocacoesid_locacao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 0.220470000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'id_locacao'
          DataSet = frxDBLocacoes
          DataSetName = 'frxDBLocacoes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLocacoes."id_locacao"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 0.220470000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'nome_razao'
          DataSet = frxDBLocacoes
          DataSetName = 'frxDBLocacoes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLocacoes."nome_razao"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 0.220470000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = frxDBLocacoes
          DataSetName = 'frxDBLocacoes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLocacoes."descricao"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 0.220470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'placa'
          DataSet = frxDBLocacoes
          DataSetName = 'frxDBLocacoes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLocacoes."placa"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 610.842920000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'vl_total'
          DataSet = frxDBLocacoes
          DataSetName = 'frxDBLocacoes'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBLocacoes."vl_total"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 0.220470000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'vl_diaria'
          DataSet = frxDBLocacoes
          DataSetName = 'frxDBLocacoes'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLocacoes."vl_diaria"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Faturado:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 584.386210000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBLocacoes."vl_total">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 557.811380000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vital Rent Manager - Vital Solutions')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 264
    Top = 224
  end
end
