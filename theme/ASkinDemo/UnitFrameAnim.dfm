inherited Frame_Anim: TFrame_Anim
  Width = 764
  Height = 466
  VertScrollBar.Tracking = True
  Align = alClient
  object sGroupBox1: TsGroupBox [0]
    Left = 20
    Top = 11
    Width = 453
    Height = 182
    Caption = 'Test controls'
    TabOrder = 0
    object sSpeedButton1: TsSpeedButton
      Tag = 3
      Left = 285
      Top = 31
      Width = 149
      Height = 51
      Caption = 'Test sSpeedButton1'
      Margin = 4
      Spacing = 12
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
      Images = sVirtualImageList1
      ImageIndex = 3
      Reflected = True
    end
    object sBitBtn1: TsBitBtn
      Left = 18
      Top = 31
      Width = 120
      Height = 51
      Caption = 'Test sBitBtn1'
      Margin = 4
      Spacing = 12
      TabOrder = 0
      OnMouseDown = sBitBtn1MouseDown
      Reflected = True
      ImageIndex = 3
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
      Images = sVirtualImageList1
    end
    object sCheckBox1: TsCheckBox
      Left = 44
      Top = 98
      Width = 108
      Height = 17
      Caption = 'Test sCheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sRadioButton1: TsRadioButton
      Left = 201
      Top = 98
      Width = 116
      Height = 17
      Caption = 'Test sRadioButton1'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sButton1: TsButton
      Left = 148
      Top = 31
      Width = 125
      Height = 51
      Caption = 'Test sButton1'
      ImageIndex = 3
      Images = sVirtualImageList1
      TabOrder = 3
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sRadioButton2: TsRadioButton
      Left = 201
      Top = 124
      Width = 116
      Height = 17
      Caption = 'Test sRadioButton2'
      TabOrder = 4
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sSlider1: TsSlider
      Left = 381
      Top = 125
      Width = 35
      Height = 17
      ParentBackground = False
      TabOrder = 5
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clBlack
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SliderOn = False
    end
    object sSlider2: TsSlider
      Left = 381
      Top = 99
      Width = 35
      Height = 17
      ParentBackground = False
      TabOrder = 6
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clBlack
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object sCheckBox10: TsCheckBox
      Left = 44
      Top = 124
      Width = 108
      Height = 17
      Caption = 'Test sCheckBox2'
      TabOrder = 7
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
  end
  object sGroupBox3: TsGroupBox [1]
    Left = 488
    Top = 55
    Width = 209
    Height = 138
    Caption = 'Animated attention'
    TabOrder = 1
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sColorBox1: TsColorBox
      Left = 99
      Top = 59
      Width = 94
      Height = 21
      Enabled = False
      TabOrder = 0
      OnChange = sColorBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Color'
      DropDownCount = 8
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbCustomColors]
      ShowColorName = False
      Selected = 7105791
      PopupMode = pmPickColor
      OnColorPreview = sColorBox1ColorPreview
      ItemHeight = 16
    end
    object sTrackEdit1: TsTrackEdit
      Left = 99
      Top = 90
      Width = 94
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '50'
      OnChange = sColorBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Interval (ms):'
      Increment = 1.000000000000000000
      MaxValue = 200.000000000000000000
      Value = 50.000000000000000000
    end
    object sComboBox2: TsComboBox
      Left = 99
      Top = 28
      Width = 94
      Height = 21
      Enabled = False
      TabOrder = 2
      OnChange = sComboBox2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Mode:'
      ItemIndex = 0
      ItemHeight = 13
      Items.Strings = (
        'amColor'
        'amVibration'
        'amWavering')
      Style = csDropDownList
      Text = 'amColor'
    end
  end
  object sCheckBox3: TsCheckBox [2]
    Left = 496
    Top = 16
    Width = 122
    Height = 17
    Caption = 'Animation is allowed'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox3Click
  end
  object sGroupBox2: TsGroupBox [3]
    Left = 20
    Top = 199
    Width = 209
    Height = 202
    Caption = 'AnimatEvents property in controls'
    TabOrder = 3
    object sCheckBox5: TsCheckBox
      Tag = 16
      Left = 33
      Top = 76
      Width = 150
      Height = 17
      Caption = 'aeClick'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox2Click
    end
    object sCheckBox6: TsCheckBox
      Tag = 1
      Left = 33
      Top = 99
      Width = 150
      Height = 17
      Caption = 'aeMouseEnter'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox2Click
    end
    object sCheckBox7: TsCheckBox
      Tag = 2
      Left = 33
      Top = 122
      Width = 150
      Height = 17
      Caption = 'aeMouseLeave'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox2Click
    end
    object sCheckBox8: TsCheckBox
      Tag = 4
      Left = 33
      Top = 145
      Width = 150
      Height = 17
      Caption = 'aeMouseDown'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 5
      OnClick = sCheckBox2Click
    end
    object sCheckBox9: TsCheckBox
      Tag = 8
      Left = 33
      Top = 168
      Width = 150
      Height = 17
      Caption = 'aeMouseUp'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 6
      OnClick = sCheckBox2Click
    end
    object sCheckBox2: TsCheckBox
      Tag = 32
      Left = 33
      Top = 53
      Width = 150
      Height = 17
      Caption = 'aeLighting'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox2Click
    end
    object sCheckBox17: TsCheckBox
      Tag = 64
      Left = 33
      Top = 30
      Width = 150
      Height = 17
      Caption = 'aeGlobalDef'
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnClick = sCheckBox17Click
    end
  end
  object sGroupBox4: TsGroupBox [4]
    Left = 246
    Top = 199
    Width = 227
    Height = 202
    Caption = 'sSkinManager1.AnimEffects.Buttons'
    TabOrder = 4
    object sCheckBox4: TsCheckBox
      Tag = 4
      Left = 33
      Top = 76
      Width = 150
      Height = 17
      Caption = 'beClick'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox16Click
    end
    object sCheckBox11: TsCheckBox
      Left = 33
      Top = 99
      Width = 150
      Height = 17
      Caption = 'beMouseEnter'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox16Click
    end
    object sCheckBox12: TsCheckBox
      Tag = 1
      Left = 33
      Top = 122
      Width = 150
      Height = 17
      Caption = 'beMouseLeave'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox16Click
    end
    object sCheckBox13: TsCheckBox
      Tag = 2
      Left = 33
      Top = 145
      Width = 150
      Height = 17
      Caption = 'beMouseDown'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox16Click
    end
    object sCheckBox14: TsCheckBox
      Tag = 3
      Left = 33
      Top = 168
      Width = 150
      Height = 17
      Caption = 'beMouseUp'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 5
      OnClick = sCheckBox16Click
    end
    object sCheckBox16: TsCheckBox
      Tag = 5
      Left = 33
      Top = 53
      Width = 150
      Height = 17
      Caption = 'beLighting'
      AutoSize = False
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox16Click
    end
  end
  object sGroupBox5: TsGroupBox [5]
    Left = 488
    Top = 199
    Width = 209
    Height = 105
    Caption = 'Lighting mode'
    TabOrder = 5
    object sRadioButton3: TsRadioButton
      Left = 32
      Top = 36
      Width = 150
      Height = 20
      Caption = 'lmAffectNearest'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton3Click
      AutoSize = False
    end
    object sRadioButton4: TsRadioButton
      Tag = 1
      Left = 32
      Top = 68
      Width = 150
      Height = 20
      Caption = 'lmActiveControl'
      TabOrder = 1
      OnClick = sRadioButton3Click
      AutoSize = False
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 68
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 24
    Width = 24
    AlphaImageList = MainForm.ImageList32
    Left = 420
    Top = 4
    Bitmap = {}
  end
end
