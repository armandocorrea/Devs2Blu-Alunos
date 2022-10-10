object frmTriangulo: TfrmTriangulo
  Left = 0
  Top = 0
  Caption = 'PRIMEIRA CLASSE'
  ClientHeight = 424
  ClientWidth = 583
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
    Left = 216
    Top = 24
    Width = 115
    Height = 19
    Caption = 'TRIANGULO X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 152
    Width = 115
    Height = 19
    Caption = 'TRIANGULO Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 43
    Top = 75
    Width = 10
    Height = 13
    Caption = 'a:'
  end
  object Label4: TLabel
    Left = 200
    Top = 75
    Width = 10
    Height = 13
    Caption = 'b:'
  end
  object Label5: TLabel
    Left = 343
    Top = 75
    Width = 9
    Height = 13
    Caption = 'c:'
  end
  object Label6: TLabel
    Left = 43
    Top = 203
    Width = 10
    Height = 13
    Caption = 'a:'
  end
  object Label7: TLabel
    Left = 200
    Top = 203
    Width = 10
    Height = 13
    Caption = 'b:'
  end
  object Label8: TLabel
    Left = 343
    Top = 203
    Width = 9
    Height = 13
    Caption = 'c:'
  end
  object Label9: TLabel
    Left = 96
    Top = 333
    Width = 144
    Height = 19
    Caption = 'Triangulo X '#193'rea:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 96
    Top = 358
    Width = 144
    Height = 19
    Caption = 'Triangulo Y '#193'rea:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 96
    Top = 392
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object lblX: TLabel
    Left = 264
    Top = 336
    Width = 16
    Height = 13
    Caption = 'lblX'
  end
  object lblY: TLabel
    Left = 264
    Top = 363
    Width = 16
    Height = 13
    Caption = 'lblY'
  end
  object edtXa: TEdit
    Left = 64
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtXb: TEdit
    Left = 216
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtXc: TEdit
    Left = 358
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtYa: TEdit
    Left = 64
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtYb: TEdit
    Left = 216
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtYc: TEdit
    Left = 361
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btnCalcular: TButton
    Left = 128
    Top = 272
    Width = 113
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnCalcularClick
  end
  object btnCalcularOOP: TButton
    Left = 304
    Top = 272
    Width = 113
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 7
  end
end
