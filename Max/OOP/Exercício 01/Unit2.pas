unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TTringArray = Array of Double;

  TForm2 = class(TForm)
    lbTittle: TLabel;
    edtXA: TEdit;
    panel1: TPanel;
    lbxa: TLabel;
    Panel2: TPanel;
    lbxb: TLabel;
    edtXB: TEdit;
    Panel3: TPanel;
    lbXC: TLabel;
    edtXC: TEdit;
    Panel4: TPanel;
    Label1: TLabel;
    edtYA: TEdit;
    Panel5: TPanel;
    Label2: TLabel;
    edtYB: TEdit;
    Panel6: TPanel;
    Label3: TLabel;
    edtYC: TEdit;
    lbY: TLabel;
    lbX: TLabel;
    btnCalculate: TButton;
    btnCalcularOOP: TButton;
    lbResultX: TLabel;
    lbResultY: TLabel;
    lbResult: TLabel;
    procedure btnCalculateClick(Sender: TObject);
    procedure btnCalcularOOPClick(Sender: TObject);
  private
    function calcularAreaTriangulo(var aLadosTriang: TTringArray): Double;
    procedure escreverResposta(var aAreaX: Double; var aAreaY: Double);
    procedure calcularAreaOOP;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UTriangulo;

{$R *.dfm}

procedure TForm2.btnCalcularOOPClick(Sender: TObject);
begin
  Self.calcularAreaOOP;
end;

procedure TForm2.btnCalculateClick(Sender: TObject);
var
  xA, xB, xC, xAreaX, xAreaY: Double;
  xLadosTriang: TTringArray;
begin

  xA := StrToFloatDef(edtXA.Text, 0);
  xB := StrToFloatDef(edtXB.Text, 0);
  xC := StrToFloatDef(edtXC.Text, 0);
  xLadosTriang := [xA, xB, xC];
  xAreaX := calcularAreaTriangulo(xLadosTriang);

  xA := StrToFloatDef(edtYA.Text, 0);
  xB := StrToFloatDef(edtYB.Text, 0);
  xC := StrToFloatDef(edtYC.Text, 0);
  xLadosTriang := [xA, xB, xC];
  xAreaY := calcularAreaTriangulo(xLadosTriang);

  escreverResposta(xAreaX, xAreaY);

end;

procedure TForm2.calcularAreaOOP;
var
  xTrianguloX: TTriangulo;
  xTrianguloY: TTriangulo;

  xAreaX: Double;
  xAreaY: Double;
begin
  xTrianguloX := TTriangulo.Create;
  xTrianguloY := TTriangulo.Create;
  try
    xTrianguloX.a := StrToFloatDef(edtXA.Text, 0);
    xTrianguloX.b := StrToFloatDef(edtXB.Text, 0);
    xTrianguloX.c := StrToFloatDef(edtXC.Text, 0);
    xAreaX := xTrianguloX.Area;

    xTrianguloY.a := StrToFloatDef(edtYA.Text, 0);
    xTrianguloY.b := StrToFloatDef(edtYB.Text, 0);
    xTrianguloY.c := StrToFloatDef(edtYC.Text, 0);
    xAreaY := xTrianguloY.Area;

    Self.escreverResposta(xAreaX, xAreaY);
  finally
    FreeAndNil(xTrianguloX);
    FreeAndNil(xTrianguloY);
  end;
end;

function TForm2.calcularAreaTriangulo(var aLadosTriang: TTringArray): Double;
var
  xA, xB, xC, xP: Double;
begin
  if Length(aLadosTriang) <> 3 then
  begin
    Result := 0;
    Exit;
  end;

  xA := aLadosTriang[0];
  xB := aLadosTriang[1];
  xC := aLadosTriang[2];

  xP := (xA + xB + xC) / 2;

  Result := Sqrt(xP * (xP - xA) * (xP - xB) * (xP - xC));
end;

procedure TForm2.escreverResposta(var aAreaX, aAreaY: Double);
begin
  lbResultX.Caption := Format('Triângulo X Área : %f', [aAreaX]);

  lbResultY.Caption := Format('Triângulo Y Área : %f', [aAreaY]);
  if aAreaX > aAreaY then
  begin
    lbResult.Caption := Format('A área do triângulo X é maior', []);
  end
  else if aAreaX < aAreaY then
    lbResult.Caption := Format('A área do triângulo Y é maior', [])
  else
  begin
    lbResult.Caption := Format('Os triângulos possuem as mesmas áreas.', []);
  end;
end;

end.
