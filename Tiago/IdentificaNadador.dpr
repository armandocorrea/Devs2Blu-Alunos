program IdentificaNadador;

uses
  Vcl.Forms,
  uFrmNadador in 'uFrmNadador.pas' {FrmTipoNadador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmTipoNadador, FrmTipoNadador);
  Application.Run;
end.
