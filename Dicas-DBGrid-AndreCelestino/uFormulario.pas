{ Exemplo baixado no site www.AndreCelestino.com }

unit uFormulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList;

type
  TDBGrid = class(Vcl.DBGrids.TDBGrid)
  private
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
  end;

  TfDicasDBGrid = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ClientDataSet: TClientDataSet;
    ClientDataSetCodigo: TIntegerField;
    ClientDataSetNome: TStringField;
    ClientDataSetAtivo: TStringField;
    DataSource: TDataSource;
    ImageList: TImageList;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid4: TDBGrid;
    Label5: TLabel;
    DBGrid5: TDBGrid;
    ClientDataSetCidade: TStringField;
    Label6: TLabel;
    DBGrid6: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ClientDataSetAtivoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5ColEnter(Sender: TObject);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5CellClick(Column: TColumn);
  end;

var
  fDicasDBGrid: TfDicasDBGrid;

implementation

{$R *.dfm}

procedure TfDicasDBGrid.ClientDataSetAtivoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := EmptyStr;
end;

procedure TfDicasDBGrid.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  nIndiceImagem: byte;
begin
  if AnsiUpperCase(Column.Field.FieldName) = 'ATIVO' then
  begin
    DBGrid1.Canvas.FillRect(Rect);

    if Column.Field.AsString = 'N' then
      nIndiceImagem := 0
    else
      nIndiceImagem := 1;

    // desenha a imagem na célula conforme a condição acima
    ImageList.Draw(DBGrid1.Canvas, Rect.Left + 24, Rect.Top + 1, nIndiceImagem);
  end;
end;

procedure TfDicasDBGrid.DBGrid1TitleClick(Column: TColumn);
var
  sIndexName: string;
  oOrdenacao: TIndexOptions;
  i: smallint;
begin
  // retira a formatação em negrito de todas as colunas
  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  // configura a ordenação ascendente ou descendente
  if ClientDataSet.IndexName = Column.FieldName + '_ASC' then
  begin
    sIndexName := Column.FieldName + '_DESC';
    oOrdenacao := [ixDescending];
  end
  else
  begin
    sIndexName := Column.FieldName + '_ASC';
    oOrdenacao := [];
  end;

  // adiciona a ordenação no DataSet, caso não exista
  if ClientDataSet.IndexDefs.IndexOf(sIndexName) < 0 then
    ClientDataSet.AddIndex(sIndexName, Column.FieldName, oOrdenacao);

  // formata o título da coluna em negrito
  Column.Title.Font.Style := [fsBold];

  // atribui a ordenação selecionada
  ClientDataSet.IndexName := sIndexName;

  ClientDataSet.First;
end;

procedure TfDicasDBGrid.DBGrid2CellClick(Column: TColumn);
var
  sValorColunaAtivo: string;
begin
  if AnsiUpperCase(Column.FieldName) = 'ATIVO' then
  begin
    if ClientDataSet.FieldByName('Ativo').AsString = 'S' then
      sValorColunaAtivo := 'N'
    else
      sValorColunaAtivo := 'S';

    // edita o DataSet, alterna o status e grava os dados
    ClientDataSet.Edit;
    ClientDataSet.FieldByName('Ativo').AsString := sValorColunaAtivo;
    ClientDataSet.Post;
  end;
end;

procedure TfDicasDBGrid.DBGrid2ColEnter(Sender: TObject);
begin
  // controla a edição da célula
  if AnsiUpperCase(DBGrid2.SelectedField.FieldName) = 'ATIVO' then
    DBGrid2.Options := DBGrid2.Options - [dgEditing]
  else
    DBGrid2.Options := DBGrid2.Options + [dgEditing];
end;

procedure TfDicasDBGrid.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  nMarcar: word;
  oRetangulo: TRect;
begin
  // verifica se o registro está inativo
  if ClientDataSet.FieldByName('Ativo').AsString = 'N' then
  begin
    // formata a linha em vermelho e itálico
    DBGrid2.Canvas.Font.Style := [fsItalic];
    DBGrid2.Canvas.Font.Color := clRed;

    // pinta a linha
    DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  if AnsiUpperCase(Column.FieldName) = 'ATIVO' then
  begin
    DBGrid2.Canvas.FillRect(Rect);
    if Column.Field.AsString = 'S' then
      nMarcar := DFCS_CHECKED
    else
      nMarcar := DFCS_BUTTONCHECK;

    // ajusta o tamanho do CheckBox
    oRetangulo := Rect;
    InflateRect(oRetangulo,-2,-2);

    // desenha o CheckBox na célula conforme a condição acima
    DrawFrameControl(DBGrid2.Canvas.Handle, oRetangulo, DFC_BUTTON, nMarcar);
  end;
