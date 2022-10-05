unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    btmexecutar: TButton;
    Label2: TLabel;
    lblcategoria: TLabel;
    procedure btmexecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btmexecutarClick(Sender: TObject);
  var
  xnadador, xIdade : integer;


begin
  xidade:= strtoint(inputbox ('Informar a idade do nadador',
   'Entre com a idade', '')) ;

   if (xidade >= 5)and (xidade <= 7) then
       lblcategoria.caption :=  'Infantil A'
   else if (xidade >= 8)and (xidade <= 10) then
       lblcategoria.caption :=  'Infantil B'
   else if (xidade >= 11)and (xidade <= 13) then
       lblcategoria.caption :=  'Juvenil A'
   else if (xidade >= 14)and (xidade <= 17) then
       lblcategoria.caption :=  'Juvenil B'
   else if (xidade >= 18)and (xidade <= 25) then
       lblcategoria.caption:=  'Sênior'
   else if (xidade <= 4)or (xidade >= 26) then
       lblcategoria.caption :=  'Idade fora da falxa'


end;

end.
