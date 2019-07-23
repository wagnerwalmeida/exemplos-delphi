object FormJsonView: TFormJsonView
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'JSON Viewer'
  ClientHeight = 363
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 411
    Height = 23
    Caption = 'ToolBar1'
    Images = ImageListMain
    TabOrder = 0
    object ToolButtonClear: TToolButton
      Left = 0
      Top = 0
      Action = ActionClear
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButtonPaste: TToolButton
      Left = 23
      Top = 0
      Action = ActionPasteFromClipboard
      Marked = True
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButtonFile: TToolButton
      Left = 46
      Top = 0
      Action = ActionLoadFromFile
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButtonURL: TToolButton
      Left = 69
      Top = 0
      Action = ActionLoadFromURL
      ParentShowHint = False
      ShowHint = True
    end
  end
  object StatusBarMain: TStatusBar
    Left = 0
    Top = 344
    Width = 411
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object JSONTreeViewMain: TJSONTreeView
    Left = 0
    Top = 44
    Width = 411
    Height = 300
    Align = alClient
    Indent = 19
    PopupMenu = PopupMenuJsonTreeView
    TabOrder = 2
    JSONDocument = JSONDocMain
    VisibleChildrenCounts = True
    VisibleByteSizes = False
    ExplicitTop = 43
    ExplicitHeight = 301
  end
  object edtURL: TEdit
    Left = 0
    Top = 23
    Width = 411
    Height = 21
    Align = alTop
    TabOrder = 3
    TextHint = 'Enter URL...'
  end
  object ImageListMain: TImageList
    Left = 54
    Top = 118
    Bitmap = {
      494C010105000800240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000000000002D2BAA002525
      9500000000000000000000000000000000000000000000000000000000000000
      0000010160000000730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003836B6001111B8001C1C
      B8002F2FA4000000000000000000000000000000000000000000000000000606
      6D0001018A0000008B0002007400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3FBB001616C5000A0AC2000A0A
      C0002222C4003737AD000000000000000000000000000000000011117B000505
      9100000090000000900000008B00020074000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3BB2002C2CD3000D0DD0000D0D
      CE000C0CC9002828CC003D3DB40000000000000000001F1F8E000C0C9F000000
      920000009000000090000000880000005D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004747C1003333DE001111
      DA000F0FD5000D0DCF002A2AD1003C3CB4002F2FA4001717B4000303A3000101
      9900000091000101890001016000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005454CC003C3C
      E7001313E1001111DA000E0ED3002828CF002222C6000707B5000505AA000303
      A000060693000505660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5C
      D3003F3FEA001414E3001111DC000E0ED1000C0CC7000909BC000606B1000D0D
      A4000E0E77000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5BD0003D3DE6001414E3001111DA000D0DCF000A0AC2001616B5001818
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006E6ECE005B5BE9002020E7001313E1000F0FD4000C0CC9001616B7001818
      8700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007878
      CE007474E7005353EE004848ED003535E9002020DD001111CE000A0ABF000F0F
      AB000E0E79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7FCB008787
      E5006D6DF2006363F0005757EF005C5CDE005252D8003B3BDA002D2DCE001F1F
      C0001818A5001111760000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484C7009797E3008484
      F4007B7BF3007070F2007272E0005B5BBB004D4DB1005151CF004141D4003838
      C9002F2FBD002929A5001B1B7800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686C200A0A0E0009999F6009191
      F6008888F4008383DE006767BC0000000000000000004747A5005050C5004242
      CB003737C0002E2EB5002929A0001D1D7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009393B700A5A5EA00A1A1F7009A9A
      F6009292DD006E6EBD00000000000000000000000000000000003F3F9C004A4A
      BC003B3BC0003232B5002D2DA9002B2B8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009594B600A7A7E9009D9D
      DC007676BB000000000000000000000000000000000000000000000000003C3C
      98004141B5003535B00034349500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009796B6008080
      C000000000000000000000000000000000000000000000000000000000000000
      0000363693003E3E9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000093847000938470009384
      7000938470009384700093847000938470009384700093847000938470009384
      7000938470009384700093847000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009E9E9E007B7A7A00000000002D6782002D6782002D67
      82002D6782002D6782002D6782002D678200132D3C001E4863001E4863001F41
      5700212F38000000000000000000000000000000000000000000000000000000
      0000838383008383830082828200828282008181810080808000808080007F7F
      7F007E7E7E007E7E7E007E7E7E000000000093847000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F7F600938470000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABACAC007B7D7D00838383003D7E9A0051A3C60051A3C60051A3
      C60051A3C60051A3C60051A3C60051A3C6001E4A62003387B5003387B5002A54
      6C00E99566002A4252000000000000000000000000003C80AA003C80AA003C80
      AA0092929200F9F9F900ADBBD700F3F3F300F3F3F300F3F3F300F2F2F200F2F2
      F200F2F2F200F8F8F8008C8C8C000000000093847000FFFFFF00F8EEE200F7ED
      E100F7EBDE00F7EADD00F6E9DA00F6E9D900F6E7D700F4E6D500F4E5D400F4E3
      D100F3E2D000F3E1CE00FFFFFF00938470000000000000000000000000000000
      00000000000067372F006D514400706E5C007B6C5D0000000000000000000000
      00009797970081828200868787000000000041829F0054A7CA0054A7CA0054A7
      CA0054A7CA0054A7CA0054A7CA0054A7CA0052738300BDBDBD00BDBDBD002F63
      7E00E99566002E4F65000000000000000000000000003C80AA0068B1CF006AB3
      D1009D9D9D0095959600ADBBD700E2C1A300E2C1A300E2C1A300E2C1A300E2C1
      A300E2C1A300E2C1A300999999000000000093847000FFFFFF00F8EFE300F8EE
      E200959595009595950095959500959595009595950095959500959595009595
      9500F4E3D100F3E2D000FFFFFF00938470000000000000000000000000004B18
      0A004F231400593023004D563E004E72560063846A007B988200847D6F008481
      8100898989008789890000000000000000004687A30057ACCE0057ACCE0057AC
      CE0057ACCE0057ACCE0057ACCE0057ACCE005D7F8F00DCDCDC00BDBDBD003872
      9000DCDCDC0034586F000000000000000000000000003C80AA006AB4D2006CB6
      D300A7A7A700F5F5F500ADBBD700ECECEC00ECECEC00ECECEC00ECECEC00EBEB
      EB00E9E9E900F4F4F400A3A3A3000000000093847000FFFFFF00F8EFE600F8EF
      E300F8EEE200F7EDE100F7EBDE00F7EADD00F6E9DA00F6E9D900F6E7D700F4E6
      D500F4E5D400F3E3D100FFFFFF009384700000000000000000005A1C04005114
      000052150000452A0D004869520059605A00656865006F777000737770008889
      89007D7A79000000000000000000000000004B8BA6005AB1D1005AB1D1005AB1
      D1005AB1D1005AB1D1005AB1D1005AB1D100637A8000E2C2A700BDBDBD003C75
      9300DCDCDC00385F75000000000000000000000000004286AE006DB7D4006EBA
      D500AEAEAE00E2C1A300ADBBD700E2C1A300E2C1A300E2C1A300E2C1A300E2C1
      A300E2C1A300E2C1A300ACACAC000000000093847000FFFFFF00FAF0E700F8EF
      E600959595009595950095959500959595009595950095959500959595009595
      9500F4E6D500F4E5D400FFFFFF00938470000000000072290500672801003446
      0D0036480C005A68590060795E00739E6F00769A75007D987F00828881007876
      77006E514C000000000000000000000000005091AA005DB6D5005DB6D5005DB6
      D5005DB6D5005DB6D5005DB6D5005DB6D50065869500E0E0E000BDBDBD003F79
      9700DCDCDC003E667A00000000000000000000000000498CB3006FBBD60070BD
      D800B4B4B400F8F8F800ADBBD700F2F2F200F2F2F200F2F2F200F1F1F100F0F0
      F000EFEFEF00F6F6F600B2B2B2000000000093847000FFFFFF00FAF2EA00FAF0
      E700F8EFE600F8EFE300F8EEE200F7EDE100F7EBDE00F7EADD00F6E9DA00F6E9
      D900F6E7D700F4E6D500FFFFFF0093847000000000008C3A010032681200126B
      09004D7345005B77510074A9660072A165006F9965006D9267006F937200898A
      86005D4944000000000000000000000000005596AF0060BBD90060BBD90060BB
      D90060BBD90060BBD90060BBD9005DB6D500697F8400E2C2A700BDBDBD00427E
      9A00DCDCDC00446C80000000000000000000000000004E91B70071BED80072C0
      DA00B9B9B90095959600ADBBD700E2C1A300E2C1A300E2C1A300E2C1A300E2C1
      A300E2C1A300E2C1A300B7B7B7000000000093847000FFFFFF00FAF3EB00FAF2
      EA00959595009595950095959500959595009595950095959500959595009595
      9500F6E9D900F6E7D700FFFFFF009384700091400700A65000002D8115001786
      05005867510079B5560077AF5B0075A75C0074A662006F9F65006F996A00778F
      720070605D00451D160000000000000000005A9CB20064C1DD0064C1DD0064C1
      DD0064C1DD0064C1DD0064C1DD0064C1DD00547B8E00759FB200BDBDBD004992
      B5004F839C004A6D7F00000000000000000000000000579BBF0073C1DB0075C3
      DD00BBBBBB00FAFAFA00ADBBD700F6F6F600F7F7F700F6F6F600F6F6F600F5F5
      F500F3F3F300F8F8F800BABABA000000000093847000FFFFFF00FBF4ED00FAF3
      EB00FAF2EA00FAF0E700F8EFE600F8EFE300F8EEE200F7EDE100F7EBDE00F7EA
      DD00F6E9DA00F6E9D900FFFFFF0093847000A0510800BD700600459E2900249D
      0F005F7354007FC055007DC066007ABB660076AC60006CB470006F9C5F006A8C
      5C00746D68002D17080000000000000000005FA0B60067C6E10067C6E10067C6
      E10067C6E10067C6E10067C6E10067C6E1006AB1CA005F899A007896A3005BA3
      C50056809200000000000000000000000000000000005EA1C30075C4DE0077C6
      E000BEBEBE00E2C1A300ADBBD700E2C1A300E2C1A300E2C1A300E2C1A300E2C1
      A300E2C1A300E2C1A300BDBDBD000000000093847000FFFFFF00FBF6EF00FBF4
      ED00959595009595950095959500959595009595950095959500959595009595
      9500F7EADD00F6E9DA00FFFFFF0093847000AC640F00D0901800CBA52F0051C4
      550060725C0089D37D00ACCC7B009AC77A0093B66C0073B06700729958006D95
      6900676E6000182D0D00000000000000000065A5BA006ACBE5006ACBE5006ACB
      E5006ACBE5006ACBE5006ACBE5006ACBE5006ACBE50069BBD10077909A0064A0
      BB00568092000000000000000000000000000000000063A7C80077C7E00079C9
      E200BFBFBF00FCFCFC00ADBBD700FAFAFA00FAFAFA00FAFAFA00F9F9F900F8F8
      F800F6F6F600FAFAFA00BFBFBF000000000093847000FFFFFF00FBF7F000FBF6
      EF00FBF4ED00FAF3EB00FAF2EA00FAF0E700F8EFE600F8EFE300F8EEE200F7ED
      E100F7EBDE00F7EADD00FFFFFF0093847000B46E1A00E1AA3500EBC25A00BDD8
      86006D8B780084B6750084D5810083D5900076C07E0079B1670076AB5D007B8A
      70002C4A28001727090000000000000000006AABBF006DD0E9006DD0E9006DD0
      E9006DD0E9006DD0E9006DD0E9006DD0E9006DD0E9006DD0E9007A919C006EA7
      C20056809200000000000000000000000000000000006BAFCE007ACAE2007BCC
      E400C0C0C00095959600ADBBD700E2C1A300E2C1A300E2C1A300E2C1A300C6C6
      C600C4C4C400CDCDCD00BFBFBF000000000093847000FFFFFF00FCF7F300FBF7
      F000959595009595950095959500959595009595950095959500959595009595
      9500F7EDE100F7EBDE00FFFFFF009384700000000000E9BB4F00F4D58200F0E9
      AD00B8DEB2006F7772007EBA7D0084C7670076C4780068BA6D00729A72006474
      5F00053D05000000000000000000000000006EB0C20070D5ED0070D5ED0070D5
      ED0070D5ED0070D5ED0070D5ED0070D5ED0070D5ED0070D5ED006E8A960078AF
      C70056809200000000000000000000000000000000006CB1CF007CCDE5007DCF
      E600C0C0C000FDFDFD00ADBBD700FBFBFB00FCFCFC00FBFBFB00FBFBFB00CBCB
      CB00EEEEEE00C9C9C900000000000000000093847000FFFFFF00FCF8F400FCF7
      F300FBF7F000FBF6EF00FBF4ED00FAF3EB00FAF2EA00FAF0E700F8EFE600F8EF
      E300F8EEE200F7EDE100FFFFFF0093847000000000006F9E2800F8DA9300FEED
      BB00CEE7BC00A1CB9C006D8B770076846E007D8E720076877500537A51001758
      13001345120000000000000000000000000074B5C60074DAF00074DAF00074DA
      F00074DAF00074DAF00074DAF00074DAF00074DAF00074DAF000728B970081B6
      CE0056809200000000000000000000000000000000006DB2D0007ED0E700A0A3
      A400929596008B8E8F0084878800848788007D8081007D8081007D808100E9E9
      E900CACACA0000000000000000000000000093847000FFFFFF00FCFAF700FCF8
      F400FCF7F300FBF7F000FBF6EF00FBF4ED00FAF3EB00FAF2EA00FAF0E700F8EF
      E600F8EFE300F8EEE200FFFFFF0093847000000000000000000053B43400C1DC
      8000B0D36F00C7D78A002FCF720032C06B003EAA58002D9951001C7523001860
      23000000000000000000000000000000000079BACB0077E0F60077E0F60077E0
      F60077E0F60077E0F60077E0F60077E0F60077E0F60077E0F600758E98008ABC
      D30056809200000000000000000000000000000000006EB3D00080D3E90081BA
      C900848686008B8D8E009EA3A400A5ADAE008F92920084858600AAAAAA00C0C0
      C00093B2C00000000000000000000000000093847000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F7F600938470000000000000000000000000000C96
      06000EB111008AB73F00A0BA560074AF4A0044B45D003AA76800497E55000000
      0000000000000000000000000000000000007FC0CF007AE5FA007AE5FA007AE5
      FA007AE5FA007AE5FA007AE5FA007AE5FA007AE5FA007AE5FA006E89950092C1
      D70056809200000000000000000000000000000000006FB4D10082D6EC0084D8
      ED00898A8A00BFC3C400B6BBBC00C8D0D100C1C5C600828383008EE8F90090EA
      FA0051A2C5000000000000000000000000000000000093847000938470009384
      7000938470009384700093847000938470009384700093847000938470009384
      7000938470009384700093847000000000000000000000000000000000000000
      0000000000003E782E002F782300416D1E003E76390000000000000000000000
      0000000000000000000000000000000000000000000084C5D30084C5D30084C5
      D30084C5D30084C5D30084C5D30084C5D30084C5D30084C5D3006E8995006CA1
      B200000000000000000000000000000000000000000070B6D20070B6D20071B7
      D3006D8F9E007396A4008492980086959B006C8F9D006E929F0073BBD70066B4
      D2005CABCB00000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00CFF300000000000087E1000000000000
      03C000000000000001800000000000008001000000000000C003000000000000
      E007000000000000F00F000000000000F00F000000000000E007000000000000
      C0030000000000008001000000000000018000000000000003C0000000000000
      87E1000000000000CFF30000000000008001FFFC8007F0010000FFF800038001
      0000F871000380010000E003000380010000C007000380010000800700038001
      0000800700038001000000030003800100000003000780010000000300078001
      0000000300078001000080070007800300008007000780070000C00F00078007
      0000E01F000780078001F87F800F800700000000000000000000000000000000
      000000000000}
  end
  object JSONDocMain: TJSONDocument
    Left = 50
    Top = 54
  end
  object PopupMenuJsonTreeView: TPopupMenu
    Left = 175
    Top = 50
    object MenuItem_VisibleChildrenCounts: TMenuItem
      Action = ActionToggleVisibleCounts
      AutoCheck = True
    end
    object MenuItem_VisibleByteSizes: TMenuItem
      Action = ActionToggleVisibleBytes
      AutoCheck = True
    end
  end
  object ActionListMain: TActionList
    Images = ImageListMain
    Left = 176
    Top = 130
    object ActionLoadFromURL: TAction
      Caption = 'ActionLoadFromURL'
      Hint = 'Load JSON from URL'
      ImageIndex = 1
      OnExecute = ActionLoadFromURLExecute
    end
    object ActionLoadFromFile: TAction
      Caption = 'ActionLoadFromFile'
      Hint = 'Load JSON from file'
      ImageIndex = 2
      OnExecute = ActionLoadFromFileExecute
    end
    object ActionPasteFromClipboard: TAction
      Caption = 'ActionPasteFromClipboard'
      Hint = 'Paste JSON from clipboard'
      ImageIndex = 3
      OnExecute = ActionPasteFromClipboardExecute
    end
    object ActionClear: TAction
      Caption = 'ActionClear'
      Hint = 'Clear'
      ImageIndex = 4
      OnExecute = ActionClearExecute
    end
    object ActionToggleVisibleCounts: TAction
      Caption = 'Visible Children Counts'
      Checked = True
      Hint = 'Toggle Visible Children Counts'
      OnExecute = ActionToggleVisibleCountsExecute
    end
    object ActionToggleVisibleBytes: TAction
      Caption = 'Visible Byte Sizes'
      Hint = 'Toggle Visible Bytes Sizes'
      OnExecute = ActionToggleVisibleBytesExecute
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'JSON'
        FileMask = '*.json'
      end
      item
        DisplayName = 'Any file'
        FileMask = '*.*'
      end>
    Options = [fdoPathMustExist, fdoFileMustExist]
    Left = 308
    Top = 88
  end
end
