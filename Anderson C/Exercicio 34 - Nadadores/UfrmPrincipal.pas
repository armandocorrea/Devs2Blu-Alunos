unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  {TClassificacaoNadador = (InfantilA,
                           InfantilB,
                           JuvenilA,
                           JuvenilB,
                           Senior,
                           Outros);}
  TNadador = record
    Nome: String;
    Idade: Integer;
    Tipo: String;
  end;
  TListaNadadores = Array of TNadador;
  TListaCompleta = Array of String;
  TfrmPrincipal = class(TForm)
    lblTitulo: TLabel;
    mmNadadores: TMemo;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    xListaNadadores: TListaNadadores;
    Procedure CadastrarNadador (aPosicao: Integer);
    Procedure ListarNadadores;
    Procedure AumentarLista;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.AumentarLista;
  begin
    SetLength(xListaNadadores, Length(xListaNadadores) + 1);
  end;

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
  var
    xVezes, I: Integer;
  begin
    if TryStrToInt(InputBox('Cadastro', 'Informe quantidade de Cadastros: ', '0'), xVezes) and (xVezes > 0) then
      begin
        for I := 1 to xVezes do
          begin
            CadastrarNadador(I);
          end;
      end
    else
      begin
        ShowMessage('Informe um valor válido!');
      end;
    ListarNadadores;
  end;

Procedure TfrmPrincipal.CadastrarNadador (aPosicao: Integer);
  var
    xNadador: TNadador;
  begin
    xNadador.Nome:= InputBox('Cadastro', Format('Informe o Nome do %dº Nadador(a): ', [aPosicao]), '<Des>');
    While not TryStrToInt(InputBox('Cadastro', Format('Informe a Idade do %dº Nadador(a): ', [aPosicao]), '<Des>'),  xNadador.Idade) do
      begin
        ShowMessage('Digite Apenas números inteiros positivos!');
      end;
    case xNadador.Idade of

      5..7  : xNadador.Tipo := 'InfantilA';
      8..10 : xNadador.Tipo := 'InfantilB';
      11..13: xNadador.Tipo := 'JuvenilA';
      14..17: xNadador.Tipo := 'JuvenilB';
      18..25: xNadador.Tipo := 'Senior';
      else    xNadador.Tipo := 'Outros';

    end;

    AumentarLista;
    xListaNadadores[Length(xListaNadadores)-1] := xNadador;
  end;

Procedure TfrmPrincipal.ListarNadadores;
  var
    I: Integer;
  begin
    for I := 0 to Length(xListaNadadores) - 1 do
      mmNadadores.Lines.Add(Format('%s, %d anos, tipo %s',
      [xListaNadadores[I].Nome,
       xListaNadadores[I].Idade,
       xListaNadadores[I].Tipo]));
  end;

end.
