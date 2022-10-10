unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xIdade : integer;
begin
  xIdade:= StrToInt(Edit1.Text);

  if (xIdade < 5) or (xIdade > 25) then
    ShowMessage('Idade fora da faixa etária de classificação')
  else if (xIdade >= 5) and (xIdade <= 7) then
    ShowMessage('Nadador(a) classificado na categoria INFANTIL A')
  else if (xIdade >= 8) and (xIdade <= 10) then
    ShowMessage('Nadador(a) classificado na categoria INFANTIL B')
  else if (xIdade >= 11) and (xIdade <= 13) then
    ShowMessage('Nadador(a) classificado na categoria JUVENIL A')
  else if (xIdade >= 14) and (xIdade <= 17) then
    ShowMessage('Nadador(a) classificado na categoria JUVENIL B')
  else if (xIdade >= 18) and (xIdade <= 25) then
    ShowMessage('Nadador(a) classificado na categoria SÊNIOR')

end;

end.
