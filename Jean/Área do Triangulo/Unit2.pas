unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls ;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lblresult1: TLabel;
    edttrix1: TEdit;
    edttrix2: TEdit;
    edttrix3: TEdit;
    edttriy1: TEdit;
    edttriy2: TEdit;
    edttriy3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btmcalcular: TButton;
    btmcalcularopp: TButton;
    lblresult2: TLabel;
    lblresult3: TLabel;
    procedure btmcalcularClick(Sender: TObject);
    procedure btmcalcularoppClick(Sender: TObject);

  private
    { Private declarations }
    procedure CalcularAreaOOP;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UtrianguloUnit1;

{$R *.dfm}

procedure TForm2.btmcalcularClick(Sender: TObject);
  var
   xperimetroy,  xareay, xladoay, xladoby, xladocy,
   xperimetrox,  xareax, xladoax, xladobx, xladocx : double;


begin
  xladoax := strtofloat(edttrix1.text);
  xladobx := strtofloat(edttrix2.text);
  xladocx := strtofloat(edttrix3.text);


  xperimetrox := (xladoax+xladobx+xladocx) / 2 ;
  xareax := Sqrt(xperimetrox*(xperimetrox-xladoax)*
                   (xperimetrox-xladobx)*(xperimetrox-xladocx));

                    xladoay := strtofloat(edttriy1.text);
  xladoby := strtofloat(edttriy2.text);
  xladocy := strtofloat(edttriy3.text);


  xperimetroy := (xladoay+xladoby+xladocy) / 2 ;
  xareay := Sqrt(xperimetroy*(xperimetroy-xladoay)*
                   (xperimetroy-xladoby)*(xperimetroy-xladocy));

   lblresult1.Caption := 'Triangulo X �rea: ' +formatfloat('##0.##',xareax);
   lblresult2.Caption := 'Triangulo Y �rea: ' +formatfloat('##0.##',xareay);
   if xareax > xareay then
   lblresult3.Caption := 'A �rea do triangulo x � maior. '
   else  lblresult3.Caption := 'A �rea do triangulo Y � maior. ' ;
   if xareax = xareay then
   lblresult3.Caption := 'A �rea dos triangulos � igual. ' ;


end;

procedure TForm2.btmcalcularoppClick(Sender: TObject);
begin
  self.CalcularAreaOOP
end;

procedure TForm2.CalcularAreaOOP;
  var
    xTrianguloX: TTriangulo;
    xTrianguloY: TTriangulo;

    xAreax: double;
    xAreay: Double;
begin
   xTrianguloX :=  TTriangulo.create;
   xTrianguloY :=  TTriangulo.create;

   try
     // Primeiro Triangulo
       xTrianguloX.a := strtofloat(edttrix1.text);
       xTrianguloX.b := strtofloat(edttrix2.text);
       xTrianguloX.c := strtofloat(edttrix3.text);

       xareaX := xTrianguloX.Area;

       // Segundo triangulo

       xTrianguloY.a := strtofloat(edttriY1.text);
       xTrianguloY.b := strtofloat(edttriY2.text);
       xTrianguloY.c := strtofloat(edttriY3.text);

       xareaY := xTrianguloY.Area;

       lblresult1.Caption := 'Triangulo X �rea: ' + Formatfloat('0.00',xareax);
       lblresult2.Caption := 'Triangulo Y �rea: ' + Formatfloat('0.00',xareay);

       if (XareaX > XareaY) then
         lblresult3.Caption := 'A area do triangulo X � maior.'
       else
         lblresult3.Caption := 'A area do triangulo Y � maior.' ;

   finally
     Freeandnil (xtriangulox);
     Freeandnil (xtrianguloy);

   end;
end;

end.
