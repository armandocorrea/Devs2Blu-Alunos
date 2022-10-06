unit uTriangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTriangulo = class(TForm)
    edtXa: TEdit;
    edtXb: TEdit;
    edtXc: TEdit;
    edtYa: TEdit;
    edtYb: TEdit;
    edtYc: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblResultado: TLabel;
    lblX: TLabel;
    lblY: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTriangulo: TfrmTriangulo;

implementation

{$R *.dfm}

procedure TfrmTriangulo.btnCalcularClick(Sender: TObject);
var
  xTrianguloXA, xTrianguloXB, xTrianguloXC, xTrianguloYA, xTrianguloYB, xTrianguloYC, pX, pY : Double;
begin

   xTrianguloXA:= StrToFloatDef(edtXa.Text,0);
   xTrianguloXB:= StrToFloatDef(edtXb.Text,0);
   xTrianguloXC:= StrToFloatDef(edtXc.Text,0);
   xTrianguloYA:= StrToFloatDef(edtYa.Text,0);
   xTrianguloYB:= StrToFloatDef(edtYb.Text,0);
   xTrianguloYC:= StrToFloatDef(edtYc.Text,0);


   pX:= (xTrianguloXA + xTrianguloXB + xTrianguloXC ) / 2;
   pY:= (xTrianguloYA + xTrianguloYB + xTrianguloYC ) / 2;

   pX:= pX * (pX - xTrianguloXA) * (pX - xTrianguloXB) * (pX - xTrianguloXC);

   pY:= pY * (pY - xTrianguloYA) * (pY - xTrianguloYB) * (pY - xTrianguloYC);

   lblX.Caption:= FormatFloat('0.00',sqrt(pX));
   lblY.Caption:= FormatFloat('0.00',sqrt(pY));

   if pX > pY then
    lblResultado.Caption:= ('A área do triangulo X é maior')
   else
    lblResultado.Caption:= ('A área do triangulo Y é maior');

end;

end.
