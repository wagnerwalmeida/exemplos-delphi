{ Este exemplo foi baixado no site www.AndreCelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }

unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, System.UITypes;

type
  TfPrincipal = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Cidade: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CarregarDados;
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses
  SynPdf, Printers, uRelatorio;

{$R *.dfm}

procedure TfPrincipal.BitBtn1Click(Sender: TObject);
var
  oPDF: TPDFDocument;
  oMetaDados: TMetafile;
  oPosicionamento: TPDFCanvasRenderMetaFileTextPositioning;
  nPagina: integer;
begin
  oPDF := TPDFDocument.Create(True, 0, False, nil);
  oMetaDados := nil;
  try
    ClientDataSet1.DisableControls;

    oPDF.DefaultPaperSize := psA4;
    oPosicionamento := tpExactTextCharacterPositining;
    oPDF.Root.PageLayout := plOneColumn;
    fRelatorio.QuickRep1.Prepare;

    for nPagina := 1 to fRelatorio.QuickRep1.QRPrinter.PageCount do
    begin
      oPDF.AddPage;
      oMetaDados := fRelatorio.QuickRep1.QRPrinter.PageList.GetPage(nPagina);
      oPDF.Canvas.RenderMetaFile(oMetaDados, 1, 0, 0, oPosicionamento);
      oMetaDados := nil;
    end;

    if SaveDialog1.Execute then
    begin
      oPDF.SaveToFile(SaveDialog1.FileName);
      MessageDlg('Relatório salvo com sucesso.', mtInformation, [mbOK], 0);
    end;
  finally
    oMetaDados.Free;
    oPDF.Free;

    ClientDataSet1.EnableControls;
    ClientDataSet1.First;
  end;
end;

procedure TfPrincipal.CarregarDados;
var
  nCodigo: smallint;

  procedure InserirRegistro(const psNome, psCidade: string);
  begin
    Inc(nCodigo);
    ClientDataSet1.Append;
    ClientDataSet1.FieldByName('ID').AsInteger := nCodigo;
    ClientDataSet1.FieldByName('Nome').AsString := psNome;
    ClientDataSet1.FieldByName('Cidade').AsString := psCidade;
    ClientDataSet1.Post;
  end;

begin
  ClientDataSet1.DisableControls;

  InserirRegistro('Michael Scofield', 'São Paulo');
  InserirRegistro('Dean Winchester', 'Campo Grande');
  InserirRegistro('Raymond Reddington', 'Belo Horizonte');
  InserirRegistro('Carrie Mathison', 'Maringá');
  InserirRegistro('Tyrion Lannister', 'Rondonópolis');
  InserirRegistro('Jesse Pinkman', 'Rio de Janeiro');
  InserirRegistro('John Reese', 'Goiânia');
  InserirRegistro('Seymour Birkoff', 'Florianópolis');
  InserirRegistro('Tony Almeida', 'Porto Alegre');
  InserirRegistro('Howard Wolowitz', 'Curitiba');

  ClientDataSet1.EnableControls;
  ClientDataSet1.First;
end;

procedure TfPrincipal.FormShow(Sender: TObject);
begin
  CarregarDados;
end;

end.
