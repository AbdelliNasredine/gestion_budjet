inherited Frame_OuterEffects: TFrame_OuterEffects
  Width = 701
  Height = 399
  object sSpeedButton1: TsSpeedButton [0]
    Left = 368
    Top = 72
    Width = 105
    Height = 29
    Caption = 'sSpeedButton1'
    Flat = True
    SkinData.OuterEffects.Visibility = ovAlways
    Images = MainForm.ImageList16
    ImageIndex = 6
  end
  object sEdit1: TsEdit [1]
    Left = 48
    Top = 32
    Width = 130
    Height = 21
    TabOrder = 0
    Text = 'sEdit1'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn1: TsBitBtn [2]
    Left = 48
    Top = 72
    Width = 94
    Height = 29
    Caption = 'sBitBtn1'
    TabOrder = 1
    ImageIndex = 0
    Images = MainForm.ImageList16
    Reflected = True
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn2: TsBitBtn [3]
    Left = 152
    Top = 72
    Width = 94
    Height = 29
    Caption = 'sBitBtn2'
    TabOrder = 2
    ImageIndex = 1
    Images = MainForm.ImageList16
    Reflected = True
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn3: TsBitBtn [4]
    Left = 256
    Top = 72
    Width = 94
    Height = 29
    Caption = 'sBitBtn3'
    TabOrder = 3
    ImageIndex = 4
    Images = MainForm.ImageList16
    Reflected = True
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sPanel1: TsPanel [5]
    Left = 48
    Top = 320
    Width = 425
    Height = 57
    TabOrder = 4
    SkinData.OuterEffects.Visibility = ovAlways
    object sGauge1: TsGauge
      Left = 225
      Top = 16
      Width = 180
      Height = 25
      SkinData.SkinSection = 'GAUGE'
      SkinData.OuterEffects.Visibility = ovAlways
      ForeColor = clBlack
      MaxValue = 100
      Progress = 47
      Suffix = '%'
    end
    object sProgressBar1: TsProgressBar
      Left = 16
      Top = 16
      Width = 180
      Height = 25
      Position = 47
      TabOrder = 0
      SkinData.SkinSection = 'GAUGE'
      SkinData.OuterEffects.Visibility = ovAlways
    end
  end
  object sPanel2: TsPanel [6]
    Left = 48
    Top = 196
    Width = 425
    Height = 113
    BevelOuter = bvLowered
    TabOrder = 5
    SkinData.OuterEffects.Visibility = ovAlways
    object sColorBox1: TsColorBox
      Left = 18
      Top = 16
      Width = 129
      Height = 22
      SkinData.OuterEffects.Visibility = ovAlways
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
      Selected = clRed
      PopupMode = pmPickColor
      DropDownCount = 8
      ItemHeight = 16
      TabOrder = 0
    end
    object sCalcEdit1: TsCalcEdit
      Left = 18
      Top = 48
      Width = 129
      Height = 21
      AutoSize = False
      TabOrder = 1
      SkinData.OuterEffects.Visibility = ovAlways
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object sDirectoryEdit1: TsDirectoryEdit
      Left = 18
      Top = 80
      Width = 129
      Height = 21
      AutoSize = False
      MaxLength = 255
      TabOrder = 2
      CheckOnExit = True
      SkinData.OuterEffects.Visibility = ovAlways
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      Root = 'rfDesktop'
    end
    object sListBox1: TsListBox
      Left = 160
      Top = 16
      Width = 137
      Height = 85
      ItemHeight = 16
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
      TabOrder = 3
      SkinData.SkinSection = 'ALPHAEDIT'
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sBitBtn6: TsBitBtn
      Left = 313
      Top = 17
      Width = 97
      Height = 34
      Caption = 'sBitBtn6'
      TabOrder = 4
      ImageIndex = 1
      Images = MainForm.ImageList16
      Reflected = True
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sBitBtn7: TsBitBtn
      Left = 313
      Top = 63
      Width = 97
      Height = 34
      Caption = 'sBitBtn7'
      TabOrder = 5
      ImageIndex = 2
      Images = MainForm.ImageList16
      Reflected = True
      SkinData.OuterEffects.Visibility = ovAlways
    end
  end
  object sBitBtn8: TsBitBtn [7]
    Left = 520
    Top = 40
    Width = 64
    Height = 64
    Caption = 'sBitBtn8'
    TabOrder = 6
    ImageIndex = 9
    Images = MainForm.ImageList32
    Reflected = True
    ShowCaption = False
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn9: TsBitBtn [8]
    Left = 520
    Top = 128
    Width = 64
    Height = 64
    Caption = 'sBitBtn9'
    TabOrder = 7
    ImageIndex = 2
    Images = MainForm.ImageList32
    Reflected = True
    ShowCaption = False
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn10: TsBitBtn [9]
    Left = 520
    Top = 216
    Width = 64
    Height = 64
    Caption = 'sBitBtn10'
    TabOrder = 8
    ImageIndex = 7
    Images = MainForm.ImageList32
    Reflected = True
    ShowCaption = False
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn11: TsBitBtn [10]
    Left = 520
    Top = 304
    Width = 64
    Height = 64
    Caption = 'sBitBtn10'
    TabOrder = 9
    ImageIndex = 8
    Images = MainForm.ImageList32
    Reflected = True
    ShowCaption = False
    SkinData.SkinSection = 'BUTTON_HUGE'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sGroupBox1: TsGroupBox [11]
    Left = 48
    Top = 118
    Width = 425
    Height = 59
    Caption = 'Controlling of outer effects'
    TabOrder = 10
    CaptionLayout = clTopCenter
    object sCheckBox1: TsCheckBox
      Left = 256
      Top = 22
      Width = 104
      Height = 20
      Caption = 'Use on this frame'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox1Click
      Margin = 8
      SkinData.OuterEffects.Visibility = ovAlways
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox2: TsCheckBox
      Left = 56
      Top = 22
      Width = 110
      Height = 20
      Caption = 'Allow in application'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox2Click
      Margin = 8
      SkinData.OuterEffects.Visibility = ovAlways
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object sTrackEdit1: TsTrackEdit [12]
    Left = 200
    Top = 32
    Width = 126
    Height = 21
    TabOrder = 12
    Text = '77,00'
    SkinData.OuterEffects.Visibility = ovAlways
    HideExcessZeros = False
    Increment = 0.050000000000000000
    MaxValue = 79.000000000000000000
    MinValue = 77.000000000000000000
    ShowProgress = True
    Value = 77.000000000000000000
  end
  object sComboBox1: TsComboBox [13]
    Left = 345
    Top = 32
    Width = 130
    Height = 21
    Alignment = taLeftJustify
    SkinData.OuterEffects.Visibility = ovAlways
    VerticalAlignment = taAlignTop
    ItemHeight = 13
    ItemIndex = -1
    TabOrder = 11
    Text = 'sComboBox1'
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 504
    Top = 24
  end
end