program I_Nadadores;

uses
  Vcl.Forms,
  Idade_Nadadores in 'Idade_Nadadores.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
