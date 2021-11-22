inherited FrameTsTrackEdit: TFrameTsTrackEdit
  object sSpeedButton1: TsSpeedButton [0]
    Left = 613
    Top = 149
    Width = 34
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    SkinData.SkinSection = 'SPEEDBUTTON'
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
  object sTrackEdit1: TsTrackEdit [4]
    Tag = 5
    Left = 208
    Top = 65
    Width = 177
    Height = 32
    AutoSize = False
    TabOrder = 7
    Text = '0'
    AddedGlyph.ColorTone = 14778880
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 0
    SkinData.SkinSection = 'EDIT'
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = '<b><u>BoundLabel</u></b> property'
    Padding.Left = 6
    VerticalAlignment = taVerticalCenter
    Increment = 1.000000000000000000
  end
  object sRadioGroup1: TsRadioGroup [5]
    Left = 257
    Top = 203
    Width = 136
    Height = 116
    Caption = 'VerticalAlignment'
    TabOrder = 1
    OnClick = sRadioGroup1Click
    ItemIndex = 2
    ContentVOffset = 6
    Items.Strings = (
      'taAlignTop'
      'taAlignBottom'
      'taAlignCenter')
  end
  object sGroupBox3: TsGroupBox [6]
    Left = 418
    Top = 203
    Width = 229
    Height = 116
    Caption = 'AddedGlyph'
    TabOrder = 3
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sSpeedButton3: TsSpeedButton
      Left = 153
      Top = 67
      Width = 57
      Height = 25
      Caption = 'Reset'
      OnClick = sSpeedButton3Click
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sTrackEdit8: TsTrackEdit
      Left = 153
      Top = 31
      Width = 57
      Height = 24
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit8Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Blend value:'
      Increment = 1.000000000000000000
    end
    object sColorBox1: TsColorBox
      Left = 91
      Top = 67
      Width = 56
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'Color tone:'
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = 14778880
      NoneColorColor = clNone
      PopupMode = pmPickColor
      TabOrder = 1
      OnChange = sColorBox1Change
    end
  end
  object sGroupBox4: TsGroupBox [7]
    Left = 52
    Top = 503
    Width = 318
    Height = 69
    Caption = 'Disable control'
    TabOrder = 4
    SkinData.SkinSection = 'GROUPBOX'
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox4CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 45
      Top = 32
      Width = 105
      Height = 18
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
      Width = 68
      Height = 18
      Caption = 'Grayed'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
  end
  object sGroupBox1: TsGroupBox [8]
    Left = 52
    Top = 151
    Width = 180
    Height = 168
    Caption = 'Padding'
    TabOrder = 0
    object sTrackEdit9: TsTrackEdit
      Left = 96
      Top = 32
      Width = 57
      Height = 24
      TabOrder = 0
      Text = '6'
      OnChange = sTrackEdit9Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Left:'
      Increment = 1.000000000000000000
      Value = 6.000000000000000000
    end
    object sTrackEdit2: TsTrackEdit
      Left = 96
      Top = 62
      Width = 57
      Height = 24
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Top:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit3: TsTrackEdit
      Left = 96
      Top = 92
      Width = 57
      Height = 24
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit3Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Right:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit4: TsTrackEdit
      Left = 96
      Top = 122
      Width = 57
      Height = 24
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Bottom:'
      Increment = 1.000000000000000000
    end
  end
  object sGroupBox2: TsGroupBox [9]
    Left = 52
    Top = 338
    Width = 595
    Height = 147
    Caption = 'BoundLabel property'
    TabOrder = 2
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit5: TsTrackEdit
      Left = 100
      Top = 40
      Width = 80
      Height = 24
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Indent:'
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
    object sTrackEdit6: TsTrackEdit
      Left = 100
      Top = 101
      Width = 80
      Height = 24
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit6Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'MaxWidth:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      OnCloseUp = sTrackEdit6CloseUp
    end
    object sCheckBox1: TsCheckBox
      Left = 205
      Top = 104
      Width = 113
      Height = 18
      Caption = 'Use HTML tags'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox1Click
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 70
      Width = 80
      Height = 24
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit7Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Offset:'
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = -10.000000000000000000
    end
    object sComboBox1: TsComboBox
      Left = 480
      Top = 101
      Width = 96
      Height = 24
      BoundLabel.Active = True
      BoundLabel.Caption = 'Layout:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
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
      TabOrder = 5
      OnChange = sMemo1Change
      Text = '<b><u>BoundLabel</u></b> property'#13#10
      BoundLabel.Active = True
      BoundLabel.Caption = 'Text:'
      BoundLabel.Layout = sclTopLeft
    end
  end
  object sColorBox2: TsColorBox [10]
    Left = 546
    Top = 149
    Width = 61
    Height = 25
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    TabOrder = 6
    OnChange = sColorBox2Change
  end
  object sCheckBox2: TsCheckBox [11]
    Left = 257
    Top = 165
    Width = 120
    Height = 18
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox2Click
  end
end
