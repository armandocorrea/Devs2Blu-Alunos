unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls, UPessoa,
  Vcl.ComCtrls;

type


  TForm2 = class(TForm)
    edtNome: TEdit;
    edtAltura: TEdit;
    lbTittle: TLabel;
    lbNome: TLabel;
    lbAltura: TLabel;
    lbData_nasc: TLabel;
    btnCadastrar: TButton;
    btnListas: TButton;
    memResult: TMemo;
    dtpData_nasc: TDateTimePicker;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnListasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FPessoas: TPessoas;
    procedure cadastrarPessoa;
    procedure freeAndNilPessoas;
    procedure escreverRespotas;
  public
    function GetPessoa(const index : Integer) : TPessoa;
  end;

var
  Form2: TForm2;

implementation

uses
  UModalPessoas;

{$R *.dfm}

procedure TForm2.btnCadastrarClick(Sender: TObject);
begin
  cadastrarPessoa;
end;

procedure TForm2.btnListasClick(Sender: TObject);
begin
  if ModalPessoas = nil then
    ModalPessoas := TModalPessoas.Create(Self, FPessoas, memResult)
  else
  begin
    ModalPessoas.Destroy;
    ModalPessoas := TModalPessoas.Create(Self, FPessoas, memResult);
  end;

    ModalPessoas.Show;

//  Self.escreverRespotas;
end;

procedure TForm2.cadastrarPessoa;
var
  xPessoa: TPessoa;
  xNome: String;
  xData_nasc: TDate;
  xAltura: Double;
begin
  xPessoa := nil;

  xNome := edtNome.Text;
  xData_nasc := dtpData_nasc.Date;
  xAltura := StrToFloat(edtAltura.Text);

  try
    xPessoa := TPessoa.Create(xNome, xData_nasc, xAltura);
    SetLength(FPessoas, Length(FPessoas) + 1);
    FPessoas[Length(FPessoas) - 1] := xPessoa;
  finally
    // FreeAndNil(xPessoa);
  end;
end;

procedure TForm2.escreverRespotas;
var
  I: Integer;
begin

  memResult.Clear;

  for I := 0 to Length(FPessoas) - 1 do
    memResult.Lines.Add
      (Format('Nome: %s | Data de nascimento: %s | Idade : %d | Altura: %f',
      [FPessoas[I].nome, DateToStr(FPessoas[I].dataNasc),
      FPessoas[I].idade, FPessoas[I].altura]));

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.freeAndNilPessoas;
end;

procedure TForm2.freeAndNilPessoas;
var
  I: Integer;
begin
  for I := 0 to Length(FPessoas) - 1 do
  begin
    FreeAndNil(FPessoas[I]);
  end;
end;
function TForm2.GetPessoa(const index: Integer): TPessoa;
begin
  Result := FPessoas[index];
end;

end.
