program Project1;

uses
  Vcl.Forms,
  Atividade34 in 'Atividade34.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
