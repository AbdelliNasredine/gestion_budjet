inherited Frame_Scrolls: TFrame_Scrolls
  Width = 620
  Height = 389
  object sGauge1: TsGauge [0]
    Left = 67
    Top = 28
    Width = 233
    Height = 23
    SkinData.SkinSection = 'GAUGE'
    ForeColor = clBlack
    MaxValue = 100
    Progress = 47
    Suffix = '%'
  end
  object sGauge2: TsGauge [1]
    Left = 340
    Top = 28
    Width = 32
    Height = 200
    Kind = gkVerticalBar
    SkinData.SkinSection = 'GAUGE'
    ForeColor = clBlack
    MaxValue = 100
    Progress = 47
    Suffix = '%'
  end
  object sLabel1: TsLabel [2]
    Left = 65
    Top = 110
    Width = 153
    Height = 13
    Caption = '`ShowProgressFrom` property:'
  end
  object sEdit1: TsEdit [3]
    Left = 164
    Top = 323
    Width = 133
    Height = 21
    TabOrder = 12
    Text = '%'
    OnChange = sEdit1Change
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Active = True
    BoundLabel.Caption = 'Gauge suffix:'
  end
  object sCheckBox3: TsCheckBox [4]
    Left = 344
    Top = 304
    Width = 84
    Height = 20
    Caption = 'Custom slider'
    TabOrder = 13
    OnClick = sCheckBox3Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox2: TsCheckBox [5]
    Left = 344
    Top = 278
    Width = 69
    Height = 20
    Caption = 'Show text'
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = sCheckBox2Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sProgressBar2: TsProgressBar [6]
    Left = 400
    Top = 28
    Width = 32
    Height = 200
    BorderWidth = 1
    Orientation = pbVertical
    Position = 47
    TabOrder = 7
    SkinData.SkinSection = 'GAUGE'
  end
  object sProgressBar1: TsProgressBar [7]
    Left = 67
    Top = 165
    Width = 233
    Height = 25
    BorderWidth = 1
    Position = 47
    TabOrder = 5
    SkinData.SkinSection = 'GAUGE'
    Style = pbstMarquee
    MarqueeInterval = 50
  end
  object sCheckBox4: TsCheckBox [8]
    Left = 344
    Top = 332
    Width = 136
    Height = 20
    Caption = 'Show TrackBar progress'
    Checked = True
    State = cbChecked
    TabOrder = 14
    OnClick = sCheckBox4Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox6: TsCheckBox [9]
    Left = 488
    Top = 278
    Width = 83
    Height = 20
    Caption = 'Custom draw'
    Checked = True
    State = cbChecked
    TabOrder = 16
    OnClick = sCheckBox6Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sScrollBar3: TsScrollBar [10]
    Tag = 5
    Left = 459
    Top = 28
    Width = 16
    Height = 200
    Kind = sbVertical
    Max = 120
    PageSize = 20
    Position = 47
    TabOrder = 2
    OnChange = sScrollBar2Change
    SkinManager = MainForm.sSkinManager1
  end
  object sComboBox2: TsComboBox [11]
    Tag = 5
    Left = 164
    Top = 291
    Width = 133
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'Progress SkinSection:'
    VerticalAlignment = taAlignTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 15
    ItemIndex = -1
    ParentFont = False
    TabOrder = 4
    OnChange = sComboBox2Change
    Items.Strings = (
      'PANEL'
      'BUTTON'
      'GROUPBOX'
      'DIALOG'
      'PROGRESSH'
      'SPEEDBUTTON'
      'PROGRESSV')
  end
  object sCheckBox1: TsCheckBox [12]
    Left = 344
    Top = 252
    Width = 65
    Height = 20
    Caption = 'Animated'
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = sCheckBox1Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sTrackBar2: TsTrackBar [13]
    Tag = 5
    Left = 495
    Top = 28
    Width = 40
    Height = 200
    Max = 100
    Orientation = trVertical
    Frequency = 10
    Position = 47
    TabOrder = 6
    TickStyle = tsNone
    OnChange = sTrackBar1Change
    SkinData.SkinSection = 'TRACKBAR'
    Reversed = True
    ShowProgress = True
    OnSkinPaint = sTrackBar2SkinPaint
    BarOffsetV = 0
    BarOffsetH = 0
  end
  object sCheckBox5: TsCheckBox [14]
    Left = 488
    Top = 252
    Width = 66
    Height = 20
    Caption = 'Reversed'
    Checked = True
    State = cbChecked
    TabOrder = 15
    OnClick = sCheckBox5Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sRadioButton1: TsRadioButton [15]
    Left = 108
    Top = 212
    Width = 53
    Height = 20
    Caption = 'Normal'
    TabOrder = 8
    OnClick = sRadioButton1Click
  end
  object sRadioButton2: TsRadioButton [16]
    Left = 180
    Top = 212
    Width = 62
    Height = 20
    Caption = 'Marquee'
    Checked = True
    TabOrder = 9
    TabStop = True
    OnClick = sRadioButton2Click
  end
  object sTrackBar1: TsTrackBar [17]
    Tag = 5
    Left = 67
    Top = 68
    Width = 233
    Height = 31
    Max = 100
    Frequency = 10
    Position = 47
    TabOrder = 0
    OnChange = sTrackBar1Change
    SkinData.SkinSection = 'TRACKBAR'
    ShowProgress = True
    BarOffsetV = 0
    BarOffsetH = 0
  end
  object sScrollBar1: TsScrollBar [18]
    Tag = 5
    Left = 67
    Top = 127
    Width = 233
    Height = 16
    LargeChange = 10
    Max = 120
    PageSize = 20
    TabOrder = 1
    OnChange = sScrollBar1Change
    SkinManager = MainForm.sSkinManager1
  end
  object sComboBox1: TsComboBox [19]
    Tag = 5
    Left = 164
    Top = 259
    Width = 133
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection property:'
    VerticalAlignment = taAlignTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 15
    ItemIndex = -1
    ParentFont = False
    TabOrder = 3
    OnChange = sComboBox1Change
    Items.Strings = (
      'GAUGE'
      'TRANSPARENT'
      'PANEL_LOW'
      'PANEL'
      'BUTTON'
      'SPEEDBUTTON'
      'GROUPBOX'
      'EDIT')
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 576
    Top = 16
  end
end
