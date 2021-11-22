inherited FrameTsButton: TFrameTsButton
  object sSpeedButton3: TsSpeedButton [0]
    Left = 539
    Top = 132
    Width = 57
    Height = 21
    Caption = 'Reset'
    Enabled = False
    OnClick = sSpeedButton3Click
  end
  object sLabel1: TsLabel [1]
    Left = 74
    Top = 347
    Width = 507
    Height = 46
    AutoSize = False
    Caption = 
      '* Showing of focus in all application may be forbidden from one ' +
      'point: '#13#10'TsSkinManager.ButtonsOptions.ShowFocusRect property'
    WordWrap = True
  end
  object sGroupBox3: TsGroupBox [2]
    Left = 52
    Top = 228
    Width = 252
    Height = 81
    Caption = 'Show glyph'
    TabOrder = 1
    CaptionLayout = clTopCenter
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sCheckBox9: TsCheckBox
      Tag = 5
      Left = 143
      Top = 39
      Width = 86
      Height = 18
      Caption = '`Reflected`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox9Click
    end
    object sTrackEdit4: TsTrackEdit
      Left = 59
      Top = 36
      Width = 57
      Height = 21
      TabOrder = 1
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
  object sCheckBox2: TsCheckBox [3]
    Left = 509
    Top = 100
    Width = 91
    Height = 17
    Caption = 'Allow shadow'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox2Click
  end
  object sComboBox4: TsComboBox [4]
    Tag = 5
    Left = 440
    Top = 167
    Width = 156
    Height = 21
    TabOrder = 2
    OnChange = sComboBox4Change
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    VerticalAlignment = taVerticalCenter
    ShowFocus = False
    Items.Strings = (
      ''
      'BUTTON_HUGE'
      'SPEEDBUTTON'
      'TOOLBUTTON'
      'TRANSPARENT'
      'BUTTON'
      'SPEEDBUTTON_SMALL'
      'WEBBUTTON')
    Style = csDropDownList
  end
  object sGroupBox1: TsGroupBox [5]
    Left = 344
    Top = 228
    Width = 252
    Height = 81
    Caption = 'Disable control'
    TabOrder = 0
    CaptionLayout = clTopCenter
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 120
      Top = 39
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
      Left = 26
      Top = 39
      Width = 61
      Height = 17
      Caption = 'Grayed'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
  end
  object sTrackEdit5: TsTrackEdit [6]
    Left = 440
    Top = 98
    Width = 41
    Height = 21
    TabOrder = 4
    Text = '0'
    OnChange = sTrackEdit5Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`HUEOffset`:'
    Increment = 1.000000000000000000
    MaxValue = 360.000000000000000000
  end
  object sButton1: TsButton [7]
    Tag = 5
    Left = 52
    Top = 84
    Width = 221
    Height = 104
    Caption = 'bsCommandLink'
    CommandLinkHint = 
      'This style is supported in the TsButton in all Delphi and Window' +
      's versions'
    DisabledImageIndex = 1
    ImageIndex = 7
    ImageMargins.Left = 2
    ImageMargins.Right = 2
    Images = sVirtualImageList1
    Style = bsCommandLink
    TabOrder = 6
    SkinData.OuterEffects.Visibility = ovAlways
    Reflected = True
    ContentMargin = 12
  end
  object sCheckBox1: TsCheckBox [8]
    Left = 74
    Top = 324
    Width = 169
    Height = 17
    Caption = 'Show focus rect in this button'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = sCheckBox1Click
  end
  object sColorBox1: TsColorBox [9]
    Left = 440
    Top = 132
    Width = 88
    Height = 21
    TabOrder = 3
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
  object sVirtualImageList1: TsVirtualImageList
    Height = 32
    Width = 32
    AlphaImageList = FormData.sCharImageList1
    Left = 276
    Top = 424
    Bitmap = {}
  end
end
