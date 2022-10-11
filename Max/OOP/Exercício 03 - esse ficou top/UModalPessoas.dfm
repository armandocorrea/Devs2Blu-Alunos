object ModalPessoas: TModalPessoas
  Left = 0
  Top = 0
  Caption = 'Listas pessoas'
  ClientHeight = 322
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object clbPessoas: TCheckListBox
    Left = 8
    Top = 8
    Width = 265
    Height = 273
    ItemHeight = 13
    Items.Strings = (
      'Nome')
    TabOrder = 0
  end
  object btnSelecionarPessoas: TButton
    Left = 8
    Top = 287
    Width = 265
    Height = 25
    Caption = 'Confirmar pessoas'
    TabOrder = 1
    OnClick = btnSelecionarPessoasClick
  end
end
