program ArquivosINI;

uses
  Forms,
  untArquivosINI in 'untArquivosINI.pas' {FrmArquivosINI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmArquivosINI, FrmArquivosINI);
  Application.Run;
end.
