unit UfrmContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TFrmContas = class(TForm)
    btnCadastrar: TButton;
    edtNome: TEdit;
    edtSaldo: TEdit;
    lbNome: TLabel;
    lbSaldo: TLabel;
    btnDepositar: TButton;
    btnSacar: TButton;
    edtConsulta: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
    procedure edtConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FContaCorrente: TContaCorrente;
    procedure cadastrarConta;
  public
    { Public declarations }
  end;

var
  FrmContas: TFrmContas;

implementation

{$R *.dfm}

procedure TFrmContas.btnCadastrarClick(Sender: TObject);
begin
  cadastrarConta;
end;

procedure TFrmContas.btnDepositarClick(Sender: TObject);
begin
  if not Assigned(FContaCorrente) then
  begin
    ShowMessage('Cadastre uma conta primeiro');
    Exit;
  end;

  var xDeposito := StrToCurrDef(edtSaldo.Text, 0);
  FContaCorrente.deposito(xDeposito);
end;

procedure TFrmContas.btnSacarClick(Sender: TObject);
begin
  if not Assigned(FContaCorrente) then
  begin
    ShowMessage('Cadastre uma conta primeiro');
    Exit;
  end;

  var xSaque := StrToCurrDef(edtSaldo.Text, 0);
  FContaCorrente.saque(xSaque);
end;

procedure TFrmContas.cadastrarConta;
var
  xNome: String;
  xSaldo: Currency;
begin
  xNome := edtNome.Text;
  xSaldo := StrToCurrDef(edtSaldo.Text, 0);

  FContaCorrente := nil;
  try
    FContaCorrente := TContaCorrente.Create(xNome, xSaldo);
    // ShowMessage(Format('Conta: %s | Nome: %s | Saldo: %f',[FContaCorrente.numero,
    // FContaCorrente.nome, FContaCorrente.saldo]));
    ShowMessage('Conta cadastrada com sucesso!');
  except
    ShowMessage('Erro ao cadastrar');
  end;
end;

procedure TFrmContas.edtConsultaClick(Sender: TObject);
begin
  if not Assigned(FContaCorrente) then
  begin
    ShowMessage('Cadastre uma conta primeiro');
    Exit;
  end;

  FContaCorrente.showInformacoes;
end;

procedure TFrmContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FContaCorrente) then FreeAndNil(FContaCorrente);
end;

end.
