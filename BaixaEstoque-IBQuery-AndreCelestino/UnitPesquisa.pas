{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por l� a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit UnitPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFrmPesquisa = class(TForm)
    gbPesquisa: TGroupBox;
    DBGrid: TDBGrid;
    lblDescricao: TLabel;
    edtPesquisa: TEdit;
    Bevel1: TBevel;
    btnSelecionar: TBitBtn;
    btnCancelar: TBitBtn;
    DataSource: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaChange(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    // vari�vel global para jogar o c�digo do produto selecionado para a tela de vendas
    CodProduto: integer;
    { Public declarations }
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

uses UnitDataModulo;

{$R *.dfm}

procedure TFrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // ao pressionar ESC, a tela � fechada
  if Key = VK_ESCAPE then
    btnCancelar.Click; // simula o clique no bot�o 'Cancelar'
end;

procedure TFrmPesquisa.edtPesquisaChange(Sender: TObject);
begin
  // m�todo para filtrar os produtos conforme a descri��o � digitada
  if Trim(edtPesquisa.Text) <> '' then
  begin
    DataModulo.IBTable.Filter := 'Descricao like ' + QuotedStr(edtPesquisa.Text + '%'); // atualiza o filtro
    DataModulo.IBTable.Filtered := True; // ativa o filtro
  end
  else
    DataModulo.IBTable.Filtered := False; // se o campo de pesquisa estiver nulo, o filtro � desativado
end;

procedure TFrmPesquisa.btnSelecionarClick(Sender: TObject);
begin
  // se nenhum produto for selecionado, uma mensagem � exibida
  if DataModulo.IBTable.IsEmpty then
  begin
    MessageDlg('Selecione um produto.', mtWarning, [mbOk], 0); // atribui o c�digo do produto para a vari�vel global
    Exit;
  end;

  CodProduto := DataModulo.IBTable.FieldByName('Codigo').AsInteger;
  Close; // fecha o formul�rio
end;

procedure TFrmPesquisa.btnCancelarClick(Sender: TObject);
begin
  CodProduto := 0; // nenhum produto foi selecionado
  Close;
end;

procedure TFrmPesquisa.DBGridDblClick(Sender: TObject);
begin
  btnSelecionar.Click; // simula o clique no bot�o 'Selecionar'
end;

procedure TFrmPesquisa.FormShow(Sender: TObject);
begin
  DataModulo.IBTable.First; // ao abrir a tela, o cursor � posicionado no primeiro produto
end;

end.
