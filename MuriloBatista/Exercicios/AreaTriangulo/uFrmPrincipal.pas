unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtTriXa: TEdit;
    edtTriXb: TEdit;
    edtTriXc: TEdit;
    edtTriYa: TEdit;
    edtTriYb: TEdit;
    edtTriYc: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnCalcular: TButton;
    btnCalcularOpp: TButton;
    lblResultX: TLabel;
    lblResultY: TLabel;
    lblResultMaior: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    function CalcularArea(const aLadoA, aLadoB, aLadoC: Double): Double;
    function RetornarMaior(const aNumA, aNumB: Double): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
 xLadoA, xLadoB, xLadoC,
 yLadoA, yLadoB, yLadoC,
 xResult, yResult: Double;

begin
 xLadoA := StrToFloat(edtTriXa.Text);
 xLadoB := StrToFloat(edtTriXb.Text);
 xLadoC := StrToFloat(edtTriXc.Text);

 yLadoA := StrToFloat(edtTriYa.Text);
 yLadoB := StrToFloat(edtTriYb.Text);
 yLadoC := StrToFloat(edtTriYc.Text);

 xResult := CalcularArea(xLadoA, xLadoB, xLadoC);
 yResult := CalcularArea(yLadoA, yLadoB, yLadoC);

 lblResultX.Caption := 'Triangulo X Área: '+ FormatFloat('0.00', xResult)+ '.';
 lblResultY.Caption := 'Triangulo Y Área: '+ FormatFloat('0.00', yResult)+ '.';
 lblResultMaior.Caption := RetornarMaior(xResult, yResult);

 lblResultX.Visible := True;
 lblResultY.Visible := True;
 lblResultMaior.Visible := True;

end;

function TForm1.CalcularArea(const aLadoA, aLadoB, aLadoC: Double): Double;
var
  xCalc: Double;

begin
  xCalc := (aLadoA + aLadoB + aLadoC) / 2;
  Result := Sqrt(xCalc*(xCalc-aLadoA)*(xCalc-aLadoB)*(xCalc-aLadoC));

end;

function TForm1.RetornarMaior(const aNumA, aNumB: Double): String;
var
  xValor: Double;

begin
   xValor := Max(aNumA, aNumB);

   if xValor = aNumA then
    Result := 'A área do Triângulo X é maior.'
   else
    Result := 'A área do Triângulo Y é maior.'

end;

end.
