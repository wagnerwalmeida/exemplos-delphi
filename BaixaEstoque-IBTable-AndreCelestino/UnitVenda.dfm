object FrmVenda: TFrmVenda
  Left = 242
  Top = 119
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Venda de Produtos'
  ClientHeight = 376
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gbDetalheProduto: TGroupBox
    Left = 8
    Top = 8
    Width = 505
    Height = 80
    Caption = 'Detalhes do Produto: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblCodigo: TLabel
      Left = 16
      Top = 25
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object sbPesquisaProduto: TSpeedButton
      Left = 74
      Top = 39
      Width = 23
      Height = 22
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
        73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
        8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
        9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
        A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
        AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
        BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
        D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
        E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
        F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
        424242424242424242422B39180B42424242424242424242424243443C180B42
        4242424242424242424242444438180B42424242424242424242424244433918
        0A424242424242424242424242444335004201101A114242424242424242453D
        05072F343434291942424242424242221A2D34343437403E0442424242424206
        231C303437404146284242424242421B210F30373A414140310D42424242421F
        20032434373A3A37321342424242421D25030F2D37373737311042424242420D
        2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
        4227312D21252314424242424242424242420E141B1B42424242}
      OnClick = sbPesquisaProdutoClick
    end
    object lblDescricao: TLabel
      Left = 112
      Top = 25
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object lblValor: TLabel
      Left = 368
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object edtCodigo: TEdit
      Left = 16
      Top = 40
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 0
      OnChange = edtCodigoChange
      OnKeyPress = edtCodigoKeyPress
    end
    object edtDescricao: TEdit
      Left = 112
      Top = 40
      Width = 249
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      MaxLength = 40
      TabOrder = 1
    end
    object edtValor: TEdit
      Left = 368
      Top = 40
      Width = 90
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      MaxLength = 7
      ReadOnly = True
      TabOrder = 2
    end
  end
  object gbQuantidade: TGroupBox
    Left = 8
    Top = 96
    Width = 505
    Height = 80
    Caption = 'Quantidade do Produto: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblQuantidade: TLabel
      Left = 16
      Top = 24
      Width = 60
      Height = 13
      Caption = 'Quantidade:'
    end
    object lblTotal: TLabel
      Left = 112
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object Bevel: TBevel
      Left = 231
      Top = 18
      Width = 6
      Height = 50
      Shape = bsLeftLine
    end
    object edtQuantidade: TEdit
      Left = 16
      Top = 40
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 0
      OnChange = edtQuantidadeChange
      OnKeyPress = edtQuantidadeKeyPress
    end
    object edtTotal: TEdit
      Left = 112
      Top = 40
      Width = 90
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 7
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object btnAdicionar: TBitBtn
      Left = 264
      Top = 35
      Width = 100
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = btnAdicionarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
        6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
        A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
        4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
        00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 184
    Width = 505
    Height = 120
    TabStop = False
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end>
  end
  object pnlFinalizar: TPanel
    Left = 8
    Top = 312
    Width = 505
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object btnFinalizar: TBitBtn
      Left = 142
      Top = 5
      Width = 221
      Height = 30
      Caption = 'Finalizar Venda e Baixar Estoque'
      TabOrder = 0
      OnClick = btnFinalizarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        AD5A59AA5454A24D4EAA9595C1C8C7CCCBCACECBCACAC8C7C6CAC9B79E9E9840
        41994444A65151FF00FFFF00FFBC7871CF6666D26868B95A5B9B8080BEA1A0E2
        D0CEFEF9F5FFFDFAF2F6F4D2B3B3962D2C993232C25B5BB05859FF00FFBB7871
        CB6565CE6767B85D5D9E7B7C9D4343B77675E7DFDDFDFBF9FEFFFDD9BAB9962E
        2E993333C05A5AAF5859FF00FFBB7871CB6565CE6667B85D5DA884839939399B
        3636CDBCBBF2F0EEFFFFFFE2C3C1962D2D983333C05A5AAF5859FF00FFBB7871
        CB6565CE6666B75C5CB28F8E9F4848943232A69A9AD5DBD8FAFFFEE6C9C8932B
        2B963030BF5959AF5859FF00FFBB7871CB6565CF6666BB5C5CC3908FC29695B3
        8686AA8D8EBAA2A1E1CAC8DCA9A9A33A3AA43E3EC35D5DAE5758FF00FFBB7871
        CC6566CB6464CB6464CB6364CC6767CD6767CC6464C85B5BC95E5ECA6161CC65
        65CD6666CF6868AC5657FF00FFBC7972B75351B25B57C68684D2A4A2D5ABAAD5
        AAA9D5ABAAD5A5A4D5A8A7D5AAA9D6AEACD39C9CCD6666AC5556FF00FFBC7871
        B14F4CE4CDCBFAF7F7F8F4F3F9F5F4F9F5F4F9F5F4F9F6F5F9F5F4F9F5F4FBFB
        FADEBEBDC45C5DAD5657FF00FFBC7871B3514EEBD7D6FCFBFAF7F0EFF7F1F0F7
        F1F0F7F1F0F7F1F0F7F1F0F6F1F0FBF9F8DEBCBBC35B5BAD5657FF00FFBC7871
        B3514EEBD7D4F0EFEFD8D5D4DAD7D7DAD7D7DAD7D7DAD7D7DAD7D7D8D5D5ECEC
        EBE0BDBCC25B5BAD5657FF00FFBC7871B3514EEBD7D5F3F1F1DEDAD9DFDBDBDF
        DBDBDFDBDBDFDBDBDFDBDBDDDAD9EEEEEEE0BDBCC35B5BAD5657FF00FFBC7871
        B3514EEAD7D5F5F4F3E4DFDEE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDFF2F1
        F0DFBDBBC35B5BAD5657FF00FFBC7871B3514EEBD7D6F1F0EFD9D5D5DAD8D7DA
        D8D7DAD8D7DAD8D7DAD8D7D8D5D5EDECEBE1BEBDC35B5BAD5657FF00FFBC7870
        B3514EE9D6D4FEFBFBFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FDFA
        F9DEBCBBC35C5CAD5657FF00FFFF00FFA8504CC9B6B5D3D5D4D1CECED1CECED1
        CECED1CECED1CECED1CECED1CECED3D4D4CBAEADA34D4EFF00FF}
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 357
    Width = 518
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Venda de Produtos'
        Width = 230
      end
      item
        Alignment = taCenter
        Width = 135
      end
      item
        Alignment = taCenter
        Width = 135
      end>
  end
  object TabelaTemporaria: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 16
    Top = 272
    Data = {
      760000009619E0BD010000001800000005000000000003000000760006434F44
      49474F04000100000000000944455343524943414F0100490000000100055749
      4454480200020028000556414C4F5208000400000000000A5155414E54494441
      4445040001000000000005544F54414C08000400000000000000}
    object TabelaTemporariaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      DisplayFormat = '00'
    end
    object TabelaTemporariaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object TabelaTemporariaVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object TabelaTemporariaQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
    object TabelaTemporariaTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object TabelaTemporariaTOTALGERAL: TAggregateField
      FieldName = 'TOTALGERAL'
      Active = True
      Expression = 'Sum(Total)'
    end
  end
  object DataSource: TDataSource
    DataSet = TabelaTemporaria
    Left = 48
    Top = 272
  end
end
