unit UnitFormulario2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFormulario2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnFechar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
  end;

var
  FrmFormulario2: TFrmFormulario2;

implementation

{$R *.dfm}

procedure TFrmFormulario2.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFormulario2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FrmFormulario2); // função para liberar o formulário da memória
end;

end.
