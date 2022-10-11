unit UModalPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Unit2,
  UPessoa;

type
  TModalPessoas = class(TForm)
    clbPessoas: TCheckListBox;
    btnSelecionarPessoas: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelecionarPessoasClick(Sender: TObject);
  private
    FPessoas: TPessoas;
    FMemoResult: TMemo;
    procedure escreverResposta;
  public
    { Public declarations }
    constructor Create(aSelf: TForm; aPessoas: TPessoas; aMemoResult: TMemo);
  end;

var
  ModalPessoas: TModalPessoas;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TModalPessoas.btnSelecionarPessoasClick(Sender: TObject);
begin
  escreverResposta;
  Self.Close;
end;

constructor TModalPessoas.Create(aSelf: TForm; aPessoas: TPessoas;
  aMemoResult: TMemo);
begin
  FPessoas := aPessoas;
  FMemoResult := aMemoResult;
  inherited Create(aSelf);
end;

procedure TModalPessoas.escreverResposta;
var
  xIsSelected: Boolean;
  I: Integer;
begin
  FMemoResult.Clear;
  for I := 0 to clbPessoas.Items.Count - 1 do
  begin
//    ShowMessage(IntToStr(I));
    xIsSelected := clbPessoas.Checked[I];
    if xIsSelected then
      FMemoResult.Lines.Add(
        FPessoas[I].nome + ' | Data de Nasc.: ' + DateToStr(FPessoas[I].dataNasc)
        + ' | Altura: ' + FPessoas[I].altura.ToString + ' | Idade: ' + FPessoas[I].idade.ToString
      );
  end;
end;

procedure TModalPessoas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.CleanupInstance;
end;

procedure TModalPessoas.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  clbPessoas.Clear;

  for I := 0 to Length(FPessoas) - 1 do
  begin
    clbPessoas.AddItem(FPessoas[I].nome, FPessoas[I]);
     clbPessoas.Checked[I] := True;
  end;

  // ShowMessage(FPessoas[0].GetNome);
  // clbPessoas.Items.AddObject('', GetPessoas);
end;

end.
