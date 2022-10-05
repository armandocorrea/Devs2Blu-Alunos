program Exercicio34;

uses
  Vcl.Forms,
  uFrmNadadores in 'uFrmNadadores.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
