unit uFrmNadador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTipoNadador = class(TForm)
    edtIdade: TEdit;
    Label1: TLabel;
    mmHistorico: TMemo;
    Label2: TLabel;
    btnClassificar: TButton;
    procedure btnClassificarClick(Sender: TObject);
  private
    procedure ClassificaNadador;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoNadador: TFrmTipoNadador;

implementation

{$R *.dfm}

{ TFrmTipoNadador }

procedure TFrmTipoNadador.btnClassificarClick(Sender: TObject);
begin
  ClassificaNadador;
end;

procedure TFrmTipoNadador.ClassificaNadador;
var
  xClassificacao: String;
begin
  if (StrToInt(edtIdade.Text) >= 5) and (StrToInt(edtIdade.Text) <= 7) then
    xClassificacao := 'Infantil A'
  else if (StrToInt(edtIdade.Text) >= 8) and (StrToInt(edtIdade.Text) <= 10) then
    xClassificacao := 'Infantil B'
  else if (StrToInt(edtIdade.Text) >= 11) and (StrToInt(edtIdade.Text) <= 13) then
    xClassificacao := 'Juvenil A'
  else if (StrToInt(edtIdade.Text) >= 14) and (StrToInt(edtIdade.Text) <= 17) then
    xClassificacao := 'Juvenil B'
  else if (StrToInt(edtIdade.Text) >= 18) and (StrToInt(edtIdade.Text) <= 25) then
    xClassificacao := 'Sênior'
  else if (StrToInt(edtIdade.Text) < 5) or (StrToInt(edtIdade.Text) > 25) then
    xClassificacao := 'Idade Fora da Faixa Etária';

  mmHistorico.Lines.Add('Idade Nadador: ' + edtIdade.Text + #13#10 +
                        'Classificação atual: ' + xClassificacao);
end;

end.
