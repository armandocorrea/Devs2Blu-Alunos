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
    xQtd := strToInt(inputbox('Quantidade de atletas','Insira o numero de atletas a classificar', '0'));
    for I := 0 to xQTD -1 do
      begin
      xNome := inputbox('Nome do Atleta', (format('Nome do %d atleta', [I])), '0');
      xIdade := strToInt(inputbox('Idade do Atleta', (format('idade do %d atleta', [I])), '0'));
        if (xIdade <5) or (xidade > 25)then
        begin
          Showmessage('Idade fora do permitido para a atividade')
        end

        else if (xIdade >= 5) and (xIdade < 7) then
        begin
          MMB_INFA.lines.add(xNome)
        end

        else if (xIdade >= 8) and (xIdade < 10) then
        begin
          MMB_INFB.lines.add(xNome)
        end

        else if (xIdade >= 11) and (xIdade < 13) then
        begin
          MMB_JuvA.lines.add(xNome)
        end

        else if (xIdade >= 14) and (xIdade < 17) then
        begin
          MMB_JuvB.lines.add(xNome)
        end

        else (xIdade >= 18) and (xIdade < 25)
        begin
          MMB_Sen.lines.add(xNome);
        end;


      end;
       LBS_InfA.caption := (MMB_INFA.Lines.Count.ToString);
       LBS_InfB.caption := (MMB_INFB.Lines.Count.ToString);
       LBS_JuvA.caption := (MMB_JuvA.Lines.Count.ToString);
       LBS_JuvB.caption := (MMB_JuvB.Lines.Count.ToString);
       LBS_Sen.caption := (MMB_Sen.Lines.Count.ToString);
    end;

end.
