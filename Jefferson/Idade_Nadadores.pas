unit Idade_Nadadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LB_Titulo: TLabel;
    LB_InfA: TLabel;
    LB_InfB: TLabel;
    LB_JuvA: TLabel;
    LB_JuvB: TLabel;
    LB_Sen: TLabel;
    MMB_INFA: TMemo;
    MMB_INFB: TMemo;
    MMB_JuvA: TMemo;
    MMB_JuvB: TMemo;
    MMB_Sen: TMemo;
    LBS_InfA: TLabel;
    LBS_InfB: TLabel;
    LBS_JuvA: TLabel;
    LBS_JuvB: TLabel;
    LBS_Sen: TLabel;
    BT: TButton;
    procedure BTClick(Sender: TObject);
  private
  Procedure Classificar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.BTClick(Sender: TObject);
begin
Classificar;
end;

procedure TForm1.Classificar;
var
  xQtd : Integer;
  xNome : string;
  xIdade, I : Integer;

    begin
      MMB_INFA.lines.Clear;
      MMB_INFB.lines.Clear;
      MMB_JuvA.lines.Clear;
      MMB_JuvB.lines.Clear;
      MMB_Sen.lines.Clear;


    xQtd := strToInt(inputbox('Quantidade de atletas','Insira o numero de atletas a classificar', '0'));
    for I := 0 to xQTD -1 do
      begin
      xNome := inputbox('Nome do Atleta', (format('Nome do %d atleta', [I+1])), '0');
      xIdade := strToInt(inputbox('Idade do Atleta', (format('idade do %d atleta', [I+1])), '0'));
        if (xIdade <5) or (xidade > 25)then
          Showmessage('Idade fora do permitido para a atividade')

        else if (xIdade >= 5) and (xIdade < 7) then
          MMB_INFA.lines.add(xNome)

        else if (xIdade >= 8) and (xIdade < 10) then
          MMB_INFB.lines.add(xNome)

        else if (xIdade >= 11) and (xIdade < 13) then
          MMB_JuvA.lines.add(xNome)

        else if (xIdade >= 14) and (xIdade < 17) then
          MMB_JuvB.lines.add(xNome)


        else
          MMB_Sen.lines.add(xNome);


      end;
       LBS_InfA.caption :=('Infantil  "A"  tem  '  +    (MMB_INFA.Lines.Count.ToString)   +  ' Atletas');
       LBS_InfB.caption :=('Infantil  "B"  tem  '  +     (MMB_INFB.Lines.Count.ToString)  + ' Atletas');
       LBS_JuvA.caption :=('Juvenil  "A"  tem  '  +     (MMB_JuvA.Lines.Count.ToString)  + ' Atletas');
       LBS_JuvB.caption :=('Juvenil  "B"  tem  '  +     (MMB_JuvB.Lines.Count.ToString)  + ' Atletas');
       LBS_Sen.caption :=('Sênior tem  '  +     (MMB_Sen.Lines.Count.ToString)  + ' Atletas');
    end;

end.
