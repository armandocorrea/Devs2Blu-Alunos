unit UAnimal;

interface

type
  TEnumAnmal = (stCachorro, stGato, stPassaro);

  TAnimal = class
  private
    FPatas : Byte;
    function GetPatas : Byte;
    procedure SetPatas(const aValue : Byte);
  public
    function retornarSom : String; virtual ; abstract;
    property Patas : Byte read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
  private
  public
    constructor Create;
    function retornarSom : String; override;
  end;

  TGato = class(TAnimal)
  private
  public
    constructor Create;
    function retornarSom : String; override;
  end;

  TPassaro = class(TAnimal)
  private
  public
    constructor Create;
    function retornarSom : String; override;
  end;

implementation

{ TAnimal }

function TAnimal.GetPatas: Byte;
begin
  Result := FPatas;
end;

procedure TAnimal.SetPatas(const aValue: Byte);
begin
  FPatas := aValue;
end;

{ TCachorro }

constructor TCachorro.Create;
begin
  Patas := 4;
end;

function TCachorro.retornarSom: String;
begin
  Result := 'Au au';
end;

{ TGato }

constructor TGato.Create;
begin
  Patas := 4;
end;

function TGato.retornarSom: String;
begin
  Result := 'Miau';
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  Patas := 2;
end;

function TPassaro.retornarSom: String;
begin
  Result := 'Piu piu'
end;

end.
