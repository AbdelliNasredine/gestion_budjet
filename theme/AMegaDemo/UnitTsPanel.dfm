inherited FrameTsPanel: TFrameTsPanel
  object sComboBox1: TsComboBox [0]
    Left = 488
    Top = 309
    Width = 167
    Height = 21
    TabOrder = 4
    OnChange = sComboBox1Change
    TextHint = 'Change skin section'
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    BoundLabel.Layout = sclTopLeft
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    ShowFocus = False
    Items.Strings = (
      'PROGRESSH'
      'EDIT'
      'PANEL'
      'PANEL_LOW'
      'GROUPBOX'
      'TRANSPARENT')
    Style = csDropDownList
  end
  object sGroupBox3: TsGroupBox [1]
    Left = 50
    Top = 343
    Width = 401
    Height = 138
    Caption = '`SideShadow`'
    TabOrder = 5
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sTrackEdit1: TsTrackEdit
      Left = 74
      Top = 52
      Width = 48
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '48'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Blend`:'
      Increment = 1.000000000000000000
      MaxValue = 255.000000000000000000
      Value = 48.000000000000000000
    end
    object sRadioGroup2: TsRadioGroup
      Left = 160
      Top = 29
      Width = 209
      Height = 81
      Caption = '`Position`:'
      Enabled = False
      TabOrder = 2
      Columns = 2
      ItemIndex = 1
      ContentVOffset = 6
      ContentHOffset = 10
      Items.Strings = (
        '`asLeft`'
        '`asTop`'
        '`asRight`'
        '`asBottom`')
      OnChange = sRadioGroup2Change
    end
    object sTrackEdit2: TsTrackEdit
      Left = 74
      Top = 80
      Width = 48
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '6'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Size`:'
      Increment = 1.000000000000000000
      MaxValue = 50.000000000000000000
      Value = 6.000000000000000000
    end
  end
  object sCheckBox2: TsCheckBox [2]
    Left = 58
    Top = 312
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox2Click
    ShowFocus = False
  end
  object sPanel1: TsPanel [3]
    Tag = 5
    Left = 50
    Top = 50
    Width = 401
    Height = 211
    SkinData.OuterEffects.Visibility = ovAlways
    OnPaint = sPanel1Paint
    Caption = 'sPanel1'
    SideShadow.Side = asTop
    TabOrder = 0
  end
  object sGroupBox1: TsGroupBox [4]
    Left = 488
    Top = 50
    Width = 167
    Height = 185
    Caption = '`SkinData.CustomColor`'
    TabOrder = 1
    object sSpeedButton2: TsSpeedButton
      Left = 34
      Top = 43
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
      Height = 25
      AutoSize = False
      TabOrder = 0
      OnChange = sColorBox2Change
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
      OnColorPreview = sColorBox2ColorPreview
    end
  end
  object sRadioGroup1: TsRadioGroup [5]
    Left = 488
    Top = 343
    Width = 167
    Height = 138
    Caption = '`BevelOuter`'
    TabOrder = 6
    ItemIndex = 2
    ContentVOffset = 8
    ContentHOffset = 10
    Items.Strings = (
      '`bvNone`'
      '`bvLowered`'
      '`bvRaised`'
      '`bvSpace`')
    OnChange = sRadioGroup1Change
  end
  object sCheckBox1: TsCheckBox [6]
    Left = 232
    Top = 312
    Width = 147
    Height = 17
    Caption = 'Use the `OnPaint` event'
    TabOrder = 3
    OnClick = sCheckBox1Click
  end
end
