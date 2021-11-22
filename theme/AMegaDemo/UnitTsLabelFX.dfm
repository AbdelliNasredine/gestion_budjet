inherited FrameTsLabelFX: TFrameTsLabelFX
  object sGroupBox2: TsGroupBox [0]
    Left = 68
    Top = 428
    Width = 409
    Height = 209
    Caption = 'Shadow options'
    TabOrder = 2
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit2: TsTrackEdit
      Left = 331
      Top = 29
      Width = 48
      Height = 21
      TabOrder = 0
      Text = '255'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'AlphaValue:'
      Increment = 1.000000000000000000
      MaxValue = 255.000000000000000000
      Value = 255.000000000000000000
    end
    object sGroupBox3: TsGroupBox
      Left = 30
      Top = 63
      Width = 349
      Height = 118
      Caption = 'Use skin options'
      TabOrder = 1
      AutoChildrenStates = csAsNotChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox3CheckBoxChanged
      object sColorBox2: TsColorBox
        Left = 172
        Top = 32
        Width = 145
        Height = 22
        BoundLabel.Active = True
        BoundLabel.Caption = 'Color:'
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
        ShowColorName = False
        PopupMode = pmPickColor
        Enabled = False
        TabOrder = 0
        OnChange = sColorBox2Change
      end
      object sTrackEdit3: TsTrackEdit
        Left = 132
        Top = 74
        Width = 48
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = '10'
        OnChange = sTrackEdit3Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'BlurCount:'
        Increment = 1.000000000000000000
        MaxValue = 24.000000000000000000
        MinValue = 1.000000000000000000
        Value = 10.000000000000000000
      end
      object sTrackEdit4: TsTrackEdit
        Left = 269
        Top = 74
        Width = 48
        Height = 21
        Enabled = False
        TabOrder = 2
        Text = '6'
        OnChange = sTrackEdit4Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'Distance:'
        Increment = 1.000000000000000000
        MaxValue = 24.000000000000000000
        Value = 6.000000000000000000
      end
    end
  end
  object sCheckBox1: TsCheckBox [1]
    Left = 564
    Top = 382
    Width = 68
    Height = 17
    Caption = 'AutoSize'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox1Click
  end
  object sPanel1: TsPanel [2]
    Left = 68
    Top = 40
    Width = 409
    Height = 233
    BevelOuter = bvSpace
    TabOrder = 4
    object sLabelFX1: TsLabelFX
      Left = -8
      Top = -8
      Width = 197
      Height = 134
      Alignment = taCenter
      Caption = 'sLabelFX1'
      ParentFont = False
      Layout = tlCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -43
      Font.Name = 'Impact'
      Font.Style = []
      Angle = 18
      Kind.Color = clYellow
      Shadow.OffsetKeeper.LeftTop = -4
      Shadow.OffsetKeeper.RightBottom = 16
      Shadow.BlurCount = 10
      Shadow.Distance = 6
    end
  end
  object sRadioGroup1: TsRadioGroup [3]
    Left = 508
    Top = 413
    Width = 145
    Height = 105
    Caption = 'Alignment'
    Enabled = False
    TabOrder = 5
    DisableItemsIfUnchecked = True
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      'taLeftJustify'
      'taRightJustify'
      'taCenter')
    OnChange = sRadioGroup1Change
  end
  object sRadioGroup2: TsRadioGroup [4]
    Left = 508
    Top = 532
    Width = 145
    Height = 105
    Caption = 'Layout'
    Enabled = False
    TabOrder = 6
    DisableItemsIfUnchecked = True
    ItemIndex = 1
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      'tlTop'
      'tlCenter'
      'tlBottom')
    OnChange = sRadioGroup2Change
  end
  object sTrackEdit1: TsTrackEdit [5]
    Left = 564
    Top = 344
    Width = 89
    Height = 21
    TabOrder = 0
    Text = '18'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Angle:'
    Increment = 1.000000000000000000
    MaxValue = 360.000000000000000000
    Value = 18.000000000000000000
  end
  object sGroupBox1: TsGroupBox [6]
    Left = 68
    Top = 292
    Width = 409
    Height = 113
    Caption = 'Color source'
    TabOrder = 1
    CaptionLayout = clTopCenter
    object sRadioButton1: TsRadioButton
      Left = 48
      Top = 32
      Width = 75
      Height = 17
      Caption = 'ktStandard'
      TabOrder = 0
      OnClick = sRadioButton1Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 168
      Top = 32
      Width = 67
      Height = 17
      Caption = 'ktCustom'
      TabOrder = 1
      OnClick = sRadioButton1Click
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 280
      Top = 32
      Width = 50
      Height = 17
      Caption = 'ktSkin'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton1Click
    end
    object sColorBox1: TsColorBox
      Left = 184
      Top = 66
      Width = 145
      Height = 22
      BoundLabel.Active = True
      BoundLabel.Caption = 'Custom color:'
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
      ShowColorName = False
      Selected = clYellow
      PopupMode = pmPickColor
      Enabled = False
      TabOrder = 3
      OnChange = sColorBox1Change
    end
  end
end
