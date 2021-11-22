inherited Frame_OuterEffects: TFrame_OuterEffects
  Width = 701
  Height = 443
  object sSpeedButton1: TsSpeedButton [0]
    Left = 356
    Top = 150
    Width = 117
    Height = 29
    Caption = 'sSpeedButton1'
    SkinData.OuterEffects.Visibility = ovAlways
    Images = MainForm.CharImageList16
    ImageIndex = 7
    Reflected = True
  end
  object sEdit1: TsEdit [1]
    Left = 46
    Top = 116
    Width = 130
    Height = 21
    TabOrder = 2
    Text = 'sEdit1'
    AddedGlyph.ColorTone = 1878051
    AddedGlyph.Images = MainForm.CharImageList16
    AddedGlyph.ImageIndex = 36
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn1: TsBitBtn [2]
    Left = 46
    Top = 150
    Width = 90
    Height = 29
    Caption = 'sBitBtn1'
    TabOrder = 5
    Reflected = True
    ImageIndex = 15
    Images = MainForm.CharImageList16
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn2: TsBitBtn [3]
    Left = 142
    Top = 150
    Width = 90
    Height = 29
    Caption = 'sBitBtn2'
    TabOrder = 6
    Reflected = True
    ImageIndex = 14
    Images = MainForm.CharImageList16
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn3: TsBitBtn [4]
    Left = 238
    Top = 150
    Width = 90
    Height = 29
    Caption = 'sBitBtn3'
    TabOrder = 7
    Reflected = True
    ImageIndex = 4
    Images = MainForm.CharImageList16
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sPanel1: TsPanel [5]
    Left = 106
    Top = 344
    Width = 367
    Height = 57
    SkinData.OuterEffects.Visibility = ovAlways
    TabOrder = 15
    object sGauge1: TsGauge
      Left = 191
      Top = 16
      Width = 159
      Height = 25
      SkinData.OuterEffects.Visibility = ovAlways
      ForeColor = clBlack
      Progress = 47
      Suffix = '%'
    end
    object sProgressBar1: TsProgressBar
      Left = 16
      Top = 16
      Width = 159
      Height = 25
      Position = 47
      TabOrder = 0
      SkinData.OuterEffects.Visibility = ovAlways
    end
  end
  object sPanel2: TsPanel [6]
    Left = 48
    Top = 194
    Width = 425
    Height = 129
    SkinData.OuterEffects.Visibility = ovAlways
    BevelOuter = bvLowered
    TabOrder = 8
    object sColorBox1: TsColorBox
      Left = 58
      Top = 16
      Width = 87
      Height = 22
      SkinData.OuterEffects.Visibility = ovAlways
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
      ShowColorName = False
      UseAlpha = True
      Selected = clNone
      PopupMode = pmPickColor
      TabOrder = 1
    end
    object sCalcEdit1: TsCalcEdit
      Left = 18
      Top = 53
      Width = 127
      Height = 21
      AutoSize = False
      TabOrder = 2
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sDirectoryEdit1: TsDirectoryEdit
      Left = 18
      Top = 91
      Width = 127
      Height = 21
      AutoSize = False
      MaxLength = 255
      TabOrder = 3
      Text = ''
      CheckOnExit = True
      SkinData.OuterEffects.Visibility = ovAlways
      Root = 'rfDesktop'
    end
    object sListBox1: TsListBox
      Left = 160
      Top = 16
      Width = 137
      Height = 96
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
        'Item 16')
      TabOrder = 4
      LeftPadding = 2
      SkinData.SkinSection = 'ALPHAEDIT'
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sBitBtn6: TsBitBtn
      Left = 313
      Top = 16
      Width = 97
      Height = 46
      Caption = 'sBitBtn6'
      TabOrder = 5
      Reflected = True
      ImageIndex = 8
      Images = MainForm.CharImageList16
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sBitBtn7: TsBitBtn
      Left = 313
      Top = 66
      Width = 97
      Height = 46
      Caption = 'sBitBtn7'
      TabOrder = 6
      Reflected = True
      ImageIndex = 13
      Images = MainForm.CharImageList16
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sSlider1: TsSlider
      Left = 18
      Top = 18
      Width = 31
      Height = 17
      SkinData.OuterEffects.Visibility = ovAlways
      TabOrder = 0
    end
  end
  object sBitBtn8: TsBitBtn [7]
    Left = 520
    Top = 48
    Width = 64
    Height = 64
    Caption = 'sBitBtn8'
    TabOrder = 11
    OnClick = sBitBtn8Click
    Reflected = True
    ShowCaption = False
    ImageIndex = 8
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn9: TsBitBtn [8]
    Left = 520
    Top = 136
    Width = 64
    Height = 64
    Caption = 'sBitBtn9'
    TabOrder = 12
    Reflected = True
    ShowCaption = False
    ImageIndex = 4
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn10: TsBitBtn [9]
    Left = 520
    Top = 224
    Width = 64
    Height = 64
    Caption = 'sBitBtn10'
    TabOrder = 13
    Reflected = True
    ShowCaption = False
    ImageIndex = 6
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn11: TsBitBtn [10]
    Left = 520
    Top = 312
    Width = 64
    Height = 64
    Caption = 'sBitBtn10'
    TabOrder = 14
    Reflected = True
    ShowCaption = False
    ImageIndex = 2
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sGroupBox1: TsGroupBox [11]
    Left = 48
    Top = 35
    Width = 425
    Height = 59
    Caption = 'Customize outer effects in controls'
    TabOrder = 1
    CaptionLayout = clTopCenter
    object sRadioButton1: TsRadioButton
      Left = 26
      Top = 27
      Width = 46
      Height = 17
      Caption = 'None'
      TabOrder = 0
      OnClick = sRadioButton2Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 112
      Top = 28
      Width = 55
      Height = 17
      Caption = 'Always'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = sRadioButton2Click
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 212
      Top = 28
      Width = 61
      Height = 17
      Caption = 'Focused'
      TabOrder = 2
      OnClick = sRadioButton2Click
    end
    object sRadioButton4: TsRadioButton
      Tag = 3
      Left = 308
      Top = 28
      Width = 93
      Height = 17
      Caption = 'MouseHovered'
      TabOrder = 3
      OnClick = sRadioButton2Click
    end
  end
  object sTrackEdit1: TsTrackEdit [12]
    Left = 195
    Top = 116
    Width = 126
    Height = 21
    TabOrder = 3
    Text = '77,00'
    OnChange = sTrackEdit1Change
    AddedGlyph.ColorTone = 1331885
    AddedGlyph.Images = MainForm.CharImageList16
    AddedGlyph.ImageIndex = 7
    SkinData.OuterEffects.Visibility = ovAlways
    ShowProgress = True
    HideExcessZeros = False
    Increment = 0.010000000000000000
    MaxValue = 360.000000000000000000
    MinValue = 77.000000000000000000
    Value = 77.000000000000000000
  end
  object sComboBox1: TsComboBox [13]
    Left = 343
    Top = 116
    Width = 130
    Height = 21
    SkinData.OuterEffects.Visibility = ovAlways
    ItemIndex = -1
    TabOrder = 4
    Text = 'sComboBox1'
  end
  object sSlider2: TsSlider [14]
    Left = 54
    Top = 349
    Width = 36
    Height = 17
    SkinData.OuterEffects.Visibility = ovAlways
    TabOrder = 9
    ContentPlacing = scpBackground
    UseSymbols = True
  end
  object sSlider3: TsSlider [15]
    Left = 54
    Top = 379
    Width = 36
    Height = 17
    SkinData.OuterEffects.Visibility = ovAlways
    TabOrder = 10
    ContentPlacing = scpBackground
    SliderOn = False
    UseSymbols = True
  end
  object sCheckBox2: TsCheckBox [16]
    Left = 54
    Top = 3
    Width = 130
    Height = 33
    Caption = 'Allow in application'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = sCheckBox2Click
    Margin = 8
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBadgeBtn2: TsBadgeBtn [17]
    Left = 566
    Top = 42
    Width = 24
    Height = 24
    TabStop = False
    Caption = '12'
    AttachTo = sBitBtn8
    OffsetX = -6
    OffsetY = 6
  end
  object sBadgeBtn1: TsBadgeBtn [18]
    Left = 319
    Top = 141
    Width = 19
    Height = 19
    Images = MainForm.CharImageList16
    OnClick = sBadgeBtn1Click
    TabStop = False
    ImageIndex = 35
    Caption = ''
    AttachTo = sBitBtn3
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 512
    Top = 24
  end
end
