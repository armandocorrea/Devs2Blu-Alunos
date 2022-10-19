unit UPessoaFisica;

interface

uses
  UPessoa;

type
  TPessoaFisica = class(TPessoa)
    private
      FCPF : String;
      FIdade : Byte;
      function GetCPF: String;
      function GetIdade: Byte;
      procedure SetCPF(const Value: String);
      procedure SetIdade(const Value: Byte);
      function CPF_Valido (aCPF : String) : Boolean;
    public
      constructor Create(aNome : String; aCPF : String; aIdade : Byte; aEndereco : String = '');
      property CPF : String read GetCPF write SetCPF;
      property idade : Byte read GetIdade write SetIdade;
  end;

implementation

uses
  System.SysUtils;

{ TPessoaFisica }

function TPessoaFisica.CPF_Valido (aCPF : String): Boolean;
var
  xAux, xResult : Double;
  xIsFirstDigitValid, xIsSecondDigitValid : Boolean;
  I : Integer;
begin

  xIsFirstDigitValid := False;
  xIsSecondDigitValid := False;
  xAux := 0;
  for I := 0 to 8 do
    xAux := xAux + StrToInt(aCPF[I + 1]) * (10 - I);

  xResult := (Trunc(xAux) * 10) mod 11;

  if xResult.ToString = aCPF[9 + 1] then
    xIsFirstDigitValid := True;

  xAux := 0;
  for I := 0 to 9 do
    xAux := xAux + StrToInt(aCPF[I + 1]) * (11 - I);

  xResult := (Trunc(xAux) * 10) mod 11;

  if xResult.ToString = aCPF[10 + 1] then
    xIsSecondDigitValid := True;

  Result := xIsFirstDigitValid and xIsSecondDigitValid;
end;

constructor TPessoaFisica.Create(aNome, aCPF: String; aIdade: Byte;
  aEndereco: String = '');
begin
  if (aCPF.Length <> 11) or (not CPF_Valido(aCPF)) then
    raise Exception.Create('CPF inválido!');
  FCPF := aCPF;
  FIdade := aIdade;
  nome := aNome;
  endereco := aEndereco;
end;

function TPessoaFisica.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisica.GetIdade: Byte;
begin
  Result := FIdade;
end;

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoaFisica.SetIdade(const Value: Byte);
begin
  FIdade := Value;
end;

end.
