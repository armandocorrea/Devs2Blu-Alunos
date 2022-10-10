object FrmTipoNadador: TFrmTipoNadador
  Left = 0
  Top = 0
  Caption = 'Classifica Nadador'
  ClientHeight = 403
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 37
    Height = 16
    Caption = 'Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 172
    Width = 57
    Height = 16
    Caption = 'Hist'#243'rico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtIdade: TEdit
    Left = 32
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Informe a Idade'
  end
  object mmHistorico: TMemo
    Left = 32
    Top = 190
    Width = 249
    Height = 145
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnClassificar: TButton
    Left = 32
    Top = 116
    Width = 249
    Height = 25
    Caption = 'Classificar'
    TabOrder = 2
    OnClick = btnClassificarClick
  end
end
