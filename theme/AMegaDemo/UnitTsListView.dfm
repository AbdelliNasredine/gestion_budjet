inherited FrameTsListView: TFrameTsListView
  object sSpeedButton1: TsSpeedButton [0]
    Left = 610
    Top = 170
    Width = 31
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 540
    Top = 74
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
  object sSpeedButton4: TsSpeedButton [2]
    Left = 540
    Top = 106
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
  object sSpeedButton5: TsSpeedButton [3]
    Left = 540
    Top = 138
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
  object sGroupBox10: TsGroupBox [4]
    Left = 50
    Top = 272
    Width = 203
    Height = 101
    Caption = '`ViewStyle`'
    TabOrder = 2
    ImageIndex = 6
    object sRadioButton21: TsRadioButton
      Left = 19
      Top = 32
      Width = 76
      Height = 17
      Caption = '`vsIcon`'
      TabOrder = 0
      OnClick = sRadioButton21Click
      AutoSize = False
    end
    object sRadioButton22: TsRadioButton
      Tag = 2
      Left = 108
      Top = 32
      Width = 90
      Height = 17
      HelpContext = 1
      Caption = '`vsList`'
      TabOrder = 1
      OnClick = sRadioButton21Click
      AutoSize = False
    end
    object sRadioButton23: TsRadioButton
      Tag = 3
      Left = 19
      Top = 62
      Width = 76
      Height = 17
      HelpContext = 2
      Caption = '`vsReport`'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton21Click
      AutoSize = False
    end
    object sRadioButton24: TsRadioButton
      Tag = 1
      Left = 108
      Top = 62
      Width = 90
      Height = 17
      HelpContext = 3
      Caption = '`vsSmallIcon`'
      TabOrder = 3
      OnClick = sRadioButton21Click
      AutoSize = False
    end
  end
  object sButton1: TsButton [5]
    Left = 592
    Top = 317
    Width = 105
    Height = 51
    Caption = 'Add 1000 items'
    TabOrder = 11
    OnClick = sButton1Click
  end
  object sCheckBox1: TsCheckBox [6]
    Left = 280
    Top = 289
    Width = 140
    Height = 17
    Caption = 'Show glyphs'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox1Click
  end
  object sCheckBox3: TsCheckBox [7]
    Left = 280
    Top = 320
    Width = 140
    Height = 17
    Caption = '`Checkboxes`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox3Click
  end
  object sCheckBox4: TsCheckBox [8]
    Left = 437
    Top = 257
    Width = 130
    Height = 17
    Caption = '`GridLines`'
    AutoSize = False
    TabOrder = 7
    OnClick = sCheckBox4Click
  end
  object sCheckBox6: TsCheckBox [9]
    Left = 280
    Top = 350
    Width = 140
    Height = 17
    Caption = '`RowSelect`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = sCheckBox6Click
  end
  object sListView1: TsListView [10]
    Left = 50
    Top = 50
    Width = 453
    Height = 145
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.Caption = '`<b><u>BoundLabel</u></b>` property'
    BoundLabel.Layout = sclTopLeft
    Checkboxes = True
    Columns = <
      item
        Caption = 'Column 1'
        ImageIndex = 0
        Width = 200
      end
      item
        Caption = 'Column 2'
        ImageIndex = 1
        Width = 100
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'Column 3'
        ImageIndex = 6
      end>
    DragMode = dmAutomatic
    FullDrag = True
    HideSelection = False
    LargeImages = FormData.CharList16
    MultiSelect = True
    RowSelect = True
    ShowWorkAreas = True
    SmallImages = FormData.CharList16
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = sListView1ColumnClick
    OnCustomDrawItem = sListView1CustomDrawItem
  end
  object sCheckBox9: TsCheckBox [11]
    Left = 437
    Top = 350
    Width = 130
    Height = 17
    Caption = 'Show sort arrows'
    AutoSize = False
    TabOrder = 10
    OnClick = sCheckBox9Click
  end
  object sColorBox2: TsColorBox [12]
    Left = 540
    Top = 170
    Width = 63
    Height = 25
    AutoSize = False
    TabOrder = 1
    OnChange = sColorBox2Change
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
  object sCheckBox2: TsCheckBox [13]
    Left = 280
    Top = 257
    Width = 140
    Height = 17
    Caption = 'Allow outer effects'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox2Click
  end
  object sGroupBox1: TsGroupBox [14]
    Left = 50
    Top = 400
    Width = 647
    Height = 139
    Caption = 'Customize scrolls'
    TabOrder = 12
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    object sGroupBox5: TsGroupBox
      Left = 26
      Top = 26
      Width = 295
      Height = 92
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox5CheckBoxChanged
      object sCheckBox5: TsCheckBox
        Left = 21
        Top = 27
        Width = 226
        Height = 17
        Caption = 'Default size defined in the TsSkinManager'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox5Click
      end
      object sTrackBar3: TsTrackBar
        Left = 12
        Top = 55
        Width = 269
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 16
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar3Change
        ShowProgress = True
      end
    end
    object sGroupBox6: TsGroupBox
      Left = 344
      Top = 26
      Width = 281
      Height = 92
      Caption = 'Default scroll width'
      TabOrder = 1
      CaptionLayout = clTopCenter
      AutoChildrenStates = csAsNotChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sStickyLabel3: TsStickyLabel
        Left = 71
        Top = 34
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vertical:'
        Enabled = False
        AttachTo = sTrackBar4
      end
      object sStickyLabel4: TsStickyLabel
        Left = 58
        Top = 62
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Horizontal:'
        Enabled = False
        AttachTo = sTrackBar5
      end
      object sTrackBar4: TsTrackBar
        Left = 112
        Top = 27
        Width = 148
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 24
        TabOrder = 0
        TickStyle = tsNone
        OnChange = sTrackBar4Change
        ShowProgress = True
      end
      object sTrackBar5: TsTrackBar
        Left = 112
        Top = 55
        Width = 148
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 12
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar5Change
        ShowProgress = True
      end
    end
  end
  object sCheckBox8: TsCheckBox [15]
    Left = 437
    Top = 318
    Width = 130
    Height = 17
    Caption = 'Colored rows'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = sCheckBox8Click
  end
  object sCheckBox7: TsCheckBox [16]
    Left = 437
    Top = 288
    Width = 130
    Height = 17
    Caption = '`HotTrack`'
    AutoSize = False
    TabOrder = 8
    OnClick = sCheckBox7Click
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 12
  end
end
