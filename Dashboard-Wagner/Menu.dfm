object FrmMenu: TFrmMenu
  Left = 325
  Top = 177
  Align = alTop
  Caption = 'FrmMenu'
  ClientHeight = 461
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 256
    Top = 168
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cliente1: TMenuItem
        Caption = 'Clientes'
        object Cadastro2: TMenuItem
          Caption = 'Cadastro'
        end
        object Consulta2: TMenuItem
          Caption = 'Consulta'
        end
        object CadastroRpido2: TMenuItem
          Caption = 'Cadastro R'#225'pido'
        end
      end
      object Produto1: TMenuItem
        Caption = 'Produtos'
        object Cadastro1: TMenuItem
          Caption = 'Cadastro'
        end
        object Consulta1: TMenuItem
          Caption = 'Consulta'
        end
        object CadastroRpido1: TMenuItem
          Caption = 'Cadastro R'#225'pido'
        end
        object ProdutoIndefinido1: TMenuItem
          Caption = 'Produto Indefinido'
        end
      end
      object Servios1: TMenuItem
        Caption = 'Servi'#231'os'
        object CadastroConsulta1: TMenuItem
          Caption = 'Cadastro'
        end
        object Consulta3: TMenuItem
          Caption = 'Consulta'
        end
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
        object Cadastro3: TMenuItem
          Caption = 'Cadastro'
        end
        object Consulta4: TMenuItem
          Caption = 'Consulta'
        end
      end
      object Contas1: TMenuItem
        Caption = 'Contas'
        object Cadastro4: TMenuItem
          Caption = 'Cadastro'
        end
        object Consulta5: TMenuItem
          Caption = 'Consulta'
        end
      end
      object Entradas1: TMenuItem
        Caption = 'Entradas'
      end
    end
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      object InserirTroco1: TMenuItem
        Caption = 'Inserir Troco'
      end
      object FecharCaixa1: TMenuItem
        Caption = 'Fechar Caixa'
      end
      object RetiradadeCaixa1: TMenuItem
        Caption = 'Retirada de Caixa'
      end
      object Pagamento1: TMenuItem
        Caption = 'Pagamento'
      end
      object Cofre1: TMenuItem
        Caption = 'Cofre'
      end
      object VendaExterna1: TMenuItem
        Caption = 'Venda Externa'
      end
      object ContasaReceber1: TMenuItem
        Caption = 'Contas a Receber'
      end
      object Boletos1: TMenuItem
        Caption = 'Boletos'
      end
      object ListadeVendas1: TMenuItem
        Caption = 'Lista de Vendas'
      end
      object ListadeOramentos1: TMenuItem
        Caption = 'Lista de Or'#231'amentos'
      end
      object SituaodoDia1: TMenuItem
        Caption = 'Situa'#231#227'o do Dia'
      end
      object MovimentaoBancria1: TMenuItem
        Caption = 'Movimenta'#231#227'o Banc'#225'ria'
      end
      object RemanejarRecebimento1: TMenuItem
        Caption = 'Remanejar Recebimento'
      end
      object EditarVenda1: TMenuItem
        Caption = 'Editar Venda'
      end
      object EditarCaixaFechado1: TMenuItem
        Caption = 'Editar Caixa Fechado'
      end
      object Cheques1: TMenuItem
        Caption = 'Cheques'
      end
    end
    object Gerencial1: TMenuItem
      Caption = 'Gerencial'
      object Etiquetas1: TMenuItem
        Caption = 'Etiquetas'
      end
      object iposeTurnos1: TMenuItem
        Caption = 'Tipos e Turnos'
      end
      object SetoreseDepartamentos1: TMenuItem
        Caption = 'Setores e Departamentos'
      end
      object ItensRemovidos1: TMenuItem
        Caption = 'Itens Removidos'
      end
      object CotaodeProdutos1: TMenuItem
        Caption = 'Cota'#231#227'o de Produtos'
      end
      object AutorizarOperao1: TMenuItem
        Caption = 'Autorizar Opera'#231#227'o'
      end
      object Convnio1: TMenuItem
        Caption = 'Conv'#234'nio'
      end
      object EF1: TMenuItem
        Caption = 'TEF'
      end
      object AgendaTelefnica1: TMenuItem
        Caption = 'Agenda Telef'#244'nica'
      end
      object AgendadeCompromissos1: TMenuItem
        Caption = 'Agenda de Compromissos'
      end
      object CampanhasdeEMail1: TMenuItem
        Caption = 'Campanhas de E-Mail'
      end
      object CampanhasdeSMS1: TMenuItem
        Caption = 'Campanhas de SMS'
      end
      object Veculos1: TMenuItem
        Caption = 'Ve'#237'culos'
      end
      object Patrimnio1: TMenuItem
        Caption = 'Patrim'#244'nio'
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
      object AlertaseRecados1: TMenuItem
        Caption = 'Alertas e Recados'
      end
      object Curriculum1: TMenuItem
        Caption = 'Curriculum'
      end
      object Chat1: TMenuItem
        Caption = 'Chat'
      end
      object VendaSite1: TMenuItem
        Caption = 'Venda Site'
      end
      object ransportadora1: TMenuItem
        Caption = 'Transportadora'
      end
      object ManipularEntregas1: TMenuItem
        Caption = 'Manipular Entregas'
      end
    end
    object Fiscal1: TMenuItem
      Caption = 'Fiscal'
      object NFE1: TMenuItem
        Caption = 'NF-E'
        object Gerenciar1: TMenuItem
          Caption = 'Gerenciar'
        end
        object Emitir1: TMenuItem
          Caption = 'Emitir'
        end
        object Importar1: TMenuItem
          Caption = 'Importar'
        end
        object Grupos1: TMenuItem
          Caption = 'Grupos'
        end
      end
      object SAT1: TMenuItem
        Caption = 'SAT'
        object Gerenciar2: TMenuItem
          Caption = 'Gerenciar'
        end
        object Emitir2: TMenuItem
          Caption = 'Emitir'
        end
        object Grupos2: TMenuItem
          Caption = 'Grupos'
        end
      end
      object NFSE1: TMenuItem
        Caption = 'NFS-E'
        object Gerenciar3: TMenuItem
          Caption = 'Gerenciar'
        end
        object Emitir3: TMenuItem
          Caption = 'Emitir'
        end
        object Grupos3: TMenuItem
          Caption = 'Grupos'
        end
      end
      object SPED1: TMenuItem
        Caption = 'SPED'
        object Gerenciar4: TMenuItem
          Caption = 'Gerenciar'
        end
        object Gerar1: TMenuItem
          Caption = 'Gerar'
        end
        object Retificar1: TMenuItem
          Caption = 'Retificar'
        end
      end
      object MDFE1: TMenuItem
        Caption = 'MDFE'
        object Gerenciar5: TMenuItem
          Caption = 'Gerenciar'
        end
        object Gerar2: TMenuItem
          Caption = 'Gerar'
        end
        object Retificar2: TMenuItem
          Caption = 'Retificar'
        end
      end
      object CTE1: TMenuItem
        Caption = 'CTE'
        object Gerenciar6: TMenuItem
          Caption = 'Gerenciar'
        end
        object Gerar3: TMenuItem
          Caption = 'Gerar'
        end
        object Retificar3: TMenuItem
          Caption = 'Retificar'
        end
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object VendasRealizadas1: TMenuItem
        Caption = 'Vendas Realizadas'
      end
      object ServiosRealizados1: TMenuItem
        Caption = 'Servi'#231'os Realizados'
      end
      object FluxodeCaixa1: TMenuItem
        Caption = 'Fluxo de Caixa'
      end
      object LivroCaixa1: TMenuItem
        Caption = 'Livro Caixa'
      end
      object Cadastros2: TMenuItem
        Caption = 'Cadastros'
      end
      object Logs1: TMenuItem
        Caption = 'Logs'
      end
      object ProdutosVendidos1: TMenuItem
        Caption = 'Produtos Vendidos'
      end
      object Estoque1: TMenuItem
        Caption = 'Estoque'
      end
      object Vendedores1: TMenuItem
        Caption = 'Vendedores'
      end
      object Financeiro2: TMenuItem
        Caption = 'Financeiro'
      end
      object ConsultadeContas1: TMenuItem
        Caption = 'Consulta de Contas'
      end
      object Fiscais1: TMenuItem
        Caption = 'Fiscais'
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores2: TMenuItem
        Caption = 'Fornecedores'
      end
      object BalanoAnual1: TMenuItem
        Caption = 'Balan'#231'o Anual'
      end
      object ContasVencidas1: TMenuItem
        Caption = 'Contas Vencidas'
      end
      object MovimentoMultiTerminal1: TMenuItem
        Caption = 'Movimento Multi-Terminal'
      end
      object CartodeCrditoDbito1: TMenuItem
        Caption = 'Cart'#227'o de Cr'#233'dito/D'#233'bito'
      end
      object Comparativo1: TMenuItem
        Caption = 'Comparativo'
      end
      object GrficodeVendas1: TMenuItem
        Caption = 'Gr'#225'fico de Vendas'
      end
    end
    object AJXMarket1: TMenuItem
      Caption = 'AJX Market'
    end
  end
end