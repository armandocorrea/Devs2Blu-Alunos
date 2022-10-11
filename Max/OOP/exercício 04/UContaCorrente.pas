unit UContaCorrente;

interface

uses Math;

type
  TContaCorrente = class
  private
    FNumero: String;
    FNome: String;
    FSaldo: Currency;
    function GetNome: String;
    function GetNumero: String;
    function GetSaldo: Currency;
    procedure SetNome(const Value: String);
    procedure SetNumero(const Value: String);
    procedure SetSaldo(const Value: Currency);
  public
    procedure deposito(aDeposito: Currency);
    procedure alterarNome(aNome: String);
    procedure saque(aSaque: Currency);
    procedure showInformacoes;

    constructor Create(const aNome: String; const aSaldo: Currency = 0);
    property nome: String read GetNome write SetNome;
    property saldo: Currency read GetSaldo write SetSaldo;
    property numero: String read GetNumero write SetNumero;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TContaCorrente }

procedure TContaCorrente.alterarNome(aNome: String);
begin
  Self.nome := aNome;
end;

constructor TContaCorrente.Create(const aNome: String;
  const aSaldo: Currency = 0);
begin
  FNumero := IntToStr(Math.RandomRange(1,1000));
  FNome := aNome;
  FSaldo := aSaldo;
end;

procedure TContaCorrente.deposito(aDeposito: Currency);
begin
  Self.saldo := Self.saldo + aDeposito;
end;

function TContaCorrente.GetNome: String;
begin
  Result := FNome;
end;

function TContaCorrente.GetNumero: String;
begin
  Result := FNumero;
end;

function TContaCorrente.GetSaldo: Currency;
begin
  Result := FSaldo;
end;

procedure TContaCorrente.saque(aSaque: Currency);
begin
  if saldo < aSaque then
  begin
    ShowMessage('Saldo insuficiente...');
    Exit;
  end;
  Self.saldo := Self.saldo - aSaque;
end;

procedure TContaCorrente.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TContaCorrente.SetNumero(const Value: String);
begin
  FNumero := Value
end;

procedure TContaCorrente.SetSaldo(const Value: Currency);
begin
  FSaldo := Value;
end;

procedure TContaCorrente.showInformacoes;
var
  xInformacoes : String;
begin

  xInformacoes := 'Conta: ' + numero + sLineBreak +
                  'Nome: ' + nome + sLineBreak +
                  'Saldo: ' + CurrToStr(saldo);
  ShowMessage(xInformacoes);
end;

end.
