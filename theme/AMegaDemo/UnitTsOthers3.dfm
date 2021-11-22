inherited FrameTsOthers3: TFrameTsOthers3
  Width = 795
  Height = 589
  Align = alClient
  object sFilenameEdit1: TsFilenameEdit [0]
    Left = 477
    Top = 36
    Width = 200
    Height = 32
    AutoSize = False
    MaxLength = 255
    TabOrder = 2
    Text = ''
    TextHint = 'Input file name'
    AddedGlyph.ColorTone = 36405
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 0
    BoundLabel.Indent = 1
    BoundLabel.Caption = 'sFilenameEdit1'
    BoundLabel.Layout = sclTopLeft
    SkinData.OuterEffects.Visibility = ovAlways
    Padding.Left = 6
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    GlyphMode.ColorTone = 36405
    ButtonWidth = 32
    CheckOnExit = True
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 462
    Top = 129
    Width = 215
    Height = 137
    Caption = '`ShowButton`'
    TabOrder = 5
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sSpeedButton1: TsSpeedButton
      Left = 159
      Top = 93
      Width = 34
      Height = 22
      Enabled = False
      OnClick = sSpeedButton1Click
      Images = FormData.CharList16
      ImageIndex = 4
    end
    object sTrackEdit2: TsTrackEdit
      Left = 103
      Top = 63
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Blend`:'
      Increment = 1.000000000000000000
    end
    object sColorBox2: TsColorBox
      Left = 103
      Top = 93
      Width = 51
      Height = 22
      BoundLabel.Active = True
      BoundLabel.Caption = '`ColorTone`:'
      Style = [cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
      OnColorPreview = sColorBox2ColorPreview
      TabOrder = 2
      OnChange = sColorBox2Change
    end
    object sTrackEdit1: TsTrackEdit
      Left = 103
      Top = 33
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '32'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`ButtonWidth`:'
      Increment = 1.000000000000000000
      MaxValue = 64.000000000000000000
      Value = 32.000000000000000000
    end
  end
  object sComboEdit1: TsComboEdit [2]
    Left = 37
    Top = 36
    Width = 200
    Height = 32
    AutoSize = False
    TabOrder = 0
    Text = ''
    TextHint = 'Input something'
    AddedGlyph.ColorTone = 10054400
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 0
    BoundLabel.Indent = 1
    BoundLabel.Caption = 'sComboEdit1'
    BoundLabel.Layout = sclTopLeft
    SkinData.OuterEffects.Visibility = ovAlways
    Padding.Left = 6
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    GlyphMode.ColorTone = 10054400
    ButtonWidth = 32
    CheckOnExit = True
  end
  object sGroupBox2: TsGroupBox [3]
    Left = 37
    Top = 129
    Width = 396
    Height = 248
    Caption = 'TsDateEdit'
    TabOrder = 4
    object sDateEdit1: TsDateEdit
      Left = 40
      Top = 54
      Width = 164
      Height = 32
      AutoSize = False
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      TextHint = 'Input date'
      AddedGlyph.ColorTone = 10054400
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 0
      BoundLabel.Indent = 1
      BoundLabel.Caption = 'sDateEdit1'
      BoundLabel.Layout = sclTopLeft
      SkinData.OuterEffects.Visibility = ovAlways
      Padding.Left = 6
      VerticalAlignment = taVerticalCenter
      LabelFromTextHint = True
      GlyphMode.ColorTone = 10054400
      ButtonWidth = 32
    end
    object sCheckBox12: TsCheckBox
      Left = 237
      Top = 167
      Width = 140
      Height = 18
      Caption = '`TravellingSelection`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 8
      OnClick = sCheckBox12Click
    end
    object sCheckBox8: TsCheckBox
      Left = 237
      Top = 137
      Width = 140
      Height = 18
      Caption = '`ShowTodayBtn`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = sCheckBox8Click
    end
    object sCheckBox9: TsCheckBox
      Left = 237
      Top = 107
      Width = 140
      Height = 18
      Caption = '`ShowWeeks`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = sCheckBox9Click
    end
    object sCheckBox5: TsCheckBox
      Left = 237
      Top = 197
      Width = 140
      Height = 18
      Caption = '`ShowCurrentDate`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = sCheckBox5Click
    end
    object sCheckBox2: TsCheckBox
      Left = 237
      Top = 77
      Width = 140
      Height = 18
      Caption = '`Animated`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = sCheckBox2Click
    end
    object sTrackEdit3: TsTrackEdit
      Left = 156
      Top = 134
      Width = 48
      Height = 21
      TabOrder = 2
      Text = '18'
      OnChange = sTrackEdit3Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`TitleHeight`:'
      Increment = 1.000000000000000000
      MaxValue = 64.000000000000000000
      MinValue = 14.000000000000000000
      Value = 18.000000000000000000
    end
    object sTrackEdit4: TsTrackEdit
      Left = 156
      Top = 104
      Width = 48
      Height = 21
      TabOrder = 1
      Text = '18'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`TitleBtnsWidth`:'
      Increment = 1.000000000000000000
      MaxValue = 64.000000000000000000
      MinValue = 14.000000000000000000
      Value = 18.000000000000000000
    end
    object sTrackEdit5: TsTrackEdit
      Left = 156
      Top = 164
      Width = 48
      Height = 21
      TabOrder = 3
      Text = '216'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`PopupWidth`:'
      Increment = 1.000000000000000000
      MaxValue = 400.000000000000000000
      MinValue = 50.000000000000000000
      Value = 216.000000000000000000
    end
    object sTrackEdit6: TsTrackEdit
      Left = 156
      Top = 194
      Width = 48
      Height = 21
      TabOrder = 4
      Text = '136'
      OnChange = sTrackEdit6Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`PopupHeight`:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      MinValue = 50.000000000000000000
      Value = 136.000000000000000000
    end
  end
  object sGroupBox4: TsGroupBox [4]
    Left = 37
    Top = 397
    Width = 397
    Height = 120
    Caption = 'TsCalcEdit'
    TabOrder = 7
    object sCalcEdit1: TsCalcEdit
      Left = 40
      Top = 54
      Width = 164
      Height = 32
      AutoSize = False
      MaxLength = 255
      TabOrder = 0
      AddedGlyph.ColorTone = 10054400
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 0
      BoundLabel.Active = True
      BoundLabel.Indent = 1
      BoundLabel.Caption = 'sCalcEdit1'
      BoundLabel.Layout = sclTopLeft
      SkinData.OuterEffects.Visibility = ovAlways
      Padding.Left = 6
      VerticalAlignment = taVerticalCenter
      GlyphMode.ColorTone = 10054400
      ButtonWidth = 32
      CheckOnExit = True
      Value = 555.550000000000000000
    end
    object sCheckBox6: TsCheckBox
      Left = 237
      Top = 63
      Width = 124
      Height = 17
      Caption = '`ShowZeroIfEmpty`'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox6Click
    end
  end
  object sCheckBox3: TsCheckBox [5]
    Left = 484
    Top = 486
    Width = 148
    Height = 18
    Caption = '`ReadOnly`'
    AutoSize = False
    TabOrder = 11
    OnClick = sCheckBox3Click
  end
  object sGroupBox3: TsGroupBox [6]
    Left = 462
    Top = 284
    Width = 215
    Height = 106
    Caption = '`AddedGlyph`'
    TabOrder = 6
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sSpeedButton3: TsSpeedButton
      Left = 159
      Top = 61
      Width = 34
      Height = 22
      Enabled = False
      OnClick = sSpeedButton3Click
      Images = FormData.CharList16
      ImageIndex = 4
    end
    object sTrackEdit8: TsTrackEdit
      Left = 103
      Top = 31
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit8Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Blend`:'
      Increment = 1.000000000000000000
    end
    object sColorBox1: TsColorBox
      Left = 103
      Top = 61
      Width = 51
      Height = 22
      BoundLabel.Active = True
      BoundLabel.Caption = '`ColorTone`:'
      Style = [cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
      OnColorPreview = sColorBox1ColorPreview
      TabOrder = 1
      OnChange = sColorBox1Change
    end
  end
  object sCheckBox7: TsCheckBox [7]
    Left = 274
    Top = 74
    Width = 108
    Height = 17
    Caption = '`ShowRootBtns`'
    TabOrder = 3
    OnClick = sCheckBox7Click
  end
  object sDirectoryEdit1: TsDirectoryEdit [8]
    Left = 257
    Top = 36
    Width = 200
    Height = 32
    AutoSize = False
    MaxLength = 255
    TabOrder = 1
    Text = ''
    TextHint = 'sDirectoryEdit1'
    AddedGlyph.ColorTone = 32938
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 0
    BoundLabel.Indent = 1
    BoundLabel.Caption = 'sDirectoryEdit1'
    BoundLabel.Layout = sclTopLeft
    SkinData.OuterEffects.Visibility = ovAlways
    Padding.Left = 6
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    GlyphMode.ColorTone = 32938
    ButtonWidth = 32
    CheckOnExit = True
    Root = 'rfDesktop'
  end
  object sCheckBox1: TsCheckBox [9]
    Left = 484
    Top = 462
    Width = 148
    Height = 18
    Caption = '`DirectInput`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = sCheckBox1Click
  end
  object sCheckBox4: TsCheckBox [10]
    Left = 484
    Top = 438
    Width = 148
    Height = 18
    Caption = 'Allow outer effects'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = sCheckBox4Click
  end
  object sCheckBox10: TsCheckBox [11]
    Left = 484
    Top = 414
    Width = 148
    Height = 18
    Caption = '`ButtonMode`'
    AutoSize = False
    TabOrder = 8
    OnClick = sCheckBox10Click
  end
end
