program IdadeNadador;

uses
  Vcl.Forms,
  uIdadeNadador in 'uIdadeNadador.pas' {frmCategoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCategoria, frmCategoria);
  Application.Run;
end.
