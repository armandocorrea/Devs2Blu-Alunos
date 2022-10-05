object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Categorias de Nata'#231#227'o'
  ClientHeight = 281
  ClientWidth = 418
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 88
    Width = 215
    Height = 18
    Caption = 'Informe a Idade do Nadador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 61
    Width = 215
    Height = 18
    Caption = 'Informe o Nome do Nadador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 79
    Top = 21
    Width = 254
    Height = 18
    Caption = 'CATEGORIZA'#199#195'O DE NADADORES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtIdade: TEdit
    Left = 237
    Top = 89
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object btnVerificar: TButton
    Left = 312
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
  object mmNadadores: TMemo
    Left = 16
    Top = 136
    Width = 278
    Height = 113
    ReadOnly = True
    TabOrder = 2
  end
  object edtNome: TEdit
    Left = 237
    Top = 62
    Width = 57
    Height = 21
    TabOrder = 3
  end
end
