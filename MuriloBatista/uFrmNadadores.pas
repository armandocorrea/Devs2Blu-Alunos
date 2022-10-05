unit uFrmNadadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtIdade: TEdit;
    btnClassificar: TButton;
    lblResult: TLabel;
    Label1: TLabel;
    procedure btnClassificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClassificarClick(Sender: TObject);
var
  xIdade: Byte;

begin
  xIdade := StrToInt(edtIdade.Text);

  if (xIdade >= 5) and (xIdade <=7) then
    lblResult.Caption := 'Classificação Infantil A.'
  else if (xIdade >= 8) and (xIdade <= 10) then
    lblResult.Caption := 'Classificação Infantil B.'
  else if (xIdade >= 11) and (xIdade <= 13) then
    lblResult.Caption := 'Classificação Juvenil A.'
  else if (xIdade >= 14) and (xIdade <= 17) then
    lblResult.Caption := 'Classificação Juvenil B.'
  else if (xIdade >= 18) and (xIdade <= 25) then
    lblResult.Caption := 'Classificação Senior.'
  else
    lblResult.Caption := 'Idade fora da faixa de Classificação.'


end;

end.
