object FShareComponent: TFShareComponent
  Left = 0
  Top = 0
  Caption = 'Share Component'
  ClientHeight = 506
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 249
    Align = alTop
    TabOrder = 0
    DesignSize = (
      676
      249)
    object Label1: TLabel
      Left = 12
      Top = 48
      Width = 53
      Height = 13
      Caption = 'Share Text'
    end
    object Label2: TLabel
      Left = 12
      Top = 72
      Width = 82
      Height = 13
      Caption = 'Application Name'
    end
    object Label5: TLabel
      Left = 12
      Top = 144
      Width = 64
      Height = 13
      Caption = 'Web Address'
    end
    object Label6: TLabel
      Left = 12
      Top = 168
      Width = 85
      Height = 13
      Caption = 'Content Web Link'
    end
    object Label7: TLabel
      Left = 12
      Top = 192
      Width = 86
      Height = 13
      Caption = 'Content App. Link'
    end
    object Label8: TLabel
      Left = 12
      Top = 216
      Width = 46
      Height = 13
      Caption = 'Data Title'
    end
    object Label3: TLabel
      Left = 12
      Top = 96
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object Label4: TLabel
      Left = 12
      Top = 120
      Width = 70
      Height = 13
      Caption = 'Package Name'
    end
    object ButtonShare: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Share'
      ImageIndex = 0
      Images = ImageList1
      TabOrder = 0
      OnClick = ButtonShareClick
    end
    object EditShareText: TEdit
      Left = 111
      Top = 45
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = 'This is the data Text. Should be a large text that is shared...'
    end
    object EditApplicationName: TEdit
      Left = 111
      Top = 69
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Text = 'Application'#39's Name'
    end
    object EditWebAddress: TEdit
      Left = 111
      Top = 141
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      Text = 'http://www.embarcadero.com'
    end
    object EditContentSourceWebLink: TEdit
      Left = 111
      Top = 165
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
      Text = 'http://www.embarcadero.com/company'
    end
    object EditContentSourceApplicationLink: TEdit
      Left = 111
      Top = 189
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      Text = 'http://www.embarcadero.com/application'
    end
    object EditDataTitle: TEdit
      Left = 111
      Top = 213
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
      Text = 'EditDataTitle'
    end
    object EditDescription: TEdit
      Left = 111
      Top = 93
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 7
      Text = 'EditDescription'
    end
    object EditPackageName: TEdit
      Left = 111
      Top = 117
      Width = 552
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 8
      Text = 'Package Name'
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 249
    Width = 676
    Height = 257
    Align = alClient
    TabOrder = 1
  end
  object ShareContractComponent: TSharingContract
    ApplicationName = 'Component Application Name'
    DataText = 'Component Data Text'
    DataTitle = 'Component Data Title'
    Description = 'Component description'
    IconFile = 'Foto.bmp'
    ImageFile = 'Foto.jpg'
    LogoFile = 'Foto.bmp'
    OnTransferImage = ShareContractComponentTransferImage
    OnAppChosen = ShareContractComponentAppChosen
    Left = 132
  end
  object ImageList1: TImageList
    Left = 272
    Bitmap = {
      494C010101000800280010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF004D7A
      FF004D7AFF004D7AFF004D7AFF004D7AFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D7AFF00000000000000000000000000000000000000
      00000000000000000000000000004D7AFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005555550055555500000000005555
      550055555500000000004D7AFF00000000000000000000000000000000000000
      00000000000000000000000000004D7AFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005555550000000000000000000000
      000000000000000000004D7AFF00000000000040FF0000000000000000000000
      00000000000000000000000000004D7AFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005555550000000000000000000000
      000000000000000000004D7AFF00000000000000000000000000000000000000
      00000000000000000000000000004D7AFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF004D7A
      FF004D7AFF004D7AFF004D7AFF004D7AFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005555550000000000000000000000
      000000000000000000004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF004D7A
      FF004D7AFF004D7AFF004D7AFF004D7AFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005555550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D7AFF004D7AFF004D7AFF004D7A
      FF004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF00000000000000
      0000000000000000000000000000555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D7AFF0000000000000000000000
      000000000000000000000000000000000000000000004D7AFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D7AFF0000000000000000000000
      000000000000000000000000000000000000000000004D7AFF00000000000000
      0000000000000000000000000000555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D7AFF00000000000040FF000000
      000000000000000000000000000000000000000000004D7AFF00000000005555
      5500000000005555550055555500555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D7AFF0000000000000000000000
      000000000000000000000000000000000000000000004D7AFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D7AFF004D7AFF004D7AFF004D7A
      FF004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D7AFF004D7AFF004D7AFF004D7A
      FF004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF004D7AFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC00000000000000FDFE000000000000
      25FE0000000000007D7E0000000000007DFE000000000000FC00000000000000
      7C000000000000007FFF000000000000FFFE000000000000003E000000000000
      7FBF0000000000007FBE0000000000005FA80000000000007FBF000000000000
      003F000000000000003F00000000000000000000000000000000000000000000
      000000000000}
  end
end
