inherited FrameTsBoxes: TFrameTsBoxes
  object sSpeedButton1: TsSpeedButton [0]
    Left = 603
    Top = 456
    Width = 34
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 536
    Top = 361
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
    Left = 536
    Top = 393
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
    Left = 536
    Top = 425
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
  object sTrackEdit6: TsTrackEdit [4]
    Left = 589
    Top = 319
    Width = 48
    Height = 21
    TabOrder = 12
    Text = '0'
    OnChange = sTrackEdit6Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`CaptionYOffset`:'
    Increment = 1.000000000000000000
    MaxValue = 20.000000000000000000
  end
  object sColorBox2: TsColorBox [5]
    Left = 536
    Top = 457
    Width = 61
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
    TabOrder = 6
    OnChange = sColorBox2Change
  end
  object sTrackEdit8: TsTrackEdit [6]
    Left = 589
    Top = 238
    Width = 48
    Height = 21
    TabOrder = 9
    Text = '16'
    OnChange = sTrackEdit8Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`ContentHOffset`:'
    Increment = 1.000000000000000000
    MaxValue = 60.000000000000000000
    Value = 16.000000000000000000
  end
  object sCheckBox5: TsCheckBox [7]
    Left = 244
    Top = 235
    Width = 81
    Height = 17
    Caption = 'Show glyph'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox5Click
  end
  object sGroupBox6: TsGroupBox [8]
    Left = 52
    Top = 353
    Width = 265
    Height = 126
    Caption = '`CaptionMargin`'
    TabOrder = 7
    object sTrackEdit1: TsTrackEdit
      Left = 60
      Top = 40
      Width = 48
      Height = 21
      TabOrder = 0
      Text = '2'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Left`:'
      BoundLabel.Layout = sclLeftTop
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
      Value = 2.000000000000000000
    end
    object sTrackEdit2: TsTrackEdit
      Left = 60
      Top = 74
      Width = 48
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Top`:'
      BoundLabel.Layout = sclLeftTop
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
    object sTrackEdit3: TsTrackEdit
      Left = 188
      Top = 40
      Width = 48
      Height = 21
      TabOrder = 2
      Text = '2'
      OnChange = sTrackEdit3Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Right`:'
      BoundLabel.Layout = sclLeftTop
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
      Value = 2.000000000000000000
    end
    object sTrackEdit4: TsTrackEdit
      Left = 188
      Top = 74
      Width = 48
      Height = 21
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Bottom`:'
      BoundLabel.Layout = sclLeftTop
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
  end
  object sComboBox1: TsComboBox [9]
    Left = 500
    Top = 524
    Width = 137
    Height = 21
    BoundLabel.Caption = #39'CaptionSkin'#39':'
    BoundLabel.Layout = sclTopLeft
    VerticalAlignment = taVerticalCenter
    TextHint = 'Caption skin'
    ShowFocus = False
    LabelFromTextHint = True
    Style = csDropDownList
    ItemIndex = -1
    TabOrder = 15
    OnChange = sComboBox1Change
    Items.Strings = (
      ''
      'PROGRESSH'
      'PANEL'
      'MAINMENU')
  end
  object sGroupBox2: TsGroupBox [10]
    Left = 52
    Top = 265
    Width = 417
    Height = 75
    Caption = 'Autochanging of children states after GroupBox checkbox changing'
    TabOrder = 5
    object sRadioButton1: TsRadioButton
      Left = 24
      Top = 32
      Width = 69
      Height = 17
      Caption = '`csNone`'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 118
      Top = 32
      Width = 97
      Height = 17
      Caption = '`csAsChecked`'
      TabOrder = 1
      OnClick = sRadioButton1Click
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 244
      Top = 32
      Width = 114
      Height = 17
      Caption = '`csAsNotChecked`'
      TabOrder = 2
      OnClick = sRadioButton1Click
    end
  end
  object sCheckBox3: TsCheckBox [11]
    Left = 116
    Top = 156
    Width = 112
    Height = 17
    Caption = '`CheckBoxRadio`'
    TabOrder = 2
    OnClick = sCheckBox3Click
  end
  object sComboBox2: TsComboBox [12]
    Left = 253
    Top = 524
    Width = 224
    Height = 21
    BoundLabel.Caption = '`DefaultManager.Options.GroupBoxStyle`:'
    BoundLabel.Layout = sclTopLeft
    TextHint = 'GroupBoxes style in whole app'
    ShowFocus = False
    LabelFromTextHint = True
    Style = csDropDownList
    ItemIndex = -1
    TabOrder = 14
    OnChange = sComboBox2Change
    Items.Strings = (
      'gsStandard'
      'gsCard')
  end
  object sCheckBox6: TsCheckBox [13]
    Left = 80
    Top = 235
    Width = 114
    Height = 17
    Caption = '`CheckBoxVisible`'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox6Click
  end
  object sComboBox3: TsComboBox [14]
    Left = 52
    Top = 524
    Width = 176
    Height = 21
    BoundLabel.Caption = '`sGroupBox6.BoxStyle`:'
    BoundLabel.Layout = sclTopLeft
    TextHint = 'Custom GroupBox style'
    ShowFocus = False
    LabelFromTextHint = True
    Style = csDropDownList
    ItemIndex = -1
    TabOrder = 13
    OnChange = sComboBox3Change
    Items.Strings = (
      'bsDefault'
      'bsStandard'
      'bsCard')
  end
  object sRadioGroup1: TsRadioGroup [15]
    Left = 372
    Top = 48
    Width = 265
    Height = 133
    Caption = 'sRadioGroup1'
    TabOrder = 1
    Images = FormData.CharList16
    ImageIndex = 5
    CheckBoxVisible = True
    Checked = True
    Columns = 2
    ItemIndex = 0
    ContentVOffset = 6
    ContentHOffset = 16
    Items.Strings = (
      'Item 0'
      'Item 1'
      'Item 2'
      'Item 3'
      'Item 4'
      'Item 5'
      'Item 6'
      'Item 7')
  end
  object sRadioGroup2: TsRadioGroup [16]
    Left = 340
    Top = 353
    Width = 129
    Height = 126
    Caption = '`CaptionLayout`'
    TabOrder = 8
    ItemIndex = 0
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      '`clTopLeft`'
      '`clTopCenter`'
      '`clTopRight`')
    OnChange = sRadioGroup2Change
  end
  object sTrackEdit5: TsTrackEdit [17]
    Left = 589
    Top = 292
    Width = 48
    Height = 21
    TabOrder = 11
    Text = '0'
    OnChange = sTrackEdit5Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`CaptionWidth`:'
    Increment = 1.000000000000000000
    MaxValue = 200.000000000000000000
  end
  object sTrackEdit7: TsTrackEdit [18]
    Left = 589
    Top = 265
    Width = 48
    Height = 21
    TabOrder = 10
    Text = '6'
    OnChange = sTrackEdit7Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`ContentVOffset`:'
    Increment = 1.000000000000000000
    MaxValue = 40.000000000000000000
    Value = 6.000000000000000000
  end
  object sGroupBox1: TsGroupBox [19]
    Left = 52
    Top = 48
    Width = 273
    Height = 97
    Caption = 'sGroupBox1'
    TabOrder = 0
    Images = FormData.CharList16
    ImageIndex = 5
    CheckBoxVisible = True
    Checked = True
    object sCheckBox1: TsCheckBox
      Left = 28
      Top = 36
      Width = 84
      Height = 17
      Caption = 'sCheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object sCheckBox2: TsCheckBox
      Left = 28
      Top = 59
      Width = 84
      Height = 17
      Caption = 'sCheckBox2'
      AllowGrayed = True
      State = cbGrayed
      TabOrder = 1
    end
    object sEdit1: TsEdit
      Left = 136
      Top = 58
      Width = 113
      Height = 21
      TabOrder = 2
      Text = 'sEdit1'
    end
  end
end
