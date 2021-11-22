inherited Frame_Scrolls: TFrame_Scrolls
  Width = 706
  Height = 415
  object sGauge1: TsGauge [0]
    Left = 140
    Top = 32
    Width = 216
    Height = 23
    ForeColor = clBlack
    Progress = 47
    Suffix = ' percents'
  end
  object sGauge2: TsGauge [1]
    Left = 43
    Top = 32
    Width = 32
    Height = 189
    Kind = gkVerticalBar
    ForeColor = clBlack
    Progress = 47
    Suffix = '%'
  end
  object sLabel1: TsLabel [2]
    Left = 414
    Top = 67
    Width = 153
    Height = 13
    Caption = '`ShowProgressFrom` property:'
  end
  object sComboBox2: TsComboBox [3]
    Tag = 5
    Left = 256
    Top = 171
    Width = 100
    Height = 21
    TabOrder = 4
    OnChange = sComboBox2Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Progress SkinSection:'
    Items.Strings = (
      'PANEL'
      'BUTTON'
      'GROUPBOX'
      'DIALOG'
      'PROGRESSH'
      'SPEEDBUTTON'
      'PROGRESSV')
    ItemIndex = -1
  end
  object sGroupBox1: TsGroupBox [4]
    Left = 414
    Top = 120
    Width = 257
    Height = 165
    Caption = 'Some trackbar options'
    TabOrder = 12
    object sCheckBox5: TsCheckBox
      Left = 53
      Top = 33
      Width = 189
      Height = 17
      Caption = 'Reversed'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox5Click
    end
    object sCheckBox6: TsCheckBox
      Left = 53
      Top = 61
      Width = 189
      Height = 17
      Caption = 'Custom draw'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox6Click
    end
    object sCheckBox3: TsCheckBox
      Left = 53
      Top = 90
      Width = 189
      Height = 17
      Caption = 'Custom slider'
      AutoSize = False
      TabOrder = 2
      OnClick = sCheckBox3Click
    end
    object sTrackBar2: TsTrackBar
      Tag = 5
      Left = 3
      Top = 19
      Width = 48
      Height = 134
      Max = 100
      Orientation = trVertical
      Frequency = 10
      Position = 47
      TabOrder = 3
      TickStyle = tsNone
      OnChange = sTrackBar1Change
      Reversed = True
      ShowProgress = True
      OnSkinPaint = sTrackBar2SkinPaint
      BarOffsetH = 6
    end
    object sCheckBox4: TsCheckBox
      Left = 53
      Top = 109
      Width = 189
      Height = 39
      Caption = 'Show TrackBar progress'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox4Click
      WordWrap = True
    end
  end
  object sCheckBox2: TsCheckBox [5]
    Left = 257
    Top = 250
    Width = 81
    Height = 20
    Caption = 'Show text'
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = sCheckBox2Click
  end
  object sScrollBar1: TsScrollBar [6]
    Tag = 5
    Left = 414
    Top = 86
    Width = 257
    Height = 16
    LargeChange = 10
    Max = 120
    PageSize = 20
    TabOrder = 1
    OnChange = sScrollBar1Change
    SkinManager = MainForm.sSkinManager1
  end
  object sScrollBar3: TsScrollBar [7]
    Tag = 5
    Left = 379
    Top = 32
    Width = 16
    Height = 253
    Kind = sbVertical
    Max = 120
    PageSize = 20
    Position = 47
    TabOrder = 2
    OnChange = sScrollBar2Change
    SkinManager = MainForm.sSkinManager1
  end
  object sRadioButton2: TsRadioButton [8]
    Left = 249
    Top = 100
    Width = 71
    Height = 20
    Caption = 'Marquee'
    TabOrder = 8
    OnClick = sRadioButton2Click
  end
  object sGroupBox2: TsGroupBox [9]
    Left = 43
    Top = 308
    Width = 628
    Height = 69
    Caption = 'TsRangeSelector'
    TabOrder = 13
    object sRangeSelector1: TsRangeSelector
      Left = 61
      Top = 27
      Width = 233
      Height = 35
      TabOrder = 0
      Max = 100
      Frequency = 10
      Position2 = 90
      Position1 = 20
    end
    object sComboBox3: TsComboBox
      Left = 430
      Top = 27
      Width = 145
      Height = 21
      TabOrder = 1
      OnChange = sComboBox3Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Changing mode:'
      Items.Strings = (
        'cmDepended'
        'cmUndepended'
        'cmIgnoredSecond')
      ItemIndex = 0
      Style = csDropDownList
      Text = 'cmDepended'
    end
  end
  object sTrackBar1: TsTrackBar [10]
    Tag = 5
    Left = 414
    Top = 30
    Width = 257
    Height = 31
    Max = 100
    Frequency = 10
    Position = 47
    TabOrder = 0
    OnChange = sTrackBar1Change
    ShowProgress = True
  end
  object sProgressBar2: TsProgressBar [11]
    Left = 88
    Top = 32
    Width = 20
    Height = 189
    BorderWidth = 1
    Orientation = pbVertical
    Position = 47
    TabOrder = 6
  end
  object sEdit1: TsEdit [12]
    Left = 256
    Top = 203
    Width = 100
    Height = 21
    TabOrder = 11
    Text = ' percents'
    OnChange = sEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Gauge suffix:'
  end
  object sProgressBar1: TsProgressBar [13]
    Left = 140
    Top = 69
    Width = 216
    Height = 25
    BorderWidth = 1
    Position = 47
    MarqueeInterval = 50
    TabOrder = 5
  end
  object sCheckBox1: TsCheckBox [14]
    Left = 159
    Top = 250
    Width = 78
    Height = 20
    Caption = 'Animated'
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = sCheckBox1Click
  end
  object sComboBox1: TsComboBox [15]
    Tag = 5
    Left = 256
    Top = 139
    Width = 100
    Height = 21
    TabOrder = 3
    OnChange = sComboBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection property:'
    Items.Strings = (
      'GAUGE'
      'TRANSPARENT'
      'PANEL_LOW'
      'PANEL'
      'BUTTON'
      'SPEEDBUTTON'
      'GROUPBOX'
      'EDIT')
    ItemIndex = -1
  end
  object sRadioButton1: TsRadioButton [16]
    Left = 177
    Top = 100
    Width = 62
    Height = 20
    Caption = 'Normal'
    Checked = True
    TabOrder = 7
    TabStop = True
    OnClick = sRadioButton1Click
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 580
    Top = 4
  end
end
