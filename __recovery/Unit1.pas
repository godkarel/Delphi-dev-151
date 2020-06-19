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
  Rendimentos : Extended;

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
     somaTudo;
     edtDepositado.Text := floattostr(Janeiro);
     edtRendimentoMes.Text := floattostr(JaneiroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Fevereiro' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Fevereiro);
     edtRendimentoMes.Text := floattostr(FevereiroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Marco' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Marco);
     edtRendimentoMes.Text := floattostr(MarcoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Abril' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Abril);
     edtRendimentoMes.Text := floattostr(AbrilRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Maio' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Maio);
     edtRendimentoMes.Text := floattostr(MaioRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Junho' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Junho);
     edtRendimentoMes.Text := floattostr(JunhoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Julho' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Julho);
     edtRendimentoMes.Text := floattostr(JulhoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Agosto' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Agosto);
     edtRendimentoMes.Text := floattostr(AgostoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Setembro' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Setembro);
     edtRendimentoMes.Text := floattostr(SetembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Outubro' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Outubro);
     edtRendimentoMes.Text := floattostr(OutubroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Novembro' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Novembro);
     edtRendimentoMes.Text := floattostr(NovembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Dezembro' then
  begin
     somaTudo;
     edtDepositado.Text := floattostr(Dezembro);
     edtRendimentoMes.Text := floattostr(DezembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
  end else

end;

function TForm1.somaTudo;
begin
    JaneiroRendeu := Janeiro * 0.0862;
    FevereiroRendeu := Fevereiro * 0.0862;
    MarcoRendeu := Marco * 0.0862;
    AbrilRendeu := Abril * 0.0862;
    MaioRendeu := Maio * 0.0862;
    JunhoRendeu := Junho * 0.0862;
    JulhoRendeu := Julho * 0.0862;
    AgostoRendeu := Agosto * 0.0862;
    SetembroRendeu := Setembro * 0.0862;
    OutubroRendeu := Outubro * 0.0862;
    NovembroRendeu := Novembro * 0.0862;
    DezembroRendeu := Dezembro * 0.0862;
    TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
    TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
    TotalDeTudo := TotalDepositado + TotalRendeu;
    result := TotalDeTudo
end;


end.

