program Triangulo;

uses
  Vcl.Forms,
  uTriangulo in 'uTriangulo.pas' {frmTriangulo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTriangulo, frmTriangulo);
  Application.Run;
end.
