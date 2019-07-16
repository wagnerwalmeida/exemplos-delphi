{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit UnitImportacaoExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBClient, StdCtrls, ExtCtrls, Buttons;

type
  TFrmImportacaoExcel = class(TForm)
    cdsClientes: TClientDataSet;
    cdsProdutos: TClientDataSet;
    cdsUsuarios: TClientDataSet;
    dsClientes: TDataSource;
    dsProdutos: TDataSource;
    dsUsuarios: TDataSource;
    gridClientes: TDBGrid;
    gridProdutos: TDBGrid;
    gridUsuarios: TDBGrid;
    btnImportar: TBitBtn;
    Bevel: TBevel;
    cdsClientesCodigo: TIntegerField;
    cdsClientesNome: TStringField;
    cdsProdutosCodigo: TIntegerField;
    cdsProdutosDescricao: TStringField;
    cdsUsuariosCodigo: TIntegerField;
    cdsUsuariosNome: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnImportarClick(Sender: TObject);
  private
    procedure ImportarPlanilha(var ArquivoExcel: OLEVariant; var DataSet: TClientDataSet; const Planilha: integer);
  end;

var
  FrmImportacaoExcel: TFrmImportacaoExcel;

implementation

uses
  ComObj;

{$R *.dfm}

procedure TFrmImportacaoExcel.btnImportarClick(Sender: TObject);
var
	Excel: OLEVariant;
  CaminhoArquivo: string;
begin
  // carrega o arquivo XLSX que está na mesma pasta do executável
  CaminhoArquivo := ExtractFilePath(Application.ExeName) + 'ArquivoExcel.xlsx';
  // cria uma instância do Excel
  Excel := CreateOleObject('Excel.Application');

  try
    Screen.Cursor := crHourGlass;

    // evita que o Excel seja exibido na tela
    Excel.Visible := False;

    // abre o arquivo XLSX
	  Excel.Workbooks.Open(CaminhoArquivo);

    // importação da primeira planilha (Clientes)
    ImportarPlanilha(Excel, cdsClientes, 1);

    // importação da segunda planilha (Produtos)
    ImportarPlanilha(Excel, cdsProdutos, 2);

    // importação da terceira planilha (Usuários)
    ImportarPlanilha(Excel, cdsUsuarios, 3);
  finally
	  if not VarIsEmpty(Excel) then
    begin
		  Excel.Quit;
      Excel := Unassigned;
		end;
    Screen.Cursor := crDefault;
	end;
end;

procedure TFrmImportacaoExcel.ImportarPlanilha(var ArquivoExcel: OLEVariant;
  var DataSet: TClientDataSet; const Planilha: integer);
var
  Linha: integer;
begin
  // ativa a planilha
  ArquivoExcel.Workbooks[1].WorkSheets[Planilha].Activate;

  // linha da planilha que contém os valores
  Linha := 2;

  // limpa o conteúdo existente no DataSet
  DataSet.EmptyDataSet;

  // desabilita os controles (para evitar o efeito de navegação enquanto insere os registros
  DataSet.DisableControls;

  // loop para inserção de cada linha até que encontre uma linha em branco
  while not (ArquivoExcel.WorkBooks[1].Sheets[3].Cells[Linha, 1].Value = varEmpty) do
  begin
    DataSet.Append;
    DataSet.Fields[0].AsInteger := ArquivoExcel.WorkBooks[1].Sheets[Planilha].Cells[Linha, 1];
    DataSet.Fields[1].AsString := ArquivoExcel.WorkBooks[1].Sheets[Planilha].Cells[Linha, 2];
    DataSet.Post;
    Inc(Linha); // move para a próxima linha
  end;

  // move para o primeiro registro após todas as inserções
  DataSet.First;

  // habilita os controles para navegação
  DataSet.EnableControls;
end;

end.
