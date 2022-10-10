object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Classifica'#231#227'o de um nadador'
  ClientHeight = 241
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
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 265
    Height = 16
    Caption = 'Classifique as categorias de um nadador '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 73
    Width = 210
    Height = 14
    Caption = 'Informe a idade do nadador aqui :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 184
    Width = 6
    Height = 16
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 253
    Top = 71
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 144
    Top = 128
    Width = 105
    Height = 33
    Caption = 'Informar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
