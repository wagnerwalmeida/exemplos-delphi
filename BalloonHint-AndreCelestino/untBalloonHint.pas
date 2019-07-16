{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit untBalloonHint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList;

type
  TForm1 = class(TForm)
    BalloonHint1: TBalloonHint;
    Edit1: TEdit;
    Button1: TButton;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    // procedure para exibir o BalloonHint
    procedure ExibirBalloonHint(const Mensagem: string; Campo: TEdit);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // se o Edit1 estiver vazio, o BalloonHint é exibido
  if Trim(Edit1.Text) = '' then
  begin
    ExibirBalloonHint('Informe o nome do cliente', Edit1);
    Exit;
  end;

  // se o Edit2 estiver vazio, o BalloonHint é exibido
  if Trim(Edit2.Text) = '' then
  begin
    ExibirBalloonHint('Informe a cidade do cliente', Edit2);
    Exit;
  end;

  // se os dois campos estiverem exibidos, a validação está OK!
  MessageDlg('Validação OK!', mtInformation, [mbOK], 0);
end;

procedure TForm1.Edit1Enter(Sender: TObject);
begin
  // esconde o BalloonHint quando o campo é focado
  BalloonHint1.HideHint;
end;

procedure TForm1.ExibirBalloonHint(const Mensagem: string; Campo: TEdit);
var
  Pt: TPoint;
begin
  BalloonHint1.Description := Mensagem; // define a mensagem do BalloonHint
  Pt.X := Campo.Width Div 2; // define a posição X
  Pt.Y := 0; // define a posição Y
  BalloonHint1.ShowHint(Campo.ClientToScreen(Pt)); // Exibe o BalloonHint
end;

end.
