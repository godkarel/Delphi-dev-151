object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 250
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object labExplica: TLabel
    Left = 48
    Top = 32
    Width = 392
    Height = 19
    Caption = 'Valor de Deposito referente ao Mes Selecionado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labJuros: TLabel
    Left = 208
    Top = 176
    Width = 71
    Height = 16
    Caption = 'Juros 8,62%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object labDepositado: TLabel
    Left = 536
    Top = 24
    Width = 154
    Height = 19
    Caption = 'Depositado no Mes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labRendimentodoMes: TLabel
    Left = 536
    Top = 105
    Width = 161
    Height = 19
    Caption = 'Rendimento do Mes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtTotalEmMeses: TLabel
    Left = 536
    Top = 169
    Width = 154
    Height = 19
    Caption = 'Total em 12 meses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtInsertValue: TEdit
    Left = 144
    Top = 120
    Width = 193
    Height = 33
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
    Text = 'Valor de Deposito'
    Visible = False
    OnChange = edtInsertValueChange
  end
  object cmbEscolhaMes: TComboBox
    Left = 176
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'Escolha o mes'
    OnChange = cmbEscolhaMesChange
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Marco'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object edtDepositado: TEdit
    Left = 552
    Top = 71
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = '...'
  end
  object edtRendimentoMes: TEdit
    Left = 552
    Top = 130
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = '...'
  end
  object edtRendimentoTotal: TEdit
    Left = 552
    Top = 194
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = '...'
  end
  object Button1: TButton
    Left = 204
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    OnClick = Button1Click
  end
  object cmbDepositado: TComboBox
    Left = 545
    Top = 44
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'Escolha o mes'
    OnChange = cmbDepositadoChange
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Marco'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
end
