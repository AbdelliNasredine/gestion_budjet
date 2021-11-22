inherited FrameTsSpeedButton: TFrameTsSpeedButton
  object sSpeedButton1: TsSpeedButton [0]
    Tag = 124
    Left = 74
    Top = 37
    Width = 154
    Height = 93
    Caption = 'Test of content options'
    OnClick = sSpeedButton1Click
    ButtonStyle = tbsDropDown
    DropdownMenu = FormData.PopupMenu1
    Images = sVirtualImageList1
    ImageIndex = 7
    Reflected = True
  end
  object sSpeedButton3: TsSpeedButton [1]
    Left = 544
    Top = 126
    Width = 57
    Height = 21
    Caption = 'Reset'
    Enabled = False
    OnClick = sSpeedButton3Click
  end
  object sGroupBox4: TsGroupBox [2]
    Left = 260
    Top = 348
    Width = 341
    Height = 69
    Caption = 'Splitter'
    TabOrder = 11
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    object sCheckBox7: TsCheckBox
      Left = 31
      Top = 31
      Width = 138
      Height = 18
      Caption = 'OnClick is defined'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox7Click
    end
    object sComboBox1: TsComboBox
      Left = 188
      Top = 28
      Width = 125
      Height = 21
      TabOrder = 1
      OnChange = sComboBox1Change
      ShowFocus = False
      ItemIndex = 0
      Items.Strings = (
        'As border'
        'As line')
      Style = csDropDownList
      Text = 'As border'
    end
  end
  object sComboBox4: TsComboBox [3]
    Tag = 5
    Left = 429
    Top = 158
    Width = 172
    Height = 21
    TabOrder = 6
    OnChange = sComboBox4Change
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    ShowFocus = False
    Items.Strings = (
      ''
      'SPEEDBUTTON'
      'TOOLBUTTON'
      'BUTTON_BIG'
      'TRANSPARENT'
      'BUTTON'
      'SPEEDBUTTON_SMALL'
      'WEBBUTTON')
    Style = csDropDownList
  end
  object sTrackEdit3: TsTrackEdit [4]
    Left = 429
    Top = 66
    Width = 41
    Height = 21
    TabOrder = 1
    Text = '4'
    OnChange = sTrackEdit3Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`Spacing`:'
    Increment = 1.000000000000000000
    MaxValue = 14.000000000000000000
    MinValue = -10.000000000000000000
    Value = 4.000000000000000000
  end
  object sCheckBox1: TsCheckBox [5]
    Left = 498
    Top = 68
    Width = 138
    Height = 18
    Caption = '`ShowCaption`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox1Click
  end
  object sGroupBox2: TsGroupBox [6]
    Left = 76
    Top = 449
    Width = 151
    Height = 128
    Caption = 'Glyph layout'
    TabOrder = 12
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 32
    SkinData.CustomBorder.RadiusBottomRight = 0
    object sRadioButton1: TsRadioButton
      Left = 19
      Top = 26
      Width = 120
      Height = 17
      Caption = '`blGlyphLeft`'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 19
      Top = 51
      Width = 120
      Height = 17
      Caption = '`blGlyphRight`'
      TabOrder = 1
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 19
      Top = 76
      Width = 120
      Height = 17
      Caption = '`blGlyphTop`'
      TabOrder = 2
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton4: TsRadioButton
      Tag = 3
      Left = 19
      Top = 101
      Width = 120
      Height = 17
      Caption = '`blGlyphBottom`'
      TabOrder = 3
      OnClick = sRadioButton1Click
      AutoSize = False
    end
  end
  object sRadioGroup1: TsRadioGroup [7]
    Left = 74
    Top = 200
    Width = 154
    Height = 105
    Caption = '`Alignment`'
    TabOrder = 7
    OnClick = sRadioGroup1Click
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 32
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      '`taLeftJustify`'
      '`taRightJustify`'
      '`taCenter`')
  end
  object sGroupBox3: TsGroupBox [8]
    Left = 260
    Top = 436
    Width = 341
    Height = 141
    Caption = 'Show glyph'
    TabOrder = 13
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 32
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sSpeedButton4: TsSpeedButton
      Left = 207
      Top = 98
      Width = 75
      Height = 21
      Caption = 'Reset'
      Enabled = False
      OnClick = sSpeedButton4Click
    end
    object sTrackEdit1: TsTrackEdit
      Left = 112
      Top = 66
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Blend value:'
      Increment = 1.000000000000000000
    end
    object sCheckBox8: TsCheckBox
      Tag = 5
      Left = 207
      Top = 36
      Width = 86
      Height = 18
      Caption = 'Grayed'
      AutoSize = False
      TabOrder = 2
      OnClick = sCheckBox8Click
    end
    object sCheckBox9: TsCheckBox
      Tag = 5
      Left = 207
      Top = 67
      Width = 86
      Height = 18
      Caption = 'Reflected'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox9Click
    end
    object sColorBox2: TsColorBox
      Left = 112
      Top = 98
      Width = 84
      Height = 21
      AutoSize = False
      TabOrder = 4
      OnChange = sColorBox2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Color tone:'
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
      OnColorPreview = sColorBox2ColorPreview
    end
    object sTrackEdit4: TsTrackEdit
      Left = 111
      Top = 34
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '32'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Size:'
      Increment = 1.000000000000000000
      MaxValue = 48.000000000000000000
      MinValue = 16.000000000000000000
      Value = 32.000000000000000000
    end
  end
  object sTrackEdit2: TsTrackEdit [9]
    Left = 429
    Top = 35
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = '-1'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`Margin`:'
    Increment = 1.000000000000000000
    MaxValue = 22.000000000000000000
    MinValue = -1.000000000000000000
    Value = -1.000000000000000000
  end
  object sTrackEdit5: TsTrackEdit [10]
    Left = 429
    Top = 96
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '0'
    OnChange = sTrackEdit5Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`HUEOffset`:'
    Increment = 1.000000000000000000
    MaxValue = 360.000000000000000000
  end
  object sRadioGroup2: TsRadioGroup [11]
    Left = 260
    Top = 200
    Width = 141
    Height = 128
    Caption = '`ButtonStyle`'
    TabOrder = 8
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      '`tbsButton`'
      '`tbsDivider`'
      '`tbsDropDown`'
      '`tbsSeparator`')
    OnChange = sRadioGroup2Change
  end
  object sColorBox1: TsColorBox [12]
    Left = 429
    Top = 126
    Width = 104
    Height = 21
    AutoSize = False
    TabOrder = 5
    OnChange = sColorBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`ColorTone`:'
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox1ColorPreview
  end
  object sRadioGroup3: TsRadioGroup [13]
    Left = 76
    Top = 326
    Width = 151
    Height = 105
    Caption = '`TextAlignment`'
    Enabled = False
    TabOrder = 10
    OnClick = sRadioGroup3Click
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      '`taLeftJustify`'
      '`taRightJustify`'
      '`taCenter`')
  end
  object sCheckBox2: TsCheckBox [14]
    Left = 498
    Top = 39
    Width = 138
    Height = 18
    Caption = '`Flat`'
    AutoSize = False
    TabOrder = 3
    OnClick = sCheckBox2Click
  end
  object sGroupBox1: TsGroupBox [15]
    Left = 431
    Top = 200
    Width = 170
    Height = 128
    Caption = 'Disable control'
    TabOrder = 9
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 16
      Top = 26
      Width = 140
      Height = 17
      Caption = 'AlphaBlended'
      AutoSize = False
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox3Click
    end
    object sCheckBox4: TsCheckBox
      Left = 16
      Top = 51
      Width = 140
      Height = 17
      Caption = 'Grayed'
      AutoSize = False
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
    object sCheckBox5: TsCheckBox
      Left = 16
      Top = 76
      Width = 140
      Height = 17
      Caption = 'AlphaBlended glyph'
      AutoSize = False
      Enabled = False
      TabOrder = 2
      OnClick = sCheckBox5Click
    end
    object sCheckBox6: TsCheckBox
      Left = 16
      Top = 101
      Width = 140
      Height = 17
      Caption = 'Grayed glyph'
      AutoSize = False
      Enabled = False
      TabOrder = 3
      OnClick = sCheckBox6Click
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 20
    Top = 8
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 32
    Width = 32
    AlphaImageList = FormData.sCharImageList1
    Left = 292
    Top = 436
    Bitmap = {}
  end
end
