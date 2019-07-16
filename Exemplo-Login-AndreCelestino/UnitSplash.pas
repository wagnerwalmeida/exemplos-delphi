unit UnitSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFrmSplash = class(TForm)
    Image: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}

procedure TFrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FrmSplash);
end;

end.
