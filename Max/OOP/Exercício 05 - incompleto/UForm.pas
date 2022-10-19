unit UForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPessoa, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    btnPessoaFisica: TButton;
    btnPessoaJur: TButton;
    memResult: TMemo;
    edtDoc: TEdit;
    rdgDoc: TRadioGroup;
    procedure btnPessoaFisicaClick(Sender: TObject);
    procedure btnPessoaJurClick(Sender: TObject);
  private
    FPessoa : TPessoa;
    procedure instancePessoa;
    procedure escreverResposta;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UPessoaJuridica, UPessoaFisica;

{$R *.dfm}

procedure TForm2.btnPessoaFisicaClick(Sender: TObject);
begin
  instancePessoa;
  escreverResposta;
end;

procedure TForm2.btnPessoaJurClick(Sender: TObject);
begin
  instancePessoa;
  escreverResposta;
end;

procedure TForm2.escreverResposta;
begin
  memResult.Clear;

  memResult.Lines.Add(FPessoa.nome);

  if FPessoa is TPessoaFisica then
  begin
    memResult.Lines.Add(TPessoaFisica(FPessoa).CPF);
    memResult.Lines.Add(TPessoaFisica(FPessoa).idade.ToString);
  end;

  if FPessoa is TPessoaJuridica then
  begin
    memResult.Lines.Add('CNPJ: ' + TPessoaJuridica(FPessoa).CNPJ);
    memResult.Lines.Add('IE: ' + TPessoaJuridica(FPessoa).IE);
  end;

  memResult.Lines.Add(FPessoa.endereco);

end;

procedure TForm2.instancePessoa;
var
  xDoc : String;
begin
  xDoc := edtDoc.Text;

  if rdgDoc.Items[rdgDoc.ItemIndex] = 'Fisica' then
    FPessoa := TPessoaFisica.Create('Max', xDoc, 26)
  else if rdgDoc.Items[rdgDoc.ItemIndex] = 'Juridica' then
    FPessoa := TPessoaJuridica.Create('Max empresa', xDoc, 'IE');

end;

end.
