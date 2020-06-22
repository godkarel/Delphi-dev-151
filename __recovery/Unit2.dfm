object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 852
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
    Left = 48
    Top = 56
    Width = 328
    Height = 19
    Alignment = taCenter
    Caption = 'Valor total depositado para Rendimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 160
    Width = 179
    Height = 19
    Alignment = taCenter
    Caption = 'Meses de Rendimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 616
    Top = 35
    Width = 61
    Height = 19
    Caption = 'Extrato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtAvançadoValorDepositado: TEdit
    Left = 144
    Top = 89
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    Text = 'Valor Depositado'
  end
  object edtMesesRendimento: TEdit
    Left = 144
    Top = 201
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = 'Valor Total'
  end
  object mmoExtrato: TMemo
    Left = 488
    Top = 60
    Width = 329
    Height = 231
    Alignment = taCenter
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object btnGerarExtrato: TButton
    Left = 160
    Top = 240
    Width = 81
    Height = 25
    Caption = 'Gerar Extrato'
    TabOrder = 3
    OnClick = btnGerarExtratoClick
  end
end
