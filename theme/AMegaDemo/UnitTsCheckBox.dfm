inherited FrameTsCheckBox: TFrameTsCheckBox
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
  object sCheckBox2: TsCheckBox [4]
    Left = 224
    Top = 233
    Width = 96
    Height = 17
    Caption = 'Custom glyphs'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox2Click
  end
  object sTrackEdit1: TsTrackEdit [5]
    Left = 120
    Top = 229
    Width = 53
    Height = 21
    TabOrder = 1
    Text = '0'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`Margin`:'
    EditorEnabled = False
    Increment = 1.000000000000000000
    MaxValue = 20.000000000000000000
    OnCloseUp = sTrackEdit1CloseUp
  end
  object sCheckBox6: TsCheckBox [6]
    Left = 390
    Top = 262
    Width = 85
    Height = 17
    Caption = '`ReadOnly`'
    TabOrder = 6
    OnClick = sCheckBox6Click
  end
  object sGroupBox4: TsGroupBox [7]
    Left = 120
    Top = 309
    Width = 318
    Height = 69
    Caption = 'Disable control'
    TabOrder = 7
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox4CheckBoxChanged
    object sCheckBox4: TsCheckBox
      Left = 61
      Top = 32
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
      Left = 205
      Top = 31
      Width = 73
      Height = 17
      Caption = '`Grayed`'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox5Click
    end
  end
  object sCheckBox7: TsCheckBox [8]
    Left = 390
    Top = 233
    Width = 98
    Height = 17
    Caption = '`AllowGrayed`'
    TabOrder = 3
    OnClick = sCheckBox7Click
  end
  object sCheckBox1: TsCheckBox [9]
    Left = 112
    Top = 72
    Width = 230
    Height = 60
    Caption = 'CheckBox text may be wrapped and image may be customized'
    AutoSize = False
    Checked = True
    Color = clBtnFace
    ParentColor = False
    State = cbChecked
    TabOrder = 0
    ImgUnchecked = 1
    ImgGrayed = 2
    Images = sCharImageList1
    TextIndent = 6
    WordWrap = True
  end
  object sTrackEdit2: TsTrackEdit [10]
    Left = 120
    Top = 259
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
  object sCheckBox3: TsCheckBox [11]
    Left = 225
    Top = 262
    Width = 92
    Height = 17
    Caption = '`ShowFocus`'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox3Click
  end
  object sCharImageList1: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61796
        Color = -14121702
      end
      item
        Char = 61797
        Color = -16777036
      end
      item
        Char = 62108
        Color = -5344256
      end>
    Left = 248
    Top = 8
    Bitmap = {}
  end
end
