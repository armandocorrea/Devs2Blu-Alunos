unit UMouse;

interface

uses
  System.SysUtils;

type
  TMouse = class
    private
      FCor : String;
      FQtdBotoes : Byte;
      FTipo : String;
      function getCor: String;
      function getQtdBotoes: Byte;
      procedure setCor(const Value: String);
      procedure setQtdBotoes(const Value: Byte);
      function getTipo: String;
      procedure setTipo(const Value: String);
    public
      procedure mover;
      procedure clicar(aBotao : Byte);
      procedure rolar;

      property cor : String read getCor write setCor;
      property qtdBotoes : Byte read getQtdBotoes write setQtdBotoes;
      property tipo : String read getTipo write setTipo;

  end;

implementation

uses
  Vcl.Dialogs;

{ TMouse }

procedure TMouse.clicar(aBotao : Byte);
begin
  ShowMessage('Clicou com o botão ' + IntToStr(aBotao));
end;

function TMouse.getCor: String;
begin
  Result := FCor;
end;


function TMouse.getQtdBotoes: Byte;
begin
  Result := FQtdBotoes;
end;

function TMouse.getTipo: String;
begin
  Result := FTipo;
end;

procedure TMouse.mover;
begin
  ShowMessage('Movendo mouse!');
end;

procedure TMouse.rolar;
begin
  ShowMessage('Rolando mouse');
end;

procedure TMouse.setCor(const Value: String);
begin
  FCor := Value;
end;

procedure TMouse.setQtdBotoes(const Value: Byte);
begin
  FQtdBotoes := Value;
end;

procedure TMouse.setTipo(const Value: String);
begin
  FTipo := Value;
end;

end.
