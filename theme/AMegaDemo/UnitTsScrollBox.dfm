inherited FrameTsScrollBox: TFrameTsScrollBox
  object sCheckBox2: TsCheckBox [0]
    Left = 68
    Top = 304
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox2Click
  end
  object sScrollBox1: TsScrollBox [1]
    Tag = 5
    Left = 68
    Top = 58
    Width = 595
    Height = 187
    HorzScrollBar.Range = 1000
    HorzScrollBar.Tracking = True
    VertScrollBar.Range = 500
    VertScrollBar.Tracking = True
    AutoMouseWheel = True
    AutoScroll = False
    TabOrder = 0
    WheelDelta = 360
    SkinData.OuterEffects.Visibility = ovAlways
    object sEdit1: TsEdit
      Left = 96
      Top = 30
      Width = 153
      Height = 49
      AutoSize = False
      TabOrder = 0
      Text = 'sEdit1'
      SkinData.CustomBorder.RadiusTopLeft = 32
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 0
      BoundLabel.Active = True
      BoundLabel.Caption = 'BoundLabel'
      Padding.Left = 12
      VerticalAlignment = taVerticalCenter
    end
    object sEdit2: TsEdit
      Left = 96
      Top = 87
      Width = 153
      Height = 49
      AutoSize = False
      TabOrder = 1
      Text = 'sEdit2'
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 0
      BoundLabel.Active = True
      BoundLabel.Caption = 'BoundLabel'
      Padding.Left = 12
      VerticalAlignment = taVerticalCenter
    end
    object sEdit3: TsEdit
      Left = 96
      Top = 144
      Width = 153
      Height = 49
      AutoSize = False
      TabOrder = 2
      Text = 'sEdit3'
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 0
      BoundLabel.Active = True
      BoundLabel.Caption = 'BoundLabel'
      Padding.Left = 12
      VerticalAlignment = taVerticalCenter
    end
    object sEdit4: TsEdit
      Left = 96
      Top = 201
      Width = 153
      Height = 49
      AutoSize = False
      TabOrder = 3
      Text = 'sEdit4'
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 0
      BoundLabel.Active = True
      BoundLabel.Caption = 'BoundLabel'
      Padding.Left = 12
      VerticalAlignment = taVerticalCenter
    end
    object sEdit5: TsEdit
      Left = 96
      Top = 258
      Width = 153
      Height = 49
      AutoSize = False
      TabOrder = 4
      Text = 'sEdit5'
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 0
      BoundLabel.Active = True
      BoundLabel.Caption = 'BoundLabel'
      Padding.Left = 12
      VerticalAlignment = taVerticalCenter
    end
  end
  object sGroupBox3: TsGroupBox [2]
    Left = 68
    Top = 393
    Width = 177
    Height = 78
    Caption = '`AutoMouseWheel`'
    TabOrder = 3
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sTrackEdit1: TsTrackEdit
      Left = 88
      Top = 36
      Width = 69
      Height = 21
      TabOrder = 0
      Text = '360'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`WheelDelta`:'
      Increment = 1.000000000000000000
      MaxValue = 2400.000000000000000000
      MinValue = 120.000000000000000000
      Value = 360.000000000000000000
    end
  end
  object sGroupBox2: TsGroupBox [3]
    Left = 496
    Top = 286
    Width = 167
    Height = 185
    Caption = 'ColorTone'
    TabOrder = 5
    Visible = False
    object sSpeedButton3: TsSpeedButton
      Tag = 255
      Left = 34
      Top = 42
      Width = 101
      Height = 25
      Caption = 'Red'
      Margin = 12
      OnClick = sSpeedButton3Click
      Images = FormData.CharList16
      Alignment = taLeftJustify
      TextAlignment = taLeftJustify
      ImageIndex = 1
    end
    object sSpeedButton6: TsSpeedButton
      Left = 34
      Top = 106
      Width = 101
      Height = 25
      Caption = 'Yellow'
      Margin = 12
      OnClick = sSpeedButton3Click
      Images = FormData.CharList16
      Alignment = taLeftJustify
      TextAlignment = taLeftJustify
      ImageIndex = 3
    end
    object sSpeedButton7: TsSpeedButton
      Left = 34
      Top = 74
      Width = 101
      Height = 25
      Caption = 'Green'
      Margin = 12
      OnClick = sSpeedButton3Click
      Images = FormData.CharList16
      Alignment = taLeftJustify
      TextAlignment = taLeftJustify
      ImageIndex = 2
    end
    object sSpeedButton8: TsSpeedButton
      Left = 104
      Top = 137
      Width = 31
      Height = 25
      Enabled = False
      OnClick = sSpeedButton8Click
      Images = FormData.CharList16
      ImageIndex = 4
    end
    object sColorBox1: TsColorBox
      Left = 34
      Top = 137
      Width = 67
      Height = 25
      AutoSize = False
      TabOrder = 0
      OnChange = sColorBox1Change
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
    end
  end
  object sGroupBox4: TsGroupBox [4]
    Left = 68
    Top = 488
    Width = 595
    Height = 139
    Caption = 'Customize scrolls'
    TabOrder = 6
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    object sGroupBox5: TsGroupBox
      Left = 30
      Top = 26
      Width = 217
      Height = 92
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox5CheckBoxChanged
      object sCheckBox5: TsCheckBox
        Left = 37
        Top = 31
        Width = 82
        Height = 17
        Caption = 'Default size'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox5Click
      end
      object sTrackBar3: TsTrackBar
        Left = 12
        Top = 55
        Width = 193
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
      Left = 275
      Top = 26
      Width = 290
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
  object sComboBox1: TsComboBox [5]
    Left = 68
    Top = 352
    Width = 177
    Height = 21
    TabOrder = 2
    OnChange = sComboBox1Change
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    BoundLabel.Layout = sclTopLeft
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    ShowFocus = False
    TextHint = 'Change skin section'
    Items.Strings = (
      'PROGRESSH'
      'EDIT'
      'PANEL'
      'PANEL_LOW'
      'GROUPBOX'
      'TRANSPARENT')
    Style = csDropDownList
  end
  object sGroupBox1: TsGroupBox [6]
    Left = 286
    Top = 286
    Width = 167
    Height = 185
    Caption = 'CustomColor'
    TabOrder = 4
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 32
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
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
      Top = 73
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
      Top = 137
      Width = 31
      Height = 25
      Enabled = False
      OnClick = sSpeedButton1Click
      Images = FormData.CharList16
      ImageIndex = 4
    end
    object sColorBox2: TsColorBox
      Left = 34
      Top = 137
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
end
