object FrmDevolucao: TFrmDevolucao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Devolu'#231#227'o de Loca'#231#227'o'
  ClientHeight = 507
  ClientWidth = 722
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
    Left = 24
    Top = 25
    Caption = 'C'#243'digo'
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 24
    Top = 48
    DataBinding.DataField = 'id_locacao'
    DataBinding.DataSource = dsCancelar
    TabOrder = 1
    Width = 121
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit
    Left = 24
    Top = 208
    DataBinding.DataField = 'vl_diaria'
    DataBinding.DataSource = dsCancelar
    TabOrder = 2
    Width = 121
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 192
    Top = 48
    DataBinding.DataField = 'data_abertura'
    DataBinding.DataSource = dsCancelar
    TabOrder = 3
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 24
    Top = 128
    DataBinding.DataField = 'veiculo_id'
    DataBinding.DataSource = dsCancelar
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 160
    Top = 128
    DataBinding.DataField = 'nome_veiculo'
    DataBinding.DataSource = dsCancelar
    TabOrder = 5
    Width = 121
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 296
    Top = 128
    DataBinding.DataField = 'placa'
    DataBinding.DataSource = dsCancelar
    TabOrder = 6
    Width = 121
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 440
    Top = 128
    DataBinding.DataField = 'cliente_id'
    DataBinding.DataSource = dsCancelar
    TabOrder = 7
    Width = 121
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 567
    Top = 128
    DataBinding.DataField = 'nome_cliente'
    DataBinding.DataSource = dsCancelar
    TabOrder = 8
    Width = 121
  end
  object cxDBDateEdit2: TcxDBDateEdit
    Left = 328
    Top = 48
    DataBinding.DataField = 'data_retorno'
    DataBinding.DataSource = dsCancelar
    TabOrder = 9
    Width = 121
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit
    Left = 160
    Top = 208
    DataBinding.DataField = 'vl_total'
    DataBinding.DataSource = dsCancelar
    TabOrder = 10
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 192
    Top = 25
    Caption = 'Data Abertura'
  end
  object cxLabel3: TcxLabel
    Left = 328
    Top = 25
    Caption = 'Data Retorno'
  end
  object cxLabel4: TcxLabel
    Left = 24
    Top = 105
    Caption = 'C'#243'digo'
  end
  object cxLabel5: TcxLabel
    Left = 160
    Top = 105
    Caption = 'Ve'#237'culo'
  end
  object cxLabel6: TcxLabel
    Left = 296
    Top = 105
    Caption = 'Placa'
  end
  object cxLabel7: TcxLabel
    Left = 440
    Top = 105
    Caption = 'C'#243'digo do Cliente'
  end
  object cxLabel8: TcxLabel
    Left = 576
    Top = 105
    Caption = 'Nome'
  end
  object cxLabel9: TcxLabel
    Left = 24
    Top = 185
    Caption = 'Valor Di'#225'ria'
  end
  object cxLabel10: TcxLabel
    Left = 160
    Top = 185
    Caption = 'Valor Total'
  end
  object cxLabel11: TcxLabel
    Left = 24
    Top = 241
    Caption = 'Observa'#231#245'es'
  end
  object cxDBMemo1: TcxDBMemo
    Left = 24
    Top = 264
    DataBinding.DataField = 'obs'
    DataBinding.DataSource = dsCancelar
    TabOrder = 21
    Height = 81
    Width = 673
  end
  object cxButton1: TcxButton
    Left = 24
    Top = 424
    Width = 97
    Height = 73
    Caption = 'Realizar Cancelamento'
    OptionsImage.ImageIndex = 42
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 22
    WordWrap = True
    OnClick = cxButton1Click
  end
  object cxLabel12: TcxLabel
    Left = 24
    Top = 361
    Caption = 'Motivo do Cancelamento'
  end
  object cxButton2: TcxButton
    Left = 127
    Top = 424
    Width = 88
    Height = 73
    Caption = 'Desistir Cancelamento'
    OptionsImage.ImageIndex = 31
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 24
    Visible = False
    WordWrap = True
    OnClick = cxButton2Click
  end
  object ed_motivo_dev: TcxTextEdit
    Left = 24
    Top = 384
    TabOrder = 25
    Width = 673
  end
  object qrCancelar: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select l.*,c.nome_razao as nome_cliente,'
      'v.descricao as nome_veiculo,v.placa'
      'from tb_locacao as l'
      'left join tb_clientes as c on (l.cliente_id = c.id_cliente)'
      'left join tb_veiculos as v on (l.veiculo_id = v.id_veiculo)'
      'where id_locacao = :ID_')
    Left = 504
    Top = 16
    ParamData = <
      item
        Name = 'ID_'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrCancelarid_locacao: TFDAutoIncField
      FieldName = 'id_locacao'
      Origin = 'id_locacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrCancelardata_abertura: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_abertura'
      Origin = 'data_abertura'
    end
    object qrCancelardata_retorno: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_retorno'
      Origin = 'data_retorno'
    end
    object qrCancelarfl_situacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'fl_situacao'
      Origin = 'fl_situacao'
    end
    object qrCancelarcliente_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
    end
    object qrCancelarcliente_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente_fone'
      Origin = 'cliente_fone'
      Size = 14
    end
    object qrCancelarveiculo_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'veiculo_id'
      Origin = 'veiculo_id'
    end
    object qrCancelarkm_abertura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'km_abertura'
      Origin = 'km_abertura'
      Size = 10
    end
    object qrCancelarkm_fechamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'km_fechamento'
      Origin = 'km_fechamento'
      Size = 10
    end
    object qrCancelarvl_diaria: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_diaria'
      Origin = 'vl_diaria'
      Precision = 12
      Size = 2
    end
    object qrCancelarvl_desconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_desconto'
      Origin = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object qrCancelarvl_subtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_subtotal'
      Origin = 'vl_subtotal'
      Precision = 12
      Size = 2
    end
    object qrCancelarvl_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vl_total'
      Origin = 'vl_total'
      Precision = 12
      Size = 2
    end
    object qrCancelarobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object qrCancelarnome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_razao'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object qrCancelarnome_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_veiculo'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qrCancelarplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object dsCancelar: TDataSource
    DataSet = qrCancelar
    Left = 552
    Top = 16
  end
end
