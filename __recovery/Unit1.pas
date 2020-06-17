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
    procedure edtInsertValueChange(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
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
  showMessage('Escolha um mes e deposite seu primeor valor');
  end else
  if cmbDepositado.text = 'Janeiro' then
  begin
     Janeiro := StrToInt(edtInsertValue.text);
     janeiroRendeu := Janeiro * 0.0862;
     edtDepositado.Text := IntToStr(Janeiro);
     edtRendimentoMes.Text := floattostr(janeiroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Fevereiro' then
  begin
     Fevereiro := StrToInt(edtInsertValue.text);
     FevereiroRendeu := Fevereiro * 0.0862;
     edtDepositado.Text := IntToStr(Fevereiro);
     edtRendimentoMes.Text := floattostr(FevereiroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Marco' then
  begin
     Marco := StrToInt(edtInsertValue.text);
     MarcoRendeu := Marco * 0.0862;
     edtDepositado.Text := IntToStr(Marco);
     edtRendimentoMes.Text := floattostr(MarcoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Abril' then
  begin
     Abril := StrToInt(edtInsertValue.text);
     AbrilRendeu := Abril * 0.0862;
     edtDepositado.Text := IntToStr(Abril);
     edtRendimentoMes.Text := floattostr(AbrilRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Maio' then
  begin
     Maio := StrToInt(edtInsertValue.text);
     MaioRendeu := Maio * 0.0862;
     edtDepositado.Text := IntToStr(Maio);
     edtRendimentoMes.Text := floattostr(MaioRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Junho' then
  begin
     Junho := StrToInt(edtInsertValue.text);
     JunhoRendeu := Junho * 0.0862;
     edtDepositado.Text := IntToStr(Junho);
     edtRendimentoMes.Text := floattostr(JunhoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
    ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Julho' then
  begin
     Julho := StrToInt(edtInsertValue.text);
     JulhoRendeu := Julho * 0.0862;
     edtDepositado.Text := IntToStr(Julho);
     edtRendimentoMes.Text := floattostr(JulhoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Agosto' then
  begin
     Agosto := StrToInt(edtInsertValue.text);
     AgostoRendeu := Agosto * 0.0862;
     edtDepositado.Text := IntToStr(Agosto);
     edtRendimentoMes.Text := floattostr(AgostoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Setembro' then
  begin
     Setembro := StrToInt(edtInsertValue.text);
     SetembroRendeu := Setembro * 0.0862;
     edtDepositado.Text := IntToStr(Setembro);
     edtRendimentoMes.Text := floattostr(SetembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
    ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Outubro' then
  begin
     Outubro := StrToInt(edtInsertValue.text);
     OutubroRendeu := Outubro * 0.0862;
     edtDepositado.Text := IntToStr(Outubro);
     edtRendimentoMes.Text := floattostr(OutubroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Novembro' then
  begin
     Novembro := StrToInt(edtInsertValue.text);
     NovembroRendeu := Novembro * 0.0862;
     edtDepositado.Text := IntToStr(Novembro);
     edtRendimentoMes.Text := floattostr(NovembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
    ShowMessage('Valor Depositado');
  end else
  if cmbDepositado.text = 'Dezembro' then
  begin
     Dezembro := StrToInt(edtInsertValue.text);
     DezembroRendeu := Dezembro * 0.0862;
     edtDepositado.Text := IntToStr(Dezembro);
     edtRendimentoMes.Text := floattostr(DezembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;ShowMessage('Valor Depositado');
  end else
end;

procedure TForm1.edtInsertValueChange(Sender: TObject);
begin
  if cmbEscolhaMes.text = 'Escolha o mes' then
  begin
  showMessage('Escolha um mes e deposite seu primeor valor');
  end else
  if cmbEscolhaMes.text = 'Janeiro' then
  begin
     Janeiro := StrToInt(edtInsertValue.text);
     janeiroRendeu := Janeiro * 0.0862;
     edtDepositado.Text := IntToStr(Janeiro);
     edtRendimentoMes.Text := floattostr(janeiroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Fevereiro' then
  begin
     Fevereiro := StrToInt(edtInsertValue.text);
     FevereiroRendeu := Fevereiro * 0.0862;
     edtDepositado.Text := IntToStr(Fevereiro);
     edtRendimentoMes.Text := floattostr(FevereiroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Marco' then
  begin
     Marco := StrToInt(edtInsertValue.text);
     MarcoRendeu := Marco * 0.0862;
     edtDepositado.Text := IntToStr(Marco);
     edtRendimentoMes.Text := floattostr(MarcoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Abril' then
  begin
     Abril := StrToInt(edtInsertValue.text);
     AbrilRendeu := Abril * 0.0862;
     edtDepositado.Text := IntToStr(Abril);
     edtRendimentoMes.Text := floattostr(AbrilRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Maio' then
  begin
     Maio := StrToInt(edtInsertValue.text);
     MaioRendeu := Maio * 0.0862;
     edtDepositado.Text := IntToStr(Maio);
     edtRendimentoMes.Text := floattostr(MaioRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Junho' then
  begin
     Junho := StrToInt(edtInsertValue.text);
     JunhoRendeu := Junho * 0.0862;
     edtDepositado.Text := IntToStr(Junho);
     edtRendimentoMes.Text := floattostr(JunhoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
    ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Julho' then
  begin
     Julho := StrToInt(edtInsertValue.text);
     JulhoRendeu := Julho * 0.0862;
     edtDepositado.Text := IntToStr(Julho);
     edtRendimentoMes.Text := floattostr(JulhoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Agosto' then
  begin
     Agosto := StrToInt(edtInsertValue.text);
     AgostoRendeu := Agosto * 0.0862;
     edtDepositado.Text := IntToStr(Agosto);
     edtRendimentoMes.Text := floattostr(AgostoRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Setembro' then
  begin
     Setembro := StrToInt(edtInsertValue.text);
     SetembroRendeu := Setembro * 0.0862;
     edtDepositado.Text := IntToStr(Setembro);
     edtRendimentoMes.Text := floattostr(SetembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
    ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Outubro' then
  begin
     Outubro := StrToInt(edtInsertValue.text);
     OutubroRendeu := Outubro * 0.0862;
     edtDepositado.Text := IntToStr(Outubro);
     edtRendimentoMes.Text := floattostr(OutubroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Novembro' then
  begin
     Novembro := StrToInt(edtInsertValue.text);
     NovembroRendeu := Novembro * 0.0862;
     edtDepositado.Text := IntToStr(Novembro);
     edtRendimentoMes.Text := floattostr(NovembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;
    ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Dezembro' then
  begin
     Dezembro := StrToInt(edtInsertValue.text);
     DezembroRendeu := Dezembro * 0.0862;
     edtDepositado.Text := IntToStr(Dezembro);
     edtRendimentoMes.Text := floattostr(DezembroRendeu);
     edtRendimentoTotal.Text := floattostr(TotalDeTudo);
     TotalDepositado := Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro;
     TotalRendeu := JaneiroRendeu + FevereiroRendeu + MarcoRendeu + AbrilRendeu + MaioRendeu + JunhoRendeu + JulhoRendeu + AgostoRendeu + SetembroRendeu + OutubroRendeu + NovembroRendeu + DezembroRendeu;
     TotalDeTudo := TotalDepositado + TotalRendeu;ShowMessage('Valor Depositado');
  end else
end;

end.

