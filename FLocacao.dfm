object FrmLocacao: TFrmLocacao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Loca'#231#227'o'
  ClientHeight = 513
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Univia Pro'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    832
    513)
  PixelsPerInch = 96
  TextHeight = 13
  object Cliente: TcxGroupBox
    Left = 6
    Top = 72
    Caption = 'Cliente'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Univia Pro'
    Style.Font.Style = [fsItalic]
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 129
    Width = 417
    object ed_cod_cliente: TcxButtonEdit
      Left = 24
      Top = 39
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = ed_cod_clientePropertiesButtonClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = ed_cod_clienteKeyPress
      Width = 73
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 16
      Caption = 'C'#243'digo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ed_nome_cliente: TcxTextEdit
      Left = 103
      Top = 39
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 307
    end
    object ed_doc: TcxTextEdit
      Left = 103
      Top = 89
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 146
    end
    object cxLabel4: TcxLabel
      Left = 103
      Top = 16
      Caption = 'Nome'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel5: TcxLabel
      Left = 103
      Top = 66
      Caption = 'CPF / CNPJ'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ed_fone: TcxTextEdit
      Left = 255
      Top = 89
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 146
    end
    object cxLabel15: TcxLabel
      Left = 255
      Top = 66
      Caption = 'Telefone'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 429
    Top = 72
    Alignment = alTopRight
    Caption = 'Ve'#237'culo'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Univia Pro'
    Style.Font.Style = [fsItalic]
    Style.IsFontAssigned = True
    TabOrder = 1
    Height = 129
    Width = 378
    object ed_cod_veiculo: TcxButtonEdit
      Left = 24
      Top = 69
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = ed_cod_veiculoPropertiesButtonClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = ed_cod_veiculoKeyPress
      Width = 65
    end
    object cxLabel3: TcxLabel
      Left = 103
      Top = 66
      Caption = 'KM Inicial'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel6: TcxLabel
      Left = 16
      Top = 66
      Caption = 'Placa'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel7: TcxLabel
      Left = 87
      Top = 16
      Caption = 'Descri'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel8: TcxLabel
      Left = 16
      Top = 16
      Caption = 'C'#243'digo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ed_desc_veiculo: TcxTextEdit
      Left = 87
      Top = 39
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 266
    end
    object ed_placa: TcxTextEdit
      Left = 16
      Top = 89
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 82
    end
    object ed_km_inicial: TcxTextEdit
      Left = 104
      Top = 89
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 82
    end
    object ed_vl_diaria: TcxCurrencyEdit
      Left = 283
      Top = 89
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = False
      Properties.OnChange = ed_vl_diariaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 70
    end
    object cxLabel10: TcxLabel
      Left = 283
      Top = 66
      Caption = 'Valor da Di'#225'ria'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 6
    Top = 207
    Caption = 'Informa'#231#245'es Adicionais'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Univia Pro'
    Style.Font.Style = [fsItalic]
    Style.IsFontAssigned = True
    TabOrder = 2
    Height = 226
    Width = 417
    object cxLabel1: TcxLabel
      Left = 16
      Top = 24
      Caption = 'Observa'#231#245'es'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ed_obs: TcxMemo
      Left = 16
      Top = 47
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = ed_obsKeyPress
      Height = 162
      Width = 377
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 429
    Top = 207
    Alignment = alTopRight
    Caption = 'Informa'#231#245'es Gerais'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Univia Pro'
    Style.Font.Style = [fsItalic]
    Style.IsFontAssigned = True
    TabOrder = 3
    Height = 226
    Width = 378
    object ed_data_locacao: TcxDateEdit
      Left = 104
      Top = 48
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 121
    end
    object ed_data_prev_retorno: TcxDateEdit
      Left = 231
      Top = 48
      ParentFont = False
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnChange = ed_data_prev_retornoPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnExit = ed_data_prev_retornoExit
      OnKeyPress = ed_data_prev_retornoKeyPress
      Width = 121
    end
    object ed_cod_locacao: TcxTextEdit
      Left = 16
      Top = 48
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 82
    end
    object cxLabel11: TcxLabel
      Left = 16
      Top = 22
      Caption = 'C'#243'digo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel12: TcxLabel
      Left = 104
      Top = 22
      Caption = 'Data Loca'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel13: TcxLabel
      Left = 231
      Top = 22
      Caption = 'Previs'#227'o de Retorno'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ed_qtde_dias: TcxTextEdit
      Left = 241
      Top = 88
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = ed_qtde_diasPropertiesChange
      Properties.OnEditValueChanged = ed_qtde_diasPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 112
    end
    object cxLabel17: TcxLabel
      Left = 140
      Top = 89
      Caption = 'Qtde de Dias:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ed_vl_total: TcxCurrencyEdit
      Left = 241
      Top = 194
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 112
    end
    object cxLabel16: TcxLabel
      Left = 151
      Top = 195
      Caption = 'Valor Total:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel9: TcxLabel
      Left = 157
      Top = 155
      Caption = 'Desconto:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ed_vl_desconto: TcxCurrencyEdit
      Left = 296
      Top = 154
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = False
      Properties.UseDisplayFormatWhenEditing = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      OnKeyPress = ed_vl_descontoKeyPress
      Width = 57
    end
    object ed_pc_desconto: TcxCurrencyEdit
      Left = 241
      Top = 154
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.DisplayFormat = True
      Properties.Nullable = False
      Properties.ReadOnly = False
      Properties.UseDisplayFormatWhenEditing = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      OnKeyPress = ed_pc_descontoKeyPress
      Width = 49
    end
    object ed_vl_sub_total: TcxCurrencyEdit
      Left = 241
      Top = 120
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.OnChange = ed_vl_sub_totalPropertiesChange
      Properties.OnEditValueChanged = ed_vl_sub_totalPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 111
    end
    object cxLabel14: TcxLabel
      Left = 157
      Top = 121
      Caption = 'Sub Total:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Univia Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object btnNovo: TcxButton
    Left = 7
    Top = 439
    Width = 70
    Height = 66
    Anchors = [akLeft, akBottom]
    Caption = 'Novo'
    OptionsImage.ImageIndex = 29
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Univia Pro'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnNovoClick
    ExplicitTop = 358
  end
  object btnSalvar: TcxButton
    Left = 83
    Top = 439
    Width = 70
    Height = 66
    Anchors = [akLeft, akBottom]
    Caption = 'Salvar'
    Enabled = False
    OptionsImage.ImageIndex = 30
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 5
    OnEnter = btnSalvarEnter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Univia Pro'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    OnClick = btnSalvarClick
    ExplicitTop = 358
  end
  object btnCancelar: TcxButton
    Left = 159
    Top = 439
    Width = 70
    Height = 66
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    Enabled = False
    OptionsImage.ImageIndex = 31
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Univia Pro'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelarClick
    ExplicitTop = 358
  end
  object cxLabel18: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    AutoSize = False
    Caption = 'NOVO CONTRATO DE LOCA'#199#195'O'
    ParentFont = False
    Style.BorderColor = clHighlight
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Univia Pro'
    Style.Font.Style = []
    Style.Shadow = True
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.BorderColor = clHighlight
    StyleDisabled.BorderStyle = ebsNone
    StyleDisabled.Color = clHighlight
    Properties.LineOptions.Alignment = cxllaBottom
    Properties.LineOptions.InnerColor = clHighlight
    Properties.LineOptions.OuterColor = clSkyBlue
    Properties.LineOptions.Visible = True
    ExplicitWidth = 807
    Height = 35
    Width = 832
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
