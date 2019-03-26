object FrmCadEstado: TFrmCadEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estado'
  ClientHeight = 549
  ClientWidth = 505
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
    Width = 473
    Height = 513
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 16
      Top = 168
      Width = 425
      Height = 313
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsEstado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'id_estado'
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'UF'
          DataBinding.FieldName = 'uf'
          HeaderAlignmentHorz = taCenter
          Width = 38
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 32
      DataBinding.DataField = 'id_estado'
      DataBinding.DataSource = dsEstado
      TabOrder = 1
      Width = 73
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 95
      Top = 32
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsEstado
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 202
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 303
      Top = 32
      DataBinding.DataField = 'uf'
      DataBinding.DataSource = dsEstado
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 2
      TabOrder = 3
      Width = 73
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 16
      Top = 88
      DataBinding.DataField = 'obs'
      DataBinding.DataSource = dsEstado
      TabOrder = 4
      Width = 361
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 9
      Caption = 'C'#243'digo'
    end
    object cxLabel2: TcxLabel
      Left = 95
      Top = 9
      Caption = 'Nome'
    end
    object cxLabel3: TcxLabel
      Left = 303
      Top = 9
      Caption = 'Sigla'
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 65
      Caption = 'Obs'
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Novo'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 9
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 97
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Salvar'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 10
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 178
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = FrmPrincipal.imgs16x16
      TabOrder = 11
      OnClick = cxButton3Click
    end
  end
  object qrEstado: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select * from tb_estados')
    Left = 432
    Top = 80
    object qrEstadoid_estado: TFDAutoIncField
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInWhere, pfInKey]
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
  object dsEstado: TDataSource
    DataSet = qrEstado
    Left = 456
    Top = 136
  end
end
