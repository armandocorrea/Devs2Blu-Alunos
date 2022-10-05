unit nadador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    label1: TLabel;
    edtIdade: TEdit;
    btnFaixaEtaria: TButton;
    labelResultado: TLabel;
    procedure btnFaixaEtariaClick(Sender: TObject);
  private
    procedure DescobrirFaixaEtária;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.btnFaixaEtariaClick(Sender: TObject);
begin
  DescobrirFaixaEtária
end;

procedure TForm1.DescobrirFaixaEtária;
var
  xIdade: Integer;
begin
  xIdade := StrToInt(edtIdade.Text);

  if (xIdade >= 5) and (xIdade <= 7) then
    labelResultado.Caption := 'Infantil A'

  else if (xIdade >= 8) and (xIdade <= 10) then
    labelResultado.Caption := 'Infantil B'

  else if (xIdade >= 11) and (xIdade <= 13) then
    labelResultado.Caption := 'Juvenil A'

  else if (xIdade >= 14) and (xIdade <= 17) then
    labelResultado.Caption := 'Juvenil B'

  else if (xIdade >= 18) and (xIdade <= 25) then
    labelResultado.Caption := 'Sênior'

  else
    labelResultado.Caption := 'Idade fora da faixa etária';

end;

end.
