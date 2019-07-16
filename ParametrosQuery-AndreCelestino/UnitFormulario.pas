{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por l� a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit UnitFormulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, DB, Provider, DBClient, SqlExpr, Grids,
  DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmFormulario = class(TForm)
    grdDados: TDBGrid;
    SQLConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    ClientDataSet: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    DataSource: TDataSource;
    lblTitulo: TLabel;
    Panel: TPanel;
    lblPesquisa: TLabel;
    edtPesquisa: TEdit;
    btnPesquisar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormulario: TfrmFormulario;

implementation

{$R *.dfm}

procedure TfrmFormulario.FormCreate(Sender: TObject);
var
  CaminhoExecutavel: string;
begin
  CaminhoExecutavel := ExtractFilePath(Application.ExeName);
  SQLCOnnection.Params.Values['Database'] := CaminhoExecutavel + 'Banco.fdb';
  try
    SQLConnection.Connected := True;
    SQLQuery.SQL.Add('Select * from CLIENTES');
    SQLQuery.Open;
    ClientDataSet.Open;
  except
    MessageDlg('O banco de dados n�o est� dispon�vel no diret�rio.', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmFormulario.btnPesquisarClick(Sender: TObject);
begin
  // limpa a instru��o SQL da Query
  SQLQuery.SQL.Clear;

  // atribui a instru��o SQL, criando um par�metro
  SQLQuery.SQL.Add('Select * from CLIENTES where Nome like :pNome');

  // preenche o par�metro rec�m-criado na instru��o SQL
  SQLQuery.ParamByName('pNome').AsString := edtPesquisa.Text + '%';

  // abre a Query
  SQLQuery.Open;

  // atualiza o conjunto de dados
  ClientDataSet.Refresh;
end;

procedure TfrmFormulario.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnPesquisar.Click;
  end;
end;

end.
