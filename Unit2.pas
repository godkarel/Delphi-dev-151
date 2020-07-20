unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    labAdvDepositado: TLabel;
    edtAvançadoValorDepositado: TEdit;
    labAdvMeses: TLabel;
    edtMesesRendimento: TEdit;
    mmoExtrato: TMemo;
    labAdvExtrato: TLabel;
    btnGerarExtrato: TButton;
    labAdvJuros: TLabel;
    procedure btnGerarExtratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Extrato: Extended;
  AdvDepositado: Extended;
  AdvMeses: Extended;
  AdvRedimentos: Extended;
  AdvTotalFinal: Extended;
  AdvExtra: Extended;
  I : Integer;
implementation

{$R *.dfm}

procedure TForm2.btnGerarExtratoClick(Sender: TObject);
begin
    AdvDepositado := StrToFloat(edtAvançadoValorDepositado.Text);
    AdvRedimentos :=  StrToFloat(edtMesesRendimento.Text) * 08.62;
    AdvMeses := StrToFloat(edtMesesRendimento.Text);
    Extrato := (StrToFloat(edtAvançadoValorDepositado.Text) * StrToFloat(edtMesesRendimento.Text)) +
               (AdvRedimentos * StrToFloat(edtMesesRendimento.Text)) ;
    AdvExtra := AdvRedimentos * AdvMeses;
    AdvTotalFinal := Extrato * 8.62;

    mmoExtrato.Text := #13#10 + 'Extrato ' + #13#10 + #13#10 + #13#10 +
      'O Total depositado foi de ' + FloatToStr(AdvDepositado) + #13#10 + #13#10 +
      'A quantidade de meses é de ' + floattostr(AdvMeses) + #13#10 + #13#10 +
      'O Total de Rendimento por mes é de ' + FloatToStr(AdvRedimentos) + #13#10 + #13#10 +
      'O Total rendido do seu valor inicial é de ' + FloatToStr(AdvExtra) + #13#10 + #13#10 +
      'O seu Saldo agora é de ' + FloatToStr(Extrato);
end;

end.
