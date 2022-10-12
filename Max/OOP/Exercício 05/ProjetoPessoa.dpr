program ProjetoPessoa;

uses
  Vcl.Forms,
  UForm in 'UForm.pas' {Form2},
  UPessoa in 'UPessoa.pas',
  UPessoaFisica in 'UPessoaFisica.pas',
  UPessoaJuridica in 'UPessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
