object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 310
  ClientWidth = 508
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
  object lbTittle: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 502
    Height = 23
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Posto de combust'#237'veis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 183
  end
  object btnCreateBomba: TButton
    Left = 343
    Top = 65
    Width = 156
    Height = 25
    Caption = 'Criar bomba'
    TabOrder = 0
    OnClick = btnCreateBombaClick
  end
  object btnPanel: TPanel
    Left = 8
    Top = 65
    Width = 321
    Height = 237
    TabOrder = 1
    object lbResult: TLabel
      Left = 16
      Top = 14
      Width = 289
      Height = 203
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object btnAbastecerLitro: TButton
    Left = 343
    Top = 112
    Width = 156
    Height = 25
    Caption = 'Abastecer por litro'
    TabOrder = 2
    OnClick = btnAbastecerLitroClick
  end
  object btnAbastecerValor: TButton
    Left = 343
    Top = 143
    Width = 156
    Height = 25
    Caption = 'Abastecer por valor'
    TabOrder = 3
    OnClick = btnAbastecerValorClick
  end
  object btnAlterarValor: TButton
    Left = 343
    Top = 223
    Width = 156
    Height = 25
    Caption = 'Altera valor'
    TabOrder = 4
    OnClick = btnAlterarValorClick
  end
  object btnAlterarCombustivel: TButton
    Left = 343
    Top = 250
    Width = 156
    Height = 25
    Caption = 'Alterar combust'#237'vel'
    TabOrder = 5
    OnClick = btnAlterarCombustivelClick
  end
  object btnAlterarQtd: TButton
    Left = 343
    Top = 277
    Width = 156
    Height = 25
    Caption = 'Alterar quantidade na bomba'
    TabOrder = 6
    OnClick = btnAlterarQtdClick
  end
end
