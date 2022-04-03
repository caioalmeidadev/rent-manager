object FrmRelRecibo: TFrmRelRecibo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Imprimir Recibos'
  ClientHeight = 146
  ClientWidth = 344
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
    Left = 32
    Top = 57
    Caption = 'C'#243'digo do Contrato'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object ed_cod_contrato: TcxTextEdit
    Left = 72
    Top = 86
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 145
  end
  object cxButton1: TcxButton
    Left = 258
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    OptionsImage.ImageIndex = 20
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 8
    Caption = 'Impress'#227'o de Recibo'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -32
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxButton2: TcxButton
    Left = 258
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object qrLocacao: TFDQuery
    OnCalcFields = qrLocacaoCalcFields
    Connection = DM.Conn
    SQL.Strings = (
      
        'SELECT c.nome_razao, c.endereco, c.nu_endereco, l.vl_total, v.pl' +
        'aca, v.chassis FROM'
      
        'tb_locacao AS l INNER JOIN tb_clientes AS c ON (c.id_cliente = l' +
        '.cliente_id)'
      
        'INNER JOIN tb_veiculos AS v ON (v.id_veiculo = l.veiculo_id) WHE' +
        'RE l.id_locacao = :ID_')
    Left = 88
    Top = 144
    ParamData = <
      item
        Name = 'ID_'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrLocacaovl_extenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'vl_extenso'
      Size = 250
      Calculated = True
    end
    object qrLocacaonome_razao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_razao'
      Origin = 'nome_razao'
      Size = 120
    end
    object qrLocacaoendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 160
    end
    object qrLocacaonu_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nu_endereco'
      Origin = 'nu_endereco'
      Size = 8
    end
    object qrLocacaovl_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_total'
      Origin = 'vl_total'
      Precision = 12
      Size = 2
    end
    object qrLocacaoplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qrLocacaochassis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chassis'
      Origin = 'chassis'
      Size = 45
    end
  end
  object dsLocacao: TDataSource
    DataSet = qrLocacao
    Left = 120
    Top = 144
  end
  object frxDBLocacao: TfrxDBDataset
    UserName = 'frxDBLocacao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome_razao=nome_razao'
      'endereco=endereco'
      'nu_endereco=nu_endereco'
      'vl_total=vl_total'
      'placa=placa'
      'chassis=chassis'
      'id_locacao=id_locacao'
      'cliente_id=cliente_id'
      'veiculo_id=veiculo_id'
      'vl_extenso=vl_extenso')
    DataSource = dsLocacao
    BCDToCurrency = False
    Left = 152
    Top = 144
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43546.516183530090000000
    ReportOptions.LastChange = 43549.481434641200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 144
    Datasets = <
      item
        DataSet = DM.frxDBDsEmpresa
        DataSetName = 'frxDBDsEmpresa'
      end
      item
        DataSet = DM.frxDBDsParametros
        DataSetName = 'frxDBDsParametros'
      end
      item
        DataSet = frxDBLocacao
        DataSetName = 'frxDBLocacao'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 355.275820000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLocacao
        DataSetName = 'frxDBLocacao'
        RowCount = 0
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 3.779530000000000000
          Width = 593.386210000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 219.212740000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Recebi de [<frxDBLocacao."nome_razao">], brasileiro(a), resident' +
              'e e domiciliado(a) nesta capital, na [<frxDBLocacao."endereco">]' +
              ', N'#186' [<frxDBLocacao."nu_endereco">] a quantia de [<frxDBLocacao.' +
              '"vl_total">],[frxDBLocacao."vl_extenso"], referente '#224' Loca'#231#227'o do' +
              ' Veiculo de Placa [<frxDBLocacao."placa">] Chassis [<frxDBLocaca' +
              'o."chassis">], de minha propriedade, dando-lhe por este recibo a' +
              ' devida quita'#231#227'o.'
            ''
            
              '[<frxDBDsEmpresa."municipio">]/[<frxDBDsEmpresa."estado">], [<Da' +
              'te>] - [<Time>]'
            ''
            ''
            ''
            ''
            '______________________________'
            '             Recebido'
            ''
            ''
            ''
            ''
            ''
            '')
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
              FormatStr = 'dd mmm yyyy'
              Kind = fkDateTime
            end
            item
              FormatStr = 'hh:mm'
              Kind = fkDateTime
            end>
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 325.039580000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Via Empresa')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Width = 128.504020000000000000
          Height = 90.708720000000000000
          DataField = 'img_locacao'
          DataSet = DM.frxDBDsParametros
          DataSetName = 'frxDBDsParametros'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 359.055350000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLocacao
        DataSetName = 'frxDBLocacao'
        RowCount = 0
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 3.779530000000022000
          Width = 593.386210000000000000
          Height = 86.929190000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 343.937230000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Via Cliente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 238.110390000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Recebi de [<frxDBLocacao."nome_razao">], brasileiro(a), resident' +
              'e e domiciliado(a) nesta capital, na [<frxDBLocacao."endereco">]' +
              ', N'#186' [<frxDBLocacao."nu_endereco">] a quantia de [<frxDBLocacao.' +
              '"vl_total">],[frxDBLocacao."vl_extenso"], referente '#224' Loca'#231#227'o do' +
              ' Veiculo de Placa [<frxDBLocacao."placa">] Chassis [<frxDBLocaca' +
              'o."chassis">], de minha propriedade, dando-lhe por este recibo a' +
              ' devida quita'#231#227'o.'
            ''
            
              '[<frxDBDsEmpresa."municipio">]/[<frxDBDsEmpresa."estado">], [<Da' +
              'te>] - [<Time>]'
            ''
            ''
            ''
            ''
            '______________________________'
            '             Recebido')
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
              FormatStr = 'dd mmm yyyy'
              Kind = fkDateTime
            end
            item
              FormatStr = 'hh:mm'
              Kind = fkDateTime
            end>
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Width = 128.504020000000000000
          Height = 90.708720000000000000
          DataField = 'img_locacao'
          DataSet = DM.frxDBDsParametros
          DataSetName = 'frxDBDsParametros'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
end
