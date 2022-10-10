object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FMoller'
  ClientHeight = 172
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lb_tituloClassificacao: TLabel
    Left = 32
    Top = 16
    Width = 261
    Height = 29
    Caption = 'Classifica'#231#227'o de idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_idade: TLabel
    Left = 132
    Top = 55
    Width = 71
    Height = 19
    Caption = 'Sua Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lb_listarClassificacao: TLabel
    Left = 32
    Top = 144
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_idadeUsuario: TEdit
    Left = 104
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 128
    Top = 107
    Width = 75
    Height = 25
    Caption = 'Classificar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
