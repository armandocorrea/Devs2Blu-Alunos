unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtIdade: TEdit;
    btnGravar: TButton;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Categorias;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{34. Elabore um algoritmo que, dada a idade de um nadador.
Classifique-o em uma das seguintes categorias:
  a. Infantil A = 5 - 7 anos;
  b. Infantil B = 8 - 10 anos;
  c. Juvenil A = 11- 13 anos;
  d. Juvenil B = 14 - 17 anos;
  e. Sênior = 18 - 25 anos.
Apresentar mensagem “idade fora da faixa etária” quando for outro
 ano não contemplado;}


Procedure Tform1.Categorias;
var
  xCategoria: Integer;

begin
  xCategoria := StrToInt(edtIdade.Text);

  case xCategoria of
   5..7:
    ShowMessage('O nadador pertence a categoria Infantil A de 5 a 7 anos');
   8..10:
    ShowMessage('O nadador pertence a categoria Infantil B de 8 a 10 anos');
   11..13:
    ShowMessage('O nadador pertence a categoria Juvenil A de 11 a 13 anos');
   14..17:
    ShowMessage('O nadador pertence a categoria Juvenil B 14 a 17 anos');
  18..25:
    ShowMessage('O nadador pertence a categoria Sênior 18 a 25 anos');
  else
    ShowMessage('Idade fora da faixa etária');
  end;

end;

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  Categorias;
end;

end.
