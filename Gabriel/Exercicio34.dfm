object uFrmClassificador: TuFrmClassificador
  Left = 0
  Top = 0
  Caption = 'Classificador'
  ClientHeight = 143
  ClientWidth = 264
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
    Top = 8
    Width = 198
    Height = 19
    Caption = 'Classificando Nadadores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblIdadeNadador: TLabel
    Left = 72
    Top = 45
    Width = 90
    Height = 13
    Caption = 'Idade do nadador:'
  end
  object edtIdade: TEdit
    Left = 72
    Top = 64
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object btnClassificar: TButton
    Left = 96
    Top = 104
    Width = 81
    Height = 25
    Caption = 'Classificar'
    TabOrder = 1
    OnClick = btnClassificarClick
  end
end
