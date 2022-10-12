unit UPessoa;

interface

type
  TPessoa = class
    private
      FNome : String;
      FEndereco : String;
      function GetEndereco: String;
      function GetNome: String;
      procedure SetEndereco(const Value: String);
      procedure SetNome(const Value: String);
    public
      constructor Create(aNome : String; aEndereco : String = '');
      property nome : String read GetNome write SetNome;
      property endereco : String read GetEndereco write SetEndereco;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create(aNome, aEndereco: String);
begin
  FNome := aNome;
  FEndereco := aEndereco;
end;

function TPessoa.GetEndereco: String;
begin
  Result := FEndereco;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
