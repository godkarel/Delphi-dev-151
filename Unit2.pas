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
  AdvMeses: Integer;
  AdvRedimentos: Extended;
  AdvTotalFinal: Extended;
  AdvExtra: Extended;

implementation

{$R *.dfm}

procedure TForm2.btnGerarExtratoClick(Sender: TObject);
const
  JurosMensal = 0.0862;  // 8.62% representado como decimal
begin
  try
    AdvDepositado := StrToFloat(edtAvançadoValorDepositado.Text);
    AdvMeses := StrToInt(edtMesesRendimento.Text);

    // Cálculo dos rendimentos totais considerando juros compostos
    AdvTotalFinal := AdvDepositado * Power(1 + JurosMensal, AdvMeses);
    AdvRedimentos := (AdvTotalFinal - AdvDepositado) / AdvMeses; // Rendimento médio mensal
    AdvExtra := AdvTotalFinal - AdvDepositado;  // Rendimento total obtido

    mmoExtrato.Clear;
    mmoExtrato.Lines.Add('Extrato');
    mmoExtrato.Lines.Add('---------------------');
    mmoExtrato.Lines.Add('Total depositado: R$ ' + FloatToStrF(AdvDepositado, ffCurrency, 15, 2));
    mmoExtrato.Lines.Add('Meses: ' + IntToStr(AdvMeses));
    mmoExtrato.Lines.Add('Rendimento médio mensal: R$ ' + FloatToStrF(AdvRedimentos, ffCurrency, 15, 2));
    mmoExtrato.Lines.Add('Rendimento total: R$ ' + FloatToStrF(AdvExtra, ffCurrency, 15, 2));
    mmoExtrato.Lines.Add('Saldo final: R$ ' + FloatToStrF(AdvTotalFinal, ffCurrency, 15, 2));
    
  except
    on E: Exception do
      ShowMessage('Erro ao calcular: ' + E.Message);
  end;
end;

end.
