unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtIdade: TEdit;
    mmCadastro: TMemo;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    function nadaCategoria (pIdade: integer): string;
    procedure cadastraNadador;
    procedure limpaEdits;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  cadastraNadador;
end;

procedure TForm1.cadastraNadador;
var
  xNome, xCategoria: string;
  xIdade: integer;
begin

  if edtNome.text = '' then
  begin
    showMessage('Insira o nome do nadador.');
    limpaEdits;
    exit;
  end;

  if edtIdade.text = '' then
    begin
    showMessage('Insira a idade do nadador.');
    limpaEdits;
    exit;
  end;

  xNome := edtNome.text;
  xIdade := strToInt(edtIdade.text);

  xCategoria := nadaCategoria(xIdade);

  if xCategoria = 'nops' then
  begin
    showMessage('Idade fora da faixa etária');
    limpaEdits;
    exit;
  end;

  mmCadastro.Lines.Add('Nome: ' + xNome + '; Idade: ' + intToStr(xIdade) + '; Categora: ' +
                        xCategoria);

  limpaEdits;

end;

procedure TForm1.limpaEdits;
begin
  edtNome.text := '';
  edtIdade.text := '';
  edtNome.SetFocus;
end;

function TForm1.nadaCategoria(pIdade: integer): string;
begin
  if (pIdade >= 5) and (pIdade <= 7) then
    Result := 'Infantil A'
  else if (pIdade >= 8) and (pIdade <= 10) then
    Result := 'Infantil B'
  else if (pIdade >= 11) and (pIdade <= 13) then
    Result := 'Juvenil A'
  else if (pIdade >= 14) and (pIdade <= 17) then
    Result := 'Juvenil B'
  else if (pIdade >= 18) and (pIdade <= 25) then
    Result := 'Sênior'
  else
    Result := 'nops';
end;

end.
