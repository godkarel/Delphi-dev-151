unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
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
    function SomarTudo: Extended;
    function SomarDepositadoRendimento: Extended;
    procedure btnAvancadoClick(Sender: TObject);
  private
    FJaneiro: Integer;
    FJaneiroRendeu: Extended;
    FJaneiroLucro: Extended;
    FFevereiro: Integer;
    FFevereiroRendeu: Extended;
    FFevereiroLucro: Extended;
    FMarco: Integer;
    FMarcoRendeu: Extended;
    FMarcoLucro: Extended;
    FAbril: Integer;
    FAbrilRendeu: Extended;
    FAbrilLucro: Extended;
    FMaio: Integer;
    FMaioRendeu: Extended;
    FMaioLucro: Extended;
    FJunho: Integer;
    FJunhoRendeu: Extended;
    FJunhoLucro: Extended;
    FJulho: Integer;
    FJulhoRendeu: Extended;
    FJulhoLucro: Extended;
    FAgosto: Integer;
    FAgostoRendeu: Extended;
    FAgostoLucro: Extended;
    FSetembro: Integer;
    FSetembroRendeu: Extended;
    FSetembroLucro: Extended;
    FOutubro: Integer;
    FOutubroRendeu: Extended;
    FOutubroLucro: Extended;
    FNovembro: Integer;
    FNovembroRendeu: Extended;
    FNovembroLucro: Extended;
    FDezembro: Integer;
    FDezembroRendeu: Extended;
    FDezembroLucro: Extended;
    FTotalDepositado: Extended;
    FTotalRendeu: Extended;
    FTotalDeTudo: Extended;
    FRendimentos: Extended;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnDepositarClick(Sender: TObject);
begin
  if cmbEscolhaMes.Text = 'Escolha o mes' then
  begin
    ShowMessage('Escolha um mes para saber sobre os rendimentos');
  end
  else if cmbEscolhaMes.Text = 'Janeiro' then
  begin
    FJaneiro := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Fevereiro' then
  begin
    FFevereiro := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Marco' then
  begin
    FMarco := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Abril' then
  begin
    FAbril := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Maio' then
  begin
    FMaio := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Junho' then
  begin
    FJunho := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Julho' then
  begin
    FJulho := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Agosto' then
  begin
    FAgosto := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Setembro' then
  begin
    FSetembro := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Outubro' then
  begin
    FOutubro := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Novembro' then
  begin
    FNovembro := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end
  else if cmbEscolhaMes.Text = 'Dezembro' then
  begin
    FDezembro := StrToInt(edtInsertValue.Text);
    edtInsertValue.Text := '';
    ShowMessage('Valor Depositado');
  end;
end;

procedure TfrmPrincipal.btnAvancadoClick(Sender: TObject);
begin
  Form2.Show;
end;

procedure TfrmPrincipal.cmbEscolhaMesChange(Sender: TObject);
begin
  edtInsertValue.Visible := True;
end;

procedure TfrmPrincipal.btnConsultarClick(Sender: TObject);
begin
  Self.SomarTudo;
  if cmbDepositado.Text = 'Janeiro' then
  begin
    edtDepositado.Text := FloatToStr(FJaneiro);
    edtRendimentoMes.Text := FloatToStr(FJaneiroRendeu);
    edtRendimentoTotal.Text := FloatToStr(FTotalDeTudo);
  end
  // Outros meses seguem a mesma estrutura...
end;

function TfrmPrincipal.SomarDepositadoRendimento: Extended;
begin
  FJaneiroLucro := FJaneiro + FJaneiroRendeu;
  FFevereiroLucro := FFevereiro + FFevereiroRendeu;
  FMarcoLucro := FMarco + FMarcoRendeu;
  FAbrilLucro := FAbril + FAbrilRendeu;
  FMaioLucro := FMaio + FMaioRendeu;
  FJunhoLucro := FJunho + FJunhoRendeu;
  FJulhoLucro := FJulho + FJulhoRendeu;
  FAgostoLucro := FAgosto + FAgostoRendeu;
  FSetembroLucro := FSetembro + FSetembroRendeu;
  FOutubroLucro := FOutubro + FOutubroRendeu;
  FNovembroLucro := FNovembro + FNovembroRendeu;
  FDezembroLucro := FDezembro + FDezembroRendeu;
end;

function TfrmPrincipal.SomarTudo: Extended;
begin
  FJaneiroRendeu := FJaneiro * 0.0862;
  FFevereiroRendeu := FFevereiro * 0.0862;
  FMarcoRendeu := FMarco * 0.0862;
  FAbrilRendeu := FAbril * 0.0862;
  FMaioRendeu := FMaio * 0.0862;
  FJunhoRendeu := FJunho * 0.0862;
  FJulhoRendeu := FJulho * 0.0862;
  FAgostoRendeu := FAgosto * 0.0862;
  FSetembroRendeu := FSetembro * 0.0862;
  FOutubroRendeu := FOutubro * 0.0862;
  FNovembroRendeu := FNovembro * 0.0862;
  FDezembroRendeu := FDezembro * 0.0862;

  FTotalRendeu := FJaneiroRendeu + FFevereiroRendeu + FMarcoRendeu + FAbrilRendeu + FMaioRendeu + FJunhoRendeu +
                  FJulhoRendeu + FAgostoRendeu + FSetembroRendeu + FOutubroRendeu + FNovembroRendeu + FDezembroRendeu;

  FTotalDepositado := FJaneiro + FFevereiro + FMarco + FAbril + FMaio + FJunho + FJulho + FAgosto + FSetembro +
                      FOutubro + FNovembro + FDezembro;

  FTotalDeTudo := FTotalDepositado + FTotalRendeu;
  Result := FTotalDeTudo;
end;

end.
