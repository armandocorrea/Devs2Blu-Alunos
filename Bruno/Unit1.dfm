object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Categoria do nadador'
  ClientHeight = 165
  ClientWidth = 299
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
    Left = 30
    Top = 72
    Width = 100
    Height = 13
    Caption = 'Idade do nadador(a)'
  end
  object Edit1: TEdit
    Left = 152
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 112
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 299
    Height = 41
    Align = alTop
    Caption = 'Categoria do nadador(a)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 297
  end
end
