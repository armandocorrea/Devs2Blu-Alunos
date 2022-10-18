program postoDeCombustiveis;

uses
  Vcl.Forms,
  Abastecer in 'Abastecer.pas' {Form2},
  UBombaCombustivel in 'UBombaCombustivel.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
