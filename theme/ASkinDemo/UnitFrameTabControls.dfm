inherited Frame_TabControls: TFrame_TabControls
  Width = 761
  Height = 414
  object sComboBox1: TsComboBox [0]
    Left = 532
    Top = 385
    Width = 153
    Height = 21
    TabOrder = 1
    OnChange = sComboBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection:'
    Items.Strings = (
      'TRANSPARENT'
      'PAGECONTROL'
      'PANEL'
      'PANEL_LOW'
      'GROUPBOX'
      'TOOLBAR'
      'BARPANEL')
    ItemIndex = -1
    Style = csDropDownList
  end
  object sPageControl1: TsPageControl [1]
    Left = 8
    Top = 0
    Width = 677
    Height = 379
    ActivePage = sTabSheet1
    HotTrack = True
    Images = MainForm.CharImageList16
    TabHeight = 24
    TabOrder = 0
    ShowCloseBtns = True
    AllowTabsDrag = True
    TabPadding = -2
    OnCloseBtnClick = sPageControl1CloseBtnClick
    object sTabSheet1: TsTabSheet
      Caption = 'sTabSheet1'
      ImageIndex = 2
      SkinData.SkinSection = 'TABSHEET'
      object sPageControl2: TsPageControl
        Tag = 2
        Left = 40
        Top = 17
        Width = 277
        Height = 220
        ActivePage = sTabSheet9
        HotTrack = True
        Images = MainForm.CharImageList16
        MultiLine = True
        TabHeight = 110
        TabOrder = 0
        TabWidth = 42
        AccessibleDisabledPages = False
        RotateCaptions = True
        ShowCloseBtns = True
        ShowFocus = False
        TabMargin = 8
        object sTabSheet9: TsTabSheet
          Caption = 'Red'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 42
          ParentFont = False
          SkinData.CustomFont = True
          object sRoundBtn1: TsRoundBtn
            Left = 38
            Top = 10
            Width = 80
            Height = 80
            Images = sVirtualImageList1
            SkinData.CustomColor = True
            ImageIndex = 0
            Caption = 'Red'
            PaintOptions.BevelWidth = 1
            PaintOptions.DataActive.Color1 = 6447871
            PaintOptions.DataActive.Color2 = 6447871
            PaintOptions.DataActive.FontColor = clWhite
            PaintOptions.DataActive.BorderColor = 2566061
            PaintOptions.DataNormal.Color1 = 6447871
            PaintOptions.DataNormal.Color2 = 2566061
            PaintOptions.DataNormal.FontColor = clWhite
            PaintOptions.DataNormal.BorderColor = 2566061
            PaintOptions.DataPressed.Color1 = 2566061
            PaintOptions.DataPressed.Color2 = 2566061
            PaintOptions.DataPressed.FontColor = clWhite
            PaintOptions.DataPressed.BorderColor = 2566061
            Layout = blGlyphTop
          end
        end
        object sTabSheet8: TsTabSheet
          Caption = 'Blue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 41
          ParentFont = False
          SkinData.CustomFont = True
          object sRoundBtn2: TsRoundBtn
            Left = 38
            Top = 10
            Width = 80
            Height = 80
            Images = sVirtualImageList1
            SkinData.CustomColor = True
            ImageIndex = 0
            Caption = 'Blue'
            PaintOptions.BevelWidth = 1
            PaintOptions.DataActive.Color1 = 15571026
            PaintOptions.DataActive.Color2 = 15571026
            PaintOptions.DataActive.FontColor = clWhite
            PaintOptions.DataActive.BorderColor = 11161884
            PaintOptions.DataNormal.Color1 = 15571026
            PaintOptions.DataNormal.Color2 = 11161884
            PaintOptions.DataNormal.FontColor = clWhite
            PaintOptions.DataNormal.BorderColor = 11161884
            PaintOptions.DataPressed.Color1 = 11161884
            PaintOptions.DataPressed.Color2 = 11161884
            PaintOptions.DataPressed.FontColor = clWhite
            PaintOptions.DataPressed.BorderColor = 11161884
            Layout = blGlyphTop
          end
        end
      end
      object sCheckBox17: TsCheckBox
        Left = 182
        Top = 281
        Width = 150
        Height = 17
        Caption = 'RotateCaptions'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = sCheckBox17Click
      end
      object sCheckBox4: TsCheckBox
        Left = 26
        Top = 281
        Width = 150
        Height = 17
        Caption = 'Custom Font color'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = sCheckBox4Click
      end
      object sCheckBox5: TsCheckBox
        Left = 182
        Top = 256
        Width = 150
        Height = 17
        Caption = 'Active tab enlarged'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = sCheckBox5Click
      end
      object sCheckBox6: TsCheckBox
        Left = 26
        Top = 256
        Width = 150
        Height = 17
        Caption = 'Active is bold'
        AutoSize = False
        TabOrder = 4
        OnClick = sCheckBox6Click
      end
      object sRadioGroup1: TsRadioGroup
        Left = 352
        Top = 91
        Width = 132
        Height = 105
        Caption = 'Tab alignment'
        TabOrder = 5
        OnClick = sRadioGroup1Click
        CaptionLayout = clTopCenter
        ItemIndex = 2
        ContentVOffset = 4
        Items.Strings = (
          'taLeftJustify'
          'taRightJustify'
          'taCenter')
      end
      object sRadioGroup2: TsRadioGroup
        Tag = 5
        Left = 352
        Top = 200
        Width = 132
        Height = 133
        Caption = 'Tabs position'
        TabOrder = 6
        OnClick = sRadioGroup2Click
        CaptionLayout = clTopCenter
        ItemIndex = 0
        ContentVOffset = 8
        Items.Strings = (
          'tpTop'
          'tpBottom'
          'tpLeft'
          'tpRight')
      end
      object sRadioGroup3: TsRadioGroup
        Left = 500
        Top = 91
        Width = 153
        Height = 105
        Caption = 'Tab style'
        Enabled = False
        TabOrder = 7
        OnClick = sRadioGroup3Click
        CaptionLayout = clTopCenter
        ItemIndex = 0
        ContentVOffset = 4
        Items.Strings = (
          'tsTabs'
          'tsButtons'
          'tsFlatButtons')
      end
      object sGroupBox1: TsGroupBox
        Left = 352
        Top = 13
        Width = 132
        Height = 74
        Caption = 'Disable '#39'Blue'#39' tab'
        TabOrder = 8
        CaptionLayout = clTopCenter
        CheckBoxVisible = True
        OnCheckBoxChanged = sGroupBox1CheckBoxChanged
        object sCheckBox3: TsCheckBox
          Left = 6
          Top = 26
          Width = 120
          Height = 37
          Caption = 'Accessible disabled pages'
          AutoSize = False
          Enabled = False
          TabOrder = 0
          OnClick = sCheckBox3Click
          WordWrap = True
        end
      end
      object sRadioGroup4: TsRadioGroup
        Left = 500
        Top = 200
        Width = 153
        Height = 133
        Caption = 'Show Close buttons'
        TabOrder = 9
        CaptionLayout = clTopCenter
        CheckBoxVisible = True
        Checked = True
        OnCheckBoxChanged = sRadioGroup4CheckBoxChanged
        DisableItemsIfUnchecked = True
        ItemIndex = 0
        ContentVOffset = 8
        Items.Strings = (
          'Always'
          'ActiveTab'
          'UnactiveTabs'
          'MouseHovered')
        OnChange = sRadioGroup4Change
      end
      object sCheckBox1: TsCheckBox
        Left = 26
        Top = 307
        Width = 306
        Height = 17
        Caption = 'Use Close button on the sTabSheet1'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 10
        OnClick = sCheckBox1Click
      end
      object sRadioGroup5: TsRadioGroup
        Left = 500
        Top = 9
        Width = 153
        Height = 78
        Caption = 'Glyph layout'
        TabOrder = 11
        CaptionLayout = clTopCenter
        ItemIndex = 0
        ContentVOffset = 4
        Items.Strings = (
          'glLeft'
          'glTop')
        OnChange = sRadioGroup5Change
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = 'sTabSheet2'
    end
    object sTabSheet3: TsTabSheet
      Caption = 'sTabSheet3'
      ImageIndex = 4
    end
    object sTabSheet5: TsTabSheet
      ImageIndex = 22
      TabType = ttButton
      TabSkin = 'SPEEDBUTTON'
      SkinData.SkinSection = 'TABSHEET'
      UseCloseBtn = False
      OnClickBtn = sTabSheet5ClickBtn
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 12
    Top = 36
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 32
    Width = 32
    AlphaImageList = MainForm.CharImageList16
    UseCache = False
    Left = 251
    Top = 113
    Bitmap = {}
  end
end
