unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnumCategorias = (opInfantilA = 1, opInfantilB, opJuvenilA, opJuvenilB, opSenior);
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtIdade: TEdit;
    btnVerificar: TButton;
    mmNadadores: TMemo;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Principal;
    function ClassificarNadador(aIndex : TEnumCategorias) : String;
    function VerificarCategoria : TEnumCategorias;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
begin
  Self.Principal;
end;

function TfrmPrincipal.ClassificarNadador(aIndex: TEnumCategorias): String;
var
  xMensagem : String;
begin
    if (aIndex <> null) then
    begin
     case TEnumCategorias(aIndex) of

       opInfantilA :
         xMensagem := 'Classificado para a Categoria Infantil A!';

       opInfantilB :
         xMensagem := 'Classificado para a Categoria Infantil B!';

       opJuvenilA :
         xMensagem := 'Classificado para a Categoria Juvenil A!';

       opJuvenilB :
          xMensagem := 'Classificado para a Categoria Juvenil B!';

       opSenior :
          xMensagem := 'Classificado para a Categoria Senior!';

        else
           xMensagem := 'Idade Fora da Faixa Et�ria';
      end;
    end

    else
      begin
          xMensagem := 'Idade Fora da Faixa Et�ria';
      end;

      Result := xMensagem;
end;

procedure TfrmPrincipal.Principal;
var
  xIndex : TEnumCategorias;
  xClassificacao, xNomeNadador : String;
  xControleNome : Double;
begin
  if not (TryStrToFloat(edtNome.Text, xControleNome)) and (edtNome.Text <> EmptyStr) then
  begin
    xNomeNadador := edtNome.Text;
    xIndex := Self.VerificarCategoria;
    xClassificacao := Self.ClassificarNadador(xIndex);

    mmNadadores.Lines.Add(xNomeNadador+':' + xClassificacao);
  end

  else
    mmNadadores.Lines.Add(xControleNome.ToString + ' N�o � um Nome V�lido');
end;

function TfrmPrincipal.VerificarCategoria: TEnumCategorias;
var
  xIndex : TEnumCategorias;
  xIdade : Integer;
begin
  if (TryStrToInt(edtIdade.Text, xIdade)) then
  begin

    if (xIdade >= 5) and (xIdade <= 7) then
    begin
      xIndex := opInfantilA;
    end

    else if (xIdade >= 8) and (xIdade <= 10) then
    begin
      xIndex := opInfantilB;
    end

    else if (xIdade >= 11) and (xIdade <= 13) then
    begin
      xIndex := opJuvenilA;
    end

    else if (xIdade >= 14) and (xIdade <= 17) then
    begin
      xIndex := opJuvenilB;
    end

    else if (xIdade >= 18) and (xIdade <= 25) then
    begin
      xIndex := opSenior;
    end

    else
    begin
      ShowMessage('Idade Fora da Faixa Et�ria');
      Result := xIndex;
    end;

  end

  else
    ShowMessage('Informe uma Idade V�lida');
    Result := xIndex;
end;


end.
