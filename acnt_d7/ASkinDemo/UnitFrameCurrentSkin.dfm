inherited Frame_CurrentSkin: TFrame_CurrentSkin
  Width = 640
  Height = 419
  object sHTMLLabel1: TsHTMLLabel [0]
    Left = 296
    Top = 336
    Width = 264
    Height = 28
    Alignment = taCenter
    Caption = 
      '<a href="http://www.alphaskins.com/showdoc.php?l=en&n=0&d=1000">' +
      'Learn more</a> about the package features, tips and tricks'#13'Downl' +
      'oad and try <a href="http://www.alphaskins.com/ademos.php?d=1000' +
      '">more demo programs</a>'
  end
  object SliderFocusRect: TsSlider [1]
    Tag = 5
    Left = 202
    Top = 224
    Width = 35
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Focus rectangle on buttons:'
    ImageIndexOff = 0
    ImageIndexOn = 0
    FontOn.Charset = DEFAULT_CHARSET
    FontOn.Color = clWindowText
    FontOn.Height = -16
    FontOn.Name = 'Wingdings'
    FontOn.Style = []
    ContentPlacing = scpBackground
    ThumbSizeInPercent = 45
    UseSymbols = True
    OnSliderChange = SliderFocusRectSliderChange
  end
  object SkinsDirectoryEdit: TsDirectoryEdit [2]
    Tag = 5
    Left = 296
    Top = 26
    Width = 281
    Height = 21
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 255
    ParentFont = False
    TabOrder = 0
    OnChange = SkinsDirectoryEditChange
    CheckOnExit = True
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = 'Path to external skins: (*.asz files)'
    SkinData.SkinSection = 'EDIT'
    SkinData.OuterEffects.Visibility = ovAlways
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    Root = 'rfDesktop'
    ShowRootBtns = True
  end
  object SliderExtBorders: TsSlider [3]
    Tag = 5
    Left = 202
    Top = 128
    Width = 35
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Extended Borders mode:'
    ImageIndexOff = 0
    ImageIndexOn = 0
    FontOn.Charset = DEFAULT_CHARSET
    FontOn.Color = clWindowText
    FontOn.Height = -16
    FontOn.Name = 'Wingdings'
    FontOn.Style = []
    ContentPlacing = scpBackground
    ThumbSizeInPercent = 45
    UseSymbols = True
    OnSliderChange = SliderExtBordersSliderChange
  end
  object sGroupBox1: TsGroupBox [4]
    Left = 296
    Top = 84
    Width = 281
    Height = 213
    Caption = 'Skin colorization'
    TabOrder = 1
    CaptionLayout = clTopCenter
    CaptionMargin.Left = 6
    CaptionMargin.Top = 3
    CaptionMargin.Right = 6
    CaptionMargin.Bottom = 3
    SkinData.SkinSection = 'PANEL_LOW'
    SkinData.OuterEffects.Visibility = ovAlways
    CaptionSkin = 'PROGRESSH'
    Images = MainForm.ImageList16
    ImageIndex = 3
    object sLabel2: TsLabel
      Left = 234
      Top = 98
      Width = 6
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '0'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabel1: TsLabel
      Left = 234
      Top = 38
      Width = 6
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '0'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabel3: TsLabel
      Left = 234
      Top = 154
      Width = 6
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '0'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabel4: TsLabel
      Left = 51
      Top = 63
      Width = 6
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '0'
      Enabled = False
    end
    object sLabel5: TsLabel
      Left = 214
      Top = 63
      Width = 18
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '360'
      Enabled = False
    end
    object sLabel6: TsLabel
      Left = 42
      Top = 119
      Width = 22
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '-100'
      Enabled = False
    end
    object sLabel7: TsLabel
      Left = 214
      Top = 119
      Width = 18
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '100'
      Enabled = False
    end
    object sLabel8: TsLabel
      Left = 112
      Top = 63
      Width = 54
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'HUE Offset'
    end
    object sLabel9: TsLabel
      Left = 113
      Top = 119
      Width = 50
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'Saturation'
    end
    object sLabel10: TsLabel
      Left = 44
      Top = 175
      Width = 16
      Height = 13
      Alignment = taCenter
      SkinManager = MainForm.sSkinManager1
      Caption = '-50'
      Enabled = False
    end
    object sLabel11: TsLabel
      Left = 214
      Top = 175
      Width = 12
      Height = 13
      Alignment = taCenter
      SkinManager = MainForm.sSkinManager1
      Caption = '50'
      Enabled = False
    end
    object sLabel12: TsLabel
      Left = 112
      Top = 175
      Width = 50
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'Brightness'
    end
    object sTrackBar2: TsTrackBar
      Tag = 5
      Left = 40
      Top = 93
      Width = 193
      Height = 24
      Max = 100
      Min = -100
      PageSize = 24
      Frequency = 20
      TabOrder = 1
      TickStyle = tsNone
      OnChange = sTrackBar2Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
      ShowProgressFrom = -100
    end
    object sTrackBar1: TsTrackBar
      Tag = 5
      Left = 40
      Top = 33
      Width = 193
      Height = 28
      Max = 360
      PageSize = 24
      Frequency = 36
      TabOrder = 0
      TickStyle = tsNone
      OnChange = sTrackBar1Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      OnSkinPaint = sTrackBar1SkinPaint
      BarOffsetV = 0
      BarOffsetH = 0
    end
    object sTrackBar3: TsTrackBar
      Tag = 5
      Left = 40
      Top = 149
      Width = 193
      Height = 24
      Max = 100
      Min = -100
      PageSize = 24
      Frequency = 20
      TabOrder = 2
      TickStyle = tsNone
      OnChange = sTrackBar3Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
      ShowProgressFrom = -100
    end
  end
  object SliderShiftContent: TsSlider [5]
    Tag = 5
    Left = 202
    Top = 256
    Width = 35
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Shift content when pressed:'
    ImageIndexOff = 0
    ImageIndexOn = 0
    FontOn.Charset = DEFAULT_CHARSET
    FontOn.Color = clWindowText
    FontOn.Height = -16
    FontOn.Name = 'Wingdings'
    FontOn.Style = []
    ContentPlacing = scpBackground
    ThumbSizeInPercent = 45
    UseSymbols = True
    OnSliderChange = SliderShiftContentSliderChange
  end
  object SliderDiscolor: TsSlider [6]
    Tag = 5
    Left = 202
    Top = 96
    Width = 35
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Discolored glyphs:'
    ImageIndexOff = 0
    ImageIndexOn = 0
    FontOn.Charset = DEFAULT_CHARSET
    FontOn.Color = clWindowText
    FontOn.Height = -16
    FontOn.Name = 'Wingdings'
    FontOn.Style = []
    ContentPlacing = scpBackground
    ThumbSizeInPercent = 45
    UseSymbols = True
    OnSliderChange = SliderDiscolorSliderChange
  end
  object SliderNonClient: TsSlider [7]
    Tag = 5
    Left = 202
    Top = 160
    Width = 35
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Draw non-client area:'
    ImageIndexOff = 0
    ImageIndexOn = 0
    FontOn.Charset = DEFAULT_CHARSET
    FontOn.Color = clWindowText
    FontOn.Height = -16
    FontOn.Name = 'Wingdings'
    FontOn.Style = []
    ContentPlacing = scpBackground
    ThumbSizeInPercent = 45
    UseSymbols = True
    OnSliderChange = SliderNonClientSliderChange
  end
  object SliderChangeColors: TsSlider [8]
    Tag = 5
    Left = 202
    Top = 288
    Width = 35
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Change system colors:'
    ImageIndexOff = 0
    ImageIndexOn = 0
    FontOn.Charset = DEFAULT_CHARSET
    FontOn.Color = clWindowText
    FontOn.Height = -16
    FontOn.Name = 'Wingdings'
    FontOn.Style = []
    ContentPlacing = scpBackground
    ThumbSizeInPercent = 45
    UseSymbols = True
    OnSliderChange = SliderChangeColorsSliderChange
  end
  object SliderBlendOnMove: TsSlider [9]
    Tag = 5
    Left = 202
    Top = 192
    Width = 35
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Blend a form when moved:'
    ImageIndexOff = 0
    ImageIndexOn = 0
    FontOn.Charset = DEFAULT_CHARSET
    FontOn.Color = clWindowText
    FontOn.Height = -16
    FontOn.Name = 'Wingdings'
    FontOn.Style = []
    ContentPlacing = scpBackground
    ThumbSizeInPercent = 45
    UseSymbols = True
    OnSliderChange = SliderBlendOnMoveSliderChange
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 272
    Top = 16
  end
end
