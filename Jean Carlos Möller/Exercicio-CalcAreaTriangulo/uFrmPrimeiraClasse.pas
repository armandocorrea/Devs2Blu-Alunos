{
Fazer um programa para ler as medidas dos lados de dois
tri�ngulos X e Y (suponha medidas v�lidas).
Em seguida, mostrar o valor das �reas dos dois tri�ngulos e
dizer qual dos dois tri�ngulos possui a maior �rea.

A f�rmula para calcular a �rea de um tri�ngulo a
partir das medidas de seus lados a, b e c � a
seguinte (f�rmula de Heron):

 area = RaizQuadrada (p(p-a)(p-b)(p-c))
 onde p = a+b+c / 2

Usar o Math.Sqrt

Exemplo
  Medidas X
   3,00
   4,00
   5,00
  Medidas Y
   7,5
   4,50
   4,02

  Area X = 6,000
  Area Y = 7,5638
  Triagulo Y � maior
}

unit uFrmPrimeiraClasse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_tringuloX_a: TEdit;
    edt_tringuloX_b: TEdit;
    edt_tringuloX_c: TEdit;
    edt_tringuloY_a: TEdit;
    edt_tringuloY_b: TEdit;
    edt_tringuloY_c: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btn_calcular: TButton;
    btn_calcularOOP: TButton;
    lb_areaTrianguloX: TLabel;
    lb_areaTrianguloY: TLabel;
    lb_trianguloMaiorArea: TLabel;
    procedure btn_calcularClick(Sender: TObject);
  private
    { Private declarations }

    xValorAreaTrianguloX, xValorAreaTrianguloY : Double;

    procedure calcularSemOOP;
    procedure calcTrianguloX;
    procedure calcTrianguloY;
    procedure calcMaiorArea;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.calcMaiorArea;

begin
  if xValorAreaTrianguloX > xValorAreaTrianguloY then
  begin
    lb_trianguloMaiorArea.Caption := ('A �rea do tri�ngulo X � maior.');
  end

  else if xValorAreaTrianguloY > xValorAreaTrianguloX then
  begin
    lb_trianguloMaiorArea.Caption := ('A �rea do tri�ngulo Y � maior.');
  end;
end;

procedure TForm1.calcTrianguloX;
var
  //Tri�ngulo X;
  xTrianguloX_a, xTrianguloX_b, xTrianguloX_c,
  xP_TrianguloX : Double;

begin
  //Tringulo X
  xTrianguloX_a := StrToFloat (edt_tringuloX_a.Text);
  xTrianguloX_b := StrToFloat (edt_tringuloX_b.Text);
  xTrianguloX_c := StrToFloat (edt_tringuloX_c.Text);

  xP_TrianguloX := (xTrianguloX_a + xTrianguloX_b + xTrianguloX_c)/2;

  xValorAreaTrianguloX := xP_TrianguloX * (xP_TrianguloX - xTrianguloX_a)*
                          (xP_TrianguloX - xTrianguloX_b)*
                          (xP_TrianguloX - xTrianguloX_c);

  xValorAreaTrianguloX := Sqrt (xValorAreaTrianguloX);



  lb_areaTrianguloX.Caption := ('Tri�ngulo X �rea: ' +
  FormatFloat('0.00', xValorAreaTrianguloX));

end;

procedure TForm1.calcTrianguloY;
var
  //Trin�ngulo Y
  xTrianguloY_a, xTrianguloY_b, xTrianguloY_c,
  xP_TrianguloY : Double;
begin

  //Triangulo Y
  xTrianguloY_a := StrToFloat (edt_tringuloY_a.Text);
  xTrianguloY_b := StrToFloat (edt_tringuloY_b.Text);
  xTrianguloY_c := StrToFloat (edt_tringuloY_c.Text);

  xP_TrianguloY := (xTrianguloY_a + xTrianguloY_b + xTrianguloY_c)/2;
  xValorAreaTrianguloY := xP_TrianguloY *(xP_TrianguloY - xTrianguloY_a)*
                          (xP_TrianguloY - xTrianguloY_b)*
                          (xP_TrianguloY - xTrianguloY_c);

  xValorAreaTrianguloY := Sqrt(xValorAreaTrianguloY);

  lb_areaTrianguloY.Caption := ('Tri�ngulo Y �rea: ' +
  FormatFloat('0.00', xValorAreaTrianguloY));

end;

procedure TForm1.calcularSemOOP;
begin
  calcTrianguloX;
  calcTrianguloY;
  calcMaiorArea;
end;

procedure TForm1.btn_calcularClick(Sender: TObject);
begin
  calcularSemOOP;
end;

end.
