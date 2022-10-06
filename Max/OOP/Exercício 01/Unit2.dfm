object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 446
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTittle: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 30
    Width = 491
    Height = 23
    Margins.Top = 30
    Align = alTop
    Alignment = taCenter
    Caption = #193'rea de tri'#226'ngulos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 153
  end
  object lbY: TLabel
    Left = 222
    Top = 201
    Width = 53
    Height = 13
    Caption = 'Tri'#226'ngulo Y'
  end
  object lbX: TLabel
    Left = 222
    Top = 89
    Width = 53
    Height = 13
    Caption = 'Tri'#226'ngulo X'
  end
  object lbResultX: TLabel
    Left = 41
    Top = 336
    Width = 416
    Height = 13
    AutoSize = False
    Caption = #193'rea Tri'#226'ngulo X :'
  end
  object lbResultY: TLabel
    Left = 41
    Top = 355
    Width = 416
    Height = 13
    AutoSize = False
    Caption = #193'rea Tri'#226'ngulo X :'
  end
  object lbResult: TLabel
    Left = 41
    Top = 390
    Width = 416
    Height = 13
    AutoSize = False
  end
  object panel1: TPanel
    AlignWithMargins = True
    Left = 41
    Top = 117
    Width = 112
    Height = 41
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    ParentBackground = False
    TabOrder = 0
    object lbxa: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 10
      Height = 26
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = 'a:'
      ExplicitLeft = 19
      ExplicitTop = 27
      ExplicitHeight = 13
    end
    object edtXA: TEdit
      AlignWithMargins = True
      Left = 27
      Top = 11
      Width = 70
      Height = 19
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 195
    Top = 117
    Width = 110
    Height = 41
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    TabOrder = 1
    object lbxb: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 10
      Height = 26
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = 'b:'
      ExplicitHeight = 13
    end
    object edtXB: TEdit
      AlignWithMargins = True
      Left = 27
      Top = 11
      Width = 70
      Height = 19
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 346
    Top = 117
    Width = 111
    Height = 41
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    TabOrder = 2
    object lbXC: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 9
      Height = 26
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = 'c:'
      ExplicitHeight = 13
    end
    object edtXC: TEdit
      AlignWithMargins = True
      Left = 26
      Top = 11
      Width = 70
      Height = 19
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 27
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 41
    Top = 229
    Width = 112
    Height = 41
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    TabOrder = 3
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 10
      Height = 26
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = 'a:'
      ExplicitHeight = 13
    end
    object edtYA: TEdit
      AlignWithMargins = True
      Left = 27
      Top = 11
      Width = 70
      Height = 19
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 195
    Top = 229
    Width = 110
    Height = 41
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    TabOrder = 4
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 10
      Height = 26
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = 'b:'
      ExplicitHeight = 13
    end
    object edtYB: TEdit
      AlignWithMargins = True
      Left = 27
      Top = 11
      Width = 70
      Height = 19
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
  end
  object Panel6: TPanel
    AlignWithMargins = True
    Left = 346
    Top = 229
    Width = 111
    Height = 41
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    TabOrder = 5
    object Label3: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 9
      Height = 26
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = 'c:'
      ExplicitTop = 19
    end
    object edtYC: TEdit
      AlignWithMargins = True
      Left = 26
      Top = 11
      Width = 70
      Height = 19
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
  end
  object btnCalculate: TButton
    Left = 128
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnCalculateClick
  end
  object btnCalcularOOP: TButton
    Left = 291
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Calcular OPP'
    TabOrder = 7
    OnClick = btnCalcularOOPClick
  end
end
