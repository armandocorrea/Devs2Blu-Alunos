unit AnimalSOM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    cmbAnimal: TComboBox;
    btnSom: TButton;
    procedure btnSomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UAnimal;

{$R *.dfm}

procedure TForm2.btnSomClick(Sender: TObject);
var
  xAnimal : TAnimal;
begin
  xAnimal := nil;

  try
    case TEnumAnmal(cmbAnimal.ItemIndex) of
      (stCachorro):
      begin
        xAnimal := TCachorro.Create;
      end;
      (stGato):
      begin
        xAnimal := TGato.Create;
      end;
      (stPassaro):
      begin
        xAnimal := TPassaro.Create;
      end;
    end;

    ShowMessage(xAnimal.retornarSom);
    ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' patas');
  finally
    FreeAndNil(xAnimal)
  end;
end;

end.
