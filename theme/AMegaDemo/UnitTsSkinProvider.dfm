inherited FrameTsSkinProvider: TFrameTsSkinProvider
  object sCheckBox2: TsCheckBox [0]
    Left = 86
    Top = 80
    Width = 160
    Height = 18
    Caption = '`AllowExtBorders`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox2Click
  end
  object sCheckBox3: TsCheckBox [1]
    Left = 86
    Top = 110
    Width = 160
    Height = 18
    Caption = '`DrawNonClientArea`'
    AutoSize = False
    Checked = True
    Enabled = False
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox3Click
  end
  object sCheckBox5: TsCheckBox [2]
    Left = 86
    Top = 171
    Width = 160
    Height = 18
    Caption = 'AllowBlendOnMoving'
    AutoSize = False
    Enabled = False
    TabOrder = 4
    Visible = False
  end
  object sCheckBox6: TsCheckBox [3]
    Left = 86
    Top = 50
    Width = 160
    Height = 18
    Caption = '`AllowAnimation`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = sCheckBox6Click
  end
  object sCheckBox7: TsCheckBox [4]
    Left = 86
    Top = 201
    Width = 160
    Height = 18
    Caption = 'MakeSkinMenu'
    AutoSize = False
    Enabled = False
    TabOrder = 5
    Visible = False
  end
  object sCheckBox8: TsCheckBox [5]
    Left = 86
    Top = 140
    Width = 160
    Height = 18
    Caption = '`ScreenSnap`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox8Click
  end
  object sGroupBox1: TsGroupBox [6]
    Left = 86
    Top = 252
    Width = 571
    Height = 225
    Caption = '`UWPMode`'
    TabOrder = 7
    AutoChildrenStates = csAsNotChecked
    CheckBoxVisible = True
    Checked = True
    BoxStyle = bsCard
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sCheckBox4: TsCheckBox
      Left = 133
      Top = 177
      Width = 104
      Height = 17
      Caption = '`ShowAppIcon`'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox4Click
    end
    object sGroupBox2: TsGroupBox
      Left = 265
      Top = 37
      Width = 244
      Height = 115
      Caption = '`AddedTitle`'
      Enabled = False
      TabOrder = 1
      object sCheckBox10: TsCheckBox
        Left = 68
        Top = 33
        Width = 123
        Height = 17
        Caption = '`ShowMainCaption`'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox10Click
      end
      object sEdit1: TsEdit
        Left = 68
        Top = 65
        Width = 125
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = 'Additional text'
        OnChange = sEdit1Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`Text`:'
      end
    end
    object sRadioGroup1: TsRadioGroup
      Left = 59
      Top = 37
      Width = 174
      Height = 115
      Caption = '`CaptionAlignment`'
      Enabled = False
      TabOrder = 0
      ImageIndex = 0
      ItemIndex = 0
      ContentVOffset = 8
      ContentHOffset = 14
      Items.Strings = (
        '`taLeftJustify`'
        '`taRightJustify`'
        '`taCenter`')
      OnChange = sRadioGroup1Change
    end
    object sComboBox1: TsComboBox
      Left = 333
      Top = 173
      Width = 125
      Height = 21
      Enabled = False
      TabOrder = 3
      OnChange = sComboBox1Change
      TextHint = 'Title skin'
      BoundLabel.Caption = '`TitleSkin`:'
      VerticalAlignment = taVerticalCenter
      LabelFromTextHint = True
      Items.Strings = (
        ''
        'PANEL'
        'PROGRESSH'
        'MAINMENU'
        'SELECTION'
        'TRANSPARENT')
      Style = csDropDownList
    end
  end
  object sGroupBox3: TsGroupBox [7]
    Left = 306
    Top = 49
    Width = 351
    Height = 170
    Caption = 'Blending of disabled form'
    TabOrder = 6
    BoxStyle = bsCard
    object sTrackEdit1: TsTrackEdit
      Left = 148
      Top = 45
      Width = 45
      Height = 21
      AutoSize = False
      TabOrder = 0
      Text = '222'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`DisabledBlendValue`:'
      Increment = 1.000000000000000000
      MaxValue = 255.000000000000000000
      Value = 222.000000000000000000
    end
    object sColorBox1: TsColorBox
      Left = 148
      Top = 78
      Width = 137
      Height = 21
      TabOrder = 2
      OnChange = sColorBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`DisabledBlendColor`:'
      Style = [cbStandardColors, cbCustomColor]
      ShowColorName = False
      PopupMode = pmPickColor
    end
    object sCheckBox1: TsCheckBox
      Left = 212
      Top = 48
      Width = 108
      Height = 17
      Caption = '`DisabledBlured`'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
    object sBitBtn1: TsBitBtn
      Left = 148
      Top = 111
      Width = 137
      Height = 25
      Caption = 'Test'
      TabOrder = 3
      OnClick = sBitBtn1Click
      Grayed = True
    end
  end
end
