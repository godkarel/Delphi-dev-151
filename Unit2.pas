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
    tmmExtrato: TMemo;
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
implementation

{$R *.dfm}

procedure TForm2.btnGerarExtratoClick(Sender: TObject);
begin
    extrato := strtofloat(edtAvançadoValorDepositado.text) * strtofloat(edtMesesRendimento.text)
end;

end.
