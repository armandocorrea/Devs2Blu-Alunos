program idadenadador;

uses
  Vcl.Forms,
  Nadadoridade in 'Nadadoridade.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
