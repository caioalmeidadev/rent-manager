object FrmRetorno: TFrmRetorno
  Left = 0
  Top = 0
  Caption = 'Retorno de Loca'#231#227'o'
  ClientHeight = 489
  ClientWidth = 1090
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 57
    Width = 1090
    Height = 432
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 428
    ClientRectLeft = 4
    ClientRectRight = 1086
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Lista de Loca'#231#245'es'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1082
        Height = 345
        Align = alTop
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsLocacoes
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'id_locacao'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'cliente_nome'
            HeaderAlignmentHorz = taCenter
            Width = 229
          end
          object cxGrid1DBTableView1Column7: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'cliente_fone'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '!\(99\)00000-0000;1;_'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Data Loca'#231#227'o'
            DataBinding.FieldName = 'data_abertura'
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Data de Retorno'
            DataBinding.FieldName = 'data_retorno'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Placa'
            DataBinding.FieldName = 'placa'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'fl_situacao_nome'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1Column8: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'obs'
            HeaderAlignmentHorz = taCenter
            Width = 404
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxButton5: TcxButton
        Left = 0
        Top = 351
        Width = 106
        Height = 50
        Caption = 'Finalizar'
        OptionsImage.ImageIndex = 48
        OptionsImage.Images = FrmPrincipal.imgs32x32
        TabOrder = 1
        OnClick = cxButton5Click
      end
      object cxButton6: TcxButton
        Left = 112
        Top = 351
        Width = 106
        Height = 50
        Caption = 'Cancelar Loca'#231#227'o'
        OptionsImage.ImageIndex = 31
        OptionsImage.Images = FrmPrincipal.imgs32x32
        TabOrder = 2
        WordWrap = True
        OnClick = cxButton6Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Lan'#231'amento'
      ImageIndex = 1
      object Código: TcxLabel
        Left = 16
        Top = 16
        Caption = 'C'#243'digo'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 39
        DataBinding.DataField = 'id_locacao'
        DataBinding.DataSource = dsLocacoes
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 111
        DataBinding.DataField = 'id_cliente'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 46
      end
      object cxLabel3: TcxLabel
        Left = 16
        Top = 88
        Caption = 'C'#243'digo'
      end
      object cxLabel4: TcxLabel
        Left = 160
        Top = 16
        Caption = 'Data Contrata'#231#227'o'
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 67
        Top = 111
        DataBinding.DataField = 'nome_razao'
        DataBinding.DataSource = dsCliente
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 197
      end
      object cxLabel5: TcxLabel
        Left = 67
        Top = 88
        Caption = 'Nome'
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 270
        Top = 111
        DataBinding.DataField = 'cliente_fone'
        DataBinding.DataSource = dsLocacoes
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 7
        Width = 121
      end
      object cxLabel6: TcxLabel
        Left = 270
        Top = 88
        Caption = 'Contato'
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 160
        Top = 39
        DataBinding.DataField = 'data_abertura'
        DataBinding.DataSource = dsLocacoes
        Enabled = False
        TabOrder = 9
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 501
        Top = 39
        DataBinding.DataField = 'vl_diaria'
        DataBinding.DataSource = dsLocacoes
        Enabled = False
        Properties.Nullable = False
        Properties.ReadOnly = True
        TabOrder = 10
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 287
        Top = 39
        DataBinding.DataField = 'data_retorno'
        DataBinding.DataSource = dsLocacoes
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnChange = cxDBDateEdit2PropertiesChange
        TabOrder = 11
        Width = 121
      end
      object cxLabel7: TcxLabel
        Left = 287
        Top = 16
        Caption = 'Data Retorno'
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 628
        Top = 39
        DataBinding.DataField = 'vl_total'
        DataBinding.DataSource = dsLocacoes
        Enabled = False
        Properties.Nullable = False
        Properties.ReadOnly = True
        TabOrder = 13
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 270
        Top = 167
        DataBinding.DataField = 'placa'
        DataBinding.DataSource = dsLocacoes
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 14
        Width = 121
      end
      object cxLabel8: TcxLabel
        Left = 270
        Top = 144
        Caption = 'Placa'
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 67
        Top = 167
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = dsVeiculo
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 16
        Width = 197
      end
      object cxLabel9: TcxLabel
        Left = 67
        Top = 144
        Caption = 'Descri'#231#227'o'
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 16
        Top = 167
        DataBinding.DataField = 'id_veiculo'
        DataBinding.DataSource = dsVeiculo
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 18
        Width = 46
      end
      object cxLabel10: TcxLabel
        Left = 16
        Top = 144
        Caption = 'C'#243'digo'
      end
      object cxDBMemo1: TcxDBMemo
        Left = 16
        Top = 217
        DataBinding.DataField = 'obs'
        DataBinding.DataSource = dsLocacoes
        Properties.CharCase = ecUpperCase
        TabOrder = 20
        Height = 120
        Width = 519
      end
      object cxLabel11: TcxLabel
        Left = 16
        Top = 194
        Caption = 'cxLabel2'
      end
      object cxLabel12: TcxLabel
        Left = 414
        Top = 16
        Caption = 'Qtde de Dias'
      end
      object cxLabel13: TcxLabel
        Left = 501
        Top = 16
        Caption = 'Valor Di'#225'ria'
      end
      object cxLabel14: TcxLabel
        Left = 628
        Top = 16
        Caption = 'Valor a Pagar'
      end
      object ed_qtde_dias: TcxTextEdit
        Left = 414
        Top = 39
        Enabled = False
        Properties.OnChange = ed_qtde_diasPropertiesChange
        TabOrder = 25
        Text = '0'
        Width = 66
      end
      object cxButton1: TcxButton
        Left = 15
        Top = 352
        Width = 89
        Height = 37
        Caption = 'Alterar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = FrmPrincipal.imgs16x16
        TabOrder = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 110
        Top = 352
        Width = 89
        Height = 37
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = FrmPrincipal.imgs16x16
        TabOrder = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 205
        Top = 352
        Width = 150
        Height = 37
        Caption = 'Finalizar Loca'#231#227'o'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = FrmPrincipal.imgs16x16
        TabOrder = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton3Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1090
    Height = 57
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      AlignWithMargins = True
      Left = 51
      Top = 11
      Margins.Left = 50
      Margins.Top = 10
      Align = alLeft
      AutoSize = False
      Caption = 'Retorno de Ve'#237'culos Locados'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 42
      Width = 429
    end
  end
  object qrLocacoes: TFDQuery
    AfterScroll = qrLocacoesAfterScroll
    Connection = DM.Conn
    SQL.Strings = (
      
        ' SELECT '#10'        `l`.`id_locacao` AS `id_locacao`,'#10'        `l`.`' +
        'data_abertura` AS `data_abertura`,'#10'        `l`.`data_retorno` AS' +
        ' `data_retorno`,'#10'        `l`.`cliente_fone` AS `cliente_fone`,'#10' ' +
        '       `l`.`vl_diaria` AS `vl_diaria`,'#10'        `l`.`vl_total` AS' +
        ' `vl_total`,'#10'        `l`.`km_abertura` AS `km_abertura`,'#10'       ' +
        ' `l`.`km_fechamento` AS `km_fechamento`,'#10'        `l`.`obs` AS `o' +
        'bs`,'#10'        `l`.`fl_situacao` AS `fl_situacao`,'#10'        (CASE'#10' ' +
        '           WHEN (`l`.`fl_situacao` = 0) THEN '#39'ABERTA'#39#10'          ' +
        '  WHEN (`l`.`fl_situacao` = 1) THEN '#39'CANCELADA'#39#10'            WHEN' +
        ' (`l`.`fl_situacao` = 2) THEN '#39'FECHADA'#39#10'        END) AS `fl_situ' +
        'acao_nome`,'#10'        `v`.`placa` AS `placa`,'#10'        `v`.`descric' +
        'ao` AS `veiculo_descricao`,'#10'        `c`.`nome_razao` AS `cliente' +
        '_nome`,'#10'        `l`.`veiculo_id` AS `veiculo_id`,'#10'        `l`.`c' +
        'liente_id` AS `cliente_id`,'#10'        (TO_DAYS(`l`.`data_retorno`)' +
        ' - TO_DAYS(`l`.`data_abertura`)) AS `qtde_dias`'#10'    FROM'#10'       ' +
        ' ((`tb_locacao` `l`'#10'        LEFT JOIN `tb_clientes` `c` ON ((`l`'
      
        '.`cliente_id` = `c`.`id_cliente`)))'#10'        LEFT JOIN `tb_veicul' +
        'os` `v` ON ((`l`.`veiculo_id` = `v`.`id_veiculo`)))')
    Left = 460
    Top = 19
    object qrLocacoesid_locacao: TFDAutoIncField
      FieldName = 'id_locacao'
      Origin = 'id_locacao'
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
    object qrLocacoescliente_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_fone'
      Origin = 'cliente_fone'
      Size = 14
    end
    object qrLocacoesvl_diaria: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_diaria'
      Origin = 'vl_diaria'
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
    object qrLocacoesobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object qrLocacoesfl_situacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fl_situacao'
      Origin = 'fl_situacao'
    end
    object qrLocacoesfl_situacao_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_situacao_nome'
      Origin = 'fl_situacao_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object qrLocacoesplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qrLocacoesveiculo_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veiculo_descricao'
      Origin = 'veiculo_descricao'
      Size = 150
    end
    object qrLocacoescliente_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_nome'
      Origin = 'cliente_nome'
      Size = 120
    end
    object qrLocacoesveiculo_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'veiculo_id'
      Origin = 'veiculo_id'
    end
    object qrLocacoescliente_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
    end
    object qrLocacoesqtde_dias: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'qtde_dias'
      Origin = 'qtde_dias'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsLocacoes: TDataSource
    DataSet = qrLocacoes
    Left = 492
    Top = 19
  end
  object qrCliente: TFDQuery
    MasterSource = dsLocacoes
    MasterFields = 'cliente_id'
    Connection = DM.Conn
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from tb_clientes where id_cliente = :cliente_id')
    Left = 784
    Top = 16
    ParamData = <
      item
        Name = 'CLIENTE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object qrVeiculo: TFDQuery
    MasterSource = dsLocacoes
    MasterFields = 'veiculo_id'
    Connection = DM.Conn
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from tb_veiculos where id_veiculo = :veiculo_id')
    Left = 880
    Top = 8
    ParamData = <
      item
        Name = 'VEICULO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsCliente: TDataSource
    DataSet = qrCliente
    Left = 780
    Top = 59
  end
  object dsVeiculo: TDataSource
    DataSet = qrVeiculo
    Left = 876
    Top = 51
  end
end
