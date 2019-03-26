object FrmRelContrato: TFrmRelContrato
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o de Contrato'
  ClientHeight = 229
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Impress'#227'o de Contratos de Loca'#231#227'o'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -32
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 61
    Caption = 'C'#243'digo da Loca'#231#227'o'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 120
    Caption = 'Hor'#225'rio de Retirada'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object ed_cod_contrato: TcxTextEdit
    Left = 16
    Top = 87
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 137
  end
  object ed_hora_retirada: TcxTimeEdit
    Left = 16
    Top = 147
    TabOrder = 4
    Width = 121
  end
  object cxLabel5: TcxLabel
    Left = 16
    Top = 174
    Caption = 'Hor'#225'rio de Entrega'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object ed_hora_entrega: TcxTimeEdit
    Left = 16
    Top = 199
    TabOrder = 6
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 445
    Top = 73
    Width = 75
    Height = 59
    Caption = 'Imprimir'
    OptionsImage.ImageIndex = 41
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 445
    Top = 161
    Width = 75
    Height = 59
    Caption = 'Cancelar'
    OptionsImage.ImageIndex = 31
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 8
    OnClick = cxButton2Click
  end
  object qrContrato: TFDQuery
    Active = True
    OnCalcFields = qrContratoCalcFields
    Connection = DM.Conn
    SQL.Strings = (
      'select * from vw_contrato where id_locacao like :ID_')
    Left = 192
    Top = 64
    ParamData = <
      item
        Name = 'ID_'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qrContratonome_razao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_razao'
      Origin = 'nome_razao'
      Size = 120
    end
    object qrContratoendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 160
    end
    object qrContratonu_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nu_endereco'
      Origin = 'nu_endereco'
      Size = 8
    end
    object qrContratotelefone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone1'
      Origin = 'telefone1'
      Size = 14
    end
    object qrContratotelefone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 14
    end
    object qrContratorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      Size = 12
    end
    object qrContratocpf_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 14
    end
    object qrContratocnh: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnh'
      Origin = 'cnh'
      Size = 45
    end
    object qrContratomarca_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_veiculo'
      Origin = 'marca_veiculo'
      Size = 45
    end
    object qrContratocor_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cor_veiculo'
      Origin = 'cor_veiculo'
      Size = 45
    end
    object qrContratoplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qrContratochassis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chassis'
      Origin = 'chassis'
      Size = 45
    end
    object qrContratodescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 150
    end
    object qrContratodata_abertura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_abertura'
      Origin = 'data_abertura'
    end
    object qrContratodata_retorno: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_retorno'
      Origin = 'data_retorno'
    end
    object qrContratovalor_veiculo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor_veiculo'
      Origin = 'valor_veiculo'
      currency = True
      Precision = 10
      Size = 2
    end
    object qrContratoobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object qrContratoid_locacao: TFDAutoIncField
      FieldName = 'id_locacao'
      Origin = 'id_locacao'
      ReadOnly = True
    end
    object qrContratoid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ReadOnly = True
    end
    object qrContratoid_veiculo: TFDAutoIncField
      FieldName = 'id_veiculo'
      Origin = 'id_veiculo'
      ReadOnly = True
    end
    object qrContratovl_extenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'vl_extenso'
      Size = 250
      Calculated = True
    end
    object qrContratohora_retirada: TStringField
      FieldKind = fkCalculated
      FieldName = 'hora_retirada'
      Size = 10
      Calculated = True
    end
    object qrContratohora_entrega: TStringField
      FieldKind = fkCalculated
      FieldName = 'hora_entrega'
      Size = 10
      Calculated = True
    end
    object qrContratobairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
  end
  object dsContrato: TDataSource
    DataSet = qrContrato
    Left = 240
    Top = 64
  end
  object frxdbContrato: TfrxDBDataset
    UserName = 'frxdbContrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome_razao=nome_razao'
      'endereco=endereco'
      'nu_endereco=nu_endereco'
      'telefone1=telefone1'
      'telefone2=telefone2'
      'rg=rg'
      'cpf_cnpj=cpf_cnpj'
      'cnh=cnh'
      'marca_veiculo=marca_veiculo'
      'cor_veiculo=cor_veiculo'
      'placa=placa'
      'chassis=chassis'
      'descricao=descricao'
      'data_abertura=data_abertura'
      'data_retorno=data_retorno'
      'valor_veiculo=valor_veiculo'
      'obs=obs'
      'id_locacao=id_locacao'
      'id_cliente=id_cliente'
      'id_veiculo=id_veiculo'
      'vl_extenso=vl_extenso'
      'hora_retirada=hora_retirada'
      'hora_entrega=hora_entrega'
      'bairro=bairro')
    DataSource = dsContrato
    BCDToCurrency = False
    Left = 312
    Top = 64
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43546.360455046300000000
    ReportOptions.LastChange = 43549.840362557880000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 384
    Top = 64
    Datasets = <
      item
        DataSet = frxdbContrato
        DataSetName = 'frxdbContrato'
      end
      item
        DataSet = DM.frxDBDsEmpresa
        DataSetName = 'frxDBDsEmpresa'
      end
      item
        DataSet = DM.frxDBDsParametros
        DataSetName = 'frxDBDsParametros'
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
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 52.913420000000000000
          Width = 559.370439999999900000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRATO DE LOCA'#199#195'O DE VEICULO')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Width = 158.740260000000000000
          Height = 124.724490000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Center = True
          DataField = 'img_locacao'
          DataSet = DM.frxDBDsParametros
          DataSetName = 'frxDBDsParametros'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 139.842610000000000000
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
        Height = 725.669760000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = frxdbContrato
        DataSetName = 'frxdbContrato'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 721.890230000000000000
          Height = 502.677490000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Locat'#225'rio: [<frxdbContrato."nome_razao">] Maior residente e domi' +
              'ciliar nesta capital na Rua: [<frxdbContrato."endereco">],  N'#186' [' +
              '<frxdbContrato."nu_endereco">] Bairro: [<frxdbContrato."bairro">' +
              '] Telefone: [<frxdbContrato."telefone2">] -  [<frxdbContrato."te' +
              'lefone1">], RG/IE: [<frxdbContrato."rg">], CPF/CNPJ: [<frxdbCont' +
              'rato."cpf_cnpj">], CNH: [<frxdbContrato."cnh">]. Do objeto - Loc' +
              'a'#231#227'o Marca:[<frxdbContrato."marca_veiculo">] Cor: [<frxdbContrat' +
              'o."cor_veiculo">] Placa:[<frxdbContrato."placa">] e Chassi:  [<f' +
              'rxdbContrato."chassis">], sendo que sua finalidade e de uso excl' +
              'usivo na '#225'rea urbana do Munic'#237'pio de Porto Velho-RO. Sem restri'#231 +
              #245'es de dia e hor'#225'rio que o locat'#225'rio n'#227'o poder'#225' ceder, alugar, e' +
              'mprestar a referente [<frxdbContrato."descricao">] a terceiros o' +
              ' uso da mesma ser'#225' exclusivo do locat'#225'rio. Da dura'#231#227'o '#8211' O prazo ' +
              'de dura'#231#227'o do presente contrato e do dia [<frxdbContrato."data_a' +
              'bertura">] ,[<frxdbContrato."hora_retirada">]  At'#233' o dia [<frxdb' +
              'Contrato."data_retorno">], [<frxdbContrato."hora_entrega">], Cas' +
              'o o locat'#225'rio ultrapassar essa data ter'#225' que pagar a diaria deco' +
              'rrente, e a renova'#231#227'o do contrato. Da manuten'#231#227'o e conserva'#231#227'o '#8211 +
              ' O locador entrega a referida veiculo em condi'#231#245'es normais de us' +
              'o ao locat'#225'rio, por sua vez, ser'#225' obrigado a devolver a mesma na' +
              ' preza estipula'#231#227'o pelo contrato, nas mesmas condi'#231#245'es de uso em' +
              ' que se encontrava o bem, assumindo total responsabilidade de ev' +
              'entuais danifica'#231#245'es de acidentes com outros tipos de ve'#237'culos e' +
              ' pessoais, inclusive de terceiros, multas de tr'#226'nsito, bem como ' +
              'assumindo total responsabilidade civil e criminal. Do pagamento ' +
              #8211' Ser'#225' efetuado '#224' vista pelo locat'#225'rio, de forma imediata no rec' +
              'ebimento da veiculo e tamb'#233'm assinar'#225' uma promiss'#243'ria ou cheque ' +
              'no valor do bem: ([<frxdbContrato."valor_veiculo">]), Valor do c' +
              'heque ou promiss'#243'ria  [<frxdbContrato."valor_veiculo">] ([frxdbC' +
              'ontrato."vl_extenso"]), sendo que se o locat'#225'rio desistir do pre' +
              'sente contrato, n'#227'o ficar'#225' obrigado o locador a devolver valores' +
              ' pagos pelo locat'#225'rio. O veiculo tem que retornar com essas reco' +
              'menda'#231#245'es: [<frxdbContrato."obs">]'
            'CONSIDERA'#199#213'ES FINAIS:'
            
              '1. O presente contrato passa a vigorar a partir da assinatura do' +
              ' mesmo por ambas as'
            'partes.'
            
              '2. Fica eleito o Foro da Comarca de [<frxDBDsEmpresa."municipio"' +
              '>]-[<frxDBDsEmpresa."estado">] para diminuir eventuais d'#250'vidas'
            'que por ventura venha surgir com rela'#231#227'o ao presente Contrato.')
          ParentFont = False
          VAlign = vaCenter
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
            end
            item
              DecimalSeparator = ','
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
              DecimalSeparator = ','
              FormatStr = '%2.2m'
              Kind = fkNumeric
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
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 551.811380000000000000
          Width = 642.520100000000000000
          Height = 90.708720000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Locador:   __________________________________________'
            '                       [frxdbContrato."nome_razao"]'
            ''
            ''
            'Locat'#225'rio: __________________________________________')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 646.299630000000000000
          Width = 642.520100000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Porto Velho/RO, [<Date>],[<Time>]')
          ParentFont = False
          Formats = <
            item
              FormatStr = 'dd mmm yyyy'
              Kind = fkDateTime
            end
            item
              FormatStr = 'hh:mm'
              Kind = fkDateTime
            end>
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 1012.914040000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
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
    Left = 384
    Top = 120
  end
end
