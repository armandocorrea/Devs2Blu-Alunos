unit UPessoa;

interface

type
  TPessoa = class;

  TPessoas = array of TPessoa;

  TPessoa = class
  private
    FNome: String;
    FData_nasc: TDate;
    FAltura: Double;
    function GetNome: String;
    procedure SetNome(const aNome: String);

    function GetData_nasc: TDate;
    procedure SetData_nasc(const aData_nasc: TDate);

    function GetAltura: Double;
    procedure SetAltura(const aAltura: Double);

    function GetIdade: Byte;

  public
    constructor Create(aNome: String; aData_nasc: TDate; aAltura: Double);

    property nome: String read GetNome write SetNome;
    property dataNasc: TDate read GetData_nasc write SetData_nasc;
    property altura: Double read GetAltura write SetAltura;
    property idade: Byte read GetIdade;

  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

constructor TPessoa.Create(aNome: String; aData_nasc: TDate; aAltura: Double);
begin
  FNome := aNome;
  FData_nasc := aData_nasc;
  FAltura := aAltura;
end;

function TPessoa.GetAltura: Double;
begin
  Result := FAltura;
end;

function TPessoa.GetData_nasc: TDate;
begin
  Result := FData_nasc;
end;

function TPessoa.GetIdade: Byte;
var
  BirthDate, CurrentDate: TDate;
  y1, m1, d1: Word; // born
  y2, m2, d2: Word; // today
begin
  Result := 0;

  BirthDate := Self.FData_nasc;
  CurrentDate := Now;

  if CurrentDate < BirthDate then
    Exit;

  DecodeDate(BirthDate, y1, m1, d1);
  DecodeDate(CurrentDate, y2, m2, d2);

  // Fudge someone born on the leap-day to Feb 28th of the same year
  // strictly for the purposes of this calculation
  if ((m1 = 2) and (d1 = 29)) and (not IsLeapYear(y2)) then
  begin
    d1 := 28;
  end;

  Result := y2 - y1; // rough count of years
  // Take away a year of the month/day is before their birth month/day
  if (m2 < m1) or ((m2 = m1) and (d2 < d1)) then
    Dec(Result);
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetAltura(const aAltura: Double);
begin
  FAltura := aAltura;
end;

procedure TPessoa.SetData_nasc(const aData_nasc: TDate);
begin
  FData_nasc := aData_nasc;
end;

procedure TPessoa.SetNome(const aNome: String);
begin
  FNome := aNome;
end;

end.
