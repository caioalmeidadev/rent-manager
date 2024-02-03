object FrmRelContrato: TFrmRelContrato
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o de Contrato'
  ClientHeight = 189
  ClientWidth = 536
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
    Left = 184
    Top = 61
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
    Left = 184
    Top = 87
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 121
  end
  object cxLabel5: TcxLabel
    Left = 317
    Top = 61
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
    Left = 311
    Top = 87
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 364
    Top = 121
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
    Top = 121
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
    OnCalcFields = qrContratoCalcFields
    Connection = DM.Conn
    SQL.Strings = (
      
        'select c.nome_razao, c.endereco,c.nu_endereco,c.telefone1,c.tele' +
        'fone2,c.rg,c.cpf_cnpj,c.cnh,v.marca_veiculo,v.cor_veiculo,'#10'v.pla' +
        'ca,v.descricao,v.chassis,'
      
        'v.fl_tipo_veiculo,b.nome as bairro,l.data_abertura,l.data_retorn' +
        'o,'
      
        'c.id_cliente,v.id_veiculo,'#10'l.obs,l.id_locacao,l.vl_diaria,l.vl_t' +
        'otal,v.valor_veiculo,'
      'datediff(l.data_retorno,l.data_abertura) as qtde_dias'
      #10'from tb_locacao as l'
      #10'left join tb_clientes as c on l.cliente_id = c.id_cliente'
      #10'left join tb_bairros as b on c.bairro_id = b.id_bairro'
      #10'left join tb_veiculos as v on l.veiculo_id = v.id_veiculo'
      'where id_locacao like :ID_')
    Left = 40
    Top = 120
    ParamData = <
      item
        Name = 'ID_'
        DataType = ftString
        ParamType = ptInput
        Value = '9'
      end>
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
      LookupDataSet = DM.qrEmpresa
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
    object qrContratodescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 150
    end
    object qrContratochassis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chassis'
      Origin = 'chassis'
      Size = 45
    end
    object qrContratofl_tipo_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_tipo_veiculo'
      Origin = 'fl_tipo_veiculo'
      Size = 45
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
    object qrContratoobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object qrContratoid_locacao: TFDAutoIncField
      FieldName = 'id_locacao'
      Origin = 'id_locacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrContratovl_diaria: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_diaria'
      Origin = 'vl_diaria'
      Precision = 12
      Size = 2
    end
    object qrContratovl_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_total'
      Origin = 'vl_total'
      Precision = 12
      Size = 2
    end
    object qrContratovalor_veiculo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor_veiculo'
      Origin = 'valor_veiculo'
      Precision = 10
      Size = 2
    end
    object qrContratobairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object qrContratoqtde_dias: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'qtde_dias'
      Origin = 'qtde_dias'
    end
  end
  object dsContrato: TDataSource
    DataSet = qrContrato
    Left = 88
    Top = 120
  end
  object frxdbContrato: TfrxDBDataset
    UserName = 'frxdbContrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'vl_extenso=vl_extenso'
      'hora_retirada=hora_retirada'
      'hora_entrega=hora_entrega'
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
      'descricao=descricao'
      'chassis=chassis'
      'fl_tipo_veiculo=fl_tipo_veiculo'
      'data_abertura=data_abertura'
      'data_retorno=data_retorno'
      'id_cliente=id_cliente'
      'id_veiculo=id_veiculo'
      'obs=obs'
      'id_locacao=id_locacao'
      'vl_diaria=vl_diaria'
      'vl_total=vl_total'
      'valor_veiculo=valor_veiculo'
      'bairro=bairro'
      'qtde_dias=qtde_dias')
    DataSource = dsContrato
    BCDToCurrency = False
    Left = 160
    Top = 120
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43546.360455046300000000
    ReportOptions.LastChange = 45028.495676145830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 160
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
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 11.338590000000000000
          Width = 619.842920000000000000
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
          Width = 98.267780000000000000
          Height = 71.811070000000000000
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
          Top = 79.370130000000000000
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
        Height = 870.911698570000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxdbContrato
        DataSetName = 'frxdbContrato'
        RowCount = 0
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 510.236550000000000000
          Width = 718.110700000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Ser'#225' efetuado '#224' vista pelo locat'#225'rio, de forma imediata no receb' +
              'imento da veiculo com o valor de pagamento [<frxdbContrato."vl_t' +
              'otal">], considerando a di'#225'ria [<frxdbContrato."vl_diaria">] e o' +
              ' periodo de loca'#231#227'o de [<frxdbContrato."qtde_dias">] dias e tamb' +
              #233'm assinar'#225' uma promiss'#243'ria ou cheque no valor do bem, o valor d' +
              'o cheque ou promiss'#243'ria  [<frxdbContrato."valor_veiculo">] ([frx' +
              'dbContrato."vl_extenso"]), sendo que se o locat'#225'rio desistir do ' +
              'presente contrato, n'#227'o ficar'#225' obrigado o locador a devolver valo' +
              'res pagos pelo locat'#225'rio. O veiculo tem que retornar com essas r' +
              'ecomenda'#231#245'es: [<frxdbContrato."obs">]')
          ParentFont = False
          Formats = <
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
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 726.772110000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxDBDsEmpresa."municipio">]/[<frxDBDsEmpresa."estado">], [<Da' +
              'te>],[<Time>]')
          ParentFont = False
          Formats = <
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
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 79.370130000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Locador: [frxDBDsEmpresa."razao_social"], nesta cidade na [<frxD' +
              'BDsEmpresa."endereco">], [<frxDBDsEmpresa."nu_endereco">] Bairro' +
              ': [<frxDBDsEmpresa."bairro">], com o telefone: [<frxDBDsEmpresa.' +
              '"telefone1">]-[<frxDBDsEmpresa."telefone2">]. CNPJ:[<frxDBDsEmpr' +
              'esa."cnpj">]. Fantasia:[<frxDBDsEmpresa."nome_fantasia">]')
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
            end>
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 90.165430000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Locat'#225'rio: [<frxdbContrato."nome_razao">], maior, residente e do' +
              'miciliado nesta cidade na [<frxdbContrato."endereco">],N'#186' [<frxd' +
              'bContrato."nu_endereco">] - Bairro: [<frxdbContrato."bairro">]. ' +
              'Telefone: [<frxdbContrato."telefone1">] - [<frxdbContrato."telef' +
              'one2">] RG: [<frxdbContrato."rg">], CPF/CNPJ: [<frxdbContrato."c' +
              'pf_cnpj">], CNH: [<frxdbContrato."cnh">].')
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
            end>
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 181.417440000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Do Objeto de Loca'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 211.653680000000000000
          Width = 718.110700000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Placa: [<frxdbContrato."placa">] e Chassi: [<frxdbContrato."chas' +
              'sis">], sendo que sua finalidade '#233' de uso exclusivo na '#225'rea urba' +
              'na no Munic'#237'pio de [<frxDBDsEmpresa."municipio">]/[<frxDBDsEmpre' +
              'sa."estado">]. Sem restri'#231#227'o de dia e hor'#225'rio que o locat'#225'rio n'#227 +
              'o poder'#225' ceder, alugar, emprestar a referente [<frxdbContrato."f' +
              'l_tipo_veiculo">] a terceiros, o usoser'#225' exclusivo do locat'#225'rio.')
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
            end>
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 287.244280000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Da dura'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 308.141930000000000000
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'O prazo de dura'#231#227'o do presente contrato '#233' do dia [<frxdbContrato' +
              '."data_abertura">] - [<frxdbContrato."hora_retirada">], at'#233' o di' +
              'a [<frxdbContrato."data_retorno">] - [<frxdbContrato."hora_entre' +
              'ga">]. Caso o locat'#225'rio ultrapassar essa data ter'#225' que pagar a d' +
              'iaria decorrente e a renova'#231#227'o do contrato.')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 377.953000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Da Manuten'#231#227'o e Conserva'#231#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 404.409710000000000000
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'O locador entrega a referida ve'#237'culo em condi'#231#245'es normais de uso' +
              ' ao locat'#225'rio, por sua vez, ser'#225' obrigado a devolver a mesa na p' +
              'reza estipula'#231#227'o pelo contrato, nas mesmas condi'#231#245'es de uso em q' +
              'ue se encontrava o bem, assumindo total responsabilidade de even' +
              'tuais danifica'#231#245'es de acidentes com outros tipos de ve'#237'culos e p' +
              'essoais, inclusive de terceiros, multas de tr'#226'nsito, bem como as' +
              'sumindo total responsabilidade civil e criminal.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 487.559370000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Do Pagamento')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 632.283860000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Considera'#231#245'es Finais')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 654.961040000000000000
          Width = 718.110700000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'O ve'#237'culo tem que retornar com essas recomenda'#231#245'es: [<frxdbContr' +
              'ato."obs">].'
            
              'O presente contrato passa a vigorar a partir da assinatura do me' +
              'smo por ambas as partes.'
            
              'Fica eleito o Foto da Comarca de [<frxDBDsEmpresa."municipio">]/' +
              '[<frxDBDsEmpresa."estado">] para diminuir eventuais d'#250'vidas que ' +
              'por ventura venha surgir com rela'#231#227'o ao presente contrato.')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 295.787570000000000000
          Top = 783.745149520000000000
          Width = 86.929190000000000000
          Height = 20.517448570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'LOCADOR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 292.008040000000000000
          Top = 844.937540000000000000
          Width = 86.929190000000000000
          Height = 16.737918570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Arial Unicode MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'LOCAT'#193'RIO')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 155.944960000000000000
          Top = 846.937540000000000000
          Width = 366.614410000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 155.944960000000000000
          Top = 784.465060000000000000
          Width = 366.614410000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 1092.284170000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 259.346630000000000000
          Top = -0.519686670000056000
          Width = 192.756030000000000000
          Height = 18.177739520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rent Manager - AlmeidaTECH')
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
    Left = 96
    Top = 160
  end
end
