unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Financeiro1: TMenuItem;
    Gerencial1: TMenuItem;
    Fiscal1: TMenuItem;
    Relatrios1: TMenuItem;
    AJXMarket1: TMenuItem;
    Cliente1: TMenuItem;
    Produto1: TMenuItem;
    Servios1: TMenuItem;
    Fornecedores1: TMenuItem;
    Contas1: TMenuItem;
    Entradas1: TMenuItem;
    InserirTroco1: TMenuItem;
    FecharCaixa1: TMenuItem;
    RetiradadeCaixa1: TMenuItem;
    Pagamento1: TMenuItem;
    Cofre1: TMenuItem;
    VendaExterna1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Boletos1: TMenuItem;
    ListadeVendas1: TMenuItem;
    ListadeOramentos1: TMenuItem;
    SituaodoDia1: TMenuItem;
    MovimentaoBancria1: TMenuItem;
    RemanejarRecebimento1: TMenuItem;
    EditarVenda1: TMenuItem;
    EditarCaixaFechado1: TMenuItem;
    Cheques1: TMenuItem;
    Etiquetas1: TMenuItem;
    iposeTurnos1: TMenuItem;
    SetoreseDepartamentos1: TMenuItem;
    ItensRemovidos1: TMenuItem;
    CotaodeProdutos1: TMenuItem;
    AutorizarOperao1: TMenuItem;
    Convnio1: TMenuItem;
    EF1: TMenuItem;
    AgendaTelefnica1: TMenuItem;
    AgendadeCompromissos1: TMenuItem;
    CampanhasdeEMail1: TMenuItem;
    CampanhasdeSMS1: TMenuItem;
    Veculos1: TMenuItem;
    Patrimnio1: TMenuItem;
    Funcionrios1: TMenuItem;
    AlertaseRecados1: TMenuItem;
    Curriculum1: TMenuItem;
    Chat1: TMenuItem;
    VendaSite1: TMenuItem;
    ransportadora1: TMenuItem;
    ManipularEntregas1: TMenuItem;
    NFE1: TMenuItem;
    SAT1: TMenuItem;
    NFSE1: TMenuItem;
    SPED1: TMenuItem;
    MDFE1: TMenuItem;
    CTE1: TMenuItem;
    Gerenciar1: TMenuItem;
    Emitir1: TMenuItem;
    Importar1: TMenuItem;
    Grupos1: TMenuItem;
    Gerenciar2: TMenuItem;
    Emitir2: TMenuItem;
    Grupos2: TMenuItem;
    Gerenciar3: TMenuItem;
    Emitir3: TMenuItem;
    Grupos3: TMenuItem;
    Gerenciar4: TMenuItem;
    Gerar1: TMenuItem;
    Retificar1: TMenuItem;
    Gerenciar5: TMenuItem;
    Gerar2: TMenuItem;
    Retificar2: TMenuItem;
    Gerenciar6: TMenuItem;
    Gerar3: TMenuItem;
    Retificar3: TMenuItem;
    VendasRealizadas1: TMenuItem;
    ServiosRealizados1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    LivroCaixa1: TMenuItem;
    Cadastros2: TMenuItem;
    Logs1: TMenuItem;
    ProdutosVendidos1: TMenuItem;
    Estoque1: TMenuItem;
    Vendedores1: TMenuItem;
    Financeiro2: TMenuItem;
    ConsultadeContas1: TMenuItem;
    Fiscais1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores2: TMenuItem;
    BalanoAnual1: TMenuItem;
    ContasVencidas1: TMenuItem;
    MovimentoMultiTerminal1: TMenuItem;
    CartodeCrditoDbito1: TMenuItem;
    Comparativo1: TMenuItem;
    GrficodeVendas1: TMenuItem;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    CadastroRpido1: TMenuItem;
    ProdutoIndefinido1: TMenuItem;
    Cadastro2: TMenuItem;
    Consulta2: TMenuItem;
    CadastroRpido2: TMenuItem;
    CadastroConsulta1: TMenuItem;
    Consulta3: TMenuItem;
    Cadastro3: TMenuItem;
    Consulta4: TMenuItem;
    Cadastro4: TMenuItem;
    Consulta5: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

end.