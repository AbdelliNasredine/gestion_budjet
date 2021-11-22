inherited Frame_Buttons: TFrame_Buttons
  Height = 411
  object sLabel5: TsLabel [0]
    Tag = 5
    Left = 457
    Top = 135
    Width = 59
    Height = 13
    Alignment = taRightJustify
    SkinManager = MainForm.sSkinManager1
    Caption = 'HUE offset: '
  end
  object sLabel6: TsLabel [1]
    Tag = 5
    Left = 646
    Top = 135
    Width = 6
    Height = 13
    SkinManager = MainForm.sSkinManager1
    Caption = '0'
  end
  object sLabel7: TsLabel [2]
    Tag = 5
    Left = 48
    Top = 302
    Width = 303
    Height = 13
    SkinManager = MainForm.sSkinManager1
    Caption = 'Buttons with SkinData.SkinSection property = '#39'BUTTON_HUGE'#39':'
  end
  object sSpeedButton3: TsSpeedButton [3]
    Left = 596
    Top = 92
    Width = 57
    Height = 25
    Caption = 'Reset'
    Enabled = False
    OnClick = sSpeedButton3Click
  end
  object sPanel2: TsPanel [4]
    Left = 44
    Top = 25
    Width = 361
    Height = 243
    SkinData.SkinSection = 'PANEL_LOW'
    SkinData.OuterEffects.Visibility = ovAlways
    BevelOuter = bvLowered
    TabOrder = 3
    object sSpeedButton1: TsSpeedButton
      Tag = 5
      Left = 280
      Top = 16
      Width = 62
      Height = 51
      Flat = True
      Layout = blGlyphTop
      Spacing = 0
      Images = MainForm.ImageList32
      TextAlignment = taLeftJustify
      ImageIndex = 6
      ShowCaption = False
    end
    object sSpeedButton2: TsSpeedButton
      Tag = 5
      Left = 280
      Top = 74
      Width = 62
      Height = 51
      Flat = True
      Spacing = 0
      ButtonStyle = tbsDropDown
      DropdownMenu = PopupMenu1
      Images = MainForm.ImageList32
      TextAlignment = taLeftJustify
      ImageIndex = 7
      ShowCaption = False
    end
    object sButton1: TsButton
      Tag = 5
      Left = 16
      Top = 16
      Width = 252
      Height = 109
      Caption = 'bsCommandLink'
      CommandLinkHint = 
        'This style is supported in TsButton in all Delphi and Windows ve' +
        'rsions'
      DisabledImageIndex = 1
      HotImageIndex = 1
      ImageIndex = 0
      ImageMargins.Left = 2
      ImageMargins.Right = 2
      Images = MainForm.ImageList32
      PressedImageIndex = 1
      SelectedImageIndex = 1
      Style = bsCommandLink
      TabOrder = 0
      ShowFocus = False
      Reflected = True
      ContentMargin = 12
    end
    object sBitBtn2: TsBitBtn
      Tag = 5
      Left = 124
      Top = 135
      Width = 100
      Height = 31
      Caption = 'Green'
      Spacing = 5
      TabOrder = 1
      Grayed = True
      ImageIndex = 2
      Images = MainForm.CharImageList16
      OnGetColoring = sBitBtn2GetColoring
    end
    object sBitBtn5: TsBitBtn
      Tag = 5
      Left = 232
      Top = 135
      Width = 100
      Height = 31
      Caption = 'Blue'
      Spacing = 5
      TabOrder = 2
      Grayed = True
      ImageIndex = 2
      Images = MainForm.CharImageList16
      OnGetColoring = sBitBtn5GetColoring
    end
    object sBitBtn1: TsBitBtn
      Tag = 5
      Left = 16
      Top = 135
      Width = 100
      Height = 31
      Caption = 'Red'
      Spacing = 5
      TabOrder = 3
      Grayed = True
      ImageIndex = 2
      Images = MainForm.CharImageList16
      OnGetColoring = sBitBtn1GetColoring
    end
    object sGroupBox1: TsGroupBox
      Left = 16
      Top = 172
      Width = 329
      Height = 61
      Caption = 'Custom colorizing'
      TabOrder = 4
      object sCheckBox5: TsCheckBox
        Left = 147
        Top = 29
        Width = 60
        Height = 16
        Caption = 'Glyphs'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox4Click
      end
      object sCheckBox6: TsCheckBox
        Left = 242
        Top = 29
        Width = 50
        Height = 16
        Caption = 'Text'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = sCheckBox4Click
      end
      object sCheckBox4: TsCheckBox
        Left = 21
        Top = 29
        Width = 84
        Height = 16
        Caption = 'Background'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = sCheckBox4Click
      end
    end
  end
  object sGroupBox2: TsGroupBox [5]
    Tag = 5
    Left = 435
    Top = 186
    Width = 226
    Height = 177
    Caption = ' Glyphs: '
    TabOrder = 2
    object sLabel1: TsLabel
      Tag = 5
      Left = 24
      Top = 66
      Width = 44
      Height = 13
      Alignment = taRightJustify
      SkinManager = MainForm.sSkinManager1
      Caption = 'Blending:'
    end
    object sLabel2: TsLabel
      Tag = 5
      Left = 197
      Top = 66
      Width = 6
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '0'
    end
    object sLabel3: TsLabel
      Tag = 5
      Left = 197
      Top = 34
      Width = 12
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '32'
    end
    object sLabel4: TsLabel
      Tag = 5
      Left = 42
      Top = 34
      Width = 23
      Height = 13
      Alignment = taRightJustify
      SkinManager = MainForm.sSkinManager1
      Caption = 'Size:'
    end
    object sSpeedButton4: TsSpeedButton
      Left = 152
      Top = 130
      Width = 51
      Height = 25
      Caption = 'Reset'
      Enabled = False
      OnClick = sSpeedButton4Click
    end
    object sCheckBox1: TsCheckBox
      Tag = 5
      Left = 36
      Top = 98
      Width = 63
      Height = 16
      Caption = 'Grayed'
      TabOrder = 0
      OnClick = sCheckBox1Click
    end
    object sTrackBar1: TsTrackBar
      Tag = 5
      Left = 69
      Top = 62
      Width = 124
      Height = 31
      Max = 100
      Frequency = 5
      TabOrder = 1
      OnChange = sTrackBar1Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
    end
    object sCheckBox2: TsCheckBox
      Tag = 5
      Left = 124
      Top = 98
      Width = 74
      Height = 16
      Caption = 'Reflected'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox2Click
    end
    object sTrackBar2: TsTrackBar
      Tag = 5
      Left = 69
      Top = 30
      Width = 124
      Height = 31
      Max = 32
      Min = 8
      Position = 32
      TabOrder = 3
      OnChange = sTrackBar2Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
    end
    object sColorBox2: TsColorBox
      Left = 88
      Top = 130
      Width = 57
      Height = 21
      TabOrder = 4
      OnChange = sColorBox2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Color tone:'
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = clNone
      NoneColorColor = clNone
      PopupMode = pmPickColor
    end
  end
  object sColorBox1: TsColorBox [6]
    Left = 516
    Top = 92
    Width = 73
    Height = 21
    TabOrder = 7
    OnChange = sColorBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Color tone:'
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
  end
  object sBitBtn4: TsBitBtn [7]
    Tag = 5
    Left = 44
    Top = 325
    Width = 64
    Height = 64
    TabOrder = 8
    Reflected = True
    ImageIndex = 3
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  object sBitBtn3: TsBitBtn [8]
    Tag = 5
    Left = 259
    Top = 325
    Width = 146
    Height = 64
    Caption = 'Exit'
    Spacing = 8
    TabOrder = 0
    OnClick = sBitBtn3Click
    Reflected = True
    ImageIndex = 4
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  object sTrackBar3: TsTrackBar [9]
    Tag = 5
    Left = 516
    Top = 131
    Width = 129
    Height = 29
    Max = 360
    Frequency = 10
    TabOrder = 6
    TickStyle = tsNone
    OnChange = sTrackBar3Change
    SkinData.SkinSection = 'TRACKBAR'
    ShowProgress = True
  end
  object sBitBtn8: TsBitBtn [10]
    Tag = 5
    Left = 187
    Top = 325
    Width = 64
    Height = 64
    TabOrder = 1
    Reflected = True
    ImageIndex = 1
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  object sComboBox4: TsComboBox [11]
    Tag = 5
    Left = 516
    Top = 51
    Width = 137
    Height = 21
    TabOrder = 5
    OnChange = sComboBox4Change
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = 'SkinSection:'
    Items.Strings = (
      'TOOLBUTTON'
      'BUTTON_BIG'
      'BUTTON_HUGE'
      'TRANSPARENT'
      'BUTTON'
      'SPEEDBUTTON'
      'SPEEDBUTTON_SMALL'
      'WEBBUTTON')
    ItemIndex = 4
    Style = csDropDownList
    Text = 'BUTTON'
  end
  object sBitBtn6: TsBitBtn [12]
    Tag = 5
    Left = 116
    Top = 325
    Width = 64
    Height = 64
    TabOrder = 4
    Reflected = True
    ImageIndex = 8
    Images = MainForm.ImageList32
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 92
    Top = 26
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 537
    Top = 12
    object Item11: TMenuItem
      Caption = 'Item 1'
    end
    object Item21: TMenuItem
      Caption = 'Item 2'
    end
    object Item31: TMenuItem
      Caption = 'Item 3'
    end
    object Item41: TMenuItem
      Caption = 'Item 4'
      object Subitem411: TMenuItem
        Caption = 'Subitem 41'
      end
      object Subitem421: TMenuItem
        Caption = 'Subitem 42'
      end
      object Subitem431: TMenuItem
        Caption = 'Subitem 43'
      end
      object Subitem441: TMenuItem
        Caption = 'Subitem 44'
      end
      object Subitem451: TMenuItem
        Caption = 'Subitem 45'
      end
      object Subitem461: TMenuItem
        Caption = 'Subitem 46'
      end
      object Subitem471: TMenuItem
        Caption = 'Subitem 47'
      end
    end
  end
end
