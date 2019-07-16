object FrmThread: TFrmThread
  Left = 277
  Top = 157
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exemplo de Threads - Andr'#233' Celestino'
  ClientHeight = 112
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 272
    Top = 22
    Width = 9
    Height = 77
    Shape = bsLeftLine
  end
  object lblTempoThread1: TLabel
    Left = 288
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Milissegundos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblThread1: TLabel
    Left = 8
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Thread 1:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblThread2: TLabel
    Left = 8
    Top = 64
    Width = 47
    Height = 13
    Caption = 'Thread 2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTempoThread2: TLabel
    Left = 288
    Top = 64
    Width = 69
    Height = 13
    Caption = 'Milissegundos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 392
    Top = 22
    Width = 9
    Height = 77
    Shape = bsLeftLine
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 24
    Width = 250
    Height = 17
    Step = 1
    TabOrder = 4
  end
  object ProgressBar2: TProgressBar
    Left = 8
    Top = 80
    Width = 250
    Height = 17
    Step = 1
    TabOrder = 5
  end
  object btnThread1: TBitBtn
    Left = 409
    Top = 20
    Width = 80
    Height = 25
    Caption = 'Disparar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnThread1Click
  end
  object edtTempoThread1: TEdit
    Left = 289
    Top = 23
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtTempoThread2: TEdit
    Left = 289
    Top = 79
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnThread2: TBitBtn
    Left = 409
    Top = 77
    Width = 80
    Height = 25
    Caption = 'Disparar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnThread2Click
  end
end
