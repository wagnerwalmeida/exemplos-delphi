{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por l� a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmPrincipal = class(TForm)
    btnShowModal: TBitBtn;
    btnShow: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnShowModalClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses UnitFormulario1, UnitFormulario2;

{$R *.dfm}

procedure TFrmPrincipal.btnShowModalClick(Sender: TObject);
begin
  if not Assigned(FrmFormulario1) then // verifica se o formul�rio n�o existe na mem�ria
    FrmFormulario1 := TFrmFormulario1.Create(Self); // cria o form�l�rio em run-time

  FrmFormulario1.ShowModal;
  FreeAndNil(FrmFormulario1); // fun��o para liberar o formul�rio da mem�ria
end;

procedure TFrmPrincipal.btnShowClick(Sender: TObject);
begin
  if not Assigned(FrmFormulario2) then // verifica se o formul�rio n�o existe na mem�ria
    FrmFormulario2 := TFrmFormulario2.Create(Self); // cria o form�l�rio em run-time

  FrmFormulario2.Show;
end;

end.
