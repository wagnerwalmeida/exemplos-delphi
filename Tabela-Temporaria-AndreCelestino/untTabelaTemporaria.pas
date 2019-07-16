{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit untTabelaTemporaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Buttons, DBClient, Grids, DBGrids,
  ComCtrls;

type
  TfrmTabelaTemporaria = class(TForm)
    grdDados: TDBGrid;
    pnlCampos: TPanel;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    edtQtde: TEdit;
    edtValor: TEdit;
    lblQtde: TLabel;
    lblValor: TLabel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    dsTemporario: TDataSource;
    lblDescricao: TLabel;
    edtDescricao: TEdit;
    Bevel1: TBevel;
    cdsTemporario: TClientDataSet;
    cdsTemporarioCODIGO: TIntegerField;
    cdsTemporarioDESCRICAO: TStringField;
    cdsTemporarioQTDE: TIntegerField;
    cdsTemporarioVALOR: TFloatField;
    cdsTemporarioTOTAL: TFloatField;
    btnFechar: TBitBtn;
    StatusBar: TStatusBar;
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function VerificarCamposObrigatoriosEstaoPreenchidos: boolean;
    function VerificarProdutoJaFoiAdicionado: boolean;
    procedure GravarDados;
    procedure LimparCampos;
    procedure CalcularTotal;
  end;

var
  frmTabelaTemporaria: TfrmTabelaTemporaria;

implementation

{$R *.dfm}

procedure TfrmTabelaTemporaria.LimparCampos;
begin
  edtCodigo.Clear;
  edtDescricao.Clear;
  edtQtde.Clear;
  edtValor.Clear;
  edtCodigo.SetFocus;
end;

procedure TfrmTabelaTemporaria.btnGravarClick(Sender: TObject);
begin
  if not VerificarCamposObrigatoriosEstaoPreenchidos then
    Exit;

  if VerificarProdutoJaFoiAdicionado then
    Exit;

  try
    GravarDados; // rotina para gravar os dados no DataSet
    LimparCampos; // rotina para limpar os campos
    CalcularTotal; // rotina para calcular o total dos itens
  except
    MessageDlg('Verifique os dados!', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmTabelaTemporaria.btnExcluirClick(Sender: TObject);
begin
  if cdsTemporario.IsEmpty then
  begin
    MessageDlg('Não há registros para excluir.', mtWarning, [mbOK], 0);
    Exit;
  end;

  cdsTemporario.Delete; // método para deletar o registro
  CalcularTotal;
  edtCodigo.SetFocus;
end;

procedure TfrmTabelaTemporaria.btnCancelarClick(Sender: TObject);
begin
  LimparCampos; // chamada a rotina para limpar os campos
end;

procedure TfrmTabelaTemporaria.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  // permite que apenas números sejam digitados
  if not (Key in ['0'..'9', #13, #8]) then
    Key := #0;
end;

procedure TfrmTabelaTemporaria.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTabelaTemporaria.edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  // permite que apenas números sejam digitados
  if not (Key in ['0'..'9', #13, #8]) then
    Key := #0;
end;

procedure TfrmTabelaTemporaria.edtValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  // permite que apenas números, pontos e vírgulas sejam digitados
  if not (Key in ['0'..'9', #13, #8, #44, #46]) then
    Key := #0;
end;

procedure TfrmTabelaTemporaria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmTabelaTemporaria.CalcularTotal;
var
  Total: string;
begin
  StatusBar.Panels[0].Text := EmptyStr;
  StatusBar.Panels[1].Text := EmptyStr;

  // usa Aggregates para calcular o total
  if not VarIsNull(cdsTemporario.Aggregates[0].Value) then
  begin
    Total := FormatFloat('###,###,##0.00', cdsTemporario.Aggregates[0].Value);
    StatusBar.Panels[0].Text := 'Total:  ' + Total;
    StatusBar.Panels[1].Text := 'Qtde Registros:  ' + IntToStr(cdsTemporario.RecordCount);
  end;
end;

procedure TfrmTabelaTemporaria.GravarDados;
var
  Total: real; // variável declarada para armazenar o total do item
begin
  cdsTemporario.Append; // para editar, basta utilizar o "Edit" ao invés do "Append"
  cdsTemporario.FieldByName('CODIGO').AsInteger := StrToInt(edtCodigo.Text);
  cdsTemporario.FieldByName('DESCRICAO').AsString := Trim(edtDescricao.Text);
  cdsTemporario.FieldByName('QTDE').AsInteger := StrToIntDef(edtQtde.Text, 0);
  cdsTemporario.FieldByName('VALOR').AsFloat := StrToFloatDef(edtValor.Text, 0);
  Total := StrToIntDef(edtQtde.Text, 0) * StrToFloatDef(edtValor.Text, 0);
  cdsTemporario.FieldByName('TOTAL').AsFloat := Total;
  cdsTemporario.Post;
end;

function TfrmTabelaTemporaria.VerificarProdutoJaFoiAdicionado: boolean;
begin
  result := cdsTemporario.Locate('CODIGO', edtCodigo.Text, []);

  if result then
  begin
    MessageDlg('Esse produto já foi adicionado!', mtWarning, [mbOK], 0);
    edtCodigo.SetFocus;
  end;
end;

function TfrmTabelaTemporaria.VerificarCamposObrigatoriosEstaoPreenchidos: boolean;
var
  CodigoPreenchido: boolean;
  DescricaoPreenchida: boolean;
begin
  // neste exemplo, apenas o código e descrição são obrigatórios
  CodigoPreenchido := Trim(edtCodigo.Text) <> EmptyStr;
  DescricaoPreenchida := Trim(edtDescricao.Text) <> EmptyStr;
  result := CodigoPreenchido and DescricaoPreenchida;
end;

end.
