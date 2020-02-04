object FrmParametros: TFrmParametros
  Left = 0
  Top = 0
  Caption = 'Parametros do Sistema'
  ClientHeight = 407
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    502
    407)
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBImage1: TcxDBImage
    Left = 16
    Top = 55
    DataBinding.DataField = 'img_fundo'
    DataBinding.DataSource = DM.dsParametros
    Properties.GraphicClassName = 'TdxPNGImage'
    Properties.PopupMenuLayout.MenuItems = [pmiLoad, pmiSave]
    TabOrder = 0
    Height = 201
    Width = 209
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 32
    Caption = 'Imagem de Fundo'
  end
  object btnSalvar: TcxButton
    Left = 233
    Top = 320
    Width = 113
    Height = 79
    Anchors = [akLeft, akBottom]
    Caption = 'Salvar'
    OptionsImage.ImageIndex = 30
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object cxDBImage2: TcxDBImage
    Left = 256
    Top = 55
    DataBinding.DataField = 'img_locacao'
    DataBinding.DataSource = DM.dsParametros
    Properties.GraphicClassName = 'TdxPNGImage'
    Properties.PopupMenuLayout.MenuItems = [pmiLoad, pmiSave]
    TabOrder = 3
    Height = 201
    Width = 209
  end
  object cxLabel2: TcxLabel
    Left = 256
    Top = 32
    Caption = 'Logo'
  end
  object btnCancelar: TcxButton
    Left = 352
    Top = 320
    Width = 113
    Height = 79
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    OptionsImage.ImageIndex = 31
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 5
    OnClick = btnCancelarClick
  end
  object cxButton1: TcxButton
    Left = 114
    Top = 320
    Width = 113
    Height = 79
    Anchors = [akLeft, akBottom]
    Caption = 'Editar'
    OptionsImage.ImageIndex = 33
    OptionsImage.Images = FrmPrincipal.imgs32x32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 6
    OnClick = cxButton1Click
  end
end
