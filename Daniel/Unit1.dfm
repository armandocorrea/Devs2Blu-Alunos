object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Left = 24
    Top = 40
    Width = 86
    Height = 13
    Caption = 'Nome do Nadador'
  end
  object Label2: TLabel
    Left = 256
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object edtNome: TEdit
    Left = 24
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtIdade: TEdit
    Left = 256
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object mmCadastro: TMemo
    Left = 24
    Top = 104
    Width = 353
    Height = 153
    Enabled = False
    TabOrder = 2
  end
  object btnCadastrar: TButton
    Left = 160
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = btnCadastrarClick
  end
end
