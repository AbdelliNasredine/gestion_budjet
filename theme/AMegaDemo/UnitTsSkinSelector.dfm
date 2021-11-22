inherited FrameTsSkinSelector: TFrameTsSkinSelector
  object sSpeedButton1: TsSpeedButton [0]
    Left = 613
    Top = 149
    Width = 34
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 546
    Top = 53
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
    Left = 546
    Top = 85
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
    Left = 546
    Top = 117
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
  object sCheckBox2: TsCheckBox [4]
    Left = 52
    Top = 156
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox2Click
  end
  object sSkinSelector1: TsSkinSelector [5]
    Tag = 5
    Left = 184
    Top = 65
    Width = 201
    Height = 22
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = '<b><u>BoundLabel</u></b> property'
    SkinData.SkinSection = 'EDIT'
    SkinData.OuterEffects.Visibility = ovAlways
    TabOrder = 0
  end
  object sGroupBox1: TsGroupBox [6]
    Left = 52
    Top = 195
    Width = 595
    Height = 138
    Caption = 'Popup options'
    TabOrder = 3
    object sCheckBox5: TsCheckBox
      Left = 140
      Top = 88
      Width = 171
      Height = 17
      Caption = 'Include "standard theme" item'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox5Click
    end
    object sComboBox2: TsComboBox
      Left = 140
      Top = 41
      Width = 139
      Height = 21
      BoundLabel.Caption = '`ThumbSize`:'
      SkinData.SkinSection = 'COMBOBOX'
      SkinData.OuterEffects.Visibility = ovAlways
      VerticalAlignment = taVerticalCenter
      TextHint = 'Change thumbs size'
      LabelFromTextHint = True
      Style = csDropDownList
      ItemIndex = -1
      TabOrder = 0
      OnChange = sComboBox2Change
      Items.Strings = (
        'Small'
        'Medium'
        'Big')
    end
    object sTrackEdit1: TsTrackEdit
      Left = 448
      Top = 41
      Width = 48
      Height = 21
      TabOrder = 2
      Text = '3'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`ColCount`:'
      Increment = 1.000000000000000000
      MaxValue = 6.000000000000000000
      MinValue = 1.000000000000000000
      Value = 3.000000000000000000
    end
    object sTrackEdit2: TsTrackEdit
      Left = 448
      Top = 86
      Width = 48
      Height = 21
      TabOrder = 3
      Text = '5'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`RowCount`:'
      Increment = 1.000000000000000000
      MaxValue = 16.000000000000000000
      MinValue = 1.000000000000000000
      Value = 5.000000000000000000
    end
  end
  object sGroupBox2: TsGroupBox [7]
    Left = 52
    Top = 354
    Width = 595
    Height = 147
    Caption = '`BoundLabel` property'
    TabOrder = 4
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit5: TsTrackEdit
      Left = 100
      Top = 40
      Width = 80
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Indent`:'
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
    object sTrackEdit6: TsTrackEdit
      Left = 100
      Top = 101
      Width = 80
      Height = 21
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit6Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`MaxWidth`:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      OnCloseUp = sTrackEdit6CloseUp
    end
    object sCheckBox1: TsCheckBox
      Left = 205
      Top = 104
      Width = 97
      Height = 17
      Caption = 'Use HTML tags'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 70
      Width = 80
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit7Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Offset`:'
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = -10.000000000000000000
    end
    object sComboBox1: TsComboBox
      Left = 480
      Top = 101
      Width = 96
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = '`Layout`:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 5
      Text = 'sclLeft'
      OnChange = sComboBox1Change
      Items.Strings = (
        'sclLeft'
        'sclTopLeft'
        'sclTopCenter'
        'sclTopRight'
        'sclLeftTop'
        'sclBottomLeft'
        'sclBottomCenter'
        'sclBottomRight'
        'sclRight'
        'sclRightTop'
        'sclLeftLeft'
        'sclRightRight')
    end
    object sMemo1: TsMemo
      Left = 205
      Top = 40
      Width = 371
      Height = 54
      Lines.Strings = (
        '<b><u>BoundLabel</u></b> property')
      TabOrder = 3
      OnChange = sMemo1Change
      Text = '<b><u>BoundLabel</u></b> property'#13#10
      BoundLabel.Active = True
      BoundLabel.Caption = '`Text`:'
      BoundLabel.Layout = sclTopLeft
    end
  end
  object sGroupBox4: TsGroupBox [8]
    Left = 52
    Top = 519
    Width = 318
    Height = 69
    Caption = 'Disable control'
    TabOrder = 5
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox4CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 45
      Top = 32
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
      Left = 205
      Top = 31
      Width = 61
      Height = 17
      Caption = 'Grayed'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
  end
  object sColorBox2: TsColorBox [9]
    Left = 546
    Top = 149
    Width = 61
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
    TabOrder = 2
    OnChange = sColorBox2Change
  end
end
