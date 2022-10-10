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
  xIdade : array of Integer;
  xCategoria : array of String;
  xQtdAtletas, I : Integer;

begin

  xQtdAtletas := StrToInt(inputbox('Entradas', 'Quantidade a Classificar ', ''));
  SetLength(xIdade,xQtdAtletas);
  SetLength(xCategoria,xQtdAtletas);

  for I := 0 to xQtdAtletas-1 do
  begin

    xIdade[I]:= StrToInt(inputbox('Idade', 'Digite a Idade ', ''));

    if (xIdade[I] >= 5) and (xIdade[I] <= 7) then
      xCategoria[I]  := ' Categoria Infantil A. '
    else if (xIdade[I] >= 8) and (xIdade[I] <= 10) then
      xCategoria[I]  := ( ' Categoria Infantil B. ')
    else if (xIdade[I] >= 11) and (xIdade[I] <= 13) then
      xCategoria[I]  := ' Categoria Juvenil A. '
    else if (xIdade[I] >= 14) and (xIdade[I] <= 17) then
      xCategoria[I]  := ' Categoria Juvenil B. '
    else if (xIdade[I] >= 18) and (xIdade[I] <= 25) then
      xCategoria[I]  := ' Categoria Sênior. '
    else
      xCategoria[I]  := ' Idade fora da faixa etária. ';

  end;
  for I := 0 to Length(xCategoria)-1 do
  mmResultado.lines.add(xCategoria[I]);


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