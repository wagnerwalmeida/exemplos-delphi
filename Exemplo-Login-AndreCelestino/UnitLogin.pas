unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFrmLogin = class(TForm)
    edtLogin: TEdit;
    edtSenha: TEdit;
    lblLogin: TLabel;
    lblSenha: TLabel;
    Label1: TLabel;
    btnOK: TBitBtn;
    btnSair: TBitBtn;
    Image: TImage;
    Label2: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.btnOKClick(Sender: TObject);
begin
  if (edtLogin.Text = 'ADM') and (edtSenha.Text = '123') then // verifica o login
    ModalResult := mrOK // retorna o resultado como OK
  else
  begin
    MessageDlg('Usuário/senha incorretos.', mtWarning, [mbOK], 0);
    edtLogin.SetFocus;
  end;
end;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
