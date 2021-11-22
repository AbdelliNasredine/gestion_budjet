inherited FrameTsRollOutPanel: TFrameTsRollOutPanel
  Width = 814
  object sTrackEdit1: TsTrackEdit [0]
    Left = 120
    Top = 518
    Width = 125
    Height = 21
    TabOrder = 3
    Text = '28'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'ButtonHeight:'
    Increment = 1.000000000000000000
    MaxValue = 64.000000000000000000
    MinValue = 16.000000000000000000
    Value = 28.000000000000000000
  end
  object sCheckBox1: TsCheckBox [1]
    Left = 277
    Top = 447
    Width = 130
    Height = 18
    Caption = 'Collapsed'
    AutoSize = False
    TabOrder = 4
    OnClick = sCheckBox1Click
  end
  object sCheckBox2: TsCheckBox [2]
    Left = 277
    Top = 511
    Width = 130
    Height = 18
    Caption = 'ShowArrow'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox2Click
  end
  object sCheckBox3: TsCheckBox [3]
    Left = 277
    Top = 543
    Width = 130
    Height = 18
    Caption = 'DirectionArrow'
    AutoSize = False
    TabOrder = 6
    OnClick = sCheckBox3Click
  end
  object sComboBox2: TsComboBox [4]
    Left = 120
    Top = 444
    Width = 125
    Height = 21
    BoundLabel.Active = True
    BoundLabel.Caption = 'TitleSkin:'
    VerticalAlignment = taVerticalCenter
    Style = csDropDownList
    ItemIndex = -1
    TabOrder = 9
    OnChange = sComboBox2Change
    Items.Strings = (
      ''
      'FORMTITLE'
      'BUTTON'
      'SPEEDBUTTON')
  end
  object sRadioGroup1: TsRadioGroup [5]
    Left = 600
    Top = 256
    Width = 167
    Height = 141
    Caption = 'Placement'
    TabOrder = 10
    ItemIndex = 1
    ContentVOffset = 6
    ContentHOffset = 20
    Items.Strings = (
      'asLeft'
      'asTop'
      'asRight'
      'asBottom')
    OnChange = sRadioGroup1Change
  end
  object sCheckBox6: TsCheckBox [6]
    Left = 277
    Top = 479
    Width = 130
    Height = 18
    Caption = 'Show glyph'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = sCheckBox6Click
  end
  object sCheckBox7: TsCheckBox [7]
    Left = 441
    Top = 447
    Width = 100
    Height = 18
    Caption = 'Animated'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 12
    OnClick = sCheckBox7Click
  end
  object sRadioGroup2: TsRadioGroup [8]
    Left = 600
    Top = 416
    Width = 167
    Height = 173
    Caption = 'Align'
    TabOrder = 13
    ItemIndex = 0
    ContentVOffset = 6
    ContentHOffset = 20
    Items.Strings = (
      'alNone'
      'alTop'
      'alBottom'
      'alLeft'
      'alRight')
    OnChange = sRadioGroup2Change
  end
  object sCheckBox5: TsCheckBox [9]
    Left = 441
    Top = 511
    Width = 100
    Height = 18
    Caption = 'AutoShow'
    AutoSize = False
    TabOrder = 8
    OnClick = sCheckBox5Click
  end
  object sComboBox1: TsComboBox [10]
    Left = 120
    Top = 480
    Width = 125
    Height = 21
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection:'
    VerticalAlignment = taVerticalCenter
    Style = csDropDownList
    ItemIndex = -1
    TabOrder = 1
    OnChange = sComboBox1Change
    Items.Strings = (
      ''
      'PROGRESSH'
      'EDIT'
      'PANEL'
      'PANEL_LOW'
      'GROUPBOX'
      'TRANSPARENT')
  end
  object sGroupBox1: TsGroupBox [11]
    Left = 600
    Top = 50
    Width = 167
    Height = 185
    Caption = 'CustomColor'
    TabOrder = 2
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
      Height = 22
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
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
      TabOrder = 0
      OnChange = sColorBox2Change
    end
  end
  object sCheckBox4: TsCheckBox [12]
    Left = 441
    Top = 479
    Width = 100
    Height = 18
    Caption = 'AutoHide'
    AutoSize = False
    TabOrder = 7
    OnClick = sCheckBox4Click
  end
  object sPanel2: TsPanel [13]
    Tag = 5
    Left = 50
    Top = 50
    Width = 503
    Height = 347
    SkinData.OuterEffects.Visibility = ovAlways
    BevelOuter = bvLowered
    SideShadow.Side = asTop
    TabOrder = 0
    object sRollOutPanel1: TsRollOutPanel
      Left = 108
      Top = 43
      Width = 293
      Height = 250
      Caption = 'sRollOutPanel1'
      SideShadow.Side = asLeft
      TabOrder = 0
      ButtonHeight = 28
      ImageIndexCollapsed = 20
      ImageIndexExpanded = 12
      Images = FormData.CharList16
      object sEdit1: TsEdit
        Left = 52
        Top = 35
        Width = 96
        Height = 21
        TabOrder = 0
        Text = 'sEdit1'
      end
      object sButton1: TsButton
        Left = 164
        Top = 35
        Width = 75
        Height = 21
        Caption = 'sButton1'
        TabOrder = 1
      end
      object sEdit2: TsEdit
        Left = 52
        Top = 67
        Width = 96
        Height = 21
        TabOrder = 2
        Text = 'sEdit2'
      end
      object sButton2: TsButton
        Left = 164
        Top = 67
        Width = 75
        Height = 21
        Caption = 'sButton2'
        TabOrder = 3
      end
      object sMemo1: TsMemo
        Left = 52
        Top = 100
        Width = 187
        Height = 89
        Lines.Strings = (
          'sMemo1')
        TabOrder = 4
        Text = 'sMemo1'
      end
    end
  end
end
