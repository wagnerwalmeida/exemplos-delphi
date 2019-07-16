program ExemploSynPDF;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  uRelatorio in 'uRelatorio.pas' {fRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TfRelatorio, fRelatorio);
  Application.Run;
end.
