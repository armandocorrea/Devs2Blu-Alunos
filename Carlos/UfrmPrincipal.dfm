object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Categoria Nata'#231#227'o'
  ClientHeight = 195
  ClientWidth = 292
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
    Left = 24
    Top = 53
    Width = 91
    Height = 13
    Caption = 'Idade do Nadador:'
  end
  object Label2: TLabel
    Left = 40
    Top = 16
    Width = 196
    Height = 19
    Caption = 'CATEGORIAS NATA'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCategoria: TLabel
    Left = 0
    Top = 128
    Width = 289
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object edtIdade: TEdit
    Left = 24
    Top = 72
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object btnCategoria: TButton
    Left = 147
    Top = 70
    Width = 121
    Height = 25
    Caption = 'Definir Categoria'
    TabOrder = 1
    OnClick = btnCategoriaClick
  end
end
