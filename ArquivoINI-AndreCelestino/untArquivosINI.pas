{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }

unit untArquivosINI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, IniFiles;

type
  TFrmArquivosINI = class(TForm)
    lblTitulo: TLabel;
    StatusBar: TStatusBar;
    pnlCampos: TPanel;
    lblMensagem: TLabel;
    edtMensagem: TEdit;
    btnGravarArquivo: TBitBtn;
    Bevel: TBevel;
    btnLerArquivo: TBitBtn;
    procedure btnGravarArquivoClick(Sender: TObject);
    procedure btnLerArquivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArquivosINI: TFrmArquivosINI;

implementation

{$R *.dfm}

procedure TFrmArquivosINI.btnGravarArquivoClick(Sender: TObject);
var
  ArquivoINI: TIniFile;
begin
  ArquivoINI := TIniFile.Create('C:\Configuracao.ini');
  ArquivoINI.WriteString('Exemplo', 'Mensagem', edtMensagem.Text);
  ArquivoINI.Free;
  ShowMessage('Mensagem armazenada com sucesso!');
end;

procedure TFrmArquivosINI.btnLerArquivoClick(Sender: TObject);
var
  ArquivoINI: TIniFile;
  Mensagem  : string;
begin
  ArquivoINI := TIniFile.Create('C:\Configuracao.ini');
  Mensagem   := ArquivoINI.ReadString('Exemplo', 'Mensagem', '');
  ArquivoINI.WriteFloat('2', '2', 12.5);
  ArquivoINI.Free;
  ShowMessage('Mensagem armazenada no arquivo INI: ' + #13 + Mensagem);
end;

end.
