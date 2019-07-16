program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmEnviarEmail};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmEnviarEmail, FrmEnviarEmail);
  Application.Run;
end.
