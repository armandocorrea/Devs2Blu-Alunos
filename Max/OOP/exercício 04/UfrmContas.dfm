object FrmContas: TFrmContas
  Left = 0
  Top = 0
  Caption = 'Conta corrente'
  ClientHeight = 299
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 24
    Top = 13
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbSaldo: TLabel
    Left = 24
    Top = 69
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object btnCadastrar: TButton
    Left = 24
    Top = 136
    Width = 121
    Height = 25
    Caption = 'Cadastrar conta'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object edtNome: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSaldo: TEdit
    Left = 24
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnDepositar: TButton
    Left = 168
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 3
    OnClick = btnDepositarClick
  end
  object btnSacar: TButton
    Left = 168
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Sacar'
    TabOrder = 4
    OnClick = btnSacarClick
  end
  object edtConsulta: TButton
    Left = 24
    Top = 222
    Width = 121
    Height = 25
    Caption = 'Consultar informa'#231#245'es'
    TabOrder = 5
    OnClick = edtConsultaClick
  end
end
