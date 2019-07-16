program TabelaTemporaria;

uses
  Forms,
  untTabelaTemporaria in 'untTabelaTemporaria.pas' {frmTabelaTemporaria};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTabelaTemporaria, frmTabelaTemporaria);
  Application.Run;
end.
