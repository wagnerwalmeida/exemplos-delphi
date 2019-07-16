object FrmImportacaoExcel: TFrmImportacaoExcel
  Left = 241
  Top = 119
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Importa'#231#227'o do Excel - Andr'#233' Celestino'
  ClientHeight = 299
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel: TBevel
    Left = 8
    Top = 72
    Width = 785
    Height = 9
    Shape = bsTopLine
  end
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 113
    Height = 13
    Caption = 'Planilha 1 - Clientes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 272
    Top = 88
    Width = 119
    Height = 13
    Caption = 'Planilha 2 - Produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 536
    Top = 88
    Width = 117
    Height = 13
    Caption = 'Planilha 3 - Usu'#225'rios:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gridClientes: TDBGrid
    Left = 8
    Top = 104
    Width = 255
    Height = 190
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
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
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 160
        Visible = True
      end>
  end
  object gridProdutos: TDBGrid
    Left = 272
    Top = 104
    Width = 255
    Height = 190
    DataSource = dsProdutos
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
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
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
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 160
        Visible = True
      end>
  end
  object gridUsuarios: TDBGrid
    Left = 536
    Top = 104
    Width = 255
    Height = 190
    DataSource = dsUsuarios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
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
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 160
        Visible = True
      end>
  end
  object btnImportar: TBitBtn
    Left = 344
    Top = 14
    Width = 145
    Height = 46
    Caption = 'Importar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnImportarClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF00660000660000660000660000660000660000660000
      6600006600006600006600006600006600006600006600006600006600006600
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660056DE8452DB7F4FD97A4BD6
      7447D26D41CE663DC95F38C55832C0502DBD4828B84123B4391FB03219AD2C16
      AA2612A721006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600006600
      0066000066000066000066000066000066000066000066000066000066000066
      00006600006600006600006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF00660000660000660000660000660000
      6600006600006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF1963AD1963ADFF00FFFF00FFFF00FFFF00FF00660054DD8249D5
      733CC95F2DBC491FB23414A7240EA31B006600FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF1963AD3C97E21963ADFF00FFFF00FFFF00FFFF00FF
      00660058E08752DB7E46D16E38C6592ABA441CAF3011A621006600FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF1963AD44A1E253B9FF1963AD1963AD19
      63AD1963ADFF00FF006600006600006600006600006600006600006600006600
      006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1963AD4AA7E260C6FF59BE
      FF50B6FF47ACFF3FA4FF1963ADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1963AD4BA7E2
      B3E6FF63C9FF5DC3FF55BBFF4CB2FF44A9FF1963ADFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF1963AD4BA7E2B3E6FF61C7FF5ABFFF52B7FF49AEFF1963ADFF00FF
      0066000066000066000066000066000066000066000066000066000066000066
      00006600006600006600FF00FFFF00FF1963AD4BA7E2B2E5FF1963AD1963AD19
      63AD1963ADFF00FF00660058E08758E08758E08757DF8652DB7E4AD47241CE66
      38C6582EBE4A24B63C1CAE2F15A824006600FF00FFFF00FFFF00FF1963AD4BA7
      E21963ADFF00FFFF00FFFF00FFFF00FF00660058E08758E08758E08758E08753
      DC804CD67644CF693AC75B31BF4D26B83F1EB03216AA27006600FF00FFFF00FF
      FF00FFFF00FF1963AD1963ADFF00FFFF00FFFF00FFFF00FF0066000066000066
      0000660000660000660000660000660000660000660000660000660000660000
      6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066000066000066000066000066
      0000660000660000660000660000660000660000660000660000660000660000
      6600006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660058E087
      58DF8654DC8150D97A4AD47344CF6A3ECB6037C55731BF4D2ABA4323B43A1DB0
      3118AB2A13A7220FA51D0EA31B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF006600006600006600006600006600006600006600006600006600006600
      006600006600006600006600006600006600006600006600FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object cdsClientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 13
    Top = 238
    Data = {
      5D0000009619E0BD0100000018000000030000000000030000005D0006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      02002800064369646164650100490000000100055749445448020002001E0000
      00}
    object cdsClientesCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '00'
    end
    object cdsClientesNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object cdsProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 277
    Top = 238
    Data = {
      470000009619E0BD010000001800000002000000000003000000470006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      445448020002001E000000}
    object cdsProdutosCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '00'
    end
    object cdsProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object cdsUsuarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 541
    Top = 238
    Data = {
      420000009619E0BD010000001800000002000000000003000000420006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      02001E000000}
    object cdsUsuariosCodigo: TIntegerField
      FieldName = 'Codigo'
      DisplayFormat = '00'
    end
    object cdsUsuariosNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 45
    Top = 238
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 309
    Top = 238
  end
  object dsUsuarios: TDataSource
    DataSet = cdsUsuarios
    Left = 573
    Top = 238
  end
end
