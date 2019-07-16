{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  DBClient, ComCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    DBGrid: TDBGrid;
    TreeView: TTreeView;
    ClientDataSet: TClientDataSet;
    ClientDataSetCODIGO: TIntegerField;
    ClientDataSetDESCRICAO: TStringField;
    ClientDataSetPAI: TIntegerField;
    DataSource: TDataSource;
    BitBtn: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnClick(Sender: TObject);
  private
    // funções utilizadas no código
    procedure AdicionarFilhos(DataSet: TClientDataSet; Pai: integer; NoPai: TTreeNode);
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // inserção dos dados no ClientDataSet para teste
  ClientDataSet.AppendRecord([1, 'Matemática', 0]);
  ClientDataSet.AppendRecord([2, 'Funções', 1]);
  ClientDataSet.AppendRecord([3, 'Função do 1º Grau', 2]);
  ClientDataSet.AppendRecord([4, 'Função do 2º Grau', 2]);
  ClientDataSet.AppendRecord([5, 'Português', 0]);
  ClientDataSet.AppendRecord([6, 'História', 0]);
  ClientDataSet.AppendRecord([7, 'Programação', 0]);
  ClientDataSet.AppendRecord([8, 'Delphi', 7]);
  ClientDataSet.AppendRecord([9, 'Banco de Dados', 7]);
  ClientDataSet.AppendRecord([10, 'Oracle', 9]);
  ClientDataSet.AppendRecord([10, 'Firebird', 9]);

  ClientDataSet.First;
end;

procedure TForm1.BitBtnClick(Sender: TObject);
var
  NoPai: TTreeNode; // variável para adicionar o nó pai
begin
  // quando o pai é 0 (zero), significa que é nó principal
  // as outras são itens filhos

  ClientDataSet.DisableControls; // desabilita a navegação
  ClientDataSet.Filter := 'PAI = 0'; // filtra somente os nós principais
  ClientDataSet.Filtered := True; // ativa o filtro
  ClientDataSet.First; // posiciona no primeiro registro do DataSet

  while not ClientDataSet.EOF do // laço de repetição
  begin
    if ClientDataSet.FieldByName('Pai').AsInteger = 0 then // se for nó principal (pai "0")
    begin
      // cria o nó pai na TreeView
      NoPai := TreeView.Items.Add(nil, ClientDataSet.FieldByName('Descricao').AsString);
      // chama a função recursiva para adicionar cada filho
      AdicionarFilhos(ClientDataSet, ClientDataSet.FieldByName('Codigo').AsInteger, NoPai);
    end;
    ClientDataSet.Next; // move para o próximo pai
  end;
  ClientDataSet.Filtered := False; // desativa o filtro
  ClientDataSet.EnableControls; // reabilita a navegação
end;

procedure TForm1.AdicionarFilhos(DataSet: TClientDataSet; Pai: integer; NoPai: TTreeNode);
var
  cdsAuxiliar: TClientDataSet; // variável auxiliar para adicionar os filhos
  NoFilho: TTreeNode; // variável para adicionar os nós filhos
begin
  cdsAuxiliar := TClientDataSet.Create(nil); // cria uma instância do tipo TClientDataSet
  try
    cdsAuxiliar.CloneCursor(DataSet, True); // faz uma cópia dos dados do ClientDataSet
    cdsAuxiliar.Filter := 'PAI = ' + IntToStr(Pai); // filtra os itens que são filhos do pai atual
    cdsAuxiliar.Filtered := True; // ativa o filtro
    while not (cdsAuxiliar.EOF) do
    begin
      // cria o nó filho
      NoFilho := TTreeNode.Create(nil);
      // adicionar o nó filho conforme hierarquia
      NoFilho := TreeView.Items.AddChild(NoPai, cdsAuxiliar.FieldByName('Descricao').AsString);
      // chama a função recursiva, até que todos os filhos do pai atual sejam adicionados
      AdicionarFilhos(DataSet, cdsAuxiliar.FieldByName('Codigo').AsInteger, NoFilho);
      // move para o próximo filho
      cdsAuxiliar.Next;
    end;
  finally
    FreeAndNil(cdsAuxiliar); // libera o recurso da memória
  end;
end;

end.

