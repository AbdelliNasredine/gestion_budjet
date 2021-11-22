inherited FrameAnimation: TFrameAnimation
  Width = 816
  Height = 512
  object sGroupBox1: TsGroupBox [0]
    Left = 40
    Top = 59
    Width = 481
    Height = 166
    Caption = 'Test controls'
    TabOrder = 1
    object sSpeedButton1: TsSpeedButton
      Left = 299
      Top = 32
      Width = 155
      Height = 51
      Caption = 'Test sSpeedButton1'
      Margin = 4
      Spacing = 12
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
      Images = FormData.CharList16
      ImageIndex = 16
      Reflected = True
    end
    object sBitBtn1: TsBitBtn
      Left = 28
      Top = 32
      Width = 125
      Height = 51
      Caption = 'Test sBitBtn1'
      Margin = 4
      Spacing = 12
      TabOrder = 0
      OnMouseDown = sBitBtn1MouseDown
      Reflected = True
      ImageIndex = 16
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
      Images = FormData.CharList16
    end
    object sCheckBox1: TsCheckBox
      Left = 120
      Top = 100
      Width = 108
      Height = 17
      Caption = 'Test sCheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sRadioButton1: TsRadioButton
      Left = 296
      Top = 100
      Width = 116
      Height = 17
      Caption = 'Test sRadioButton1'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sButton1: TsButton
      Left = 166
      Top = 33
      Width = 120
      Height = 49
      Caption = 'Test sButton1'
      ImageIndex = 16
      Images = FormData.CharList16
      TabOrder = 1
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sRadioButton2: TsRadioButton
      Left = 296
      Top = 128
      Width = 116
      Height = 17
      Caption = 'Test sRadioButton2'
      TabOrder = 4
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sSlider1: TsSlider
      Left = 43
      Top = 101
      Width = 33
      Height = 17
      ParentBackground = False
      TabOrder = 5
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sCheckBox10: TsCheckBox
      Left = 120
      Top = 128
      Width = 108
      Height = 17
      Caption = 'Test sCheckBox2'
      TabOrder = 6
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
    end
    object sSlider2: TsSlider
      Left = 43
      Top = 129
      Width = 33
      Height = 17
      ParentBackground = False
      TabOrder = 7
      OnMouseDown = sBitBtn1MouseDown
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeClick, aeLighting]
      SliderOn = False
    end
  end
  object sGroupBox2: TsGroupBox [1]
    Left = 40
    Top = 243
    Width = 221
    Height = 214
    Caption = '`AnimatEvents` property in controls:'
    TabOrder = 2
    object sCheckBox5: TsCheckBox
      Tag = 16
      Left = 33
      Top = 84
      Width = 150
      Height = 17
      Caption = '`aeClick`'
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
      Top = 107
      Width = 150
      Height = 17
      Caption = '`aeMouseEnter`'
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
      Top = 130
      Width = 150
      Height = 17
      Caption = '`aeMouseLeave`'
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
      Top = 153
      Width = 150
      Height = 17
      Caption = '`aeMouseDown`'
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
      Top = 176
      Width = 150
      Height = 17
      Caption = '`aeMouseUp`'
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
      Top = 61
      Width = 150
      Height = 17
      Caption = '`aeLighting`'
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
      Caption = '`aeGlobalDef`'
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnClick = sCheckBox17Click
    end
  end
  object sGroupBox3: TsGroupBox [2]
    Left = 547
    Top = 59
    Width = 230
    Height = 166
    Caption = 'Animated attention'
    TabOrder = 4
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sColorBox1: TsColorBox
      Left = 103
      Top = 64
      Width = 100
      Height = 22
      BoundLabel.Active = True
      BoundLabel.Caption = '`Color`:'
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbCustomColors]
      ShowColorName = False
      Selected = 11579647
      PopupMode = pmPickColor
      OnColorPreview = sColorBox1ColorPreview
      Enabled = False
      TabOrder = 1
      OnChange = sColorBox1Change
    end
    object sTrackEdit1: TsTrackEdit
      Left = 103
      Top = 98
      Width = 100
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '50'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Interval` (ms):'
      Increment = 1.000000000000000000
      MaxValue = 200.000000000000000000
      Value = 50.000000000000000000
    end
    object sComboBox2: TsComboBox
      Left = 103
      Top = 31
      Width = 100
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = '`Mode`:'
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 0
      Text = '`amColor`'
      OnChange = sComboBox2Change
      Items.Strings = (
        '`amColor`'
        '`amVibration`'
        '`amWavering`')
    end
  end
  object sCheckBox3: TsCheckBox [3]
    Left = 52
    Top = 24
    Width = 224
    Height = 17
    Caption = '`sSkinManager1.Effects.AllowAnimation`'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = sCheckBox3Click
  end
  object sGroupBox4: TsGroupBox [4]
    Left = 278
    Top = 243
    Width = 243
    Height = 214
    Caption = '`sSkinManager1.AnimEffects.Buttons`'
    Enabled = False
    TabOrder = 3
    object sCheckBox4: TsCheckBox
      Tag = 4
      Left = 33
      Top = 84
      Width = 150
      Height = 17
      Caption = '`beClick`'
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
      Top = 107
      Width = 150
      Height = 17
      Caption = '`beMouseEnter`'
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
      Top = 130
      Width = 150
      Height = 17
      Caption = '`beMouseLeave`'
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
      Top = 153
      Width = 150
      Height = 17
      Caption = '`beMouseDown`'
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
      Top = 176
      Width = 150
      Height = 17
      Caption = '`beMouseUp`'
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
      Top = 61
      Width = 150
      Height = 17
      Caption = '`beLighting`'
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
    Left = 547
    Top = 243
    Width = 230
    Height = 110
    Caption = '`AnimEffects.Buttons.LightingMode`'
    TabOrder = 5
    object sRadioButton3: TsRadioButton
      Left = 32
      Top = 36
      Width = 170
      Height = 20
      Caption = '`lmAffectNearest`'
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
      Width = 170
      Height = 20
      Caption = '`lmActiveControl`'
      TabOrder = 1
      OnClick = sRadioButton4Click
      AutoSize = False
    end
  end
  object sCharImageList1: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61442
      end>
    Left = 348
    Top = 8
    Bitmap = {}
  end
end
