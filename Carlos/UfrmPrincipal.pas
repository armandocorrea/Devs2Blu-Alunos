unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtIdade: TEdit;
    Label1: TLabel;
    btnCategoria: TButton;
    Label2: TLabel;
    lblCategoria: TLabel;
    procedure btnCategoriaClick(Sender: TObject);
  private
    { Private declarations }
    procedure Categoria;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Categoria;
var
  xIdade : Integer;
  xCategoria : String;
begin
  xIdade := StrToIntDef(edtIdade.Text,0);

  case xIdade of
  5..7:
    xCategoria := 'Infantil A';
  8..10:
    xCategoria := 'Infantil B';
  11..13:
    xCategoria := 'Juvenil A';
  14..17:
    xCategoria := 'Juvenil B';
  18..25:
    xCategoria := 'Senior';
  else
    xCategoria := 'Idade fora da faixa etária';
  end;

  lblCategoria.Caption := xCategoria;

end;

procedure TForm1.btnCategoriaClick(Sender: TObject);
begin
  Self.Categoria;
end;

end.
