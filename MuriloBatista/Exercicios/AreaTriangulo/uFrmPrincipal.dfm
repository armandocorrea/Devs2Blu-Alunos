object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Area do Triangulo'
  ClientHeight = 393
  ClientWidth = 316
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
    Left = 128
    Top = 24
    Width = 63
    Height = 13
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
    Top = 122
    Width = 63
    Height = 13
    Caption = 'Triangulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 10
    Height = 13
    Caption = 'a:'
  end
  object Label4: TLabel
    Left = 124
    Top = 72
    Width = 10
    Height = 13
    Caption = 'b:'
  end
  object Label5: TLabel
    Left = 224
    Top = 72
    Width = 9
    Height = 13
    Caption = 'c:'
  end
  object Label6: TLabel
    Left = 16
    Top = 168
    Width = 10
    Height = 13
    Caption = 'a:'
  end
  object Label7: TLabel
    Left = 124
    Top = 168
    Width = 10
    Height = 13
    Caption = 'b:'
  end
  object Label8: TLabel
    Left = 224
    Top = 168
    Width = 9
    Height = 13
    Caption = 'c:'
  end
  object lblResultX: TLabel
    Left = 48
    Top = 272
    Width = 56
    Height = 13
    Caption = 'lblResultX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblResultY: TLabel
    Left = 48
    Top = 304
    Width = 56
    Height = 13
    Caption = 'lblResultY'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblResultMaior: TLabel
    Left = 48
    Top = 336
    Width = 81
    Height = 13
    Caption = 'lblResultMaior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtTriXa: TEdit
    Left = 32
    Top = 69
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object edtTriXb: TEdit
    Left = 140
    Top = 69
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object edtTriXc: TEdit
    Left = 239
    Top = 69
    Width = 41
    Height = 21
    TabOrder = 2
  end
  object edtTriYa: TEdit
    Left = 32
    Top = 165
    Width = 41
    Height = 21
    TabOrder = 3
  end
  object edtTriYb: TEdit
    Left = 140
    Top = 165
    Width = 41
    Height = 21
    TabOrder = 4
  end
  object edtTriYc: TEdit
    Left = 239
    Top = 165
    Width = 41
    Height = 21
    TabOrder = 5
  end
  object btnCalcular: TButton
    Left = 72
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnCalcularClick
  end
  object btnCalcularOpp: TButton
    Left = 176
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 7
  end
end
