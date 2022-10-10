object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Exercicio 34'
  ClientHeight = 237
  ClientWidth = 329
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
    Left = 64
    Top = 8
    Width = 201
    Height = 23
    Caption = 'IDADE DO NADADOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 69
    Width = 138
    Height = 13
    Caption = 'O nadador est'#225' na categoria'
  end
  object lblcategoria: TLabel
    Left = 120
    Top = 104
    Width = 19
    Height = 13
  end
  object btmexecutar: TButton
    Left = 120
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = btmexecutarClick
  end
end
