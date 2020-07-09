unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2, Vcl.Menus;

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
    btnAvancado: TButton;
    procedure btnDepositarClick(Sender: TObject);
    procedure cmbEscolhaMesChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    function SomarTudo: EXTENDED ;
    function SomarDepositadoRendimento: EXTENDED;
    procedure btnAvancadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Janeiro: Integer;
  janeiroRendeu: EXTENDED;
  JaneiroLucro: EXTENDED;
  Fevereiro: Integer;
  FevereiroRendeu: EXTENDED;
  FevereiroLucro: EXTENDED;
  Marco: Integer;
  MarcoRendeu: EXTENDED;
  MarcoLucro: EXTENDED;
  Abril: Integer;
  AbrilRendeu: EXTENDED;
  AbrilLucro: EXTENDED;
  Maio: Integer;
  MaioRendeu: EXTENDED;
  MaioLucro: EXTENDED;
  Junho: Integer;
  JunhoRendeu: EXTENDED;
  JunhoLucro: EXTENDED;
  Julho: Integer;
  JulhoRendeu: EXTENDED;
  JulhoLucro: EXTENDED;
  Agosto: Integer;
  AgostoRendeu: EXTENDED;
  AgostoLucro: EXTENDED;
  Setembro: Integer;
  SetembroRendeu: EXTENDED;
  SetembroLucro: EXTENDED;
  Outubro: Integer;
  OutubroRendeu: EXTENDED;
  OutubroLucro: EXTENDED;
  Novembro: Integer;
  NovembroRendeu: EXTENDED;
  NovembroLucro: EXTENDED;
  Dezembro: Integer;
  DezembroRendeu: EXTENDED;
  DezembroLucro: EXTENDED;
  TotalDepositado : EXTENDED;
  TotalRendeu : EXTENDED;
  TotalDeTudo : EXTENDED;
  Rendimentos : Extended;

implementation

{$R *.dfm}

procedure TForm1.btnDepositarClick(Sender: TObject);
begin
  if cmbEscolhaMes.Text = 'Escolha o mes' then
  begin
     ShowMessage('Escolha um mes para saber sobre os rendimentos');
  end else
  if cmbEscolhaMes.Text = 'Janeiro' then
  begin
     Janeiro := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Fevereiro' then
  begin
     Fevereiro := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Marco' then
  begin
     Marco := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Abril' then
  begin
     Abril := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Maio' then
  begin
     Maio := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Junho' then
  begin
     Junho := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Julho' then
  begin
     Julho := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Agosto' then
  begin
     Agosto := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Setembro' then
  begin
     Setembro := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Outubro' then
  begin
     Outubro := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Novembro' then
  begin
     Novembro := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end else
  if cmbEscolhaMes.text = 'Dezembro' then
  begin
     Dezembro := StrToInt(edtInsertValue.Text);
     edtInsertValue.Text := '';
     ShowMessage('Valor Depositado');
  end else
end;

procedure TForm1.btnAvancadoClick(Sender: TObject);
begin
 Form2.Show;
end;

procedure TForm1.cmbEscolhaMesChange(Sender: TObject);
begin
  edtInsertValue.Visible := true
end;

procedure TForm1.btnConsultarClick(Sender: TObject);
begin
    if cmbDepositado.Text = 'Janeiro' then
  begin
     SomarTudo;
     edtDepositado.Text := floattostr(Janeiro);
     edtRendimentoMes.Text := FloatToStr(JaneiroRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Fevereiro' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Fevereiro);
     edtRendimentoMes.Text := FloatToStr(FevereiroRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Marco' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Marco);
     edtRendimentoMes.Text := FloatToStr(MarcoRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.text = 'Abril' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Abril);
     edtRendimentoMes.Text := FloatToStr(AbrilRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Maio' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Maio);
     edtRendimentoMes.Text := FloatToStr(MaioRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Junho' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Junho);
     edtRendimentoMes.Text := FloatToStr(JunhoRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Julho' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Julho);
     edtRendimentoMes.Text := FloatToStr(JulhoRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Agosto' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Agosto);
     edtRendimentoMes.Text := FloatToStr(AgostoRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Setembro' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Setembro);
     edtRendimentoMes.Text := FloatToStr(SetembroRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Outubro' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Outubro);
     edtRendimentoMes.Text := FloatToStr(OutubroRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Novembro' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Novembro);
     edtRendimentoMes.Text := FloatToStr(NovembroRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else
  if cmbDepositado.Text = 'Dezembro' then
  begin
     SomarTudo;
     edtDepositado.Text := FloatToStr(Dezembro);
     edtRendimentoMes.Text := FloatToStr(DezembroRendeu);
     edtRendimentoTotal.Text := FloatToStr(TotalDeTudo);
  end else

end;

function TForm1.SomarDepositadoRendimento;
begin
   JaneiroLucro := Janeiro + JaneiroRendeu;
   FevereiroLucro := Fevereiro + FevereiroRendeu;
   MarcoLucro := Marco + MarcoRendeu;
   AbrilLucro := Abril + AbrilRendeu;
   MaioLucro := Maio + MaioRendeu;
   JunhoLucro := Junho + JunhoRendeu;
   JulhoLucro := Julho + JulhoRendeu;
   AgostoLucro := Agosto + AgostoRendeu;
   SetembroLucro := Setembro + SetembroRendeu;
   OutubroLucro := Outubro + OutubroRendeu;
   NovembroLucro := Novembro + NovembroRendeu;
   DezembroLucro := Dezembro + DezembroRendeu;

end;


function TForm1.SomarTudo;
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
    Rendimentos := Janeiro + JaneiroRendeu + Fevereiro + FevereiroRendeu + Marco + MarcoRendeu + Abril + AbrilRendeu + Maio + MaioRendeu + Junho + JunhoRendeu + Julho + JulhoRendeu + Agosto + AgostoRendeu + Setembro + SetembroRendeu + Outubro + OutubroRendeu + Novembro + NovembroRendeu + Dezembro + DezembroRendeu;
    TotalDeTudo := TotalDepositado + TotalRendeu;
    Result := TotalDeTudo
end;


end.

