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
    Button1: TButton;
    procedure edtInsertValueChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Janeiro: String;
  Fevereiro: String;
  Marco: String;
  Abril: String;
  Maio: String;
  Junho: String;
  Julho: String;
  Agosto: String;
  Setembro: String;
  Outubro: String;
  Novembro: String;
  Dezembro: String;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if cmbEscolhaMes.text = 'Janeiro' then
    ShowMessage(Janeiro)
  else
  if cmbEscolhaMes.text = 'Fevereiro' then
    ShowMessage(Fevereiro)
  else
  if cmbEscolhaMes.text = 'Marco' then
    ShowMessage(Marco)
  else
  if cmbEscolhaMes.text = 'Abril' then
    ShowMessage(Abril)
  else
  if cmbEscolhaMes.text = 'Maio' then
    ShowMessage(Maio)
  else
  if cmbEscolhaMes.text = 'Junho' then
    ShowMessage(Junho)
  else
  if cmbEscolhaMes.text = 'Julho' then
    ShowMessage(Julho)
  else
  if cmbEscolhaMes.text = 'Agosto' then
    ShowMessage(Agosto)
  else
    if cmbEscolhaMes.text = 'Setembro' then
    ShowMessage(Setembro)
  else
  if cmbEscolhaMes.text = 'Outubro' then
    ShowMessage(Outubro)
  else
  if cmbEscolhaMes.text = 'Novembro' then
    ShowMessage(Novembro)
  else
  if cmbEscolhaMes.text = 'Dezembro' then
    ShowMessage(Dezembro)
  else
end;

procedure TForm1.edtInsertValueChange(Sender: TObject);
begin
    if cmbEscolhaMes.text = 'Janeiro' then
      Janeiro := edtInsertValue.text
      edtDepositado.text := Janeiro
    else
    if cmbEscolhaMes.text = 'Fevereiro' then
      Fevereiro := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Marco' then
      Marco := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Abril' then
      Abril := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Maio' then
      Maio := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Junho' then
      Junho := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Julho' then
      Julho := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Agosto' then
      Agosto := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Setembro' then
      Setembro := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Outubro' then
      Outubro := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Novembro' then
      Novembro := edtInsertValue.text
    else
    if cmbEscolhaMes.text = 'Dezembro' then
      Dezembro := edtInsertValue.text
    else
end;
end.

