unit Abastecer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  UBombaCombustivel;

type
  TForm2 = class(TForm)
    lbTittle: TLabel;
    btnCreateBomba: TButton;
    btnPanel: TPanel;
    btnAbastecerLitro: TButton;
    btnAbastecerValor: TButton;
    btnAlterarValor: TButton;
    btnAlterarCombustivel: TButton;
    btnAlterarQtd: TButton;
    lbResult: TLabel;
    procedure btnCreateBombaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAbastecerLitroClick(Sender: TObject);
    procedure btnAbastecerValorClick(Sender: TObject);
    procedure btnAlterarValorClick(Sender: TObject);
    procedure btnAlterarCombustivelClick(Sender: TObject);
    procedure btnAlterarQtdClick(Sender: TObject);
  private
    FBomba : TBombaCombustivel;
    procedure FreeAndNilBomba;
    procedure escreverDadosDaBomba;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation



{$R *.dfm}

procedure TForm2.btnAbastecerLitroClick(Sender: TObject);
var
  xQtdLitros : Double;
begin

  if not Assigned(FBomba) then
    raise Exception.Create('Não há bomba instanciada!');

  xQtdLitros := StrToFloat(inputBox('Informar litros','Litros: ',''));
  FBomba.abastecerPorLitro(xQtdLitros);
  escreverDadosDaBomba;
end;

procedure TForm2.btnAbastecerValorClick(Sender: TObject);
var
  xValor : Currency;
begin
  if not Assigned(FBomba) then
    raise Exception.Create('Não há bomba instanciada!');

  xValor := StrToCurr(inputBox('Informar valor para abastecimento','R$: ',''));
  FBomba.abastecerPorValor(xValor);
  escreverDadosDaBomba;
end;

procedure TForm2.btnAlterarCombustivelClick(Sender: TObject);
var
  xTipoCombustivel : String;
begin
  if not Assigned(FBomba) then
      raise Exception.Create('Não há bomba instanciada!');

  xTipoCombustivel := inputBox('Informar tipo de combustível','Combustível: ','');
  FBomba.alterarCombustivel(xTipoCombustivel);
  escreverDadosDaBomba;
end;

procedure TForm2.btnAlterarQtdClick(Sender: TObject);
var
  xQtdLitros : Double;
begin

  if not Assigned(FBomba) then
    raise Exception.Create('Não há bomba instanciada!');

  xQtdLitros := StrToFloat(inputBox('Informar litros','Litros: ',''));
  FBomba.alterarQtdCombustivel(xQtdLitros);
  escreverDadosDaBomba;
end;

procedure TForm2.btnAlterarValorClick(Sender: TObject);
var
  xValor : Currency;
begin
  if not Assigned(FBomba) then
    raise Exception.Create('Não há bomba instanciada!');

  xValor := StrToCurr(inputBox('Informar valor para alteração','R$: ',''));
  FBomba.alterarValor(xValor);
  escreverDadosDaBomba;
end;

procedure TForm2.btnCreateBombaClick(Sender: TObject);
var
  xValorDoLitro : Currency;
begin
  xValorDoLitro := StrToCurr(inputBox('Informar valor do litro','R$: ',''));
  try
    FreeAndNilBomba;
    FBomba := TBombaCombustivel.Create(xValorDoLitro);

    escreverDadosDaBomba;
  except
    raise Exception.Create('Falha ao instanciar a bomba');
  end;

end;

procedure TForm2.escreverDadosDaBomba;
begin
  lbResult.Caption :=
    Format('Combustível: %s' + sLineBreak +
    'Quantidade na bomba: %f litros' + sLineBreak +
    'Valor do litro: R$ %s',
    [FBomba.TipoCombustivel, FBomba.QtdCombustivel,
    FormatFloat('0.00',FBomba.ValorLitro)]);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNilBomba;
end;

procedure TForm2.FreeAndNilBomba;
begin
  if Assigned(FBomba) then
    FreeAndNil(FBomba);
end;

end.
