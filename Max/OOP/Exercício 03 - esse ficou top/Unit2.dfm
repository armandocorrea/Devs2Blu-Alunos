object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 519
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbTittle: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 412
    Height = 23
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrar pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 143
  end
  object lbNome: TLabel
    Left = 98
    Top = 75
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbAltura: TLabel
    Left = 96
    Top = 115
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object lbData_nasc: TLabel
    Left = 30
    Top = 171
    Width = 95
    Height = 13
    Caption = 'Data de nascimento'
  end
  object edtNome: TEdit
    Left = 144
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtAltura: TEdit
    Left = 144
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCadastrar: TButton
    Left = 112
    Top = 216
    Width = 81
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
  object btnListas: TButton
    Left = 217
    Top = 216
    Width = 96
    Height = 25
    Caption = 'Listar pessoas'
    TabOrder = 3
    OnClick = btnListasClick
  end
  object memResult: TMemo
    Left = 3
    Top = 268
    Width = 412
    Height = 247
    Alignment = taCenter
    TabOrder = 4
  end
  object dtpData_nasc: TDateTimePicker
    Left = 144
    Top = 168
    Width = 121
    Height = 21
    Date = 44844.000000000000000000
    Time = 0.769976076386228700
    TabOrder = 5
  end
end
