unit Atividade34;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BotaoPrincipal: TButton;
    Label1: TLabel;
    EditIdade: TEdit;
    Label2: TLabel;
    procedure BotaoPrincipalClick(Sender: TObject);
  private
    { Private declarations }
    procedure Processar(const pIdade: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.Processar(const pIdade: Integer);
begin

  case pIdade of

    5..7: // Caso a idade seja entre 5 a 7 anos
      showMessage('Voc? ? (Infantil A) Idade: ' + IntToStr(pIdade));

    8..10: // Caso a idade seja entre 8 a 10 anos
      showMessage('Voc? ? (Infantil B) Idade: ' + IntToStr(pIdade));

    11..13: // Caso a idade seja entre 11 a 13 anos
      showMessage('Voc? ? (Juvenil A) Idade: ' + IntToStr(pIdade));

    14..17: // Caso a idade seja entre 14 a 17 anos
      showMessage('Voc? ? (Juvenil B) Idade: ' + IntToStr(pIdade));

    18..25: // Caso a idade seja entre 18 a 25 anos
      showMessage('Voc? ? (S?nior) Idade: ' + IntToStr(pIdade));

    else  // Caso a idade n?o estiver dentre essas op??es
      ShowMessage('Idade fora da faixa et?ria');

  end;

end;

procedure TForm1.BotaoPrincipalClick(Sender: TObject);
var
  xIdade: Integer;
begin

  xIdade:= StrToInt(EditIdade.Text);

  Processar(xIdade);

end;
end.
