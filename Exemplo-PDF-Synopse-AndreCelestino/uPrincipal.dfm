object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exportando relat'#243'rio em QuickReport para PDF'
  ClientHeight = 268
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 506
    Height = 201
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Title.Alignment = taCenter
        Width = 200
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 179
    Top = 224
    Width = 161
    Height = 34
    Caption = 'Exportar para PDF'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      590000009619E0BD010000001800000003000000000003000000590002494404
      00010000000000044E6F6D650100490000000100055749445448020002003200
      0643696461646501004900000001000557494454480200020032000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 104
    object ClientDataSet1ID: TIntegerField
      FieldName = 'ID'
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 120
    Top = 104
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'PDF'
    FileName = 'Relatorio.pdf'
    Filter = 'Arquivo PDF|*.pdf'
    Left = 192
    Top = 104
  end
end
