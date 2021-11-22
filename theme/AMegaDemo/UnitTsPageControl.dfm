inherited FrameTsPageControl: TFrameTsPageControl
  object sBitBtn1: TsBitBtn [0]
    Left = 26
    Top = 31
    Width = 143
    Height = 34
    Caption = 'Create new page'
    Spacing = 6
    TabOrder = 0
    OnClick = sBitBtn1Click
    ImageIndex = 14
    Images = sCharImageList1
  end
  object sPageControl1: TsPageControl [1]
    Left = 26
    Top = 92
    Width = 707
    Height = 500
    ActivePage = sTabSheet1
    HotTrack = True
    Images = sCharImageList1
    TabHeight = 40
    TabOrder = 1
    AccessibleDisabledPages = False
    ShowCloseBtns = True
    AllowTabsDrag = True
    Padding.Top = 20
    TabPadding = 8
    OnCloseBtnClick = sPageControl1CloseBtnClick
    object sTabSheet3: TsTabSheet
      Caption = 'Menu tab'
      ImageIndex = 13
      TabType = ttMenu
      TabMenu = FormData.PopupMenu1
      TabSkin = 'MENUBTN'
    end
    object sTabSheet1: TsTabSheet
      Caption = 'Tabs'
      ImageIndex = -1
      object sCheckBox3: TsCheckBox
        Left = 24
        Top = 23
        Width = 86
        Height = 17
        Caption = 'Show glyphs'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox3Click
      end
      object sRadioGroup1: TsRadioGroup
        Left = 436
        Top = 16
        Width = 161
        Height = 145
        Caption = '`TabPosition`'
        TabOrder = 7
        ItemIndex = 0
        ContentVOffset = 6
        ContentHOffset = 12
        Items.Strings = (
          '`tpTop`'
          '`tpBottom`'
          '`tpLeft`'
          '`tpRight`')
        OnChange = sRadioGroup1Change
      end
      object sComboBox1: TsComboBox
        Left = 24
        Top = 248
        Width = 170
        Height = 21
        TabOrder = 8
        OnChange = sComboBox1Change
        BoundLabel.Caption = '1st tab `TabType`:'
        BoundLabel.Layout = sclTopLeft
        VerticalAlignment = taVerticalCenter
        LabelFromTextHint = True
        ShowFocus = False
        TextHint = '1st tab type'
        Items.Strings = (
          'ttButton'
          'ttMenu'
          'ttTab')
        Style = csDropDownList
      end
      object sCheckBox11: TsCheckBox
        Left = 24
        Top = 107
        Width = 176
        Height = 17
        Caption = '`AllowTabsDrag` (Ctrl+Mouse)'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = sCheckBox11Click
      end
      object sRadioGroup2: TsRadioGroup
        Left = 252
        Top = 16
        Width = 161
        Height = 145
        Caption = '`ShowCloseBtns`'
        TabOrder = 6
        AutoChildrenStates = csAsChecked
        CheckBoxVisible = True
        Checked = True
        OnCheckBoxChanged = sRadioGroup2CheckBoxChanged
        ItemIndex = 0
        ContentVOffset = 6
        ContentHOffset = 12
        Items.Strings = (
          '`cvAlways`'
          '`cvActiveTab`'
          '`cvUnactiveTabs`'
          '`cvMouseHovered`')
        OnChange = sRadioGroup2Change
      end
      object sRadioGroup3: TsRadioGroup
        Left = 252
        Top = 334
        Width = 345
        Height = 57
        Caption = '`TabAlignment`'
        TabOrder = 12
        Columns = 3
        ItemIndex = 2
        ContentHOffset = 12
        Items.Strings = (
          '`taLeftJustify`'
          '`taRightJustify`'
          '`taCenter`')
        OnChange = sRadioGroup3Change
      end
      object sCheckBox1: TsCheckBox
        Left = 24
        Top = 79
        Width = 130
        Height = 17
        Caption = '`ShowDropDownBtn`'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = sCheckBox1Click
      end
      object sCheckBox2: TsCheckBox
        Left = 24
        Top = 135
        Width = 109
        Height = 17
        Caption = '`ShowNextPrev`'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = sCheckBox2Click
      end
      object sGroupBox1: TsGroupBox
        Left = 252
        Top = 167
        Width = 345
        Height = 147
        Caption = 'Sizing'
        TabOrder = 11
        object sCheckBox9: TsCheckBox
          Left = 163
          Top = 88
          Width = 150
          Height = 18
          Caption = '`ActiveIsBold`'
          AutoSize = False
          TabOrder = 5
          OnClick = sCheckBox9Click
        end
        object sCheckBox7: TsCheckBox
          Left = 163
          Top = 61
          Width = 150
          Height = 18
          Caption = '`ActiveTabEnlarged`'
          AutoSize = False
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = sCheckBox7Click
        end
        object sCheckBox5: TsCheckBox
          Left = 163
          Top = 114
          Width = 150
          Height = 18
          Caption = '`WordWrap`'
          AutoSize = False
          TabOrder = 6
          OnClick = sCheckBox5Click
        end
        object sTrackEdit1: TsTrackEdit
          Left = 101
          Top = 33
          Width = 32
          Height = 21
          TabOrder = 0
          Text = '8'
          OnChange = sTrackEdit1Change
          BoundLabel.Active = True
          BoundLabel.Caption = '`TabPadding`'
          Increment = 1.000000000000000000
          MaxValue = 30.000000000000000000
          Value = 8.000000000000000000
        end
        object sTrackEdit2: TsTrackEdit
          Left = 101
          Top = 60
          Width = 32
          Height = 21
          TabOrder = 1
          Text = '6'
          OnChange = sTrackEdit2Change
          BoundLabel.Active = True
          BoundLabel.Caption = '`TabSpacing`'
          Increment = 1.000000000000000000
          MaxValue = 20.000000000000000000
          Value = 6.000000000000000000
        end
        object sTrackEdit3: TsTrackEdit
          Left = 101
          Top = 87
          Width = 32
          Height = 21
          TabOrder = 2
          Text = '3'
          OnChange = sTrackEdit3Change
          BoundLabel.Active = True
          BoundLabel.Caption = '`TabMargin`'
          Increment = 1.000000000000000000
          MaxValue = 10.000000000000000000
          Value = 3.000000000000000000
        end
        object sCheckBox6: TsCheckBox
          Left = 163
          Top = 35
          Width = 150
          Height = 17
          Caption = '`RotateCaptions`'
          AutoSize = False
          TabOrder = 3
          OnClick = sCheckBox6Click
        end
      end
      object sComboBox2: TsComboBox
        Left = 24
        Top = 298
        Width = 170
        Height = 21
        TabOrder = 9
        OnChange = sComboBox2Change
        BoundLabel.Caption = '`TabsLineSkin`:'
        BoundLabel.Layout = sclTopLeft
        VerticalAlignment = taVerticalCenter
        LabelFromTextHint = True
        ShowFocus = False
        TextHint = 'TabsLineSkin'
        Items.Strings = (
          ''
          'PANEL_LOW'
          'PROGRESSH'
          'SELECTION')
        Style = csDropDownList
      end
      object sRadioGroup4: TsRadioGroup
        Left = 28
        Top = 336
        Width = 166
        Height = 57
        Caption = '`GlyphLayout`'
        TabOrder = 10
        Columns = 2
        ItemIndex = 0
        ContentHOffset = 12
        Items.Strings = (
          '`glLeft`'
          '`glTop`')
        OnChange = sRadioGroup4Change
      end
      object sCheckBox4: TsCheckBox
        Left = 24
        Top = 51
        Width = 116
        Height = 17
        Caption = '`ReflectedGlyphs`'
        TabOrder = 1
        OnClick = sCheckBox4Click
      end
      object sCheckBox12: TsCheckBox
        Left = 24
        Top = 163
        Width = 112
        Height = 17
        Caption = '`FitScrollButtons`'
        TabOrder = 5
        OnClick = sCheckBox12Click
      end
    end
    object sTabSheet4: TsTabSheet
      Caption = 'Pages'
      ImageIndex = -1
      object sPanel1: TsPanel
        Left = 0
        Top = 0
        Width = 699
        Height = 450
        Align = alClient
        BevelOuter = bvSpace
        TabOrder = 0
        object sLabel1: TsLabel
          Left = 71
          Top = 63
          Width = 189
          Height = 13
          Alignment = taRightJustify
          Caption = '`sPageControl.Padding.Top` property:'
        end
        object sLabel3: TsLabel
          Left = 48
          Top = 100
          Width = 212
          Height = 13
          Alignment = taRightJustify
          Caption = '`sPageControl.PageMargins.Top` property:'
        end
        object sTrackBar1: TsTrackBar
          Left = 266
          Top = 61
          Width = 162
          Height = 29
          Max = 50
          Position = 8
          PositionToolTip = ptTop
          TabOrder = 0
          TickStyle = tsNone
          OnChange = sTrackBar1Change
        end
        object sTrackBar2: TsTrackBar
          Left = 266
          Top = 96
          Width = 162
          Height = 29
          Max = 50
          PositionToolTip = ptBottom
          TabOrder = 1
          TickStyle = tsNone
          OnChange = sTrackBar2Change
        end
        object sGroupBox2: TsGroupBox
          Left = 128
          Top = 136
          Width = 292
          Height = 101
          Caption = '`AllowAnimSwitching`'
          TabOrder = 2
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox2CheckBoxChanged
          object sRadioButton1: TsRadioButton
            Left = 32
            Top = 24
            Width = 73
            Height = 17
            Caption = '`atcFade`'
            TabOrder = 1
            OnClick = sRadioButton1Click
          end
          object sRadioButton2: TsRadioButton
            Tag = 3
            Left = 32
            Top = 47
            Width = 73
            Height = 17
            Caption = '`atcBlur2`'
            TabOrder = 0
            OnClick = sRadioButton1Click
          end
          object sRadioButton3: TsRadioButton
            Tag = 4
            Left = 32
            Top = 70
            Width = 80
            Height = 17
            Caption = '`atcRunup`'
            Checked = True
            TabOrder = 2
            TabStop = True
            OnClick = sRadioButton1Click
          end
          object sTrackEdit4: TsTrackEdit
            Left = 207
            Top = 69
            Width = 74
            Height = 21
            Enabled = False
            TabOrder = 3
            Text = '100'
            OnChange = sTrackEdit4Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Time`:'
            BoundLabel.Layout = sclTopLeft
            Increment = 1.000000000000000000
            MaxValue = 2000.000000000000000000
            Value = 100.000000000000000000
          end
        end
        object sSlider1: TsSlider
          Left = 465
          Top = 96
          Width = 44
          ParentBackground = False
          TabOrder = 3
          BoundLabel.Active = True
          BoundLabel.Caption = '`AccessibleDisabledPage`'
          BoundLabel.Layout = sclRight
          SliderOn = False
          OnSliderChange = sSlider1SliderChange
        end
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = 'Disabled tab'
      Enabled = False
      ImageIndex = 16
    end
    object sTabSheet5: TsTabSheet
      Caption = 'sTabSheet5'
    end
    object sTabSheet6: TsTabSheet
      Caption = 'sTabSheet6'
    end
    object sTabSheet7: TsTabSheet
      Caption = 'sTabSheet7'
    end
  end
  object sCharImageList1: TsCharImageList
    Height = 18
    Width = 20
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61550
      end
      item
        Char = 61474
      end
      item
        Char = 61476
      end
      item
        Char = 61502
      end
      item
        Char = 61555
      end
      item
        Char = 61573
      end
      item
        Char = 61571
      end
      item
        Char = 61852
      end
      item
        Char = 61918
      end
      item
        Char = 61930
      end
      item
        Char = 62097
      end
      item
        Char = 62140
      end
      item
        Char = 61673
      end
      item
        ScalingFactor = 1.120000000000000000
        Char = 61641
      end
      item
        Char = 61543
      end
      item
        Char = 61530
      end
      item
        Char = 61552
      end>
    Left = 220
    Top = 12
    Bitmap = {}
  end
end
