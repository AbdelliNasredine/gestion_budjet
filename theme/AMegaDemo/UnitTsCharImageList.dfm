inherited FrameTsCharImageList: TFrameTsCharImageList
  object sSpeedButton1: TsSpeedButton [0]
    Left = 38
    Top = 50
    Width = 140
    Height = 140
    SkinData.SkinSection = 'BUTTON'
    Images = sCharImageList1
    ImageIndex = 0
    Reflected = True
  end
  object sSpeedButton2: TsSpeedButton [1]
    Tag = 2
    Left = 207
    Top = 50
    Width = 140
    Height = 140
    SkinData.SkinSection = 'BUTTON'
    Images = sCharImageList1
    ImageIndex = 1
    Reflected = True
  end
  object sSpeedButton3: TsSpeedButton [2]
    Left = 577
    Top = 168
    Width = 34
    Height = 22
    Enabled = False
    OnClick = sSpeedButton3Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sStickyLabel8: TsStickyLabel [3]
    Left = 436
    Top = 56
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Size:'
    AttachTo = sTrackBar1
  end
  object sStickyLabel1: TsStickyLabel [4]
    Left = 428
    Top = 94
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Angle:'
    AttachTo = sTrackBar2
  end
  object sStickyLabel2: TsStickyLabel [5]
    Left = 391
    Top = 134
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = '`BlendValue`:'
    AttachTo = sTrackBar3
  end
  object sCheckBox1: TsCheckBox [6]
    Left = 409
    Top = 238
    Width = 101
    Height = 17
    Caption = '`Reflected`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox1Click
  end
  object sTrackBar1: TsTrackBar [7]
    Left = 461
    Top = 50
    Width = 150
    Height = 25
    Max = 86
    Min = 16
    Position = 64
    PositionToolTip = ptTop
    TabOrder = 0
    TickStyle = tsNone
    OnChange = sTrackBar1Change
    ShowProgress = True
  end
  object sColorBox2: TsColorBox [8]
    Left = 463
    Top = 168
    Width = 108
    Height = 22
    AutoSize = False
    TabOrder = 3
    OnChange = sColorBox2Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`GlyphColorTone`:'
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
  object sBitBtn2: TsBitBtn [9]
    Left = 38
    Top = 234
    Width = 115
    Height = 85
    Caption = 'Rotate'
    Layout = blGlyphTop
    TabOrder = 8
    OnClick = sBitBtn2Click
    ImageIndex = 23
    Images = FormData.Char24x24
  end
  object sBitBtn1: TsBitBtn [10]
    Left = 188
    Top = 234
    Width = 159
    Height = 85
    Caption = 'Call TsCharImageList editor'
    Margin = 12
    Spacing = 8
    TabOrder = 4
    OnClick = sBitBtn1Click
    ImageIndex = 0
    Images = FormData.CharList16
  end
  object sCheckBox3: TsCheckBox [11]
    Left = 409
    Top = 267
    Width = 101
    Height = 17
    Caption = '`Discolored`'
    AutoSize = False
    TabOrder = 6
    OnClick = sCheckBox3Click
  end
  object sTrackBar3: TsTrackBar [12]
    Left = 461
    Top = 128
    Width = 150
    Height = 25
    Max = 255
    Position = 255
    PositionToolTip = ptTop
    TabOrder = 2
    TickStyle = tsNone
    OnChange = sTrackBar3Change
    ShowProgress = True
  end
  object sCheckBox2: TsCheckBox [13]
    Left = 409
    Top = 296
    Width = 101
    Height = 17
    Caption = '`DrawContour`'
    AutoSize = False
    TabOrder = 7
    OnClick = sCheckBox2Click
  end
  object sTrackBar2: TsTrackBar [14]
    Left = 461
    Top = 88
    Width = 150
    Height = 25
    Max = 360
    PositionToolTip = ptTop
    TabOrder = 1
    TickStyle = tsNone
    OnChange = sTrackBar2Change
    ShowProgress = True
  end
  object sCharImageList1: TsCharImageList
    Height = 64
    Width = 64
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61593
        Color = -4663
        SecondColor = -5344256
      end
      item
        Char = 61817
        AddedChar = 61548
        AddedFontName = 'FontAwesome'
        Color = -6381825
        SecondColor = -16777036
        AddedColor = -14121702
      end>
    Left = 212
    Top = 8
    Bitmap = {}
  end
end
