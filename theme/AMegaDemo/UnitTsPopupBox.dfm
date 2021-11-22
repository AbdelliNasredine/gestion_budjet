inherited FrameTsPopupBox: TFrameTsPopupBox
  Width = 864
  Height = 652
  Align = alClient
  object sSpeedButton1: TsSpeedButton [0]
    Left = 613
    Top = 157
    Width = 34
    Height = 22
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 546
    Top = 61
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
    Top = 93
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
    Top = 125
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
  object sSpeedButton6: TsSpeedButton [4]
    Left = 52
    Top = 152
    Width = 101
    Height = 27
    Caption = 'Show popup'
    OnClick = sSpeedButton6Click
  end
  object sCheckBox2: TsCheckBox [5]
    Left = 257
    Top = 225
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox2Click
  end
  object sColorBox2: TsColorBox [6]
    Left = 546
    Top = 157
    Width = 61
    Height = 21
    TabOrder = 6
    OnChange = sColorBox2Change
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
  object sRadioGroup1: TsRadioGroup [7]
    Left = 257
    Top = 263
    Width = 136
    Height = 116
    Caption = '`VerticalAlignment`'
    TabOrder = 1
    OnClick = sRadioGroup1Click
    ItemIndex = 2
    ContentVOffset = 6
    Items.Strings = (
      '`taAlignTop`'
      '`taAlignBottom`'
      '`taAlignCenter`')
  end
  object sTrackEdit9: TsTrackEdit [8]
    Left = 599
    Top = 563
    Width = 48
    Height = 21
    TabOrder = 10
    Text = '0'
    OnChange = sTrackEdit9Change
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = '`ButtonWidth`:'
    EditorEnabled = False
    Increment = 1.000000000000000000
    MaxValue = 64.000000000000000000
  end
  object sCheckBox6: TsCheckBox [9]
    Left = 528
    Top = 225
    Width = 96
    Height = 17
    Caption = '`ShowButton`'
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = sCheckBox6Click
  end
  object sGroupBox4: TsGroupBox [10]
    Left = 52
    Top = 563
    Width = 318
    Height = 69
    Caption = 'Disable control'
    TabOrder = 4
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
  object sGroupBox1: TsGroupBox [11]
    Left = 52
    Top = 211
    Width = 180
    Height = 168
    Caption = '`Padding`'
    TabOrder = 0
    object sTrackEdit1: TsTrackEdit
      Left = 96
      Top = 32
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '6'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Left`:'
      Increment = 1.000000000000000000
      Value = 6.000000000000000000
    end
    object sTrackEdit2: TsTrackEdit
      Left = 96
      Top = 62
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Top`:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit3: TsTrackEdit
      Left = 96
      Top = 92
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit3Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Right`:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit4: TsTrackEdit
      Left = 96
      Top = 122
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Bottom`:'
      Increment = 1.000000000000000000
    end
  end
  object sGroupBox3: TsGroupBox [12]
    Left = 418
    Top = 263
    Width = 229
    Height = 116
    Caption = '`AddedGlyph`'
    TabOrder = 3
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sSpeedButton3: TsSpeedButton
      Left = 172
      Top = 67
      Width = 30
      Height = 21
      OnClick = sSpeedButton3Click
      Images = FormData.CharList16
      ImageIndex = 4
    end
    object sTrackEdit8: TsTrackEdit
      Left = 109
      Top = 35
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit8Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Blend`:'
      Increment = 1.000000000000000000
    end
    object sColorBox1: TsColorBox
      Left = 109
      Top = 67
      Width = 57
      Height = 21
      TabOrder = 1
      OnChange = sColorBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`ColorTone`:'
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = 14778880
      NoneColorColor = clNone
      PopupMode = pmPickColor
      OnColorPreview = sColorBox1ColorPreview
    end
  end
  object sCheckBox5: TsCheckBox [13]
    Left = 410
    Top = 225
    Width = 92
    Height = 17
    Caption = '`DirectInput`'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = sCheckBox5Click
  end
  object sGroupBox2: TsGroupBox [14]
    Left = 52
    Top = 398
    Width = 595
    Height = 147
    Caption = '`BoundLabel` property'
    TabOrder = 2
    CheckBoxVisible = True
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
      TabOrder = 1
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
      TabOrder = 2
      OnClick = sCheckBox1Click
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 70
      Width = 80
      Height = 21
      TabOrder = 3
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
      TabOrder = 4
      OnChange = sComboBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Layout`:'
      VerticalAlignment = taVerticalCenter
      Items.Strings = (
        '`sclLeft`'
        '`sclTopLeft`'
        '`sclTopCenter`'
        '`sclTopRight`'
        '`sclLeftTop`'
        '`sclBottomLeft`'
        '`sclBottomCenter`'
        '`sclBottomRight`'
        '`sclRight`'
        '`sclRightTop`'
        '`sclLeftLeft`'
        '`sclRightRight`')
      Style = csDropDownList
    end
    object sMemo1: TsMemo
      Left = 205
      Top = 41
      Width = 371
      Height = 54
      Lines.Strings = (
        '<b><u>BoundLabel</u></b> property')
      TabOrder = 5
      OnChange = sMemo1Change
      Text = '<b><u>BoundLabel</u></b> property'#13#10
      BoundLabel.Active = True
      BoundLabel.Caption = '`Text`:'
      BoundLabel.Layout = sclTopLeft
    end
  end
  object sPopupBox1: TsPopupBox [15]
    Tag = 5
    Left = 228
    Top = 61
    Width = 225
    Height = 40
    AutoSize = False
    TabOrder = 7
    TextHint = 'TextHint'
    AddedGlyph.ColorTone = 14778880
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 6
    BoundLabel.UseHTML = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = 'TextHint:'
    BoundLabel.Layout = sclTopLeft
    SkinData.SkinSection = 'EDIT'
    SkinData.OuterEffects.Visibility = ovAlways
    Padding.Left = 6
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    CheckOnExit = True
    Text = ''
    PopupForm = FormCustomPopup.Owner
    OnBeforePopup = sPopupBox1BeforePopup
  end
end
