inherited FrameTsSpinEdit: TFrameTsSpinEdit
  object sSpeedButton1: TsSpeedButton [0]
    Left = 616
    Top = 161
    Width = 31
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
    ShowCaption = False
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 546
    Top = 66
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
    Top = 98
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
    Top = 130
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
  object sTrackEdit9: TsTrackEdit [4]
    Left = 435
    Top = 537
    Width = 121
    Height = 21
    TabOrder = 12
    Text = '0'
    OnChange = sTrackEdit9Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`ButtonWidth`:'
    BoundLabel.Layout = sclTopLeft
    Increment = 1.000000000000000000
    MaxValue = 64.000000000000000000
    MinValue = 12.000000000000000000
  end
  object sCheckBox8: TsCheckBox [5]
    Left = 243
    Top = 508
    Width = 136
    Height = 18
    Caption = '`ShowSpinButtons`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = sCheckBox8Click
  end
  object sRadioGroup1: TsRadioGroup [6]
    Left = 257
    Top = 203
    Width = 136
    Height = 116
    Caption = '`VerticalAlignment`'
    TabOrder = 3
    OnClick = sRadioGroup1Click
    ItemIndex = 2
    ContentVOffset = 6
    Items.Strings = (
      '`taAlignTop`'
      '`taAlignBottom`'
      '`taAlignCenter`')
  end
  object sGroupBox3: TsGroupBox [7]
    Left = 418
    Top = 203
    Width = 229
    Height = 116
    Caption = '`AddedGlyph`'
    TabOrder = 5
    object sSpeedButton3: TsSpeedButton
      Left = 153
      Top = 67
      Width = 57
      Height = 21
      Caption = 'Reset'
      OnClick = sSpeedButton3Click
    end
    object sTrackEdit8: TsTrackEdit
      Left = 153
      Top = 31
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
      Left = 91
      Top = 67
      Width = 56
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
  object sCheckBox7: TsCheckBox [8]
    Left = 76
    Top = 540
    Width = 136
    Height = 18
    Caption = '`FlatSpinButtons`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = sCheckBox7Click
  end
  object sGroupBox2: TsGroupBox [9]
    Left = 52
    Top = 338
    Width = 595
    Height = 147
    Caption = '`BoundLabel` property'
    TabOrder = 6
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
      OnClick = sCheckBox1Click
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
      TabOrder = 5
      OnChange = sComboBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Layout`:'
      VerticalAlignment = taVerticalCenter
      ItemIndex = 1
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
      Text = '`sclTopLeft`'
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
  object sCheckBox3: TsCheckBox [10]
    Left = 76
    Top = 572
    Width = 136
    Height = 18
    Caption = '`HideEmptyText`'
    AutoSize = False
    TabOrder = 9
    OnClick = sCheckBox3Click
  end
  object sCheckBox6: TsCheckBox [11]
    Left = 76
    Top = 508
    Width = 136
    Height = 18
    Caption = '`EditorEnabled`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = sCheckBox6Click
  end
  object sColorBox2: TsColorBox [12]
    Left = 546
    Top = 161
    Width = 64
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
  object sCheckBox5: TsCheckBox [13]
    Left = 243
    Top = 540
    Width = 136
    Height = 18
    Caption = '`AllowNegative`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = sCheckBox5Click
  end
  object sGroupBox1: TsGroupBox [14]
    Left = 52
    Top = 151
    Width = 180
    Height = 168
    Caption = '`Padding`'
    TabOrder = 1
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
  object sSpinEdit1: TsSpinEdit [15]
    Tag = 5
    Left = 208
    Top = 65
    Width = 177
    Height = 32
    AutoSize = False
    TabOrder = 0
    OnChange = sSpinEdit1Change
    AddedGlyph.ColorTone = 14778880
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 0
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = '<b><u>`BoundLabel`</u></b> property'
    BoundLabel.Layout = sclTopLeft
    Padding.Left = 6
    VerticalAlignment = taVerticalCenter
    MaxValue = 0
    MinValue = 0
  end
  object sCheckBox2: TsCheckBox [16]
    Left = 257
    Top = 165
    Width = 156
    Height = 18
    Caption = 'Allow outer effects'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox2Click
  end
  object sCheckBox4: TsCheckBox [17]
    Left = 244
    Top = 572
    Width = 135
    Height = 17
    Caption = 'Horizontal buttons'
    AutoSize = False
    TabOrder = 13
    OnClick = sCheckBox4Click
  end
end
