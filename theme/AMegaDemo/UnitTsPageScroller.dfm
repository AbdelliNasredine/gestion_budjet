inherited FrameTsPageScroller: TFrameTsPageScroller
  Width = 772
  AutoScroll = False
  object sSpeedButton21: TsSpeedButton [0]
    Left = 422
    Top = 92
    Width = 258
    Height = 34
    Caption = 'Extract container from PageScroller'
    Enabled = False
    Spacing = 8
    OnClick = sSpeedButton21Click
    Images = FormData.CharList16
    ImageIndex = 8
  end
  object sSpeedButton20: TsSpeedButton [1]
    Left = 154
    Top = 92
    Width = 258
    Height = 34
    Caption = 'Place container on the PageScroller'
    Spacing = 8
    OnClick = sSpeedButton20Click
    Images = FormData.CharList16
    ImageIndex = 7
  end
  object sPageScroller1: TsPageScroller [2]
    Tag = 5
    Left = 154
    Top = 140
    Width = 526
    Height = 64
    SkinData.OuterEffects.Visibility = ovAlways
    BevelOuter = bvRaised
    Caption = 'PageScroller'
    TabOrder = 0
    TabStop = False
  end
  object sPageScroller2: TsPageScroller [3]
    Tag = 4
    Left = 60
    Top = 92
    Width = 68
    Height = 245
    SkinData.OuterEffects.Visibility = ovAlways
    BevelOuter = bvRaised
    TabOrder = 1
    TabStop = False
    Control = sPanel2
    Orientation = soVertical
    object sPanel2: TsPanel
      Left = 0
      Top = 0
      Width = 68
      Height = 400
      BevelOuter = bvNone
      TabOrder = 0
      object sSpeedButton14: TsSpeedButton
        Left = 0
        Top = 186
        Width = 68
        Height = 62
        Align = alTop
        Flat = True
        Images = FormData.sCharImageList1
        ImageIndex = 3
      end
      object sSpeedButton15: TsSpeedButton
        Left = 0
        Top = 124
        Width = 68
        Height = 62
        Align = alTop
        Flat = True
        Images = FormData.sCharImageList1
        ImageIndex = 2
      end
      object sSpeedButton16: TsSpeedButton
        Left = 0
        Top = 62
        Width = 68
        Height = 62
        Align = alTop
        Flat = True
        Images = FormData.sCharImageList1
        ImageIndex = 1
      end
      object sSpeedButton17: TsSpeedButton
        Left = 0
        Top = 0
        Width = 68
        Height = 62
        Align = alTop
        Flat = True
        Images = FormData.sCharImageList1
        ImageIndex = 0
      end
    end
  end
  object sPanel1: TsPanel [4]
    Left = 60
    Top = 16
    Width = 897
    Height = 64
    Caption = 'Panel Container'
    TabOrder = 2
    object sSpeedButton9: TsSpeedButton
      Left = 187
      Top = 1
      Width = 62
      Height = 62
      Align = alLeft
      Flat = True
      Images = FormData.sCharImageList1
      ImageIndex = 3
    end
    object sSpeedButton10: TsSpeedButton
      Left = 125
      Top = 1
      Width = 62
      Height = 62
      Align = alLeft
      Flat = True
      Images = FormData.sCharImageList1
      ImageIndex = 2
    end
    object sSpeedButton11: TsSpeedButton
      Left = 63
      Top = 1
      Width = 62
      Height = 62
      Align = alLeft
      Flat = True
      Images = FormData.sCharImageList1
      ImageIndex = 1
    end
    object sSpeedButton12: TsSpeedButton
      Left = 1
      Top = 1
      Width = 62
      Height = 62
      Align = alLeft
      Flat = True
      Images = FormData.sCharImageList1
      ImageIndex = 0
    end
    object sEdit1: TsEdit
      Left = 271
      Top = 21
      Width = 78
      Height = 21
      TabOrder = 0
      Text = 'sEdit1'
      BoundLabel.Layout = sclTopLeft
    end
    object sCheckBox1: TsCheckBox
      Left = 544
      Top = 24
      Width = 83
      Height = 17
      Caption = 'sCheckBox1'
      TabOrder = 1
    end
    object sCheckBox3: TsCheckBox
      Left = 668
      Top = 24
      Width = 83
      Height = 17
      Caption = 'sCheckBox3'
      TabOrder = 2
    end
  end
  object sPanel3: TsPanel [5]
    Left = 154
    Top = 224
    Width = 526
    Height = 389
    BevelOuter = bvNone
    TabOrder = 3
    object sCheckBox4: TsCheckBox
      Left = 42
      Top = 62
      Width = 179
      Height = 17
      Caption = 'Scroll when mouse hover button'
      Enabled = False
      TabOrder = 0
      OnClick = sCheckBox4Click
    end
    object sRadioGroup2: TsRadioGroup
      Left = 188
      Top = 136
      Width = 129
      Height = 141
      Caption = 'ScrollPosition'
      Enabled = False
      TabOrder = 1
      ItemIndex = 0
      ContentVOffset = 8
      Items.Strings = (
        'spDefault'
        'spLeft'
        'spRight'
        'spNone')
      OnChange = sRadioGroup2Change
    end
    object sTrackEdit1: TsTrackEdit
      Left = 384
      Top = 23
      Width = 48
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'ButtonSize:'
      EditorEnabled = False
      Increment = 1.000000000000000000
      MaxValue = 64.000000000000000000
    end
    object sCheckBox5: TsCheckBox
      Left = 42
      Top = 97
      Width = 70
      Height = 17
      Caption = 'Animated'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox5Click
    end
    object sCheckBox2: TsCheckBox
      Left = 160
      Top = 97
      Width = 120
      Height = 18
      Caption = 'Allow outer effects'
      AutoSize = False
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox2Click
    end
    object sComboBox1: TsComboBox
      Left = 125
      Top = 23
      Width = 145
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = 'SkinSection:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      Enabled = False
      ItemIndex = -1
      TabOrder = 5
      OnChange = sComboBox1Change
      Items.Strings = (
        'PROGRESSH'
        'EDIT'
        'PANEL'
        'PANEL_LOW'
        'GROUPBOX'
        'TRANSPARENT')
    end
    object sGroupBox1: TsGroupBox
      Left = 350
      Top = 91
      Width = 167
      Height = 185
      Caption = 'CustomColor'
      Enabled = False
      TabOrder = 6
      object sSpeedButton2: TsSpeedButton
        Left = 34
        Top = 42
        Width = 101
        Height = 25
        Caption = 'Red'
        Enabled = False
        Margin = 12
        OnClick = sSpeedButton2Click
        Images = FormData.CharList16
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        ImageIndex = 1
      end
      object sSpeedButton5: TsSpeedButton
        Left = 34
        Top = 106
        Width = 101
        Height = 25
        Caption = 'Yellow'
        Enabled = False
        Margin = 12
        OnClick = sSpeedButton5Click
        Images = FormData.CharList16
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        ImageIndex = 3
      end
      object sSpeedButton4: TsSpeedButton
        Left = 34
        Top = 74
        Width = 101
        Height = 25
        Caption = 'Green'
        Enabled = False
        Margin = 12
        OnClick = sSpeedButton4Click
        Images = FormData.CharList16
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        ImageIndex = 2
      end
      object sSpeedButton1: TsSpeedButton
        Left = 104
        Top = 137
        Width = 31
        Height = 25
        Enabled = False
        OnClick = sSpeedButton1Click
        Images = FormData.CharList16
        ImageIndex = 4
      end
      object sColorBox2: TsColorBox
        Left = 34
        Top = 137
        Width = 67
        Height = 22
        Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
        ShowColorName = False
        Selected = clNone
        NoneColorColor = clNone
        PopupMode = pmPickColor
        Enabled = False
        TabOrder = 0
        OnChange = sColorBox2Change
      end
    end
    object sRadioGroup1: TsRadioGroup
      Left = 10
      Top = 136
      Width = 145
      Height = 140
      Caption = 'BevelOuter'
      Enabled = False
      TabOrder = 7
      ItemIndex = 2
      ContentVOffset = 8
      Items.Strings = (
        'bvNone'
        'bvLowered'
        'bvRaised'
        'bvSpace')
      OnChange = sRadioGroup1Change
    end
  end
end
