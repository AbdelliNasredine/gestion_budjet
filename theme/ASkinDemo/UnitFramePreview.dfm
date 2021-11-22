inherited Frame_Preview: TFrame_Preview
  object sStickyLabel1: TsLabel [0]
    Left = 8
    Top = 292
    Width = 93
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = '    HUE Offset:'
    Layout = tlBottom
  end
  object sStickyLabel3: TsLabel [1]
    Left = 164
    Top = 292
    Width = 92
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = '    Saturation:'
    Layout = tlBottom
  end
  object sLabel2: TsLabel [2]
    Left = 260
    Top = 292
    Width = 48
    Height = 25
    AutoSize = False
    Caption = '0'
    Layout = tlBottom
  end
  object sLabel1: TsLabel [3]
    Left = 105
    Top = 292
    Width = 48
    Height = 25
    AutoSize = False
    Caption = '0'
    Layout = tlBottom
  end
  object sStickyLabel2: TsLabel [4]
    Left = 320
    Top = 292
    Width = 96
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = '    Brightness:'
    Layout = tlBottom
  end
  object sLabel3: TsLabel [5]
    Left = 420
    Top = 292
    Width = 48
    Height = 25
    AutoSize = False
    Caption = '0'
    Layout = tlBottom
  end
  object sTrackBar2: TsTrackBar [6]
    Left = 175
    Top = 317
    Width = 160
    Height = 24
    Max = 100
    Min = -100
    PageSize = 24
    Frequency = 20
    TabOrder = 3
    TickStyle = tsNone
    OnChange = sTrackBar2Change
  end
  object sBitBtn2: TsBitBtn [7]
    Left = 16
    Top = 354
    Width = 236
    Height = 36
    Caption = 'Test in new form'
    Enabled = False
    Margin = 16
    Spacing = 12
    TabOrder = 4
    OnClick = sBitBtn2Click
    Reflected = True
    Grayed = True
    Blend = 25
    ImageIndex = 25
    Images = MainForm.CharImageList16
    SkinData.SkinSection = 'SPEEDBUTTON'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sBitBtn1: TsBitBtn [8]
    Left = 260
    Top = 354
    Width = 236
    Height = 36
    Caption = 'Apply this skin'
    Enabled = False
    Margin = 16
    Spacing = 12
    TabOrder = 6
    OnClick = sBitBtn1Click
    Reflected = True
    Grayed = True
    Blend = 25
    ImageIndex = 26
    Images = MainForm.CharImageList16
    SkinData.SkinSection = 'SPEEDBUTTON'
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sDirectoryEdit1: TsDirectoryEdit [9]
    Left = 16
    Top = 18
    Width = 480
    Height = 21
    AutoSize = False
    MaxLength = 255
    TabOrder = 1
    OnChange = sDirectoryEdit1Change
    AddedGlyph.Images = MainForm.CharImageList16
    AddedGlyph.Blend = 50
    AddedGlyph.ImageIndex = 23
    BoundLabel.Active = True
    BoundLabel.Caption = 'Path to external skins:'
    BoundLabel.Layout = sclTopLeft
    SkinData.OuterEffects.Visibility = ovAlways
    CheckOnExit = True
    Text = ''
    Root = 'rfDesktop'
  end
  object sTrackBar1: TsTrackBar [10]
    Left = 16
    Top = 317
    Width = 160
    Height = 24
    Max = 360
    PageSize = 24
    Frequency = 36
    TabOrder = 2
    TickStyle = tsNone
    OnChange = sTrackBar1Change
  end
  object sTrackBar3: TsTrackBar [11]
    Left = 335
    Top = 317
    Width = 160
    Height = 24
    Max = 100
    Min = -100
    PageSize = 24
    Frequency = 20
    TabOrder = 7
    TickStyle = tsNone
    OnChange = sTrackBar3Change
  end
  object Panel_Preview: TsPanel [12]
    Left = 16
    Top = 48
    Width = 480
    Height = 249
    BevelOuter = bvNone
    BorderWidth = 4
    Caption = 'Preview area'
    Enabled = False
    TabOrder = 5
  end
  object sListBox1: TsListBox [13]
    Left = 519
    Top = 18
    Width = 170
    Height = 373
    Style = lbOwnerDrawVariable
    ItemHeight = 22
    TabOrder = 0
    OnClick = sListBox1Click
    OnDrawItem = sListBox1DrawItem
    BoundLabel.Active = True
    BoundLabel.Caption = 'External skins:'
    BoundLabel.Layout = sclTopLeft
    SkinData.OuterEffects.Visibility = ovAlways
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 636
    Top = 44
  end
  object SkinManager_Preview: TsSkinManager
    Effects.AllowGlowing = False
    ButtonsOptions.OldGlyphsMode = False
    IsDefault = False
    InternalSkins = <>
    Options.NativeBordersMaximized = True
    SkinDirectory = ' '
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    ThirdParty.ThirdScrollControl = ' '
    ThirdParty.ThirdUpDown = ' '
    ThirdParty.ThirdScrollBar = ' '
    ThirdParty.ThirdStaticText = ' '
    ThirdParty.ThirdNativePaint = ' '
    Left = 80
    Top = 80
  end
  object sVirtualImageList1: TsVirtualImageList
    Width = 23
    Left = 552
    Top = 216
  end
end
