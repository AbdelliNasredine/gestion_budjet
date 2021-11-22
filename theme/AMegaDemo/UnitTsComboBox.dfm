inherited FrameTsComboBox: TFrameTsComboBox
  Width = 701
  Height = 664
  object sSpeedButton1: TsSpeedButton [0]
    Left = 615
    Top = 146
    Width = 31
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 546
    Top = 51
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
    Top = 83
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
    Top = 115
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
  object sLabel1: TsLabel [4]
    Left = 99
    Top = 152
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Height:'
  end
  object sComboBox12: TsComboBox [5]
    Tag = 5
    Left = 152
    Top = 53
    Width = 269
    Height = 64
    AutoSize = False
    TabOrder = 0
    AddedGlyph.ImageIndex = 11
    BoundLabel.UseHTML = True
    BoundLabel.AllowClick = True
    SkinData.OuterEffects.Visibility = ovAlways
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    ShowFocus = False
    DropDownCount = 8
    OnGetItemDrawData = ComboBoxGetItemDrawData
    TextHint = 'Text hint'
    Images = FormData.CharList16
    ItemHeight = 46
    Items.Strings = (
      'Item 1'
      'Item 2'
      'Item 3'
      'Item 4'
      'Item 5'
      'Item 6'
      'Item 7'
      'Item 8'
      'Item 9'
      'Item 10'
      'Item 11'
      'Item 12'
      'Item 13'
      'Item 14'
      'Item 15'
      'Item 16'
      'Item 17'
      'Item 18'
      'Item 19'
      'Item 20')
    Style = csDropDownList
    OnDrawItem = sComboBox12DrawItem
  end
  object sCheckBox5: TsCheckBox [6]
    Left = 524
    Top = 266
    Width = 124
    Height = 17
    Caption = '`AllowMouseWheel`'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = sCheckBox5Click
  end
  object sCheckBox6: TsCheckBox [7]
    Left = 524
    Top = 291
    Width = 85
    Height = 17
    Caption = '`ReadOnly`'
    TabOrder = 8
    OnClick = sCheckBox6Click
  end
  object sCheckBox8: TsCheckBox [8]
    Left = 524
    Top = 240
    Width = 114
    Height = 17
    Caption = '`csDropDownList`'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = sCheckBox8Click
  end
  object sRadioGroup1: TsRadioGroup [9]
    Left = 52
    Top = 181
    Width = 149
    Height = 109
    Caption = '`VerticalAlignment`'
    TabOrder = 2
    OnClick = sRadioGroup1Click
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 10
    Items.Strings = (
      '`taAlignTop`'
      '`taAlignBottom`'
      '`taAlignCenter`')
  end
  object sCheckBox2: TsCheckBox [10]
    Left = 524
    Top = 214
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox2Click
  end
  object sGroupBox4: TsGroupBox [11]
    Left = 230
    Top = 309
    Width = 259
    Height = 50
    Caption = 'Disable control'
    TabOrder = 3
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox4CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 27
      Top = 24
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
      Left = 143
      Top = 24
      Width = 61
      Height = 17
      Caption = 'Grayed'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
  end
  object sColorBox2: TsColorBox [12]
    Left = 546
    Top = 147
    Width = 63
    Height = 25
    AutoSize = False
    TabOrder = 1
    OnChange = sColorBox2Change
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
  object sGroupBox2: TsGroupBox [13]
    Left = 52
    Top = 477
    Width = 595
    Height = 132
    Caption = '`BoundLabel` property'
    TabOrder = 10
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 32
    SkinData.CustomBorder.RadiusBottomRight = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit5: TsTrackEdit
      Left = 100
      Top = 31
      Width = 80
      Height = 21
      Enabled = False
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
      Top = 89
      Width = 80
      Height = 21
      Enabled = False
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
      Top = 92
      Width = 164
      Height = 17
      Caption = 'Use HTML tags (`UseHTML`)'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox1Click
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 58
      Width = 80
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit7Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Offset`:'
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = -10.000000000000000000
    end
    object sComboBox11: TsComboBox
      Left = 472
      Top = 89
      Width = 104
      Height = 21
      Enabled = False
      TabOrder = 4
      Visible = False
      OnChange = sComboBox11Change
      BoundLabel.Caption = 'Layout:'
      VerticalAlignment = taVerticalCenter
      LabelFromTextHint = True
      TextHint = 'Change layout'
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
      Style = csDropDownList
    end
    object sMemo1: TsMemo
      Left = 205
      Top = 28
      Width = 371
      Height = 54
      Enabled = False
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
  object sCheckBox9: TsCheckBox [14]
    Left = 524
    Top = 188
    Width = 128
    Height = 17
    Caption = '`LabelFromTextHint`'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox9Click
  end
  object sCheckBox10: TsCheckBox [15]
    Left = 554
    Top = 340
    Width = 92
    Height = 17
    Caption = '`ShowFocus`'
    Enabled = False
    TabOrder = 9
    OnClick = sCheckBox10Click
  end
  object sGroupBox1: TsGroupBox [16]
    Left = 52
    Top = 309
    Width = 149
    Height = 154
    Caption = 'Padding'
    TabOrder = 11
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    object sTrackEdit9: TsTrackEdit
      Left = 72
      Top = 29
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '6'
      OnChange = sTrackEdit9Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Left:'
      Increment = 1.000000000000000000
      Value = 6.000000000000000000
    end
    object sTrackEdit2: TsTrackEdit
      Left = 72
      Top = 56
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Top:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit3: TsTrackEdit
      Left = 72
      Top = 84
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit3Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Right:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit4: TsTrackEdit
      Left = 72
      Top = 112
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Bottom:'
      Increment = 1.000000000000000000
    end
  end
  object sGroupBox3: TsGroupBox [17]
    Left = 230
    Top = 185
    Width = 259
    Height = 106
    Caption = 'AddedGlyph'
    TabOrder = 12
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sSpeedButton3: TsSpeedButton
      Left = 163
      Top = 60
      Width = 54
      Height = 22
      Caption = 'Reset'
      Enabled = False
      OnClick = sSpeedButton3Click
    end
    object sTrackEdit8: TsTrackEdit
      Left = 100
      Top = 33
      Width = 57
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit8Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Blend value:'
      Increment = 1.000000000000000000
    end
    object sColorBox1: TsColorBox
      Left = 100
      Top = 60
      Width = 57
      Height = 21
      Enabled = False
      TabOrder = 1
      OnChange = sColorBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Color tone:'
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
      OnColorPreview = sColorBox1ColorPreview
    end
  end
  object sGroupBox5: TsGroupBox [18]
    Left = 230
    Top = 375
    Width = 417
    Height = 88
    Caption = 'Extended items data (OnGetItemDrawData)'
    TabOrder = 13
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 32
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox5CheckBoxChanged
    object sCheckBox11: TsCheckBox
      Left = 39
      Top = 52
      Width = 85
      Height = 17
      Caption = 'Custom font'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox12Click
    end
    object sCheckBox12: TsCheckBox
      Left = 39
      Top = 27
      Width = 84
      Height = 17
      Caption = 'ShowGlyphs'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox12Click
    end
    object sGroupBox6: TsGroupBox
      Left = 187
      Top = 27
      Width = 193
      Height = 51
      Caption = 'Added text'
      TabOrder = 2
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sCheckBox7: TsCheckBox
        Left = 52
        Top = 25
        Width = 109
        Height = 17
        Caption = 'Show in edit area'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox7Click
      end
    end
  end
  object sComboBox13: TsComboBox [19]
    Tag = 5
    Left = 338
    Top = 149
    Width = 151
    Height = 21
    TabOrder = 14
    OnChange = sComboBox13Change
    BoundLabel.Indent = 2
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    BoundLabel.Layout = sclTopLeft
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    ShowFocus = False
    TextHint = 'Change skin section'
    Items.Strings = (
      ''
      'EDIT'
      'SPEEDBUTTON'
      'TOOLBUTTON'
      'TRANSPARENT'
      'BUTTON')
    Style = csDropDownList
  end
  object sTrackBar1: TsTrackBar [20]
    Left = 140
    Top = 147
    Width = 174
    Height = 28
    Max = 64
    Min = 26
    Position = 64
    PositionToolTip = ptTop
    TabOrder = 15
    TickStyle = tsNone
    OnChange = sTrackBar1Change
    PosByClick = True
  end
  object sCheckBox13: TsCheckBox [21]
    Left = 524
    Top = 341
    Width = 99
    Height = 17
    Caption = '`OnDrawItem`'
    Enabled = False
    TabOrder = 16
    OnClick = sCheckBox13Click
  end
  object sCheckBox14: TsCheckBox [22]
    Left = 524
    Top = 316
    Width = 96
    Height = 17
    Caption = '`DropInplace`'
    TabOrder = 17
    OnClick = sCheckBox14Click
  end
end
