program ParametrosQuery;

uses
  Forms,
  UnitFormulario in 'UnitFormulario.pas' {frmFormulario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFormulario, frmFormulario);
  Application.Run;
end.
