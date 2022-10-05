unit Exercicio34;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TuFrmClassificador = class(TForm)
    edtIdade: TEdit;
    Label1: TLabel;
    lblIdadeNadador: TLabel;
    btnClassificar: TButton;
    procedure btnClassificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClassificarNadador;
  public
    { Public declarations }
  end;

var
  uFrmClassificador: TuFrmClassificador;

implementation

{$R *.dfm}


procedure TuFrmClassificador.ClassificarNadador;
var
  xIdadeNadador: Integer;
begin
  xIdadeNadador := StrToInt(edtIdade.Text);

  case xIdadeNadador of
    5..7:
      ShowMessage('Nadador classificado como: Infantil A');
    8..10:
      ShowMessage('Nadador classificado como: Infantil B');
    11..13:
     ShowMessage('Nadador classificado como: Juvenil A');
    14..17:
      ShowMessage('Nadador classificado como: Juvenil B');
    18..23:
      ShowMessage('Nadador classificado como: Senior');
    else
      ShowMessage('Idade fora da faixa etária');

  end;
end;

procedure TuFrmClassificador.btnClassificarClick(Sender: TObject);
begin
  ClassificarNadador;

end;



end.
