program DicasDBGrid;

uses
  Vcl.Forms,
  uFormulario in 'uFormulario.pas' {fDicasDBGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfDicasDBGrid, fDicasDBGrid);
  Application.Run;
end.
