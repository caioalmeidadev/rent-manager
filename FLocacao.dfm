object FrmLocacao: TFrmLocacao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Loca'#231#227'o'
  ClientHeight = 432
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    862
    432)
  PixelsPerInch = 96
  TextHeight = 13
  object Cliente: TcxGroupBox
    Left = 8
    Top = 8
    Caption = 'Cliente'
    TabOrder = 0
    Height = 129
    Width = 417
    object ed_cod_cliente: TcxButtonEdit
      Left = 24
      Top = 39
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = ed_cod_clientePropertiesButtonClick
      TabOrder = 0
      OnKeyPress = ed_cod_clienteKeyPress
      Width = 73
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 16
      Caption = 'C'#243'digo'
    end
    object ed_nome_cliente: TcxTextEdit
      Left = 103
      Top = 39
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 307
    end
    object ed_doc: TcxTextEdit
      Left = 103
      Top = 89
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 146
    end
    object cxLabel4: TcxLabel
      Left = 103
      Top = 16
      Caption = 'Nome'
    end
    object cxLabel5: TcxLabel
      Left = 103
      Top = 66
      Caption = 'CPF / CNPJ'
    end
    object ed_fone: TcxTextEdit
      Left = 255
      Top = 89
      Properties.CharCase = ecUpperCase
      TabOrder = 6
      Width = 146
    end
    object cxLabel15: TcxLabel
      Left = 255
      Top = 66
      Caption = 'Telefone'
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 431
    Top = 8
    Caption = 'Ve'#237'culo'
    TabOrder = 1
    Height = 129
    Width = 417
    object ed_cod_veiculo: TcxButtonEdit
      Left = 16
      Top = 39
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = ed_cod_veiculoPropertiesButtonClick
      TabOrder = 0
      OnKeyPress = ed_cod_veiculoKeyPress
      Width = 65
    end
    object cxLabel3: TcxLabel
      Left = 103
      Top = 66
      Caption = 'KM Inicial'
    end
    object cxLabel6: TcxLabel
      Left = 16
      Top = 66
      Caption = 'Placa'
    end
    object cxLabel7: TcxLabel
      Left = 87
      Top = 16
      Caption = 'Descri'#231#227'o'
    end
    object cxLabel8: TcxLabel
      Left = 16
      Top = 16
      Caption = 'C'#243'digo'
    end
    object ed_desc_veiculo: TcxTextEdit
      Left = 87
      Top = 39
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 266
    end
    object ed_placa: TcxTextEdit
      Left = 16
      Top = 89
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 82
    end
    object ed_km_inicial: TcxTextEdit
      Left = 104
      Top = 89
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 82
    end
    object ed_vl_diaria: TcxCurrencyEdit
      Left = 283
      Top = 89
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.OnChange = ed_vl_diariaPropertiesChange
      TabOrder = 8
      Width = 89
    end
    object cxLabel10: TcxLabel
      Left = 283
      Top = 66
      Caption = 'Valor da Di'#225'ria'
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 143
    Caption = 'Informa'#231#245'es Adicionais'
    TabOrder = 2
    Height = 202
    Width = 417
    object cxLabel1: TcxLabel
      Left = 16
      Top = 24
      Caption = 'Observa'#231#245'es'
    end
    object ed_obs: TcxMemo
      Left = 16
      Top = 47
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Height = 138
      Width = 377
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 431
    Top = 143
    Caption = 'Ve'#237'culo'
    TabOrder = 3
    Height = 202
    Width = 417
    object ed_data_locacao: TcxDateEdit
      Left = 104
      Top = 32
      Enabled = False
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 121
    end
    object ed_data_prev_retorno: TcxDateEdit
      Left = 231
      Top = 32
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnChange = ed_data_prev_retornoPropertiesChange
      TabOrder = 1
      OnExit = ed_data_prev_retornoExit
      Width = 121
    end
    object ed_cod_locacao: TcxTextEdit
      Left = 16
      Top = 32
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 82
    end
    object cxLabel11: TcxLabel
      Left = 16
      Top = 14
      Caption = 'C'#243'digo'
    end
    object cxLabel12: TcxLabel
      Left = 104
      Top = 14
      Caption = 'Data Loca'#231#227'o'
    end
    object cxLabel13: TcxLabel
      Left = 231
      Top = 14
      Caption = 'Previs'#227'o de Retorno'
    end
    object ed_qtde_dias: TcxTextEdit
      Left = 275
      Top = 95
      Properties.ReadOnly = True
      Properties.OnChange = ed_qtde_diasPropertiesChange
      Properties.OnEditValueChanged = ed_qtde_diasPropertiesEditValueChanged
      TabOrder = 6
      Width = 82
    end
    object cxLabel17: TcxLabel
      Left = 203
      Top = 96
      Caption = 'Qtde de Dias'
    end
    object ed_vl_total: TcxCurrencyEdit
      Left = 81
      Top = 95
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      TabOrder = 8
      Width = 116
    end
    object cxLabel16: TcxLabel
      Left = 16
      Top = 96
      Caption = 'Valor Total:'
    end
  end
  object btnNovo: TcxButton
    Left = 279
    Top = 351
    Width = 70
    Height = 66
    Anchors = [akLeft, akBottom]
    Caption = 'Novo'
    OptionsImage.ImageIndex = 29
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 4
    OnClick = btnNovoClick
  end
  object btnSalvar: TcxButton
    Left = 355
    Top = 351
    Width = 70
    Height = 66
    Anchors = [akLeft, akBottom]
    Caption = 'Salvar'
    Enabled = False
    OptionsImage.ImageIndex = 30
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 5
    WordWrap = True
    OnClick = btnSalvarClick
  end
  object btnCancelar: TcxButton
    Left = 431
    Top = 351
    Width = 70
    Height = 66
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    Enabled = False
    OptionsImage.ImageIndex = 31
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 6
    OnClick = btnCancelarClick
  end
  object qrLocacao: TFDQuery
    Connection = DM.Conn
    Left = 224
    Top = 304
  end
  object qrCliente: TFDQuery
    Connection = DM.Conn
    Left = 272
    Top = 304
  end
  object qrVeiculo: TFDQuery
    Connection = DM.Conn
    Left = 320
    Top = 304
  end
end
