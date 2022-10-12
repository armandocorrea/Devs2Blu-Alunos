unit UPessoaJuridica;

interface

uses
  UPessoa;

type
  TPessoaJuridica = class(TPessoa)
    private
      FCNPJ : String;
      FIE : String;
      function GetCNPJ: String;
      function GetIE: String;
      procedure SetCNPJ(const Value: String);
      procedure SetIE(const Value: String);
    public
      constructor Create(aNome : String; aCNPJ : String; aIE : String; aEndereco: String = '');
      function CNPJ_Valido : Boolean;
      property CNPJ : String read GetCNPJ write SetCNPJ;
      property IE : String read GetIE write SetIE;
  end;

implementation

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido: Boolean;
begin
  Result := True; //validar CNPJ;
end;

constructor TPessoaJuridica.Create(aNome : String; aCNPJ : String; aIE : String; aEndereco: String = '');
begin
  FCNPJ := aCNPJ;
  FIE := aIE;
  nome := nome;
  endereco := aEndereco;
end;

function TPessoaJuridica.GetCNPJ: String;
begin
  Result := FCNPJ;
end;

function TPessoaJuridica.GetIE: String;
begin
  Result := FIE;
end;

procedure TPessoaJuridica.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TPessoaJuridica.SetIE(const Value: String);
begin
  FIE := Value;
end;

end.
