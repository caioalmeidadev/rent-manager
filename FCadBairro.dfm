object FrmCadBairro: TFrmCadBairro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Bairro'
  ClientHeight = 479
  ClientWidth = 582
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
    Left = 8
    Top = 8
    Width = 561
    Height = 457
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 8
      Top = 16
      Caption = 'C'#243'digo'
    end
    object cxLabel2: TcxLabel
      Left = 72
      Top = 16
      Caption = 'Nome'
    end
    object cxLabel3: TcxLabel
      Left = 344
      Top = 16
      Caption = 'Municipio'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 8
      Top = 39
      DataBinding.DataField = 'id_bairro'
      DataBinding.DataSource = dsBairro
      TabOrder = 3
      Width = 58
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 72
      Top = 39
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsBairro
      Properties.CharCase = ecUpperCase
      TabOrder = 4
      Width = 266
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 344
      Top = 39
      DataBinding.DataField = 'municipio_id'
      DataBinding.DataSource = dsBairro
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id_municipio'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsMunicipio
      TabOrder = 5
      Width = 201
    end
    object cxButton1: TcxButton
      Left = 308
      Top = 66
      Width = 75
      Height = 25
      Caption = 'Novo'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 6
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 389
      Top = 66
      Width = 75
      Height = 25
      Caption = 'Salvar'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 7
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 470
      Top = 66
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 8
      OnClick = cxButton3Click
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 97
      Width = 537
      Height = 337
      TabOrder = 9
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsBairro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'id_bairro'
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Municipio'
          DataBinding.FieldName = 'municipio_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id_municipio'
          Properties.ListColumns = <
            item
              FieldName = 'nome'
            end>
          Properties.ListSource = dsMunicipio
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object qrBairro: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_bairros')
    Left = 168
    Top = 232
    object qrBairroid_bairro: TFDAutoIncField
      FieldName = 'id_bairro'
      Origin = 'id_bairro'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrBairronome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object qrBairroobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 120
    end
    object qrBairrocep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qrBairromunicipio_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'municipio_id'
      Origin = 'municipio_id'
    end
  end
  object dsBairro: TDataSource
    DataSet = qrBairro
    Left = 224
    Top = 232
  end
  object dsMunicipio: TDataSource
    DataSet = qrMunicipio
    Left = 224
    Top = 296
  end
  object qrMunicipio: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_municipios')
    Left = 168
    Top = 296
    object qrMunicipioid_municipio: TFDAutoIncField
      FieldName = 'id_municipio'
      Origin = 'id_municipio'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrMunicipionome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object qrMunicipioestado_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'estado_id'
      Origin = 'estado_id'
    end
    object qrMunicipiosigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 5
    end
  end
end
