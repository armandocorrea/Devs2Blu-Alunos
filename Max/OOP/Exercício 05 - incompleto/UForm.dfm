object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 281
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnPessoaFisica: TButton
    Left = 8
    Top = 16
    Width = 162
    Height = 25
    Caption = 'Pessoa f'#237'sica'
    TabOrder = 0
    OnClick = btnPessoaFisicaClick
  end
  object btnPessoaJur: TButton
    Left = 8
    Top = 47
    Width = 162
    Height = 25
    Caption = 'Pessoa jur'#237'dica'
    TabOrder = 1
    OnClick = btnPessoaJurClick
  end
  object memResult: TMemo
    Left = 176
    Top = 16
    Width = 209
    Height = 241
    Alignment = taCenter
    TabOrder = 2
  end
  object edtDoc: TEdit
    Left = 8
    Top = 176
    Width = 162
    Height = 21
    Alignment = taCenter
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TextHint = 'N'#186' do documento'
  end
  object rdgDoc: TRadioGroup
    Left = 8
    Top = 97
    Width = 162
    Height = 57
    Caption = 'Tipo de pessoa'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Fisica'
      'Juridica')
    TabOrder = 4
  end
end
