object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 319
  ClientWidth = 362
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
    Left = 29
    Top = 48
    Width = 12
    Height = 16
    Caption = 'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 133
    Top = 48
    Width = 12
    Height = 16
    Caption = 'b:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 238
    Top = 48
    Width = 11
    Height = 16
    Caption = 'c:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 27
    Top = 145
    Width = 12
    Height = 16
    Caption = 'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 131
    Top = 145
    Width = 12
    Height = 16
    Caption = 'b:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 236
    Top = 145
    Width = 11
    Height = 16
    Caption = 'c:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 131
    Top = 8
    Width = 110
    Height = 23
    Caption = 'Tri'#226'ngulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 131
    Top = 104
    Width = 110
    Height = 23
    Caption = 'Tri'#226'ngulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_areaTrianguloX: TLabel
    Left = 16
    Top = 232
    Width = 3
    Height = 13
  end
  object lb_areaTrianguloY: TLabel
    Left = 16
    Top = 251
    Width = 3
    Height = 13
  end
  object lb_trianguloMaiorArea: TLabel
    Left = 16
    Top = 270
    Width = 3
    Height = 13
  end
  object edt_tringuloX_a: TEdit
    Left = 45
    Top = 45
    Width = 60
    Height = 21
    TabOrder = 0
  end
  object edt_tringuloX_b: TEdit
    Left = 149
    Top = 45
    Width = 60
    Height = 21
    TabOrder = 1
  end
  object edt_tringuloX_c: TEdit
    Left = 253
    Top = 45
    Width = 60
    Height = 21
    TabOrder = 2
  end
  object edt_tringuloY_a: TEdit
    Left = 45
    Top = 144
    Width = 60
    Height = 21
    TabOrder = 3
  end
  object edt_tringuloY_b: TEdit
    Left = 149
    Top = 144
    Width = 60
    Height = 21
    TabOrder = 4
  end
  object edt_tringuloY_c: TEdit
    Left = 253
    Top = 144
    Width = 60
    Height = 21
    TabOrder = 5
  end
  object btn_calcular: TButton
    Left = 78
    Top = 184
    Width = 99
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btn_calcularClick
  end
  object btn_calcularOOP: TButton
    Left = 183
    Top = 184
    Width = 99
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 7
  end
end
