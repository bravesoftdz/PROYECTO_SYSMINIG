object ftsdghtml: Tftsdghtml
  Left = 0
  Top = 80
  Width = 768
  Height = 537
  Caption = 'Diagrama de Flujo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
    00FF000000FF0000000000000000000000000000000000000000000000000000
    00000000000000000000000000FF000000000000000000000000000000000000
    0000000000FF0000000000000000000000000000000000000000000000000000
    000000000000699B00FF699B00FF699B00FF0000000000000000000000000000
    0000000000FF0000000000000000000000000000000000000000000000000000
    000000000000699B00FF699B00FF699B00FF0000000000000000000000000000
    00FF000000FF000000FF00000000000000000000000000000000000000000000
    00000000000000000000000000FF000000000000000000000000000000000000
    00FF000000FF000000FF00000000000000000000000000000000000000000000
    00000000000000000000000000FF000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000246DFFFF000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000246DFFFF00000000246DFFFF0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000246DFFFF000000000000000000000000246DFFFF000000FF000000FF9B69
    00FF9B6900FF9B6900FF00000000000000000000000000000000000000000000
    000000000000246DFFFF00000000246DFFFF0000000000000000000000009B69
    00FF9B6900FF9B6900FF00000000000000000000000000000000000000000000
    00000000000000000000246DFFFF000000000000000000000000000000000000
    0000000000FF0000000000000000000000000000000000000000000000000000
    00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
    00FF000000FF0000000000000000000000000000000000000000000000000000
    00000000000000000000000000FF000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000006C6CFFFF6C6CFFFF6C6CFFFF0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000006C6CFFFF6C6CFFFF6C6CFFFF0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000E03F
    0000EFBF0000C7BF0000C71F0000EF1F0000EFFF0000EFFF0000D7FF0000B81F
    0000D71F0000EFBF0000E03F0000EFFF0000C7FF0000C7FF0000FFFF0000}
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object split1: TSplitter
    Left = 496
    Top = 0
    Width = 5
    Height = 503
    Beveled = True
    Color = cl3DDkShadow
    ParentColor = False
  end
  object web1: TWebBrowser
    Left = 0
    Top = 0
    Width = 496
    Height = 503
    Align = alLeft
    TabOrder = 0
    OnProgressChange = web1ProgressChange
    OnBeforeNavigate2 = web1BeforeNavigate2
    OnDocumentComplete = web1DocumentComplete
    ControlData = {
      4C00000043330000FD3300000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object rich: TRichEdit
    Left = 501
    Top = 0
    Width = 259
    Height = 503
    Align = alClient
    Color = clMenuBar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
end
