object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Bluetooth Chat VCL'
  ClientHeight = 496
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 445
    object butDevices: TButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 75
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Devices'
      TabOrder = 0
      OnClick = butDevicesClick
      ExplicitTop = 53
      ExplicitHeight = 387
    end
    object butStart: TButton
      AlignWithMargins = True
      Left = 364
      Top = 5
      Width = 75
      Height = 30
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Start'
      TabOrder = 1
      OnClick = butStartClick
      ExplicitLeft = 304
      ExplicitTop = 23
      ExplicitHeight = 25
    end
    object CBDevices: TComboBox
      AlignWithMargins = True
      Left = 90
      Top = 10
      Width = 264
      Height = 21
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      TabOrder = 2
      ExplicitTop = 14
      ExplicitWidth = 265
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 448
    Width = 444
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 467
    object butSend: TButton
      AlignWithMargins = True
      Left = 364
      Top = 5
      Width = 75
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Send'
      TabOrder = 0
      OnClick = butSendClick
      ExplicitLeft = 368
      ExplicitTop = 23
      ExplicitHeight = 25
    end
    object edtMessage: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 349
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 160
      ExplicitTop = 16
      ExplicitWidth = 121
      ExplicitHeight = 21
    end
  end
  object memLog: TMemo
    AlignWithMargins = True
    Left = 5
    Top = 45
    Width = 434
    Height = 398
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 10
    ExplicitTop = 53
    ExplicitWidth = 457
    ExplicitHeight = 387
  end
end
