inherited FrameTsMonthCalendar: TFrameTsMonthCalendar
  object sLabel1: TsLabel [0]
    Left = 172
    Top = 256
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Caption = 'CalendarDate:'
  end
  object sLabel2: TsLabel [1]
    Left = 252
    Top = 256
    Width = 16
    Height = 16
    Caption = '    '
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
  end
  object sColorBox1: TsColorBox [2]
    Left = 553
    Top = 495
    Width = 76
    Height = 22
    BoundLabel.Active = True
    BoundLabel.Caption = 'WeekendColor:'
    Style = [cbCustomColor]
    ShowColorName = False
    Selected = clRed
    PopupMode = pmPickColor
    TabOrder = 7
    OnChange = sColorBox1Change
  end
  object sComboBox1: TsComboBox [3]
    Left = 252
    Top = 298
    Width = 167
    Height = 21
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection:'
    BoundLabel.Layout = sclTopLeft
    VerticalAlignment = taVerticalCenter
    Style = csDropDownList
    ItemIndex = -1
    TabOrder = 2
    OnChange = sComboBox1Change
    Items.Strings = (
      'PROGRESSH'
      'EDIT'
      'PANEL'
      'PANEL_LOW'
      'GROUPBOX'
      'TRANSPARENT')
  end
  object sMonthCalendar1: TsMonthCalendar [4]
    Tag = 5
    Left = 68
    Top = 22
    Width = 351
    Height = 219
    SkinData.OuterEffects.Visibility = ovAlways
    BevelWidth = 1
    Caption = ' '
    TabOrder = 0
    OnChange = sMonthCalendar1Change
    OnAcceptDate = sMonthCalendar1AcceptDate
    OnGetCellParams = sMonthCalendar1GetCellParams
    TitleHeight = 24
    TitleBtnsWidth = 24
    ShowTodayBtn = True
    ShowWeeks = True
    DimUnacceptedCells = True
  end
  object sRadioGroup1: TsRadioGroup [5]
    Left = 68
    Top = 376
    Width = 145
    Height = 141
    Caption = 'BevelOuter'
    TabOrder = 3
    ItemIndex = 2
    ContentVOffset = 8
    ContentHOffset = 16
    Items.Strings = (
      'bvNone'
      'bvLowered'
      'bvRaised'
      'bvSpace')
    OnChange = sRadioGroup1Change
  end
  object sCheckBox10: TsCheckBox [6]
    Left = 478
    Top = 202
    Width = 150
    Height = 17
    Caption = 'ShowYearBtns'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 15
    OnClick = sCheckBox10Click
  end
  object sTrackEdit2: TsTrackEdit [7]
    Left = 553
    Top = 464
    Width = 76
    Height = 21
    TabOrder = 19
    Text = '24'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'TitleBtnsWidth:'
    Increment = 1.000000000000000000
    MaxValue = 64.000000000000000000
    MinValue = 14.000000000000000000
    Value = 24.000000000000000000
  end
  object sCheckBox12: TsCheckBox [8]
    Left = 479
    Top = 352
    Width = 150
    Height = 17
    Caption = 'TravellingSelection'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 17
    OnClick = sCheckBox12Click
  end
  object sCheckBox8: TsCheckBox [9]
    Left = 478
    Top = 170
    Width = 150
    Height = 17
    Caption = 'ShowTodayBtn'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 13
    OnClick = sCheckBox8Click
  end
  object sCheckBox9: TsCheckBox [10]
    Left = 478
    Top = 139
    Width = 150
    Height = 17
    Caption = 'ShowWeeks'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 14
    OnClick = sCheckBox9Click
  end
  object sCheckBox1: TsCheckBox [11]
    Left = 478
    Top = 48
    Width = 150
    Height = 17
    Caption = 'Animated'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox1Click
  end
  object sTrackEdit1: TsTrackEdit [12]
    Left = 553
    Top = 433
    Width = 76
    Height = 21
    TabOrder = 8
    Text = '24'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'TitleHeight:'
    Increment = 1.000000000000000000
    MaxValue = 64.000000000000000000
    MinValue = 14.000000000000000000
    Value = 24.000000000000000000
  end
  object sCheckBox11: TsCheckBox [13]
    Left = 478
    Top = 232
    Width = 150
    Height = 17
    Caption = 'ShowMonthBtns'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 16
    OnClick = sCheckBox11Click
  end
  object sCheckBox14: TsCheckBox [14]
    Left = 76
    Top = 340
    Width = 87
    Height = 17
    Caption = 'Colorize cells'
    Checked = True
    State = cbChecked
    TabOrder = 20
    OnClick = sCheckBox14Click
  end
  object sCheckBox6: TsCheckBox [15]
    Left = 478
    Top = 322
    Width = 150
    Height = 17
    Caption = 'ShowSelectAlways'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = sCheckBox6Click
  end
  object sCheckBox7: TsCheckBox [16]
    Left = 478
    Top = 108
    Width = 150
    Height = 17
    Caption = 'ShowTitle'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 12
    OnClick = sCheckBox7Click
  end
  object sGroupBox2: TsGroupBox [17]
    Left = 68
    Top = 531
    Width = 351
    Height = 94
    Caption = 'Date limits'
    TabOrder = 21
    object sDateEdit1: TsDateEdit
      Left = 58
      Top = 28
      Width = 98
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnChange = sDateEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Min:'
    end
    object sDateEdit2: TsDateEdit
      Left = 58
      Top = 55
      Width = 98
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnChange = sDateEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Max:'
    end
    object sCheckBox15: TsCheckBox
      Left = 171
      Top = 31
      Width = 164
      Height = 17
      Caption = 'Set custom limits'
      AutoSize = False
      TabOrder = 2
      OnClick = sCheckBox15Click
    end
    object sCheckBox16: TsCheckBox
      Left = 171
      Top = 57
      Width = 164
      Height = 17
      Caption = 'DimUnacceptedCells'
      AutoSize = False
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox16Click
    end
  end
  object sGroupBox1: TsGroupBox [18]
    Left = 252
    Top = 332
    Width = 167
    Height = 185
    Caption = 'CustomColor'
    TabOrder = 4
    object sSpeedButton2: TsSpeedButton
      Left = 34
      Top = 42
      Width = 101
      Height = 25
      Caption = 'Red'
      Margin = 12
      OnClick = sSpeedButton2Click
      Images = FormData.CharList16
      Alignment = taLeftJustify
      TextAlignment = taLeftJustify
      ImageIndex = 1
    end
    object sSpeedButton5: TsSpeedButton
      Left = 34
      Top = 106
      Width = 101
      Height = 25
      Caption = 'Yellow'
      Margin = 12
      OnClick = sSpeedButton5Click
      Images = FormData.CharList16
      Alignment = taLeftJustify
      TextAlignment = taLeftJustify
      ImageIndex = 3
    end
    object sSpeedButton4: TsSpeedButton
      Left = 34
      Top = 74
      Width = 101
      Height = 25
      Caption = 'Green'
      Margin = 12
      OnClick = sSpeedButton4Click
      Images = FormData.CharList16
      Alignment = taLeftJustify
      TextAlignment = taLeftJustify
      ImageIndex = 2
    end
    object sSpeedButton1: TsSpeedButton
      Left = 104
      Top = 138
      Width = 31
      Height = 25
      Enabled = False
      OnClick = sSpeedButton1Click
      Images = FormData.CharList16
      ImageIndex = 4
    end
    object sColorBox2: TsColorBox
      Left = 34
      Top = 138
      Width = 67
      Height = 22
      Style = [cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
      TabOrder = 0
      OnChange = sColorBox2Change
    end
  end
  object sCheckBox5: TsCheckBox [19]
    Left = 478
    Top = 262
    Width = 150
    Height = 17
    Caption = 'ShowCurrentDate'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = sCheckBox5Click
  end
  object sCheckBox13: TsCheckBox [20]
    Left = 479
    Top = 382
    Width = 150
    Height = 17
    Caption = 'UseCurrentDate'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 18
    OnClick = sCheckBox13Click
  end
  object sCheckBox2: TsCheckBox [21]
    Left = 76
    Top = 312
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox2Click
  end
  object sCheckBox3: TsCheckBox [22]
    Left = 478
    Top = 78
    Width = 150
    Height = 17
    Caption = 'ReadOnly'
    AutoSize = False
    TabOrder = 6
    OnClick = sCheckBox3Click
  end
  object sCheckBox4: TsCheckBox [23]
    Left = 478
    Top = 292
    Width = 150
    Height = 17
    Caption = 'AllowChangeMonth'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = sCheckBox4Click
  end
end
