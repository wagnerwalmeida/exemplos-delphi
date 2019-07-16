{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdMessage, StdCtrls, Buttons, ExtCtrls, ComObj;

type
  TFrmEnviarEmail = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    RadioGroup1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure EnviarEmailPeloOutlook;
    procedure EnviarEmailPeloGmail;
  end;

var
  FrmEnviarEmail: TFrmEnviarEmail;

implementation

{$R *.dfm}

procedure TFrmEnviarEmail.BitBtn1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: EnviarEmailPeloOutlook;
    1: EnviarEmailPeloGmail;
  end;
end;

procedure TFrmEnviarEmail.EnviarEmailPeloGmail;
begin
  // Configuração do SSL
  IdSSLIOHandlerSocket1.SSLOptions.Method := sslvSSLv23;
  IdSSLIOHandlerSocket1.SSLOptions.Mode := sslmClient;

  // Configuração do SMTP
  IdSMTP1.AuthenticationType := atLogin;
  IdSMTP1.Port := 465;
  IdSMTP1.Host := 'smtp.gmail.com';
  IdSMTP1.Username := 'usuario';
  IdSMTP1.Password := 'senha';

  // Tentativa de conexão e autenticação
  IdSMTP1.Connect;
  IdSMTP1.Authenticate;

  // Configuração da mensagem
  IdMessage1.From.Address := 'meuemail@gmail.com';
  IdMessage1.From.Name := 'Eu';
  IdMessage1.ReplyTo.EMailAddresses := IdMessage1.From.Address;
  IdMessage1.Recipients.Clear;
  IdMessage1.Recipients.EMailAddresses := 'destinatario@email.com';
  IdMessage1.Subject := 'Assunto do e-mail';
  IdMessage1.ContentType  := 'text/html';
  IdMessage1.Body.Text := 'Corpo do e-mail';

  // caso queira enviar um HTML, utilize a linha abaixo:
  //IdMessage1.Body.LoadFromFile('C:\Arquivo.html');

  // Envio da mensagem
  IdSMTP1.Send(IdMessage1);
  MessageDlg('Mensagem enviada com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TFrmEnviarEmail.EnviarEmailPeloOutlook;
var
  Outlook: OleVariant;
  vMailItem: variant;
const
  olMailItem = 0;
begin
  try
    Outlook := GetActiveOleObject('Outlook.Application');
  except
    Outlook := CreateOleObject('Outlook.Application');
  end;

  vMailItem := Outlook.CreateItem(olMailItem);
  vMailItem.Subject := 'Assunto do e-mail';
  vMailItem.Body := 'Corpo do e-mail';

  // para adicionar um destinatário, utilize a linha abaixo
  //vMailItem.Recipients.Add('destinatario@email.com');

  // para enviar um anexo, utilize a linha abaixo
  //vMailItem.Attachments.Add('C:\Anexo.txt');

  vMailItem.GetInspector.Activate;
  vMailItem.Display(True);
  VarClear(Outlook);
end;

end.
