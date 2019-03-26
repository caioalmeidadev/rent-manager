object FrmLocLocacao: TFrmLocLocacao
  Left = 0
  Top = 0
  Caption = 'Localiza Loca'#231#227'o'
  ClientHeight = 133
  ClientWidth = 447
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
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'C'#243'digo da Loca'#231#227'o'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object ed_cod_locacao: TcxTextEdit
    AlignWithMargins = True
    Left = 25
    Top = 43
    Margins.Left = 25
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 25
    Align = alTop
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    TextHint = '0000'
    Width = 397
  end
  object cxButton1: TcxButton
    Left = 0
    Top = 97
    Width = 145
    Height = 36
    Align = alLeft
    Caption = 'Localizar [F2]'
    OptionsImage.ImageIndex = 3
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 302
    Top = 97
    Width = 145
    Height = 36
    Align = alRight
    Caption = 'Sair [Esc]'
    OptionsImage.ImageIndex = 5
    OptionsImage.Images = FrmPrincipal.imgs16x16
    TabOrder = 3
    OnClick = cxButton2Click
  end
end
