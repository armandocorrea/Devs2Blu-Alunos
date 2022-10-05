unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtIdade: TEdit;
    btnEntrar: TButton;
    mmResultado: TMemo;
    Label3: TLabel;
    procedure btnEntrarClick(Sender: TObject);
  private
    procedure Classificar;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
  Classificar
end;

procedure TfrmPrincipal.Classificar;
var
  xIdade: Integer;

begin
  TryStrToInt(edtIdade.Text, xIdade);

  if (xIdade >= 5) and (xIdade <= 7) then
  begin
    mmResultado.Lines.Add('Idade informada: ' + IntToStr(xIdade) + #13#10 +
                          'Categoria: Infantil A.' + #13#10)
  end
  else if (xIdade >= 8) and (xIdade <= 10) then
  begin
    mmResultado.Lines.Add('Idade informada: ' + IntToStr(xIdade) + #13#10 +
                          'Categoria: Infantil B.' + #13#10)
  end
  else if (xIdade >= 11) and (xIdade <= 13) then
  begin
    mmResultado.Lines.Add('Idade informada: ' + IntToStr(xIdade) + #13#10 +
                          'Categoria: Juvenil A.' + #13#10)
  end
  else if (xIdade >= 14) and (xIdade <= 17) then
  begin
    mmResultado.Lines.Add('Idade informada: ' + IntToStr(xIdade) + #13#10 +
                          'Categoria: Juvenil B.' + #13#10)
  end
  else if (xIdade >= 18) and (xIdade <= 25) then
  begin
    mmResultado.Lines.Add('Idade informada: ' + IntToStr(xIdade) + #13#10 +
                          'Categoria: Sênior.' + #13#10)
  end
  else
    ShowMessage('Idade informada fora da faixa etária!');
end;

end.
