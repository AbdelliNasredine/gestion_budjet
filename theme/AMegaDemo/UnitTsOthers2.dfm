inherited FrameTsOthers2: TFrameTsOthers2
  Width = 817
  Height = 620
  Align = alClient
  object sLabel1: TsLabel [0]
    Left = 103
    Top = 60
    Width = 76
    Height = 28
    Caption = 'sLabel1'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sSpeedButton3: TsSpeedButton [1]
    Left = 190
    Top = 112
    Width = 43
    Height = 25
    Caption = 'Reset'
    Enabled = False
    OnClick = sSpeedButton3Click
  end
  object sUpDown2: TsUpDown [2]
    Left = 140
    Top = 248
    Width = 57
    Height = 21
    Orientation = udHorizontal
    TabOrder = 3
  end
  object sBitBtn1: TsBitBtn [3]
    Left = 308
    Top = 348
    Width = 313
    Height = 25
    Caption = 'Open Rtf file'
    TabOrder = 6
    OnClick = sBitBtn1Click
  end
  object sRichEdit1: TsRichEdit [4]
    Left = 308
    Top = 40
    Width = 313
    Height = 293
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'sRichEdit1')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 5
    Text = 'sRichEdit1'#13#10
  end
  object sUpDown1: TsUpDown [5]
    Left = 96
    Top = 248
    Width = 21
    Height = 31
    TabOrder = 2
  end
  object sMaskEdit1: TsMaskEdit [6]
    Left = 96
    Top = 312
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
    Text = ''
    TextHint = 'sMaskEdit1'
    CheckOnExit = True
    BoundLabel.Caption = 'sMaskEdit1:'
    BoundLabel.Layout = sclTopLeft
    LabelFromTextHint = True
  end
  object sColorBox1: TsColorBox [7]
    Left = 119
    Top = 112
    Width = 65
    Height = 22
    BoundLabel.Active = True
    BoundLabel.Caption = 'Label color:'
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox1ColorPreview
    TabOrder = 0
    OnChange = sColorBox1Change
  end
  object sScrollBar1: TsScrollBar [8]
    Left = 96
    Top = 188
    Width = 137
    Height = 21
    PageSize = 0
    TabOrder = 1
    SkinManager = FormData.sSkinManager1
  end
  object sOpenDialog1: TsOpenDialog
    DefaultExt = '*.rtf'
    Filter = '*.rtf|*.rtf'
    Left = 232
    Top = 412
  end
end
