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
    function somaTudo: EXTENDED ;
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
  if cmbEscolhaMes.text = 'Escolha o mes' then
  begin
     ShowMessage('Escolha um mes para saber sobre os rendimentos');
  end else
  if cmbEscolhaMes.text = 'Janeiro' then
  begin
     Janeiro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Fevereiro' then
  begin
     Fevereiro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Marco' then
  begin
     Marco := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Abril' then
  begin
     Abril := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Maio' then
  begin
     Maio := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Junho' then
  begin
     Junho := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Julho' then
  begin
     Julho := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Agosto' then
  begin
     Agosto := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Setembro' then
  begin
     Setembro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Outubro' then
  begin
     Outubro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Novembro' then
  begin
     Novembro := StrToInt(edtInsertValue.text);
     edtInsertValue.text := '';
    ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Dezembro' then
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

procedure TForm1.btnConsultarClick(Sender: TObject);
begin
    if cmbDepositado.text = 'Janeiro' then
  begin
     JaneiroRendeu := Janeiro * 0.0862;

     edtDepositado.Text := floattostr(Janeiro);
     edtRendimentoMes.Text := floattostr(JaneiroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
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

function TForm1.somaTudo;
begin
    TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
    TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
    TotalDeTudo := TotalDepositado + TotalRendeu;
    result := TotalDeTudo
end;


end.

