{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit untFormulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, untThread;

type
  TFrmThread = class(TForm)
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    btnThread1: TBitBtn;
    edtTempoThread1: TEdit;
    edtTempoThread2: TEdit;
    Bevel2: TBevel;
    lblTempoThread1: TLabel;
    lblThread1: TLabel;
    lblThread2: TLabel;
    lblTempoThread2: TLabel;
    Bevel1: TBevel;
    btnThread2: TBitBtn;
    procedure btnThread1Click(Sender: TObject);
    procedure btnThread2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  FrmThread: TFrmThread;
  Thread1: TMinhaThread;
  Thread2: TMinhaThread;

implementation

uses Math;

{$R *.dfm}

procedure TFrmThread.btnThread1Click(Sender: TObject);
begin
  if Trim(edtTempoThread1.Text) = EmptyStr then
  begin
    MessageDlg('Preencha o tempo da Thread!', mtWarning, [mbOk], 0);
    edtTempoThread1.SetFocus;
    Exit;
  end;

   // se a Thread estiver pausada, atualiza o tempo e reinicia a execução
  if Thread1.Suspended then
  begin
    Thread1.Tempo := StrToInt(edtTempoThread1.Text);
    Thread1.Resume;
    btnThread1.Caption := 'Pausar';
  end
  // senão, a Thread é pausada
  else
  begin
    Thread1.Suspend;
    btnThread1.Caption := 'Continuar';
  end;
end;

procedure TFrmThread.btnThread2Click(Sender: TObject);
begin
  if Trim(edtTempoThread2.Text) = EmptyStr then
  begin
    MessageDlg('Preencha o tempo da Thread!', mtWarning, [mbOk], 0);
    edtTempoThread2.SetFocus;
    Exit;
  end;

   // se a Thread estiver pausada, atualiza o tempo e reinicia a execução
  if Thread2.Suspended then
  begin
    Thread2.Tempo := StrToInt(edtTempoThread2.Text);
    Thread2.Resume;
    btnThread2.Caption := 'Pausar';
  end
  // senão, a Thread é pausada
  else
  begin
    Thread2.Suspend;
    btnThread2.Caption := 'Continuar';
  end;
end;

procedure TFrmThread.FormCreate(Sender: TObject);
begin
  // instanciação da Thread 1
  Thread1 := TMinhaThread.Create;
  Thread1.FreeOnTerminate := True;
  Thread1.ProgressBar := ProgressBar1;

  // instanciação da Thread 2
  Thread2 := TMinhaThread.Create;
  Thread2.FreeOnTerminate := True;
  Thread2.ProgressBar := ProgressBar2;
end;

end.
