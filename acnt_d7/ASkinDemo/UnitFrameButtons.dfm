inherited Frame_Buttons: TFrame_Buttons
  AutoScroll = False
  object sLabel5: TsLabel [0]
    Tag = 5
    Left = 463
    Top = 215
    Width = 59
    Height = 13
    SkinManager = MainForm.sSkinManager1
    Caption = 'HUE offset: '
  end
  object sLabel6: TsLabel [1]
    Tag = 5
    Left = 654
    Top = 213
    Width = 6
    Height = 13
    SkinManager = MainForm.sSkinManager1
    Caption = '0'
  end
  object sLabel7: TsLabel [2]
    Tag = 5
    Left = 48
    Top = 292
    Width = 349
    Height = 13
    SkinManager = MainForm.sSkinManager1
    Caption = 
      'Buttons with SkinData.SkinSection property changed to '#39'BUTTON_HU' +
      'GE'#39':'
  end
  object sSpeedButton3: TsSpeedButton [3]
    Left = 618
    Top = 170
    Width = 41
    Height = 22
    Caption = 'Reset'
    OnClick = sSpeedButton3Click
    SkinData.SkinSection = 'SPEEDBUTTON'
  end
  object sBitBtn3: TsBitBtn [4]
    Tag = 5
    Left = 259
    Top = 315
    Width = 146
    Height = 64
    Caption = 'Exit'
    TabOrder = 0
    OnClick = sBitBtn3Click
    ImageIndex = 4
    Images = MainForm.ImageList32
    Reflected = True
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  object sComboBox2: TsComboBox [5]
    Tag = 5
    Left = 556
    Top = 64
    Width = 137
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = 'Parent controls SkinData.SkinSection property value:'
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 1
    Text = 'PANEL'
    OnChange = sComboBox2Change
    Items.Strings = (
      'BUTTON_BIG'
      'TRANSPARENT'
      'PANEL_LOW'
      'PANEL'
      'BUTTON'
      'SPEEDBUTTON'
      'GROUPBOX'
      'BAR'
      'DRAGBAR'
      'PROGRESSH'
      'TOOLBAR'
      'GRIPH')
  end
  object sBitBtn8: TsBitBtn [6]
    Tag = 5
    Left = 187
    Top = 315
    Width = 64
    Height = 64
    TabOrder = 2
    NumGlyphs = 2
    ImageIndex = 1
    Images = MainForm.ImgList_MultiState
    Reflected = True
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  object sColorBox1: TsColorBox [7]
    Left = 524
    Top = 170
    Width = 89
    Height = 22
    BoundLabel.Active = True
    BoundLabel.Caption = 'Color tone:'
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    DropDownCount = 8
    ItemHeight = 16
    TabOrder = 10
    OnChange = sColorBox1Change
  end
  object sCoolBar1: TsCoolBar [8]
    Left = 0
    Top = 0
    Width = 703
    Height = 57
    Align = alNone
    BandBorderStyle = bsNone
    Bands = <
      item
        Break = False
        Control = sToolBar1
        ImageIndex = -1
        MinHeight = 36
        Width = 152
      end
      item
        Break = False
        Control = sToolBar2
        ImageIndex = -1
        MinHeight = 36
        Width = 535
      end>
    BorderWidth = 4
    EdgeBorders = []
    SkinData.SkinSection = 'TOOLBAR'
    SkinData.OuterEffects.Visibility = ovAlways
    object sToolBar2: TsToolBar
      Left = 161
      Top = 0
      Width = 522
      Height = 36
      Align = alNone
      ButtonHeight = 34
      ButtonWidth = 35
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = MainForm.ImageList16
      TabOrder = 0
      Transparent = True
      SkinData.SkinSection = 'TRANSPARENT'
      object ToolButton1: TToolButton
        Tag = 5
        Left = 0
        Top = 2
        ImageIndex = 3
      end
      object ToolButton8: TToolButton
        Tag = 5
        Left = 35
        Top = 2
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
      end
      object ToolButton6: TToolButton
        Tag = 5
        Left = 70
        Top = 2
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
      end
      object ToolButton5: TToolButton
        Left = 105
        Top = 2
        Width = 8
        ImageIndex = 4
        Style = tbsDivider
      end
      object ToolButton7: TToolButton
        Tag = 5
        Left = 113
        Top = 2
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
      end
      object ToolButton4: TToolButton
        Tag = 5
        Left = 148
        Top = 2
        DropdownMenu = PopupMenu1
        ImageIndex = 7
      end
    end
    object sToolBar1: TsToolBar
      Left = 9
      Top = 0
      Width = 139
      Height = 36
      Align = alNone
      ButtonHeight = 34
      ButtonWidth = 35
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = MainForm.ImageList16
      TabOrder = 1
      Transparent = True
      SkinData.SkinSection = 'TRANSPARENT'
      object ToolButton2: TToolButton
        Tag = 5
        Left = 0
        Top = 2
        ImageIndex = 6
      end
      object ToolButton10: TToolButton
        Tag = 5
        Left = 35
        Top = 2
        ImageIndex = 5
      end
      object ToolButton12: TToolButton
        Tag = 5
        Left = 70
        Top = 2
        ImageIndex = 4
      end
    end
  end
  object sGroupBox2: TsGroupBox [9]
    Tag = 5
    Left = 448
    Top = 257
    Width = 221
    Height = 114
    Caption = ' Glyphs: '
    TabOrder = 3
    SkinData.SkinSection = 'GROUPBOX'
    object sLabel1: TsLabel
      Tag = 5
      Left = 18
      Top = 55
      Width = 44
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'Blending:'
    end
    object sLabel2: TsLabel
      Tag = 5
      Left = 189
      Top = 55
      Width = 6
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '0'
    end
    object sLabel3: TsLabel
      Tag = 5
      Left = 189
      Top = 26
      Width = 12
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = '32'
    end
    object sLabel4: TsLabel
      Tag = 5
      Left = 39
      Top = 26
      Width = 23
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'Size:'
    end
    object sCheckBox1: TsCheckBox
      Tag = 5
      Left = 36
      Top = 82
      Width = 55
      Height = 20
      Caption = 'Grayed'
      TabOrder = 0
      OnClick = sCheckBox1Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sTrackBar1: TsTrackBar
      Tag = 5
      Left = 64
      Top = 50
      Width = 121
      Height = 25
      Max = 100
      Frequency = 5
      TabOrder = 1
      OnChange = sTrackBar1Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
    end
    object sCheckBox2: TsCheckBox
      Tag = 5
      Left = 120
      Top = 82
      Width = 66
      Height = 20
      Caption = 'Reflected'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox2Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sTrackBar2: TsTrackBar
      Tag = 5
      Left = 64
      Top = 22
      Width = 121
      Height = 25
      Max = 32
      Min = 16
      Position = 32
      TabOrder = 3
      OnChange = sTrackBar2Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
    end
  end
  object sComboBox4: TsComboBox [10]
    Tag = 5
    Left = 524
    Top = 129
    Width = 137
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = 'SkinSection:'
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 4
    TabOrder = 6
    Text = 'BUTTON'
    OnChange = sComboBox4Change
    Items.Strings = (
      'TOOLBUTTON'
      'BUTTON_BIG'
      'BUTTON_HUGE'
      'TRANSPARENT'
      'BUTTON'
      'SPEEDBUTTON'
      'SPEEDBUTTON_SMALL'
      'WEBBUTTON')
  end
  object sBitBtn6: TsBitBtn [11]
    Tag = 5
    Left = 116
    Top = 315
    Width = 64
    Height = 64
    TabOrder = 5
    NumGlyphs = 2
    ImageIndex = 0
    Images = MainForm.ImgList_MultiState
    Reflected = True
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  object sTrackBar3: TsTrackBar [12]
    Tag = 5
    Left = 524
    Top = 208
    Width = 129
    Height = 29
    Max = 360
    Frequency = 10
    TabOrder = 7
    TickStyle = tsNone
    OnChange = sTrackBar3Change
    SkinData.SkinSection = 'TRACKBAR'
    ShowProgress = True
    BarOffsetV = 0
    BarOffsetH = 0
  end
  object sCheckBox3: TsCheckBox [13]
    Left = 13
    Top = 64
    Width = 38
    Height = 20
    Caption = 'Flat'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = sCheckBox3Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sPanel2: TsPanel [14]
    Left = 44
    Top = 104
    Width = 341
    Height = 169
    BevelOuter = bvLowered
    TabOrder = 4
    SkinData.SkinSection = 'PANEL_LOW'
    SkinData.OuterEffects.Visibility = ovAlways
    object sSpeedButton1: TsSpeedButton
      Tag = 5
      Left = 264
      Top = 12
      Width = 66
      Height = 45
      Flat = True
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 0
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.ImgList_MultiState
      TextAlignment = taLeftJustify
      ImageIndex = 0
      Reflected = True
      ShowCaption = False
    end
    object sSpeedButton2: TsSpeedButton
      Tag = 5
      Left = 264
      Top = 62
      Width = 66
      Height = 45
      Flat = True
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = 0
      ButtonStyle = tbsDropDown
      SkinData.SkinSection = 'SPEEDBUTTON'
      DropdownMenu = PopupMenu1
      Images = MainForm.ImgList_MultiState
      TextAlignment = taLeftJustify
      ImageIndex = 1
      Reflected = True
      ShowCaption = False
    end
    object sBitBtn1: TsBitBtn
      Tag = 5
      Left = 12
      Top = 118
      Width = 100
      Height = 39
      Caption = 'Default'#13#10'button'
      Default = True
      TabOrder = 0
      NumGlyphs = 2
      Spacing = 5
      ImageIndex = 0
      Images = MainForm.ImgList_MultiState
      Reflected = True
    end
    object sButton1: TsButton
      Tag = 5
      Left = 12
      Top = 12
      Width = 242
      Height = 96
      Caption = 'bsCommandLink style'
      TabOrder = 1
      ShowFocus = False
      CommandLinkHint = 
        'This style is supported in TsButton in all Delphi and Windows ve' +
        'rsions'
      Images = MainForm.ImageList32
      ImageMargins.Left = 2
      ImageMargins.Right = 2
      HotImageIndex = 1
      DisabledImageIndex = 2
      PressedImageIndex = 3
      SelectedImageIndex = 4
      ImageIndex = 0
      Style = bsCommandLink
      ContentMargin = 14
      Reflected = True
    end
    object sBitBtn2: TsBitBtn
      Tag = 5
      Left = 121
      Top = 118
      Width = 100
      Height = 39
      Caption = 'Red'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      NumGlyphs = 2
      Spacing = 5
      ImageIndex = 1
      Images = MainForm.ImgList_MultiState
      Reflected = True
      SkinData.CustomFont = True
    end
    object sBitBtn5: TsBitBtn
      Tag = 5
      Left = 230
      Top = 118
      Width = 100
      Height = 39
      Caption = 'Blue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      NumGlyphs = 2
      Spacing = 5
      ImageIndex = 2
      Images = MainForm.ImgList_MultiState
      Reflected = True
      SkinData.CustomFont = True
    end
  end
  object sBitBtn4: TsBitBtn [15]
    Tag = 5
    Left = 44
    Top = 315
    Width = 64
    Height = 64
    TabOrder = 11
    NumGlyphs = 2
    ImageIndex = 0
    Images = MainForm.ImgList_MultiState
    Reflected = True
    SkinData.SkinSection = 'BUTTON_HUGE'
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 104
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 505
    Top = 78
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
