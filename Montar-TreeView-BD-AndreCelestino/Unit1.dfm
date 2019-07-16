object Form1: TForm1
  Left = 236
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Adicionar itens na TreeView'
  ClientHeight = 271
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 6
    Top = 8
    Width = 286
    Height = 251
    DataSource = DataSource
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
        Expanded = False
        FieldName = 'CODIGO'
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
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI'
        Title.Alignment = taCenter
        Title.Caption = 'N'#243' Pai'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end>
  end
  object TreeView: TTreeView
    Left = 412
    Top = 6
    Width = 245
    Height = 259
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Indent = 19
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn: TBitBtn
    Left = 300
    Top = 100
    Width = 105
    Height = 43
    Caption = 'Gerar TreeView'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtnClick
  end
  object ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 12
    Top = 224
    Data = {
      530000009619E0BD010000001800000003000000000003000000530006434F44
      49474F04000100000000000944455343524943414F0100490000000100055749
      4454480200020028000350414904000100000000000000}
    object ClientDataSetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      DisplayFormat = '00'
    end
    object ClientDataSetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object ClientDataSetPAI: TIntegerField
      FieldName = 'PAI'
      DisplayFormat = '00'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 48
    Top = 224
  end
end
