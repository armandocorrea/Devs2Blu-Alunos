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
  object cmbAnimal: TComboBox
    Left = 144
    Top = 104
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Cachorro'
    Items.Strings = (
      'Cachorro'
      'Gato'
      'Passaro')
  end
  object btnSom: TButton
    Left = 168
    Top = 152
    Width = 97
    Height = 25
    Caption = 'MEU SOM'
    TabOrder = 1
    OnClick = btnSomClick
  end
end
