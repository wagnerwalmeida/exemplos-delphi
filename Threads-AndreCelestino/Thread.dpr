program Thread;

uses
  Forms,
  untFormulario in 'untFormulario.pas' {FrmThread},
  untThread in 'untThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmThread, FrmThread);
  Application.Run;
end.
