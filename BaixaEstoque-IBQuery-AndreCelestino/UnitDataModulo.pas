{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit UnitDataModulo;

interface

uses
  SysUtils, Forms, Classes, DB, IBCustomDataSet, IBTable, IBDatabase,
  IBQuery;

type
  TDataModulo = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    IBTable: TIBTable;
    IBTableCODIGO: TSmallintField;
    IBTableDESCRICAO: TIBStringField;
    IBTableVALOR: TIBBCDField;
    IBTableESTOQUE: TIntegerField;
    IBQuery: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModulo: TDataModulo;

implementation

{$R *.dfm}

procedure TDataModulo.DataModuleCreate(Sender: TObject);
begin
  // aponta o caminho do banco de dados para o mesmo caminho onde está o executável
  IBDatabase.DatabaseName := ExtractFilePath(Application.ExeName) + 'Estoque.fdb';

  // abre a conexão e a tabela
  IBDatabase.Connected := True;
  IBTransaction.Active := True;
  IBTable.Open;
end;

end.
