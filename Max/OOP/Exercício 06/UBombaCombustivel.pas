unit UBombaCombustivel;

interface

type
  TBombaCombustivel = class
  private
    FTipoCombustivel: String;
    FValorLitro: Currency;
    FQtdCombustivel: Double;
    function GetTipoCombustivel: String;
    procedure setTipoCombustivel(const Value: String);
    function getValorLitro: Currency;
    procedure setValorLitro(const Value: Currency);
    function getQtdCombustivel: Double;
    procedure serQtdCombustivel(const Value: Double);
  public
    constructor Create(aValorLitro: Currency;
      aTipoCombustivel: String = 'Gasolina comum';
      aQtdCombustivel: Double = 100);
    property TipoCombustivel: String read GetTipoCombustivel
      write setTipoCombustivel;
    property ValorLitro: Currency read getValorLitro write setValorLitro;
    property QtdCombustivel: Double read getQtdCombustivel
      write serQtdCombustivel;
    procedure abastecerPorValor(aValor: Currency);
    procedure abastecerPorLitro(aLitro: Double);
    procedure alterarValor(aValor: Currency);
    procedure alterarCombustivel(aTipoCombustivel: String);
    procedure alterarQtdCombustivel(aQtdLitro: Double);
  end;

implementation

uses
  System.SysUtils;

{ TBombaCombustivel }

procedure TBombaCombustivel.abastecerPorLitro(aLitro: Double);
begin
  if aLitro <= 0 then
    raise Exception.Create('Informe um valor maior que zero para abastecer');

  if aLitro > Self.QtdCombustivel then
    raise Exception.Create
      (Format('Não foi possível abastecer %f litros,a bomba possui apenas %f litros!',
      [aLitro, Self.QtdCombustivel]));

  Self.QtdCombustivel := Self.QtdCombustivel - aLitro;
end;

procedure TBombaCombustivel.abastecerPorValor(aValor: Currency);
var
  xLitros : Double;
begin
  if aValor <= 0 then
    raise Exception.Create('Informe um valor maior que zero para abastecer');

  xLitros := aValor / Self.ValorLitro;
  if xLitros > Self.QtdCombustivel then
    raise Exception.Create
      (Format('Não foi possível abastecer %f litros,a bomba possui apenas %f litros!',
      [xLitros, Self.QtdCombustivel]));

  Self.QtdCombustivel := Self.QtdCombustivel - xLitros;

end;

procedure TBombaCombustivel.alterarCombustivel(aTipoCombustivel: String);
begin
  if aTipoCombustivel = Self.TipoCombustivel then
    raise Exception.Create
      (Format('A bomba já é do tipo %s. Informe outro tipo!',
      [Self.TipoCombustivel]));

  Self.TipoCombustivel := aTipoCombustivel;
end;

procedure TBombaCombustivel.alterarQtdCombustivel(aQtdLitro: Double);
begin
  if aQtdLitro <= 0 then
    raise Exception.Create('Informe um valro maior que zero!');

  Self.QtdCombustivel := aQtdLitro;
end;

procedure TBombaCombustivel.alterarValor(aValor: Currency);
begin
  if aValor <= 0 then
    raise Exception.Create('Informe um valor maior que zero!');

  Self.ValorLitro := aValor;
end;

constructor TBombaCombustivel.Create(aValorLitro: Currency;
  aTipoCombustivel: String = 'Gasolina comum'; aQtdCombustivel: Double = 100);
begin
  FValorLitro := aValorLitro;
  FQtdCombustivel := aQtdCombustivel;
  FTipoCombustivel := aTipoCombustivel;
end;

function TBombaCombustivel.getQtdCombustivel: Double;
begin
  Result := FQtdCombustivel
end;

function TBombaCombustivel.GetTipoCombustivel: String;
begin
  Result := FTipoCombustivel;
end;

function TBombaCombustivel.getValorLitro: Currency;
begin
  Result := FValorLitro;
end;

procedure TBombaCombustivel.serQtdCombustivel(const Value: Double);
begin
  FQtdCombustivel := Value;
end;

procedure TBombaCombustivel.setTipoCombustivel(const Value: String);
begin
  FTipoCombustivel := Value;
end;

procedure TBombaCombustivel.setValorLitro(const Value: Currency);
begin
  FValorLitro := Value;
end;

end.
