unit ex34;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    lbTittle: TLabel;
    edtIdade: TEdit;
    lbIdade: TLabel;
    lbResult: TLabel;
    btnCalculate: TButton;
    procedure btnCalculateClick(Sender: TObject);
  private
    procedure classificarCategoria(const aIdade : Integer);
  public
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCalculateClick(Sender: TObject);
var
  xIdade : Integer;
begin
  xIdade := StrToIntDef(edtIdade.Text, 0);
  classificarCategoria(xIdade);
end;

procedure TForm2.classificarCategoria(const aIdade : Integer);
const
  C_IDADE_MINIMA = 5;
  C_INFANTIL_A = 5;
  C_INFANTIL_B = 8;
  C_JUVENIL_A = 11;
  C_JUVENIL_B = 14;
  C_SENIOR = 18;
  C_IDADE_MAXIMA = 25;
begin
  if (aIdade > C_IDADE_MAXIMA) or (aIdade < C_IDADE_MINIMA) then
    lbResult.Caption := 'Idade fora da faixa etária.'
  else if aIdade >= 18 then
    lbResult.Caption := 'Sênior'
  else if aIdade >= 14 then
    lbResult.Caption := 'Juvenil B'
  else if aIdade >= 11 then
    lbResult.Caption := 'Juvenil A'
  else if aIdade >= 8 then
    lbResult.Caption := 'Infantil B'
  else if aIdade >= 5 then
    lbResult.Caption := 'Infantil A'
end;

end.
