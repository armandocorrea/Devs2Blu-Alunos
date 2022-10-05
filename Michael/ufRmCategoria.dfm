object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 480
  ClientWidth = 620
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
    Left = 336
    Top = 203
    Width = 220
    Height = 23
    Caption = 'Resultado da categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 424
    Top = 96
    Width = 165
    Height = 19
    Caption = 'Categoria Por Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCategoria: TButton
    Left = 440
    Top = 136
    Width = 121
    Height = 41
    Caption = 'Categoria'
    TabOrder = 0
    OnClick = btnCategoriaClick
  end
  object mmResultado: TMemo
    Left = 336
    Top = 248
    Width = 225
    Height = 137
    TabOrder = 1
  end
end
