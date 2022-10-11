program ex02;

uses
  Vcl.Forms,
  AnimalSOM in 'AnimalSOM.pas' {Form2},
  UAnimal in 'UAnimal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
