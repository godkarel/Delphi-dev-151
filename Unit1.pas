unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtInsertValue: TEdit;
    labExplica: TLabel;
    labJuros: TLabel;
    cmbEscolhaMes: TComboBox;
    labDepositado: TLabel;
    edtDepositado: TEdit;
    edtRendimentoMes: TEdit;
    labRendimentodoMes: TLabel;
    edtTotalEmMeses: TLabel;
    edtRendimentoTotal: TEdit;
    btnDepositar: TButton;
    cmbDepositado: TComboBox;
    btnConsultar: TButton;
    procedure btnDepositarClick(Sender: TObject);
    procedure cmbEscolhaMesChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Janeiro: Integer;
  janeiroRendeu: EXTENDED ;
  Fevereiro: Integer;
  FevereiroRendeu: EXTENDED ;
  Marco: Integer;
  MarcoRendeu: EXTENDED ;
  Abril: Integer;
  AbrilRendeu: EXTENDED ;
  Maio: Integer;
  MaioRendeu: EXTENDED ;
  Junho: Integer;
  JunhoRendeu: EXTENDED ;
  Julho: Integer;
  JulhoRendeu: EXTENDED ;
  Agosto: Integer;
  AgostoRendeu: EXTENDED ;
  Setembro: Integer;
  SetembroRendeu: EXTENDED ;
  Outubro: Integer;
  OutubroRendeu: EXTENDED ;
  Novembro: Integer;
  NovembroRendeu: EXTENDED ;
  Dezembro: Integer;
  DezembroRendeu: EXTENDED ;
  TotalDepositado : EXTENDED;
  TotalRendeu : EXTENDED;
  TotalDeTudo : EXTENDED;

implementation

{$R *.dfm}


procedure TForm1.btnDepositarClick(Sender: TObject);
begin
  if cmbDepositado.text = 'Escolha o mes' then
  begin
     ShowMessage('Escolha um mes para saber sobre os rendimentos');
  end else
  if cmbDepositado.text = 'Janeiro' then
  begin
     Janeiro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Fevereiro' then
  begin
     Fevereiro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Marco' then
  begin
     Marco := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Abril' then
  begin
     Abril := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Maio' then
  begin
     Maio := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Junho' then
  begin
     Junho := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Julho' then
  begin
     Julho := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Agosto' then
  begin
     Agosto := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Setembro' then
  begin
     Setembro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Outubro' then
  begin
     Outubro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Novembro' then
  begin
     Novembro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
    ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Dezembro' then
  begin
     Dezembro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
end;

procedure TForm1.cmbEscolhaMesChange(Sender: TObject);
begin
  edtInsertValue.visible := true
end;

end.

