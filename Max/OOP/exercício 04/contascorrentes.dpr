program contascorrentes;

uses
  Vcl.Forms,
  UfrmContas in 'UfrmContas.pas' {FrmContas},
  UContaCorrente in 'UContaCorrente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmContas, FrmContas);
  Application.Run;
end.
