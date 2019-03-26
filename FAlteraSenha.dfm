object FrmAlteraSenha: TFrmAlteraSenha
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Alterar Senha'
  ClientHeight = 212
  ClientWidth = 197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 16
    Top = 8
    Caption = 'Senha Atual'
    Style.TextStyle = [fsBold]
  end
  object ed_senha_atual: TcxTextEdit
    Left = 28
    Top = 31
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    TabOrder = 1
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 58
    Caption = 'Nova Senha'
    Style.TextStyle = [fsBold]
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 108
    Caption = 'Confirma Nova Senha'
    Style.TextStyle = [fsBold]
  end
  object ed_nova_senha: TcxTextEdit
    Left = 28
    Top = 81
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    TabOrder = 4
    Width = 121
  end
  object ed_confirma_senha: TcxTextEdit
    Left = 28
    Top = 131
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    TabOrder = 5
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Alterar'
    OptionsImage.ImageIndex = 3
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 6
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 112
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 7
    OnClick = cxButton2Click
  end
end
