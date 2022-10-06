unit uIdadeNadador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TfrmCategoria = class(TForm)
    edtIdade: TEdit;
    Label1: TLabel;
    btnCategoria: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure btnCategoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoria: TfrmCategoria;

implementation

{$R *.dfm}

procedure TfrmCategoria.btnCategoriaClick(Sender: TObject);
var
  xIdade : Integer;

begin


  xIdade := StrToInt(edtIdade.text);

  if (xIdade >=5) and  (xIdade <=7) then
    ShowMessage('A idade está na categoria infantil A')

  else if (xIdade >=8) and (xIdade <=10) then
    ShowMessage('A idade está na categoria infantil B')

  else if (xIdade >=11) and (xIdade <=13) then
    ShowMessage('A idade está na categoria Juvenil A')

  else if (xIdade >=14) and (xIdade <=17) then
    ShowMessage('A idade está na categoria Juvenil B')

   else if (xIdade >=18) and (xIdade <=25) then
    ShowMessage('A idade está na categoria Senior')

    else
       ShowMessage('A idade informada está incorreta');

end;

end.
