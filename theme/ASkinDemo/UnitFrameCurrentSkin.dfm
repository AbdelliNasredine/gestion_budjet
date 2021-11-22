inherited Frame_CurrentSkin: TFrame_CurrentSkin
  Width = 714
  Height = 419
  object sHTMLLabel1: TsHTMLLabel [0]
    Left = 358
    Top = 308
    Width = 320
    Height = 77
    Alignment = taCenter
    AutoSize = False
    Caption = 
      '<a href="http://www.alphaskins.com/showdoc.php?l=en&n=0&d=1000">' +
      'Learn more</a> about the package features, tips and tricks<br>'#13'D' +
      'ownload and try <a href="http://www.alphaskins.com/ademos.php?d=' +
      '1000">more demo programs</a>'
    Layout = tlCenter
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 358
    Top = 68
    Width = 320
    Height = 217
    Caption = 'Skin colorization'
    TabOrder = 1
    CaptionLayout = clTopCenter
    CaptionMargin.Left = 6
    CaptionMargin.Top = 3
    CaptionMargin.Right = 6
    CaptionMargin.Bottom = 3
    SkinData.SkinSection = 'PANEL_LOW'
    SkinData.OuterEffects.Visibility = ovAlways
    CaptionYOffset = -3
    ImageIndex = 8
    BoxStyle = bsCard
    object sLabel8: TsLabel
      Left = 142
      Top = 67
      Width = 54
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'HUE Offset'
    end
    object sLabel9: TsLabel
      Left = 143
      Top = 123
      Width = 50
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'Saturation'
    end
    object sLabel12: TsLabel
      Left = 142
      Top = 179
      Width = 50
      Height = 13
      SkinManager = MainForm.sSkinManager1
      Caption = 'Brightness'
    end
    object sTrackBar2: TsTrackBar
      Tag = 5
      Left = 40
      Top = 97
      Width = 243
      Height = 24
      Max = 100
      Min = -100
      PageSize = 24
      Frequency = 20
      PositionToolTip = ptTop
      TabOrder = 1
      TickStyle = tsNone
      ShowProgress = True
      PosByClick = True
      OnUserChanged = sTrackBar2UserChanged
      ShowProgressFrom = -100
    end
    object sTrackBar1: TsTrackBar
      Tag = 5
      Left = 40
      Top = 37
      Width = 243
      Height = 28
      Max = 360
      PageSize = 24
      Frequency = 36
      PositionToolTip = ptTop
      TabOrder = 0
      TickStyle = tsNone
      ShowProgress = True
      PosByClick = True
      OnSkinPaint = sTrackBar1SkinPaint
      OnUserChanged = sTrackBar1UserChanged
    end
    object sTrackBar3: TsTrackBar
      Tag = 5
      Left = 40
      Top = 153
      Width = 243
      Height = 24
      Max = 100
      Min = -100
      PageSize = 24
      Frequency = 20
      PositionToolTip = ptTop
      TabOrder = 2
      TickStyle = tsNone
      ShowProgress = True
      PosByClick = True
      OnUserChanged = sTrackBar3UserChanged
      ShowProgressFrom = -100
    end
  end
  object sGroupBox2: TsGroupBox [2]
    Left = 20
    Top = 68
    Width = 320
    Height = 317
    Caption = 'Some options'
    TabOrder = 2
    CaptionLayout = clTopCenter
    CaptionMargin.Left = 6
    CaptionMargin.Top = 3
    CaptionMargin.Right = 6
    CaptionMargin.Bottom = 3
    SkinData.SkinSection = 'PANEL_LOW'
    SkinData.OuterEffects.Visibility = ovAlways
    CaptionYOffset = -3
    ImageIndex = 3
    BoxStyle = bsCard
    object SliderExtBorders: TsSlider
      Tag = 5
      Left = 271
      Top = 103
      Width = 35
      Height = 17
      SkinData.OuterEffects.Visibility = ovAlways
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.AllowClick = True
      BoundLabel.Indent = 4
      BoundLabel.MaxWidth = 300
      BoundLabel.Caption = 'Enable the Extended Borders mode:'
      ImageIndexOff = 0
      ImageIndexOn = 0
      ContentPlacing = scpBackground
      ThumbSizeInPercent = 45
      UseSymbols = True
      OnSliderChange = SliderExtBordersSliderChange
    end
    object SliderDiscolor: TsSlider
      Tag = 5
      Left = 271
      Top = 45
      Width = 35
      Height = 17
      SkinData.OuterEffects.Visibility = ovAlways
      TabOrder = 1
      BoundLabel.Active = True
      BoundLabel.AllowClick = True
      BoundLabel.Indent = 4
      BoundLabel.MaxWidth = 300
      BoundLabel.Caption = 'Discolored glyphs in buttons, menus, etc:'
      GlyphIndexOff = 5
      GlyphIndexOn = 6
      ImageIndexOff = 5
      ImageIndexOn = 6
      ContentPlacing = scpBackground
      ThumbSizeInPercent = 45
      UseSymbols = True
      OnSliderChange = SliderDiscolorSliderChange
    end
    object SliderNonClient: TsSlider
      Tag = 5
      Left = 271
      Top = 74
      Width = 35
      Height = 17
      SkinData.OuterEffects.Visibility = ovAlways
      TabOrder = 2
      BoundLabel.Active = True
      BoundLabel.AllowClick = True
      BoundLabel.Indent = 4
      BoundLabel.MaxWidth = 300
      BoundLabel.Caption = 'Draw non-client area of forms:'
      ImageIndexOff = 0
      ImageIndexOn = 0
      ContentPlacing = scpBackground
      ThumbSizeInPercent = 45
      UseSymbols = True
      OnSliderChange = SliderNonClientSliderChange
    end
    object SliderBlendOnMove: TsSlider
      Tag = 5
      Left = 271
      Top = 131
      Width = 35
      Height = 17
      SkinData.OuterEffects.Visibility = ovAlways
      TabOrder = 3
      BoundLabel.Active = True
      BoundLabel.AllowClick = True
      BoundLabel.Indent = 4
      BoundLabel.MaxWidth = 300
      BoundLabel.Caption = 'Blend a form when this form is moved:'
      ImageIndexOff = 0
      ImageIndexOn = 0
      ContentPlacing = scpBackground
      ThumbSizeInPercent = 45
      UseSymbols = True
      OnSliderChange = SliderBlendOnMoveSliderChange
    end
    object sComboBox1: TsComboBox
      Left = 156
      Top = 279
      Width = 129
      Height = 22
      BoundLabel.Active = True
      BoundLabel.Caption = 'Arrows style:'
      SkinData.SkinSection = 'GROUPBOX'
      TextHint = 'Arrows style'
      Style = csOwnerDrawFixed
      ItemIndex = 5
      TabOrder = 4
      Text = 'Default'
      OnChange = sComboBox1Change
      OnDrawItem = sComboBox1DrawItem
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        'Default')
    end
    object sGroupBox3: TsGroupBox
      Left = 28
      Top = 168
      Width = 269
      Height = 97
      Caption = 'Fonts management'
      TabOrder = 5
      CaptionLayout = clTopCenter
      Images = MainForm.CharImageList16
      ImageIndex = 9
      object sComboBox3: TsComboBoxEx
        Left = 68
        Top = 59
        Width = 189
        Height = 22
        BoundLabel.Active = True
        BoundLabel.Caption = 'Custom:'
        ItemsEx = <
          item
            Caption = 'Arial'
          end
          item
            Caption = 'Calibri'
          end
          item
            Caption = 'Comic Sans MS'
          end>
        Style = csExDropDownList
        Enabled = False
        ItemIndex = 2
        TabOrder = 0
        Text = 'Comic Sans MS'
        OnChange = sComboBox3Change
      end
      object sComboBox2: TsComboBoxEx
        Tag = 1
        Left = 68
        Top = 27
        Width = 189
        Height = 22
        BoundLabel.Active = True
        BoundLabel.Caption = 'Mode:'
        ItemsEx = <
          item
            Caption = 'Default font (do not change)'
          end
          item
            Caption = 'Font stored in the skin'
          end
          item
            Caption = 'Custom...'
          end>
        Style = csExDropDownList
        ItemIndex = 1
        TabOrder = 1
        Text = 'Font stored in the skin'
        OnChange = sComboBox2Change
      end
    end
  end
  object SkinsDirectoryEdit: TsDirectoryEdit [3]
    Tag = 5
    Left = 358
    Top = 18
    Width = 320
    Height = 21
    MaxLength = 255
    TabOrder = 0
    Text = ''
    OnChange = SkinsDirectoryEditChange
    AddedGlyph.Images = MainForm.CharImageList16
    AddedGlyph.Blend = 25
    AddedGlyph.ImageIndex = 23
    BoundLabel.Active = True
    BoundLabel.Indent = 2
    BoundLabel.Caption = 'Path to external skins: (*.asz files)'
    SkinData.OuterEffects.Visibility = ovAlways
    GlyphMode.ColorTone = 40917
    GlyphMode.Images = MainForm.CharImageList16
    GlyphMode.ImageIndex = 38
    CheckOnExit = True
    Root = 'rfDesktop'
    ShowRootBtns = True
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 4
  end
end
