inherited FrameTsRadioButton: TFrameTsRadioButton
  object sSpeedButton2: TsSpeedButton [0]
    Left = 546
    Top = 53
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
  object sSpeedButton4: TsSpeedButton [1]
    Left = 546
    Top = 85
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
  object sSpeedButton5: TsSpeedButton [2]
    Left = 546
    Top = 117
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
  object sSpeedButton1: TsSpeedButton [3]
    Left = 546
    Top = 149
    Width = 101
    Height = 25
    Caption = 'Reset'
    Enabled = False
    OnClick = sSpeedButton1Click
  end
  object sTrackEdit2: TsTrackEdit [4]
    Left = 124
    Top = 226
    Width = 53
    Height = 21
    TabOrder = 4
    Text = '6'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`TextIndent`:'
    Increment = 1.000000000000000000
    Value = 6.000000000000000000
  end
  object sCheckBox6: TsCheckBox [5]
    Left = 225
    Top = 200
    Width = 85
    Height = 17
    Caption = '`ReadOnly`'
    TabOrder = 3
    OnClick = sCheckBox6Click
  end
  object sTrackEdit1: TsTrackEdit [6]
    Left = 124
    Top = 196
    Width = 53
    Height = 21
    TabOrder = 2
    Text = '0'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`Margin`:'
    EditorEnabled = False
    Increment = 1.000000000000000000
    MaxValue = 20.000000000000000000
  end
  object sRadioButton2: TsRadioButton [7]
    Left = 293
    Top = 74
    Width = 150
    Height = 45
    Caption = 'sRadioButton2 with wrapped text'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    WordWrap = True
    AutoSize = False
    TextIndent = 6
  end
  object sRadioButton1: TsRadioButton [8]
    Left = 88
    Top = 74
    Width = 150
    Height = 45
    Caption = 'sRadioButton1 with wrapped text'
    Checked = True
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    TabStop = True
    WordWrap = True
    AutoSize = False
    TextIndent = 6
  end
  object sGroupBox4: TsGroupBox [9]
    Left = 124
    Top = 275
    Width = 318
    Height = 69
    Caption = 'Disable control'
    TabOrder = 6
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox4CheckBoxChanged
    object sCheckBox4: TsCheckBox
      Left = 65
      Top = 31
      Width = 76
      Height = 17
      Caption = '`Blended`'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox4Click
    end
    object sCheckBox5: TsCheckBox
      Left = 197
      Top = 31
      Width = 73
      Height = 17
      Caption = '`Grayed`'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox5Click
    end
  end
  object sCheckBox3: TsCheckBox [10]
    Left = 225
    Top = 229
    Width = 130
    Height = 18
    Caption = '`ShowFocus`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox3Click
  end
end
