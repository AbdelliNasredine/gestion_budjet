inherited FrameTsArcHandle: TFrameTsArcHandle
  object sComboBox6: TsComboBox [0]
    Left = 338
    Top = 158
    Width = 96
    Height = 24
    BoundLabel.Active = True
    BoundLabel.Caption = 'Knob position:'
    VerticalAlignment = taVerticalCenter
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 7
    Text = 'kpCircle'
    OnChange = sComboBox6Change
    Items.Strings = (
      'kpCircle'
      'kpBevel')
  end
  object sTrackEdit5: TsTrackEdit [1]
    Left = 338
    Top = 126
    Width = 96
    Height = 24
    TabOrder = 4
    Text = '5'
    OnChange = sTrackEdit5Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Knob size:'
    Increment = 1.000000000000000000
    MaxValue = 15.000000000000000000
    MinValue = 2.000000000000000000
    Value = 5.000000000000000000
  end
  object sGroupBox1: TsGroupBox [2]
    Left = 465
    Top = 50
    Width = 252
    Height = 200
    Caption = 'Custom colors'
    TabOrder = 1
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sColorBox1: TsColorBox
      Left = 84
      Top = 44
      Width = 133
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'Color 1:'
      Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
      Selected = clBtnFace
      Enabled = False
      TabOrder = 0
      OnChange = sColorBox1Change
    end
    object sColorBox2: TsColorBox
      Left = 84
      Top = 78
      Width = 133
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'Color 2:'
      Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
      Selected = cl3DLight
      Enabled = False
      TabOrder = 1
      OnChange = sColorBox2Change
    end
    object sColorBox3: TsColorBox
      Left = 84
      Top = 112
      Width = 133
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'Border:'
      Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
      Selected = clActiveBorder
      Enabled = False
      TabOrder = 2
      OnChange = sColorBox3Change
    end
    object sColorBox4: TsColorBox
      Left = 84
      Top = 145
      Width = 133
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'Font:'
      Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
      Selected = clBtnText
      Enabled = False
      TabOrder = 3
      OnChange = sColorBox4Change
    end
  end
  object sArcHandle1: TsArcHandle [3]
    Left = 50
    Top = 50
    Width = 103
    Height = 111
    GlyphBlend = 50
    Images = sVirtualImageList1
    Value = 100
    GlyphIndex = 0
    Text = 'Custom text'
    RotationAngle = -100
  end
  object sGroupBox2: TsGroupBox [4]
    Left = 465
    Top = 263
    Width = 252
    Height = 73
    Caption = 'Show glyph'
    TabOrder = 5
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sCheckBox8: TsCheckBox
      Left = 44
      Top = 35
      Width = 81
      Height = 18
      Caption = 'Reflected'
      TabOrder = 0
      OnClick = sCheckBox8Click
    end
    object sCheckBox1: TsCheckBox
      Left = 156
      Top = 35
      Width = 68
      Height = 18
      Caption = 'Grayed'
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
  end
  object sTrackEdit3: TsTrackEdit [5]
    Left = 338
    Top = 94
    Width = 96
    Height = 24
    TabOrder = 3
    Text = '2'
    OnChange = sTrackEdit3Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Bevel width:'
    Increment = 1.000000000000000000
    MaxValue = 10.000000000000000000
    Value = 2.000000000000000000
  end
  object sCheckBox9: TsCheckBox [6]
    Left = 338
    Top = 198
    Width = 98
    Height = 18
    Caption = 'Transparent'
    TabOrder = 0
    OnClick = sCheckBox9Click
  end
  object sTrackEdit2: TsTrackEdit [7]
    Left = 338
    Top = 62
    Width = 96
    Height = 24
    TabOrder = 2
    Text = '1'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Border width:'
    Increment = 1.000000000000000000
    MaxValue = 10.000000000000000000
    Value = 1.000000000000000000
  end
  object sGroupBox3: TsGroupBox [8]
    Left = 188
    Top = 227
    Width = 246
    Height = 109
    Caption = 'Show text'
    TabOrder = 8
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sEdit1: TsEdit
      Left = 114
      Top = 62
      Width = 96
      Height = 24
      Enabled = False
      TabOrder = 0
      Text = 'Custom text'
      OnChange = sEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Added text:'
    end
    object sComboBox3: TsComboBox
      Left = 114
      Top = 30
      Width = 96
      Height = 24
      BoundLabel.Active = True
      BoundLabel.Caption = 'Text content:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 1
      Text = 'tcAngle'
      OnChange = sComboBox3Change
      Items.Strings = (
        'tcValue'
        'tcPercent'
        'tcAngle'
        'tcCustom')
    end
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 42
    Width = 42
    AlphaImageList = FormData.sCharImageList1
    Left = 320
    Top = 36
    Bitmap = {}
  end
end
