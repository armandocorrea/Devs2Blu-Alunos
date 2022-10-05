unit ufRmCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCategoria: TButton;
    mmResultado: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnCategoriaClick(Sender: TObject);
  private
  procedure CategoriaNadador;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCategoriaClick(Sender: TObject);
begin
  self.CategoriaNadador;
end;

procedure TForm1.CategoriaNadador;
var
  xIdade : Integer;
  xCategoria : String;

begin

  xIdade:= StrToInt(inputbox('Produto', 'Digite a Idade', ''));

  if (xIdade >= 5) and (xIdade <= 7) then
    xCategoria := ' Categoria Infantil A. '
  else if (xIdade >= 8) and (xIdade <= 10) then
     xCategoria := ' Categoria Infantil B. '
  else if (xIdade >= 11) and (xIdade <= 13) then
     xCategoria := ' Categoria Juvenil A. '
  else if (xIdade >= 14) and (xIdade <= 17) then
     xCategoria := ' Categoria Juvenil B. '
  else if (xIdade >= 18) and (xIdade <= 25) then
     xCategoria := ' Sênior. '
  else
    xCategoria := ' Idade fora da faixa etária. ';

  mmResultado.lines.add(xCategoria);


end;

end.

{34. Elabore um algoritmo que, dada a idade de um nadador.
Classifique-o em uma das seguintes  categorias:

  a. Infantil A = 5 - 7 anos;
  b. Infantil B = 8 - 10 anos;
  c. Juvenil A = 11- 13 anos;
  d. Juvenil B = 14 - 17 anos;
  e. Sênior = 18 - 25 anos.

Apresentar mensagem “idade fora da faixa etária” quando
  for outro ano não contemplado;