end;

procedure TfDicasDBGrid.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  nLinha: integer;
begin
  // obtém o número do registro (linha)
  nLinha := DBGrid3.DataSource.DataSet.RecNo;

  // verifica se o número da linha é par ou ímpar, aplicando as cores
  if Odd(nLinha) then
    DBGrid3.Canvas.Brush.Color := clMenu
  else
    DBGrid3.Canvas.Brush.Color := clMoneyGreen;

  // pinta a linha
  DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfDicasDBGrid.DBGrid3TitleClick(Column: TColumn);
var
  sIndexName: string;
  oOrdenacao: TIndexOptions;
  i: smallint;
begin
  // retira a formatação em negrito de todas as colunas
  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  // configura a ordenação ascendente ou descendente
  if ClientDataSet.IndexName = Column.FieldName + '_ASC' then
  begin
    sIndexName := Column.FieldName + '_DESC';
    oOrdenacao := [ixDescending];
  end
  else
  begin
    sIndexName := Column.FieldName + '_ASC';
    oOrdenacao := [];
  end;

  // cria a ordenação no DataSet caso ela não exista
  if ClientDataSet.IndexDefs.IndexOf(sIndexName) < 0 then
    ClientDataSet.AddIndex(sIndexName, Column.FieldName, oOrdenacao);

  // formata o título da coluna em negrito
  Column.Title.Font.Style := [fsBold];

  // atribui a ordenação
  ClientDataSet.IndexName := sIndexName;
  ClientDataSet.First;
end;

procedure TfDicasDBGrid.DBGrid5CellClick(Column: TColumn);
begin
  // habilita o editor para digitar na célula
  if AnsiUpperCase(Column.FieldName) = 'CIDADE' then
    DBGrid5.EditorMode := True;
end;

procedure TfDicasDBGrid.DBGrid5ColEnter(Sender: TObject);
begin
  // habilita o editor para digitar na célula
  if AnsiUpperCase(DBGrid5.SelectedField.FieldName) = 'CIDADE' then
    DBGrid5.EditorMode := True;
end;

procedure TfDicasDBGrid.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // copia a funcionalidade do dgRowSelect, mas permite a navegação com as setas
  if Rect.Top = TStringGrid(DBGrid6).CellRect(0, TStringGrid(DBGrid6).Row).Top then
  begin
    DBGrid6.Canvas.FillRect(Rect);
    DBGrid6.Canvas.Font.Color := clWhite;
    DBGrid6.Canvas.Brush.Color := clHighlight;
    DBGrid6.DefaultDrawDataCell(Rect, Column.Field, State)
  end;
end;

procedure TfDicasDBGrid.FormCreate(Sender: TObject);
var
  nIndiceColunaCidade: smallint;
begin
  // carrega os dados do exemplo
  ClientDataSet.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Dados.xml');
  ClientDataSet.First;


  // encontra o índice da coluna "Cidade"
  nIndiceColunaCidade := ClientDataSet.FieldByName('Cidade').Index - 1;

  // preenche as opções de cidades
  DBGrid5.Columns[nIndiceColunaCidade].PickList.Add('São Paulo');
  DBGrid5.Columns[nIndiceColunaCidade].PickList.Add('Maringá');
  DBGrid5.Columns[nIndiceColunaCidade].PickList.Add('Florianópolis');
  DBGrid5.Columns[nIndiceColunaCidade].PickList.Add('Rio de Janeiro');
  DBGrid5.Columns[nIndiceColunaCidade].PickList.Add('Rondonópolis');
  DBGrid5.Columns[nIndiceColunaCidade].PickList.Add('Porto Alegre');
end;

{ TDBGridRolagem }

procedure TDBGrid.WMVScroll(var Message: TWMVScroll);
begin
  if Message.ScrollCode = SB_THUMBTRACK then
    Message.ScrollCode := SB_THUMBPOSITION;

  inherited;
end;

end.
