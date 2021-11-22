inherited FrameTsExtEdits: TFrameTsExtEdits
  object sSpeedButton1: TsSpeedButton [0]
    Left = 566
    Top = 417
    Width = 31
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    SkinData.SkinSection = 'SPEEDBUTTON'
    Images = FormData.CharList16
    ImageIndex = 4
    ShowCaption = False
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 496
    Top = 322
    Width = 101
    Height = 25
    Caption = 'Red'
    Margin = 12
    OnClick = sSpeedButton2Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 1
  end
  object sSpeedButton4: TsSpeedButton [2]
    Left = 496
    Top = 354
    Width = 101
    Height = 25
    Caption = 'Green'
    Margin = 12
    OnClick = sSpeedButton4Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 2
  end
  object sSpeedButton5: TsSpeedButton [3]
    Left = 496
    Top = 386
    Width = 101
    Height = 25
    Caption = 'Yellow'
    Margin = 12
    OnClick = sSpeedButton5Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 3
  end
  object sCheckBox2: TsCheckBox [4]
    Left = 520
    Top = 244
    Width = 141
    Height = 18
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = sCheckBox2Click
    TextIndent = 8
    WordWrap = True
  end
  object sColorBox2: TsColorBox [5]
    Left = 496
    Top = 417
    Width = 64
    Height = 25
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    TabOrder = 1
    OnChange = sColorBox2Change
  end
  object sGroupBox4: TsGroupBox [6]
    Left = 496
    Top = 32
    Width = 177
    Height = 197
    Caption = 'SpinEdits options'
    TabOrder = 2
    object sCheckBox6: TsCheckBox
      Left = 24
      Top = 31
      Width = 136
      Height = 18
      Caption = 'EditorEnabled'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox6Click
    end
    object sCheckBox7: TsCheckBox
      Left = 24
      Top = 61
      Width = 136
      Height = 18
      Caption = 'FlatSpinButtons'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox7Click
    end
    object sCheckBox8: TsCheckBox
      Left = 24
      Top = 91
      Width = 136
      Height = 18
      Caption = 'ShowSpinButtons'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox8Click
    end
    object sTrackEdit9: TsTrackEdit
      Left = 104
      Top = 157
      Width = 48
      Height = 24
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit9Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'ButtonWidth:'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      Increment = 1.000000000000000000
      MaxValue = 64.000000000000000000
      MinValue = 12.000000000000000000
    end
    object sCheckBox5: TsCheckBox
      Left = 24
      Top = 121
      Width = 136
      Height = 18
      Caption = 'AllowNegative'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox5Click
    end
  end
  object sGroupBox1: TsGroupBox [7]
    Left = 36
    Top = 32
    Width = 437
    Height = 165
    Caption = 'TsDecimalSpinEdit'
    TabOrder = 3
    object sDecimalSpinEdit1: TsDecimalSpinEdit
      Tag = 5
      Left = 34
      Top = 46
      Width = 177
      Height = 32
      AutoSize = False
      TabOrder = 0
      Text = '123'#160'456'#160'789,1000'
      AddedGlyph.ColorTone = 14778880
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 0
      SkinData.SkinSection = 'EDIT'
      SkinData.OuterEffects.Visibility = ovAlways
      BoundLabel.UseHTML = True
      BoundLabel.Active = True
      BoundLabel.AllowClick = True
      BoundLabel.Indent = 2
      BoundLabel.Caption = '<b><u>BoundLabel</u></b> property'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
      Padding.Left = 6
      VerticalAlignment = taVerticalCenter
      Increment = 0.010000000000000000
      Value = 123456789.100000000000000000
      DecimalPlaces = 4
      ShowThousandSeparator = True
    end
    object sCheckBox1: TsCheckBox
      Left = 240
      Top = 65
      Width = 123
      Height = 18
      Caption = 'HideExcessZeros'
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
    object sDecimalSpinEdit2: TsDecimalSpinEdit
      Left = 144
      Top = 88
      Width = 67
      Height = 24
      TabOrder = 2
      Text = '0,01'
      OnChange = sDecimalSpinEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Increment:'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      Value = 0.010000000000000000
    end
    object sCheckBox3: TsCheckBox
      Left = 240
      Top = 94
      Width = 173
      Height = 18
      Caption = 'ShowThousandSeparator'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox3Click
    end
    object sCheckBox4: TsCheckBox
      Left = 240
      Top = 122
      Width = 169
      Height = 18
      Caption = 'UseSystemDecSeparator'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox4Click
    end
    object sSpinEdit1: TsSpinEdit
      Left = 144
      Top = 118
      Width = 67
      Height = 24
      TabOrder = 5
      Text = '4'
      OnChange = sSpinEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'DecimalPlaces:'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      MaxValue = 8
      MinValue = 0
      Value = 4
    end
    object sCheckBox11: TsCheckBox
      Left = 240
      Top = 36
      Width = 108
      Height = 18
      Caption = 'AllowNegative'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = sCheckBox11Click
    end
  end
  object sGroupBox3: TsGroupBox [8]
    Left = 36
    Top = 216
    Width = 437
    Height = 105
    Caption = 'TsTimePicker'
    TabOrder = 4
    object sTimePicker1: TsTimePicker
      Left = 34
      Top = 46
      Width = 177
      Height = 32
      AutoSize = False
      TabOrder = 0
      Text = '01:14:15'
      AddedGlyph.ColorTone = 50723
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 0
      SkinData.OuterEffects.Visibility = ovAlways
      BoundLabel.UseHTML = True
      BoundLabel.Active = True
      BoundLabel.AllowClick = True
      BoundLabel.Indent = 2
      BoundLabel.Caption = '<b><u>BoundLabel</u></b> property'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
      Padding.Left = 6
      VerticalAlignment = taVerticalCenter
      Date = 0.551562500000000000
      Value = 0.551562500000000000
      Time = 0.551562500000000000
      Use12Hour = True
    end
    object sCheckBox9: TsCheckBox
      Left = 240
      Top = 32
      Width = 108
      Height = 18
      Caption = 'ShowSeconds'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox9Click
    end
    object sCheckBox10: TsCheckBox
      Left = 240
      Top = 60
      Width = 90
      Height = 18
      Caption = 'Use12Hour'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox10Click
    end
  end
  object sGroupBox5: TsGroupBox [9]
    Left = 36
    Top = 339
    Width = 437
    Height = 103
    Caption = 'TsCurrencyEdit'
    TabOrder = 5
    object sCurrencyEdit1: TsCurrencyEdit
      Left = 34
      Top = 46
      Width = 177
      Height = 32
      AutoSize = False
      TabOrder = 0
      OnChange = sCurrencyEdit1Change
      AddedGlyph.ColorTone = 2518271
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 0
      BoundLabel.UseHTML = True
      BoundLabel.Active = True
      BoundLabel.AllowClick = True
      BoundLabel.Indent = 2
      BoundLabel.Caption = '<b><u>BoundLabel</u></b> property'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
      SkinData.OuterEffects.Visibility = ovAlways
      Padding.Left = 6
      Padding.Right = 6
      VerticalAlignment = taVerticalCenter
    end
    object sCheckBox12: TsCheckBox
      Left = 240
      Top = 30
      Width = 185
      Height = 18
      Caption = 'AllowCalculator (Alt+Down)'
      TabOrder = 1
      OnClick = sCheckBox12Click
    end
    object sCheckBox13: TsCheckBox
      Left = 240
      Top = 58
      Width = 129
      Height = 18
      Caption = 'ShowZeroIfEmpty'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox13Click
    end
  end
end
