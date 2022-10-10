object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object Label1: TLabel
    Left = 144
    Top = 8
    Width = 94
    Height = 19
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 131
    Width = 10
    Height = 13
    Caption = 'b:'
  end
  object lblresult1: TLabel
    Left = 32
    Top = 224
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 51
    Width = 10
    Height = 30
    Caption = 'a:'
  end
  object Label5: TLabel
    Left = 144
    Top = 51
    Width = 10
    Height = 13
    Caption = 'b:'
  end
  object Label6: TLabel
    Left = 241
    Top = 51
    Width = 9
    Height = 13
    Caption = 'c:'
  end
  object Label7: TLabel
    Left = 241
    Top = 131
    Width = 9
    Height = 13
    Caption = 'c:'
  end
  object Label8: TLabel
    Left = 48
    Top = 131
    Width = 10
    Height = 13
    Caption = 'a:'
  end
  object lblresult2: TLabel
    Left = 32
    Top = 244
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblresult3: TLabel
    Left = 32
    Top = 263
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edttrix1: TEdit
    Left = 64
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object edttrix2: TEdit
    Left = 160
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object edttrix3: TEdit
    Left = 256
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object edttriy1: TEdit
    Left = 64
    Top = 128
    Width = 57
    Height = 21
    TabOrder = 3
  end
  object edttriy2: TEdit
    Left = 160
    Top = 128
    Width = 57
    Height = 21
    TabOrder = 4
  end
  object edttriy3: TEdit
    Left = 256
    Top = 128
    Width = 57
    Height = 21
    TabOrder = 5
  end
  object btmcalcular: TButton
    Left = 88
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btmcalcularClick
  end
  object btmcalcularopp: TButton
    Left = 208
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Calcular OPP'
    TabOrder = 7
    OnClick = btmcalcularoppClick
  end
end
