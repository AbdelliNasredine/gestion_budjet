inherited FrameTsListBoxes: TFrameTsListBoxes
  object sSpeedButton1: TsSpeedButton [0]
    Left = 614
    Top = 147
    Width = 31
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 544
    Top = 50
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
    Left = 544
    Top = 82
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
    Left = 544
    Top = 114
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
  object sCheckBox6: TsCheckBox [4]
    Left = 437
    Top = 218
    Width = 88
    Height = 17
    Caption = '`ShowLines`'
    TabOrder = 8
    OnClick = sCheckBox6Click
  end
  object sTrackEdit1: TsTrackEdit [5]
    Left = 368
    Top = 216
    Width = 41
    Height = 21
    TabOrder = 7
    Text = '0'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`LeftPadding`:'
    Increment = 1.000000000000000000
    MaxValue = 20.000000000000000000
  end
  object sCheckBox2: TsCheckBox [6]
    Left = 437
    Top = 245
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox2Click
  end
  object sColorBox2: TsColorBox [7]
    Left = 544
    Top = 147
    Width = 63
    Height = 25
    AutoSize = False
    TabOrder = 4
    OnChange = sColorBox2Change
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
  object sCheckListBox1: TsCheckListBox [8]
    Tag = 5
    Left = 292
    Top = 50
    Width = 215
    Height = 119
    BorderStyle = bsSingle
    TabOrder = 1
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = 'sCheckListBox1:'
    BoundLabel.Layout = sclTopLeft
    DisabledKind = []
    SkinData.OuterEffects.Visibility = ovAlways
    SkinData.VertScrollData.ButtonsSize = 0
    SkinData.HorzScrollData.ButtonsSize = 0
  end
  object sGroupBox4: TsGroupBox [9]
    Left = 379
    Top = 454
    Width = 250
    Height = 83
    Caption = 'Disable control'
    TabOrder = 6
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox4CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 35
      Top = 44
      Width = 91
      Height = 17
      Caption = 'AlphaBlended'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox3Click
    end
    object sCheckBox4: TsCheckBox
      Left = 158
      Top = 44
      Width = 61
      Height = 17
      Caption = 'Grayed'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
  end
  object sGroupBox2: TsGroupBox [10]
    Left = 380
    Top = 296
    Width = 249
    Height = 125
    Caption = 'Headers customizing'
    TabOrder = 10
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 32
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    object sComboBox2: TsComboBox
      Left = 41
      Top = 41
      Width = 167
      Height = 21
      TabOrder = 0
      OnChange = sComboBox2Change
      TextHint = 'Change skin section'
      BoundLabel.Caption = '`SkinData.SkinSection`:'
      BoundLabel.Layout = sclTopLeft
      VerticalAlignment = taVerticalCenter
      LabelFromTextHint = True
      ShowFocus = False
      Items.Strings = (
        ''
        'PROGRESSH'
        'EDIT'
        'PANEL'
        'PANEL_LOW'
        'GROUPBOX'
        'TRANSPARENT')
      Style = csDropDownList
    end
    object sCheckBox1: TsCheckBox
      Left = 48
      Top = 80
      Width = 102
      Height = 17
      Caption = 'Try custom font'
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
  end
  object sListBox1: TsListBox [11]
    Tag = 5
    Left = 50
    Top = 50
    Width = 211
    Height = 119
    TabOrder = 0
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = 'sListBox1:'
    BoundLabel.Layout = sclTopLeft
    DisabledKind = []
    SkinData.OuterEffects.Visibility = ovAlways
    SkinData.VertScrollData.ButtonsSize = 0
    SkinData.HorzScrollData.ButtonsSize = 0
  end
  object sComboBox1: TsComboBox [12]
    Left = 50
    Top = 243
    Width = 191
    Height = 21
    TabOrder = 2
    OnChange = sComboBox1Change
    TextHint = 'Change skin section'
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    BoundLabel.Layout = sclTopLeft
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    ShowFocus = False
    Items.Strings = (
      ''
      'PROGRESSH'
      'PANEL'
      'PANEL_LOW'
      'GROUPBOX'
      'TRANSPARENT')
    Style = csDropDownList
  end
  object sTrackEdit2: TsTrackEdit [13]
    Left = 368
    Top = 243
    Width = 41
    Height = 21
    TabOrder = 9
    Text = '16'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`ItemHeight`:'
    Increment = 1.000000000000000000
    MaxValue = 42.000000000000000000
    MinValue = 16.000000000000000000
    Value = 16.000000000000000000
  end
  object sGroupBox1: TsGroupBox [14]
    Left = 50
    Top = 296
    Width = 303
    Height = 241
    Caption = 'Customize scrolls'
    TabOrder = 5
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    object sGroupBox5: TsGroupBox
      Left = 30
      Top = 26
      Width = 243
      Height = 92
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox5CheckBoxChanged
      object sCheckBox5: TsCheckBox
        Left = 24
        Top = 28
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
        Width = 217
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
      Left = 30
      Top = 124
      Width = 243
      Height = 92
      Caption = 'Default scroll width'
      TabOrder = 1
      CaptionLayout = clTopCenter
      AutoChildrenStates = csAsNotChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sStickyLabel3: TsStickyLabel
        Left = 31
        Top = 34
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vertical:'
        Enabled = False
        AttachTo = sTrackBar4
      end
      object sStickyLabel4: TsStickyLabel
        Left = 18
        Top = 62
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Horizontal:'
        Enabled = False
        AttachTo = sTrackBar5
      end
      object sTrackBar4: TsTrackBar
        Left = 72
        Top = 27
        Width = 157
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
        Left = 72
        Top = 55
        Width = 157
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
end
