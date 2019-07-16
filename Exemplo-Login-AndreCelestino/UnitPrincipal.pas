{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
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
  if not Assigned(FrmFormulario1) then // verifica se o formulário não existe na memória
    FrmFormulario1 := TFrmFormulario1.Create(Self); // cria o formúlário em run-time

  FrmFormulario1.ShowModal;
  FreeAndNil(FrmFormulario1); // função para liberar o formulário da memória
end;

procedure TFrmPrincipal.btnShowClick(Sender: TObject);
begin
  if not Assigned(FrmFormulario2) then // verifica se o formulário não existe na memória
    FrmFormulario2 := TFrmFormulario2.Create(Self); // cria o formúlário em run-time

  FrmFormulario2.Show;
end;

end.
