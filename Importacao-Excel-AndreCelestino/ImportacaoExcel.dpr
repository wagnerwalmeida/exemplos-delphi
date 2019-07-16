program ImportacaoExcel;

uses
  Forms,
  UnitImportacaoExcel in 'UnitImportacaoExcel.pas' {FrmImportacaoExcel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmImportacaoExcel, FrmImportacaoExcel);
  Application.Run;
end.
