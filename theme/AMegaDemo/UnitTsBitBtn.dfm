inherited FrameTsBitBtn: TFrameTsBitBtn
  Height = 671
  object sSpeedButton3: TsSpeedButton [0]
    Left = 487
    Top = 149
    Width = 57
    Height = 21
    Caption = 'Reset'
    Enabled = False
    OnClick = sSpeedButton3Click
  end
  object sLabel1: TsLabel [1]
    Left = 62
    Top = 591
    Width = 507
    Height = 46
    AutoSize = False
    Caption = 
      '* Showing of focus in all application may be forbidden from one ' +
      'point: '#13#10'TsSkinManager.ButtonsOptions.ShowFocusRect property'
    WordWrap = True
  end
  object sGroupBox2: TsGroupBox [2]
    Left = 240
    Top = 236
    Width = 141
    Height = 148
    Caption = 'Glyph layout'
    TabOrder = 9
    CaptionLayout = clTopCenter
    object sRadioButton1: TsRadioButton
      Left = 16
      Top = 29
      Width = 120
      Height = 21
      Caption = '`blGlyphLeft`'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 16
      Top = 56
      Width = 120
      Height = 21
      Caption = '`blGlyphRight`'
      TabOrder = 1
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 16
      Top = 83
      Width = 120
      Height = 21
      Caption = '`blGlyphTop`'
      TabOrder = 2
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton4: TsRadioButton
      Tag = 3
      Left = 16
      Top = 110
      Width = 120
      Height = 21
      Caption = '`blGlyphBottom`'
      TabOrder = 3
      OnClick = sRadioButton1Click
      AutoSize = False
    end
  end
  object sColorBox1: TsColorBox [3]
    Left = 372
    Top = 149
    Width = 104
    Height = 21
    TabOrder = 6
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
  object sCheckBox8: TsCheckBox [4]
    Left = 62
    Top = 568
    Width = 169
    Height = 17
    Caption = 'Show focus rect in this button'
    Checked = True
    State = cbChecked
    TabOrder = 14
    OnClick = sCheckBox8Click
  end
  object sTrackEdit2: TsTrackEdit [5]
    Left = 372
    Top = 46
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = '8'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`Margin`:'
    Increment = 1.000000000000000000
    MaxValue = 22.000000000000000000
    MinValue = -1.000000000000000000
    Value = 8.000000000000000000
  end
  object sRadioGroup2: TsRadioGroup [6]
    Left = 56
    Top = 446
    Width = 151
    Height = 105
    Caption = '`VerticalAlignment`'
    TabOrder = 12
    OnClick = sRadioGroup2Click
    CaptionLayout = clTopCenter
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 10
    Items.Strings = (
      '`taAlignTop`'
      '`taAlignBottom`'
      '`taVerticalCenter`')
  end
  object sCheckBox1: TsCheckBox [7]
    Left = 441
    Top = 118
    Width = 90
    Height = 17
    Caption = 'Show caption'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox1Click
  end
  object sComboBox4: TsComboBox [8]
    Tag = 5
    Left = 372
    Top = 184
    Width = 172
    Height = 21
    TabOrder = 7
    OnChange = sComboBox4Change
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    VerticalAlignment = taVerticalCenter
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
  object sCheckBox2: TsCheckBox [9]
    Left = 441
    Top = 83
    Width = 91
    Height = 17
    Caption = 'Allow shadow'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox2Click
  end
  object sGroupBox1: TsGroupBox [10]
    Left = 408
    Top = 236
    Width = 193
    Height = 148
    Caption = 'Disable control'
    TabOrder = 10
    CaptionLayout = clTopCenter
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 14
      Top = 29
      Width = 167
      Height = 21
      Caption = 'AlphaBlended'
      AutoSize = False
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox3Click
    end
    object sCheckBox4: TsCheckBox
      Left = 14
      Top = 56
      Width = 167
      Height = 21
      Caption = 'Grayed'
      AutoSize = False
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
    object sCheckBox5: TsCheckBox
      Left = 14
      Top = 83
      Width = 167
      Height = 21
      Caption = 'AlphaBlended glyph'
      AutoSize = False
      Enabled = False
      TabOrder = 2
      OnClick = sCheckBox5Click
    end
    object sCheckBox6: TsCheckBox
      Left = 14
      Top = 110
      Width = 167
      Height = 21
      Caption = 'Grayed glyph'
      AutoSize = False
      Enabled = False
      TabOrder = 3
      OnClick = sCheckBox6Click
    end
  end
  object sBitBtn1: TsBitBtn [11]
    Left = 54
    Top = 45
    Width = 154
    Height = 93
    Caption = 'Test of content options'
    Margin = 8
    Spacing = 8
    TabOrder = 0
    Reflected = True
    ImageIndex = 7
    Images = sVirtualImageList1
    SkinData.OuterEffects.Visibility = ovAlways
    OnGetColoring = sBitBtn1GetColoring
  end
  object sTrackEdit5: TsTrackEdit [12]
    Left = 372
    Top = 115
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '0'
    OnChange = sTrackEdit5Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`HUEOffset`:'
    Increment = 1.000000000000000000
    MaxValue = 360.000000000000000000
  end
  object sGroupBox3: TsGroupBox [13]
    Left = 240
    Top = 408
    Width = 361
    Height = 143
    Caption = 'Show glyph'
    TabOrder = 13
    CaptionLayout = clTopCenter
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sSpeedButton4: TsSpeedButton
      Left = 207
      Top = 99
      Width = 34
      Height = 22
      Enabled = False
      OnClick = sSpeedButton4Click
      Images = FormData.CharList16
      ImageIndex = 4
    end
    object sTrackEdit1: TsTrackEdit
      Left = 104
      Top = 70
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Blend value:'
      Increment = 1.000000000000000000
    end
    object sCheckBox9: TsCheckBox
      Tag = 5
      Left = 158
      Top = 42
      Width = 187
      Height = 20
      Caption = 'Reflected'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox9Click
    end
    object sColorBox2: TsColorBox
      Left = 104
      Top = 99
      Width = 97
      Height = 22
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
      Left = 103
      Top = 40
      Width = 42
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
    object sCheckBox7: TsCheckBox
      Left = 159
      Top = 71
      Width = 186
      Height = 20
      Caption = 'Use OnGetColoring event'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox7Click
    end
  end
  object sTrackEdit3: TsTrackEdit [14]
    Left = 372
    Top = 81
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '8'
    OnChange = sTrackEdit3Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`Spacing`:'
    Increment = 1.000000000000000000
    MaxValue = 14.000000000000000000
    MinValue = -10.000000000000000000
    Value = 8.000000000000000000
  end
  object sRadioGroup1: TsRadioGroup [15]
    Left = 54
    Top = 184
    Width = 154
    Height = 105
    Caption = '`Alignment`'
    TabOrder = 8
    OnClick = sRadioGroup1Click
    CaptionLayout = clTopCenter
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 10
    Items.Strings = (
      '`taLeftJustify`'
      '`taRightJustify`'
      '`taCenter`')
  end
  object sRadioGroup3: TsRadioGroup [16]
    Left = 56
    Top = 316
    Width = 151
    Height = 105
    Caption = '`TextAlignment`'
    Enabled = False
    TabOrder = 11
    OnClick = sRadioGroup3Click
    CaptionLayout = clTopCenter
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 10
    Items.Strings = (
      '`taLeftJustify`'
      '`taRightJustify`'
      '`taCenter`')
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 24
    Width = 24
    AlphaImageList = FormData.sCharImageList1
    Left = 288
    Top = 420
    Bitmap = {}
  end
end
