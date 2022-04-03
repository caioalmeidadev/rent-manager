object FrmVeiculoDisponivel: TFrmVeiculoDisponivel
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Listagem de Carros Disponiveis'
  ClientHeight = 497
  ClientWidth = 753
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Ve'#237'culos Disponiv'#233'is Para Loca'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 377
      AnchorY = 29
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 113
    Width = 753
    Height = 384
    Align = alClient
    TabOrder = 1
    ExplicitTop = 134
    ExplicitWidth = 737
    ExplicitHeight = 426
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyPress = cxGrid1DBTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsVeiculosDisponiveis
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem registros a serem exibidos'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'id_veiculo'
        HeaderAlignmentHorz = taCenter
        Width = 82
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Placa'
        DataBinding.FieldName = 'placa'
        HeaderAlignmentHorz = taCenter
        Width = 69
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descricao'
        HeaderAlignmentHorz = taCenter
        Width = 326
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'KM Atual'
        DataBinding.FieldName = 'km_atual'
        HeaderAlignmentHorz = taCenter
        Width = 84
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'fl_tipo_veiculo'
        HeaderAlignmentHorz = taCenter
        Width = 154
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView2DblClick
      Navigator.Buttons.CustomButtons = <>
      FindPanel.InfoText = 'Info Text'
      DataController.DataSource = dsVeiculosDisponiveis
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Arraste a coluna que deseja filtrar'
      NewItemRow.InfoText = 'New Item'
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Vital Solutions'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView2Column1: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id_veiculo'
      end
      object cxGrid1DBTableView2Column2: TcxGridDBColumn
        Caption = 'TIPO'
        DataBinding.FieldName = 'fl_tipo_veiculo'
        Width = 110
      end
      object cxGrid1DBTableView2Column3: TcxGridDBColumn
        Caption = 'DESCRI'#199#195'O'
        DataBinding.FieldName = 'descricao'
        Width = 236
      end
      object cxGrid1DBTableView2Column4: TcxGridDBColumn
      end
      object cxGrid1DBTableView2Column5: TcxGridDBColumn
        Caption = 'PLACA'
        DataBinding.FieldName = 'placa'
        Width = 69
      end
      object cxGrid1DBTableView2Column6: TcxGridDBColumn
        Caption = 'KM ATUAL'
        DataBinding.FieldName = 'km_atual'
        Width = 113
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 753
    Height = 56
    Align = alTop
    TabOrder = 2
    object cb_tp_pesquisa: TComboBox
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Placa'
      Items.Strings = (
        'Placa'
        'Descri'#231#227'o'
        'Tipo')
    end
    object edt_pesquisa: TEdit
      Left = 168
      Top = 24
      Width = 561
      Height = 21
      TabOrder = 1
      OnChange = edt_pesquisaChange
    end
  end
  object qrVeiculosDisponiveis: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select id_veiculo,descricao,placa,'
      'fl_tipo_veiculo,km_atual'
      'from tb_veiculos where fl_locacao = '#39'N'#39' and'
      'fl_status_veiculo <> '#39'INATIVO'#39)
    Left = 304
    Top = 168
    object qrVeiculosDisponiveisid_veiculo: TFDAutoIncField
      FieldName = 'id_veiculo'
      Origin = 'id_veiculo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrVeiculosDisponiveisdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 150
    end
    object qrVeiculosDisponiveisplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qrVeiculosDisponiveisfl_tipo_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fl_tipo_veiculo'
      Origin = 'fl_tipo_veiculo'
      Size = 45
    end
    object qrVeiculosDisponiveiskm_atual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'km_atual'
      Origin = 'km_atual'
      Size = 45
    end
  end
  object dsVeiculosDisponiveis: TDataSource
    DataSet = qrVeiculosDisponiveis
    Left = 384
    Top = 192
  end
end
