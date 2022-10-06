unit UtrianguloUnit1;

interface

type
  TTriangulo = class
      public
        a: double;
        b: double;
        c: double;

        function Area: Double;
  end;

implementation
 {TTriangulo}

function TTriangulo.Area: double;
var
  xP: Double;
begin
    xP   := (a+b+c)/2;
    Result := Sqrt (xP * ( xP - a) * (xP -b) *(xP -c));
end;


end.
