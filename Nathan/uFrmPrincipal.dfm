object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Faixa et'#225'ria'
  ClientHeight = 282
  ClientWidth = 275
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
    Left = 40
    Top = 43
    Width = 157
    Height = 14
    Caption = 'Informe a idade do nadador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 275
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'Faixa et'#225'ria (Nadador)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 176
    ExplicitTop = 152
    ExplicitWidth = 241
  end
  object Label3: TLabel
    Left = 40
    Top = 157
    Width = 57
    Height = 13
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtIdade: TEdit
    Left = 40
    Top = 75
    Width = 185
    Height = 22
    Cursor = crIBeam
    TabOrder = 0
    TextHint = 'Idade'
  end
  object btnEntrar: TButton
    Left = 150
    Top = 115
    Width = 75
    Height = 26
    Cursor = crHandPoint
    Caption = 'Entrar'
    TabOrder = 1
    OnClick = btnEntrarClick
  end
  object mmResultado: TMemo
    Left = 40
    Top = 176
    Width = 185
    Height = 89
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
