object frmCategoria: TfrmCategoria
  Left = 0
  Top = 0
  Caption = 'CATEGORIA NADADOR'
  ClientHeight = 277
  ClientWidth = 473
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
    Left = 32
    Top = 48
    Width = 88
    Height = 13
    Caption = 'IDADE NADADOR:'
  end
  object Label2: TLabel
    Left = 32
    Top = 128
    Width = 69
    Height = 13
    Caption = 'CATEGORIAS:'
  end
  object Label3: TLabel
    Left = 32
    Top = 147
    Width = 103
    Height = 13
    Caption = 'Infantil A : 5 - 7 Anos'
  end
  object Label4: TLabel
    Left = 32
    Top = 166
    Width = 108
    Height = 13
    Caption = 'Infantil B : 8 - 10 Anos'
  end
  object Label5: TLabel
    Left = 32
    Top = 185
    Width = 114
    Height = 13
    Caption = 'Juvenil A : 11 - 13 Anos'
  end
  object Label6: TLabel
    Left = 32
    Top = 204
    Width = 106
    Height = 13
    Caption = 'Juvenil B 14 - 17 Anos'
  end
  object Label7: TLabel
    Left = 32
    Top = 223
    Width = 101
    Height = 13
    Caption = 'Senior : 18 - 25 Anos'
  end
  object edtIdade: TEdit
    Left = 32
    Top = 67
    Width = 88
    Height = 21
    TabOrder = 0
  end
  object btnCategoria: TButton
    Left = 144
    Top = 65
    Width = 88
    Height = 25
    Caption = 'CATEGORIA'
    TabOrder = 1
    OnClick = btnCategoriaClick
  end
end
