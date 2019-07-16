object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exemplo de tela de Splash e Login - Andr'#233' Celestino'
  ClientHeight = 272
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 205
    Top = 16
    Width = 139
    Height = 16
    Caption = 'Os formul'#225'rios abaixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 123
    Top = 40
    Width = 302
    Height = 16
    Caption = 's'#227'o criados e exclu'#237'dos em tempo de execu'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnShowModal: TBitBtn
    Left = 182
    Top = 112
    Width = 185
    Height = 30
    Caption = 'Chamar formul'#225'rio com ShowModal'
    TabOrder = 0
    OnClick = btnShowModalClick
  end
  object btnShow: TBitBtn
    Left = 182
    Top = 160
    Width = 185
    Height = 30
    Caption = 'Chamar formul'#225'rio com Show'
    TabOrder = 1
    OnClick = btnShowClick
  end
end
