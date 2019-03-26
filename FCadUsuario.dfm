object FrmCadUsuario: TFrmCadUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 370
  ClientWidth = 527
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
    Left = 8
    Top = 56
    Width = 505
    Height = 297
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 293
    ClientRectLeft = 4
    ClientRectRight = 501
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Lista'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 24
        Width = 473
        Height = 202
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsUsuarios
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'id_usuario'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'nome_usuario'
            Width = 140
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'login'
            Width = 157
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Perfil de Acesso'
            DataBinding.FieldName = 'acesso_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'id_acesso'
            Properties.ListColumns = <
              item
                FieldName = 'nome_acesso'
              end>
            Properties.ListSource = dsAcesso
            Width = 101
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxButton1: TcxButton
        Left = 317
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Novo'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = FrmPrincipal.imgs16x16
        TabOrder = 1
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 398
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Alterar'
        OptionsImage.ImageIndex = 11
        OptionsImage.Images = FrmPrincipal.imgs16x16
        TabOrder = 2
        OnClick = cxButton2Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 3
        Top = 39
        DataBinding.DataField = 'id_usuario'
        DataBinding.DataSource = dsUsuarios
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Width = 46
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 55
        Top = 39
        DataBinding.DataField = 'nome_usuario'
        DataBinding.DataSource = dsUsuarios
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 178
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 182
        Top = 89
        DataBinding.DataField = 'senha'
        DataBinding.DataSource = dsUsuarios
        Properties.CharCase = ecUpperCase
        Properties.EchoMode = eemPassword
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 55
        Top = 89
        DataBinding.DataField = 'login'
        DataBinding.DataSource = dsUsuarios
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 16
        Caption = 'C'#243'digo'
      end
      object cxLabel2: TcxLabel
        Left = 55
        Top = 16
        Caption = 'Nome'
      end
      object cxLabel3: TcxLabel
        Left = 182
        Top = 66
        Caption = 'Senha'
      end
      object cxLabel4: TcxLabel
        Left = 55
        Top = 120
        Caption = 'Perfil de acesso'
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 55
        Top = 143
        DataBinding.DataField = 'acesso_id'
        DataBinding.DataSource = dsUsuarios
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'id_acesso'
        Properties.ListColumns = <
          item
            FieldName = 'nome_acesso'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsAcesso
        TabOrder = 8
        Width = 248
      end
      object cxLabel6: TcxLabel
        Left = 55
        Top = 66
        Caption = 'Usu'#225'rio'
      end
      object cxButton4: TcxButton
        Left = 147
        Top = 208
        Width = 75
        Height = 41
        Caption = 'Salvar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = FrmPrincipal.imgs16x16
        TabOrder = 10
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 228
        Top = 208
        Width = 75
        Height = 41
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = FrmPrincipal.imgs16x16
        TabOrder = 11
        OnClick = cxButton5Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 50
    Align = alTop
    TabOrder = 1
    object cxLabel5: TcxLabel
      Left = 136
      Top = 6
      Caption = 'Cadastro de Usu'#225'rios'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object qrUsuarios: TFDQuery
    AfterScroll = qrUsuariosAfterScroll
    Connection = DM.Conn
    SQL.Strings = (
      'select *'
      'from tb_usuarios')
    Left = 432
    Top = 88
    object qrUsuariosid_usuario: TFDAutoIncField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrUsuariosnome_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_usuario'
      Origin = 'nome_usuario'
      Size = 45
    end
    object qrUsuarioslogin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'login'
      Origin = 'login'
      Size = 45
    end
    object qrUsuariossenha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object qrUsuariosacesso_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'acesso_id'
      Origin = 'acesso_id'
    end
  end
  object dsUsuarios: TDataSource
    DataSet = qrUsuarios
    Left = 464
    Top = 88
  end
  object qrAcesso: TFDQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select id_acesso,nome_acesso'
      'from tb_usuario_acesso'
      'where id_acesso like :ID_')
    Left = 220
    Top = 80
    ParamData = <
      item
        Name = 'ID_'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsAcesso: TDataSource
    DataSet = qrAcesso
    Left = 252
    Top = 80
  end
end
