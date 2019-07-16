program ExemploBaixaEstoque;

uses
  Forms,
  UnitVenda in 'UnitVenda.pas' {FrmVenda},
  UnitDataModulo in 'UnitDataModulo.pas' {DataModulo: TDataModule},
  UnitPesquisa in 'UnitPesquisa.pas' {FrmPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModulo, DataModulo);
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.Run;
end.
