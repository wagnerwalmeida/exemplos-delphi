{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por l� a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit UnitVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient,
  ComCtrls;

type
  TFrmVenda = class(TForm)
    gbDetalheProduto: TGroupBox;
    edtCodigo: TEdit;
    lblCodigo: TLabel;
    sbPesquisaProduto: TSpeedButton;
    edtDescricao: TEdit;
    lblDescricao: TLabel;
    edtValor: TEdit;
    lblValor: TLabel;
    gbQuantidade: TGroupBox;
    edtQuantidade: TEdit;
    lblQuantidade: TLabel;
    edtTotal: TEdit;
    lblTotal: TLabel;
    DBGrid: TDBGrid;
    pnlFinalizar: TPanel;
    btnFinalizar: TBitBtn;
    btnAdicionar: TBitBtn;
    Bevel: TBevel;
    TabelaTemporaria: TClientDataSet;
    TabelaTemporariaCODIGO: TIntegerField;
    TabelaTemporariaDESCRICAO: TStringField;
    TabelaTemporariaVALOR: TFloatField;
    TabelaTemporariaQUANTIDADE: TIntegerField;
    TabelaTemporariaTOTAL: TFloatField;
    DataSource: TDataSource;
    StatusBar: TStatusBar;
    TabelaTemporariaTOTALGERAL: TAggregateField;
    procedure sbPesquisaProdutoClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure edtQuantidadeChange(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
  private
    procedure LimparCampos; // m�todo para limpar os campos da tela
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

uses UnitPesquisa, UnitDataModulo;

{$R *.dfm}

procedure TFrmVenda.LimparCampos;
begin
  // m�todo para limpar os campos da tela
  edtCodigo.Clear;
  edtDescricao.Clear;
  edtValor.Clear;
  edtQuantidade.Clear;
  edtTotal.Clear;

  edtCodigo.SetFocus;
end;

procedure TFrmVenda.sbPesquisaProdutoClick(Sender: TObject);
begin
  FrmPesquisa := TFrmPesquisa.Create(Self); // cria a tela de pesquisa em tempo de execu��o
  FrmPesquisa.ShowModal; // mostra a tela
  if (FrmPesquisa.CodProduto > 0) then // se um produto foi selecionado (vari�vel global for diferente de zero)
    edtCodigo.Text := IntToStr(FrmPesquisa.CodProduto) // ent�o ele � atribu�do para a edtCodigo
  else
    LimparCampos; // caso contr�rio, os campos s�o "limpados"

  FreeAndNil(FrmPesquisa); // libera o formul�rio da mem�ria
  DataModulo.IBTable.Filtered := False; // desativa o filtro
end;

procedure TFrmVenda.btnAdicionarClick(Sender: TObject);
begin
  // verifica se h� um produto selecionado
  if Trim(edtDescricao.Text) = '' then
  begin
    MessageDlg('Selecione um produto.', mtWarning, [mbOk], 0);
    edtCodigo.SetFocus;
    Exit;
  end;

  // verifica se a quantidade digitada est� nula ou � zero
  if (Trim(edtQuantidade.Text) = '') or (StrToInt(edtQuantidade.Text) = 0) then
  begin
    MessageDlg('Digite uma quantidade v�lida.', mtWarning, [mbOk], 0);
    edtQuantidade.SetFocus;
    Exit;
  end;


  with TabelaTemporaria do
  begin
    // adiciona o produto na tabela tempor�ria
    Append;
    FieldByName('Codigo').AsString     := edtCodigo.Text;
    FieldByName('Descricao').AsString  := edtDescricao.Text;
    FieldByName('Valor').AsString      := edtValor.Text;
    FieldByName('Quantidade').AsString := edtQuantidade.Text;
    FieldByName('Total').AsString      := edtTotal.Text;
    Post;
    LimparCampos;

    // atualiza as informa��es na StatusBar
    StatusBar.Panels[1].Text := 'Qtde: ' + IntToStr(RecordCount);
    StatusBar.Panels[2].Text := 'Total: ' + FormatFloat('###,###,##0.00', FieldByName('TotalGeral').Value);
  end;
end;

procedure TFrmVenda.edtCodigoChange(Sender: TObject);
begin
  // m�todo para obter os dados do produto ao digitar o c�digo
  with DataModulo.IBTable do
    if Locate('Codigo', edtCodigo.Text, [loCaseInsensitive]) then // localiza o produto na IBTable
    begin
      edtDescricao.Text := FieldByName('Descricao').AsString; // obt�m a descri��o
      edtValor.Text     := FormatFloat('###,###,##0.00', FieldByName('Valor').AsFloat); // obt�m o valor unit�rio
      edtQuantidade.SetFocus; // joga o foco para o campo de quantidade
    end;
end;

procedure TFrmVenda.edtQuantidadeChange(Sender: TObject);
var
  Total: real;
begin
  // m�todo para calcular automaticamente o total ao digitar a quantidade

  // se o valor ou a quantidade for nula, ent�o o c�lculo n�o � feito
  if (Trim(edtValor.Text) = '') or (Trim(edtQuantidade.Text) = '') then
  begin
    edtTotal.Clear;
    Exit;
  end;

  // calcula o total e informa na edtTotal
  Total := StrToFloat(edtValor.Text) * StrToFloat(edtQuantidade.Text);
  edtTotal.Text := FormatFloat('###,###,##0.00', Total);
end;

procedure TFrmVenda.btnFinalizarClick(Sender: TObject);
begin
  TabelaTemporaria.First; // posiciona no primeiro produto da tabela tempor�ria

  // atribui uma instru��o SQL para atualizar o estoque
  DataModulo.IBQuery.SQL.Clear;
  DataModulo.IBQuery.SQL.Add('Update PRODUTOS set Estoque = Estoque - :Qtde where Codigo = :Codigo');

  while not (TabelaTemporaria.EOF) do // percorre a tabela tempor�ria
  begin
    // informa os par�metros da instru��o SQL
    DataModulo.IBQuery.ParamByName('Qtde').AsInteger   := TabelaTemporaria.FieldByName('Quantidade').AsInteger;
    DataModulo.IBQuery.ParamByName('Codigo').AsInteger := TabelaTemporaria.FieldByName('Codigo').AsInteger;

    // executa a SQL (atualiza o estoque)
    DataModulo.IBQuery.ExecSQL;

    // posiciona no pr�ximo registro da tabela tempor�ria
    TabelaTemporaria.Next;
  end;
  // confirma a transa��o
  DataModulo.IBTransaction.CommitRetaining;

  // esvazia a tabela tempor�ria
  TabelaTemporaria.EmptyDataSet;

  // atualiza as informa��es na StatusBar
  StatusBar.Panels[1].Text := 'Qtde: 0';
  StatusBar.Panels[2].Text := 'Total: ' + FormatFloat('###,###,##0.00', 0);

  // atualiza a tabela de produtos
  DataModulo.IBTable.Refresh;

  // limpa os campos e mostra mensagem de confirma��o
  LimparCampos;
  MessageDlg('Venda finalizada.', mtInformation, [mbOk], 0);
end;

procedure TFrmVenda.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  // ao pressionar ENTER na edtCodigo, a tela de pesquisa � aberta
  if Key = #13 then
  begin
    Key := #0; // evita o som de beep
    sbPesquisaProduto.Click; // simula o clique no bot�o de pesquisa
  end;
end;

procedure TFrmVenda.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  // ao pressionar ENTER na edtQuantidade, o produto � adicionado
  if Key = #13 then
  begin
    Key := #0; // evita o som de beep
    btnAdicionar.Click; // simula o clique no bot�o de pesquisa
  end;
end;

end.
