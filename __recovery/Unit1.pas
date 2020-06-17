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
    cmbDepositado: TComboBox;
    procedure edtInsertValueChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cmbEscolhaMesChange(Sender: TObject);
    procedure cmbDepositadoChange(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  if cmbEscolhaMes.text = 'Escolha o mes' then
  begin
  showMessage('Deposite seu primeor valor');
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

procedure TForm1.edtInsertValueChange(Sender: TObject);
begin
    if cmbEscolhaMes.Text = 'Escolha o mes' then
    begin
      edtInsertValue.visible := false;
    end
    else
    if cmbEscolhaMes.text = 'Janeiro' then
      Janeiro := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Fevereiro' then
      Fevereiro := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Marco' then
      Marco := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Abril' then
      Abril := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Maio' then
      Maio := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Junho' then
      Junho := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Julho' then
      Julho := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Agosto' then
      Agosto := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Setembro' then
      Setembro := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Outubro' then
      Outubro := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Novembro' then
      Novembro := StrToInt(edtInsertValue.text)
    else
    if cmbEscolhaMes.text = 'Dezembro' then
      Dezembro := StrToInt(edtInsertValue.text)
    else
end;

procedure TForm1.cmbDepositadoChange(Sender: TObject);
begin
   if cmbDepositado.Text = 'Janeiro' then
   begin
      janeiroRendeu := Janeiro * 0.0862;
      edtDepositado.Text := IntToStr(Janeiro);
      edtRendimentoMes.Text := floattostr(janeiroRendeu);
      edtRendimentoTotal.Text := floattostr(TotalDeTudo);
   end else
   if cmbDepositado.Text = 'Fevereiro' then
   begin
      edtDepositado.Text := floattostr(FevereiroRendeu);
   end else
   if cmbDepositado.Text = 'Marco' then
   begin
      edtDepositado.Text := floattostr(MarcoRendeu);
   end else
   if cmbDepositado.Text = 'Abril' then
   begin
      edtDepositado.Text := floattostr(AbrilRendeu);
   end else
   if cmbDepositado.Text = 'Maio' then
   begin
      edtDepositado.Text := floattostr(MaioRendeu);
   end else
   if cmbDepositado.Text = 'Junho' then
   begin
      edtDepositado.Text := floattostr(JunhoRendeu);
   end else
   if cmbDepositado.Text = 'Julho' then
   begin
      edtDepositado.Text := floattostr(JulhoRendeu);
   end else
   if cmbDepositado.Text = 'Agosto' then
   begin
      edtDepositado.Text := floattostr(AgostoRendeu);
   end else
   if cmbDepositado.Text = 'Setembro' then
   begin
      edtDepositado.Text := floattostr(SetembroRendeu);
   end else
   if cmbDepositado.Text = 'Outubro' then
   begin
      edtDepositado.Text := floattostr(OutubroRendeu);
   end else
   if cmbDepositado.Text = 'Novembro' then
   begin
      edtDepositado.Text := floattostr(NovembroRendeu);
   end else
   if cmbDepositado.Text = 'Dezembro' then
   begin
      edtDepositado.Text := floattostr(DezembroRendeu);
   end else

end;

procedure TForm1.cmbEscolhaMesChange(Sender: TObject);
begin
   edtInsertValue.visible := true;
   if cmbEscolhaMes.Text = 'Janeiro' then
   begin
      edtDepositado.Text := IntToStr(Janeiro);
   end else
   if cmbEscolhaMes.Text = 'Fevereiro' then
   begin
      edtDepositado.Text := IntToStr(Fevereiro);
   end else
   if cmbEscolhaMes.Text = 'Marco' then
     begin
      edtDepositado.Text := IntToStr(Marco);
   end else
   if cmbEscolhaMes.Text = 'Abril' then
      begin
      edtDepositado.Text := IntToStr(Abril);
   end else
   if cmbEscolhaMes.Text = 'Maio' then
   begin
      edtDepositado.Text := IntToStr(Maio);
   end else
   if cmbEscolhaMes.Text = 'Junho' then
   begin
      edtDepositado.Text := IntToStr(Junho);
   end else
   if cmbEscolhaMes.Text = 'Julho' then
   begin
      edtDepositado.Text := IntToStr(Julho);
   end else
   if cmbEscolhaMes.Text = 'Agosto' then
   begin
      edtDepositado.Text := IntToStr(Agosto);
   end else
   if cmbEscolhaMes.Text = 'Setembro' then
   begin
      edtDepositado.Text := IntToStr(Setembro);
   end else
   if cmbEscolhaMes.Text = 'Outubro' then
   begin
      edtDepositado.Text := IntToStr(Outubro);
   end else
   if cmbEscolhaMes.Text = 'Novembro' then
   begin
      edtDepositado.Text := IntToStr(Novembro);
   end else
   if cmbEscolhaMes.Text = 'Dezembro' then
   begin
      edtDepositado.Text := IntToStr(Dezembro);
   end else
end;
end.

