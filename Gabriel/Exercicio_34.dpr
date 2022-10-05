program Exercicio_34;

uses
  Vcl.Forms,
  Exercicio34 in 'Exercicio34.pas' {uFrmClassificador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuFrmClassificador, uFrmClassificador);
  Application.Run;
end.
