unit UnitFormulario1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFormulario1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
  end;

var
  FrmFormulario1: TFrmFormulario1;

implementation

{$R *.dfm}

procedure TFrmFormulario1.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
