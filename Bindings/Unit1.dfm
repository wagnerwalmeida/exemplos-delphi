object Form1: TForm1
  Left = 279
  Top = 177
  Caption = 'Form1'
  ClientHeight = 125
  ClientWidth = 616
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
  object Edit1: TEdit
    Left = 104
    Top = 32
    Width = 177
    Height = 49
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 287
    Top = 32
    Width = 74
    Height = 49
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end