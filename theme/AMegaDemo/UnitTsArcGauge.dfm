inherited FrameTsArcGauge: TFrameTsArcGauge
  object sTrackEdit5: TsTrackEdit [0]
    Left = 338
    Top = 134
    Width = 96
    Height = 24
    TabOrder = 3
    Text = '245'
    OnChange = sTrackEdit5Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Base blend:'
    Increment = 1.000000000000000000
    MaxValue = 255.000000000000000000
    Value = 245.000000000000000000
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 465
    Top = 50
    Width = 252
    Height = 123
    Caption = 'Custom colors'
    TabOrder = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sColorBox1: TsColorBox
      Left = 116
      Top = 39
      Width = 100
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'BaseColor:'
      Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
      Selected = 9868950
      Enabled = False
      TabOrder = 0
      OnChange = sColorBox1Change
    end
    object sColorBox2: TsColorBox
      Left = 116
      Top = 76
      Width = 100
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'ProgressColor:'
      Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
      Selected = 16748834
      Enabled = False
      TabOrder = 1
      OnChange = sColorBox2Change
    end
  end
  object sGroupBox2: TsGroupBox [2]
    Left = 285
    Top = 187
    Width = 149
    Height = 94
    Caption = 'Show glyph'
    TabOrder = 4
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sCheckBox8: TsCheckBox
      Left = 36
      Top = 31
      Width = 88
      Height = 18
      Caption = 'Reflected'
      AutoSize = False
      TabOrder = 0
      OnClick = sCheckBox8Click
    end
    object sCheckBox1: TsCheckBox
      Left = 36
      Top = 58
      Width = 88
      Height = 18
      Caption = 'Grayed'
      AutoSize = False
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
  end
  object sTrackEdit3: TsTrackEdit [3]
    Left = 338
    Top = 102
    Width = 96
    Height = 24
    TabOrder = 2
    Text = '0'
    OnChange = sTrackEdit3Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Progress:'
    Increment = 1.000000000000000000
  end
  object sTrackEdit2: TsTrackEdit [4]
    Left = 338
    Top = 70
    Width = 96
    Height = 24
    TabOrder = 1
    Text = '5'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Line width:'
    Increment = 1.000000000000000000
    MaxValue = 15.000000000000000000
    Value = 5.000000000000000000
  end
  object sArcGauge1: TsArcGauge [5]
    Left = 50
    Top = 50
    Width = 107
    Height = 108
    GlyphBlend = 50
    Images = sVirtualImageList1
    SkinData.SkinSection = 'TRANSPARENT'
    Min = 0
    Progress = 0
    BaseBlend = 245
    GlyphIndex = 0
    Text = 'Custom text'
  end
  object sGroupBox3: TsGroupBox [6]
    Left = 465
    Top = 187
    Width = 252
    Height = 94
    Caption = 'Show text'
    TabOrder = 6
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sCheckBox9: TsCheckBox
      Left = 80
      Top = 31
      Width = 117
      Height = 18
      Caption = 'ShowTextValue'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox9Click
    end
    object sEdit1: TsEdit
      Left = 81
      Top = 56
      Width = 116
      Height = 24
      Enabled = False
      TabOrder = 1
      Text = 'Custom text'
      OnChange = sEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Text:'
    end
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 32
    Width = 32
    AlphaImageList = FormData.sCharImageList1
    Left = 320
    Top = 36
    Bitmap = {}
  end
  object Timer1: TTimer
    Interval = 30
    OnTimer = Timer1Timer
    Left = 236
    Top = 12
  end
end
