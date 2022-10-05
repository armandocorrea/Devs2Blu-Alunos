object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResult: TLabel
    Left = 48
    Top = 208
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 67
    Top = 24
    Width = 256
    Height = 29
    Caption = 'Classificar Nadadores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtIdade: TEdit
    Left = 104
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnClassificar: TButton
    Left = 248
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Classificar'
    TabOrder = 1
    OnClick = btnClassificarClick
  end
end
