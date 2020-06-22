unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    edtAvançadoValorDepositado: TEdit;
    Label2: TLabel;
    edtMesesRendimento: TEdit;
    mmoExtrato: TMemo;
    Label3: TLabel;
    btnGerarExtrato: TButton;
    procedure btnGerarExtratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  extrato: Extended;
  advDepositado: Extended;
  advMeses: Extended;
  advRedimentos: Extended;
  advTotalFinal: Extended;
  advExtra: Extended;
implementation

{$R *.dfm}

procedure TForm2.btnGerarExtratoClick(Sender: TObject);
begin
    advDepositado := strtofloat(edtAvançadoValorDepositado.text);
    advRedimentos :=  strtofloat(edtMesesRendimento.text) * 8.62;
    advMeses := strtofloat(edtMesesRendimento.text);
    extrato := (strtofloat(edtAvançadoValorDepositado.text) * strtofloat(edtMesesRendimento.text)) + (advRedimentos * strtofloat(edtMesesRendimento.text)) ;
    advExtra := advRedimentos * advMeses;
    advTotalFinal := extrato * 8.62;
    mmoExtrato.Text := #13#10+ 'Extrato '+#13#10+#13#10+#13#10+
    'O Total depositado foi de ' +FloatToStr(advDepositado)+#13#10+ #13#10+
    'A quantidade de meses é de '+floattostr(advMeses) +#13#10+ #13#10+
    'O Total de Rendimento por mes é de '+ floattostr(advRedimentos)+#13#10+ #13#10+
    'O Total que rendido do seu valor inicial é de '+ FloatToStr(advExtra) + #13#10+ #13#10+
    'O seu Saldo agora é de '+ floattostr(extrato);
end;

end.