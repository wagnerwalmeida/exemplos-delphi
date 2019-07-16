{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por l� a qualquer momento para conferir os novos artigos! :)
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
    // fun��es utilizadas no c�digo
    procedure AdicionarFilhos(DataSet: TClientDataSet; Pai: integer; NoPai: TTreeNode);
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // inser��o dos dados no ClientDataSet para teste
  ClientDataSet.AppendRecord([1, 'Matem�tica', 0]);
  ClientDataSet.AppendRecord([2, 'Fun��es', 1]);
  ClientDataSet.AppendRecord([3, 'Fun��o do 1� Grau', 2]);
  ClientDataSet.AppendRecord([4, 'Fun��o do 2� Grau', 2]);
  ClientDataSet.AppendRecord([5, 'Portugu�s', 0]);
  ClientDataSet.AppendRecord([6, 'Hist�ria', 0]);
  ClientDataSet.AppendRecord([7, 'Programa��o', 0]);
  ClientDataSet.AppendRecord([8, 'Delphi', 7]);
  ClientDataSet.AppendRecord([9, 'Banco de Dados', 7]);
  ClientDataSet.AppendRecord([10, 'Oracle', 9]);
  ClientDataSet.AppendRecord([10, 'Firebird', 9]);

  ClientDataSet.First;
end;

procedure TForm1.BitBtnClick(Sender: TObject);
var
  NoPai: TTreeNode; // vari�vel para adicionar o n� pai
begin
  // quando o pai � 0 (zero), significa que � n� principal
  // as outras s�o itens filhos

  ClientDataSet.DisableControls; // desabilita a navega��o
  ClientDataSet.Filter := 'PAI = 0'; // filtra somente os n�s principais
  ClientDataSet.Filtered := True; // ativa o filtro
  ClientDataSet.First; // posiciona no primeiro registro do DataSet

  while not ClientDataSet.EOF do // la�o de repeti��o
  begin
    if ClientDataSet.FieldByName('Pai').AsInteger = 0 then // se for n� principal (pai "0")
    begin
      // cria o n� pai na TreeView
      NoPai := TreeView.Items.Add(nil, ClientDataSet.FieldByName('Descricao').AsString);
      // chama a fun��o recursiva para adicionar cada filho
      AdicionarFilhos(ClientDataSet, ClientDataSet.FieldByName('Codigo').AsInteger, NoPai);
    end;
    ClientDataSet.Next; // move para o pr�ximo pai
  end;
  ClientDataSet.Filtered := False; // desativa o filtro
  ClientDataSet.EnableControls; // reabilita a navega��o
end;

procedure TForm1.AdicionarFilhos(DataSet: TClientDataSet; Pai: integer; NoPai: TTreeNode);
var
  cdsAuxiliar: TClientDataSet; // vari�vel auxiliar para adicionar os filhos
  NoFilho: TTreeNode; // vari�vel para adicionar os n�s filhos
begin
  cdsAuxiliar := TClientDataSet.Create(nil); // cria uma inst�ncia do tipo TClientDataSet
  try
    cdsAuxiliar.CloneCursor(DataSet, True); // faz uma c�pia dos dados do ClientDataSet
    cdsAuxiliar.Filter := 'PAI = ' + IntToStr(Pai); // filtra os itens que s�o filhos do pai atual
    cdsAuxiliar.Filtered := True; // ativa o filtro
    while not (cdsAuxiliar.EOF) do
    begin
      // cria o n� filho
      NoFilho := TTreeNode.Create(nil);
      // adicionar o n� filho conforme hierarquia
      NoFilho := TreeView.Items.AddChild(NoPai, cdsAuxiliar.FieldByName('Descricao').AsString);
      // chama a fun��o recursiva, at� que todos os filhos do pai atual sejam adicionados
      AdicionarFilhos(DataSet, cdsAuxiliar.FieldByName('Codigo').AsInteger, NoFilho);
      // move para o pr�ximo filho
      cdsAuxiliar.Next;
    end;
  finally
    FreeAndNil(cdsAuxiliar); // libera o recurso da mem�ria
  end;
end;

end.

