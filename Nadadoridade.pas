unit Nadadoridade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Button1: TButton;
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
  idade: integer;

begin
  Idade := StrToInt(edit1.text);

  if (Idade <= 5) or (idade >= 25) then
    label3.caption := ('O nadador com ' +IntToStr(idade)+ ' anos tem a idade fora da faixa etária ')

  else if (idade >= 8) and (idade <= 10) then
    label3.caption := ('O nadador com ' +IntToStr(idade)+ ' anos se classifica em Infantil B ')

  else if (idade >= 11) and (idade <= 13) then
    label3.caption := ('O nadador com ' +IntToStr(idade)+ ' anos se classifica em Juvenil A ')

  else if (idade >= 14) and (idade <= 17) then
    label3.caption := ('O nadador com ' +IntToStr(idade)+ ' anos se classifica em Juvenil B ')

  else if (Idade >= 18) and (idade <= 25) then
    label3.caption := ('O nadador com ' +IntToStr(idade)+ ' anos se classifica em Sênior ')

  else if(idade >= 5) and (idade <= 7) then
    label3.caption := ('O nadador com ' +IntToStr(idade)+ ' anos se classifica em Infantil A ')


end;


end.
