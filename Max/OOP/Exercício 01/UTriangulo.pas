unit UTriangulo;


interface

type
  TTriangulo = class
    public
      a : Double;
      b : Double;
      c : Double;

      function Area : Double;
  end;

implementation

{ TTriangulo }

function TTriangulo.Area: Double;
var
  xp : Double;
begin
  xp := (Self.a + Self.b + Self.c) / 2;
  Result := Sqrt(xp * (xp - Self.a) * (xp - Self.b) * (xp - Self.c));
end;

end.
