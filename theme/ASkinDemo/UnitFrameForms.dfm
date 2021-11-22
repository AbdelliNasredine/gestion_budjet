inherited Frame_Forms: TFrame_Forms
  object sGroupBox9: TsGroupBox [0]
    Left = 341
    Top = 144
    Width = 132
    Height = 125
    Caption = 'Caption alignment'
    TabOrder = 3
    object sRadioButton18: TsRadioButton
      Tag = 5
      Left = 14
      Top = 28
      Width = 105
      Height = 17
      Caption = 'taLeftJustify'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton18Change
      AutoSize = False
    end
    object sRadioButton19: TsRadioButton
      Tag = 5
      Left = 14
      Top = 57
      Width = 105
      Height = 17
      Caption = 'taCenter'
      TabOrder = 1
      OnClick = sRadioButton19Change
      AutoSize = False
    end
    object sRadioButton20: TsRadioButton
      Tag = 5
      Left = 14
      Top = 86
      Width = 105
      Height = 17
      Caption = 'taRightJustify'
      TabOrder = 2
      OnClick = sRadioButton20Change
      AutoSize = False
    end
  end
  object sGroupBox2: TsGroupBox [1]
    Left = 482
    Top = 144
    Width = 185
    Height = 137
    Caption = 'Allow skinning of form'
    TabOrder = 7
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sCheckBox20: TsCheckBox
      Tag = 5
      Left = 17
      Top = 98
      Width = 150
      Height = 17
      Caption = 'Show grip'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object sCheckBox19: TsCheckBox
      Tag = 5
      Left = 17
      Top = 65
      Width = 150
      Height = 17
      Caption = 'Show app icon'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox19Change
    end
    object sCheckBox2: TsCheckBox
      Tag = 5
      Left = 17
      Top = 20
      Width = 150
      Height = 41
      Caption = 'Make a title menu for choosing of skins'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 2
      WordWrap = True
    end
  end
  object sGroupBox1: TsGroupBox [2]
    Left = 243
    Top = 36
    Width = 246
    Height = 77
    Caption = 'Allow main form blackout'
    TabOrder = 6
    CaptionLayout = clTopCenter
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sColorBox1: TsColorBox
      Tag = 3
      Left = 24
      Top = 35
      Width = 113
      Height = 21
      Enabled = False
      TabOrder = 0
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
      PopupMode = pmPickColor
    end
    object sCheckBox1: TsCheckBox
      Left = 164
      Top = 37
      Width = 56
      Height = 17
      Caption = 'Blured'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
  end
  object sGroupBox7: TsGroupBox [3]
    Left = 39
    Top = 144
    Width = 141
    Height = 205
    Caption = 'Border style'
    TabOrder = 0
    CaptionLayout = clTopCenter
    object sRadioButton12: TsRadioButton
      Tag = 5
      Left = 14
      Top = 25
      Width = 110
      Height = 17
      Caption = 'bsDialog'
      TabOrder = 0
      OnClick = sRadioButton12Click
      AutoSize = False
    end
    object sRadioButton13: TsRadioButton
      Tag = 5
      Left = 14
      Top = 53
      Width = 110
      Height = 17
      Caption = 'bsNone'
      TabOrder = 1
      OnClick = sRadioButton12Click
      AutoSize = False
    end
    object sRadioButton14: TsRadioButton
      Tag = 5
      Left = 14
      Top = 82
      Width = 110
      Height = 17
      Caption = 'bsSingle'
      TabOrder = 2
      OnClick = sRadioButton12Click
      AutoSize = False
    end
    object sRadioButton15: TsRadioButton
      Tag = 5
      Left = 14
      Top = 111
      Width = 110
      Height = 17
      Caption = 'bsSizeable'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = sRadioButton12Click
      AutoSize = False
    end
    object sRadioButton16: TsRadioButton
      Tag = 5
      Left = 14
      Top = 140
      Width = 110
      Height = 17
      Caption = 'bsSizeToolWin'
      TabOrder = 4
      OnClick = sRadioButton12Click
      AutoSize = False
    end
    object sRadioButton17: TsRadioButton
      Tag = 5
      Left = 14
      Top = 169
      Width = 110
      Height = 17
      Caption = 'bsToolWindow'
      TabOrder = 5
      OnClick = sRadioButton12Click
      AutoSize = False
    end
  end
  object sButton1: TsButton [4]
    Tag = 5
    Left = 521
    Top = 47
    Width = 146
    Height = 66
    Caption = 'Create and show'#13#10' a test form'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object sComboBox1: TsComboBox [5]
    Tag = 5
    Left = 39
    Top = 89
    Width = 173
    Height = 21
    TabOrder = 5
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection name:'
    BoundLabel.Layout = sclTopLeft
    Items.Strings = (
      'FORM'
      'DIALOG'
      'BUTTON'
      'PAGECONTROL')
    ItemIndex = -1
    Text = 'DIALOG'
  end
  object sGroupBox8: TsGroupBox [6]
    Left = 191
    Top = 144
    Width = 141
    Height = 151
    Caption = 'Border icons'
    TabOrder = 2
    CaptionLayout = clTopCenter
    object sCheckBox9: TsCheckBox
      Tag = 5
      Left = 16
      Top = 28
      Width = 110
      Height = 17
      Caption = 'biSystemMenu'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object sCheckBox15: TsCheckBox
      Tag = 5
      Left = 16
      Top = 57
      Width = 110
      Height = 17
      Caption = 'biMaximize'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object sCheckBox16: TsCheckBox
      Tag = 5
      Left = 16
      Top = 86
      Width = 110
      Height = 17
      Caption = 'biMinimize'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object sCheckBox17: TsCheckBox
      Tag = 5
      Left = 16
      Top = 116
      Width = 110
      Height = 17
      Caption = 'biHelp'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object sEdit2: TsEdit [7]
    Tag = 5
    Left = 39
    Top = 44
    Width = 173
    Height = 21
    TabOrder = 4
    Text = 'Test form with custom title'
    BoundLabel.Active = True
    BoundLabel.Caption = 'Caption text:'
    BoundLabel.Layout = sclTopLeft
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 428
    Top = 36
  end
end
