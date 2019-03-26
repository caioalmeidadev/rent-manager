object FrmCadMunicipio: TFrmCadMunicipio
  Left = 0
  Top = 0
  Caption = 'Cadastro de Municipios'
  ClientHeight = 490
  ClientWidth = 516
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
    Width = 497
    Height = 473
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 16
      Top = 16
      Caption = 'C'#243'digo'
    end
    object cxLabel2: TcxLabel
      Left = 96
      Top = 16
      Caption = 'Nome'
    end
    object cxLabel3: TcxLabel
      Left = 320
      Top = 16
      Caption = 'Estado'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 39
      DataBinding.DataField = 'id_municipio'
      DataBinding.DataSource = dsMunicipio
      TabOrder = 3
      Width = 74
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 96
      Top = 39
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsMunicipio
      Properties.CharCase = ecUpperCase
      TabOrder = 4
      Width = 218
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 320
      Top = 39
      DataBinding.DataField = 'estado_id'
      DataBinding.DataSource = dsMunicipio
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id_estado'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListSource = dsEstado
      TabOrder = 5
      Width = 153
    end
    object cxButton1: TcxButton
      Left = 239
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Novo'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 6
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 320
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Salvar'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 7
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 401
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 8
      OnClick = cxButton3Click
    end
    object cxGrid1: TcxGrid
      Left = 19
      Top = 103
      Width = 457
      Height = 346
      TabOrder = 9
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsMunicipio
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'id_municipio'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Municipio'
          DataBinding.FieldName = 'nome'
          HeaderAlignmentHorz = taCenter
          Width = 295
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'estado_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id_estado'
          Properties.ListColumns = <
            item
              FieldName = 'uf'
            end>
          Properties.ListSource = dsEstado
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object qrMunicipio: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_municipios')
    Left = 136
    Top = 312
    object qrMunicipioid_municipio: TIntegerField
      FieldName = 'id_municipio'
      Origin = 'id_municipio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
  object dsMunicipio: TDataSource
    DataSet = qrMunicipio
    Left = 184
    Top = 312
  end
  object dsEstado: TDataSource
    DataSet = qrEstado
    Left = 184
    Top = 368
  end
  object qrEstado: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_estados')
    Left = 136
    Top = 368
    object qrEstadoid_estado: TFDAutoIncField
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrEstadonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object qrEstadouf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object qrEstadoobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 120
    end
  end
end
