inherited FrameTsEdit: TFrameTsEdit
  Width = 735
  object sSpeedButton1: TsSpeedButton [0]
    Left = 673
    Top = 145
    Width = 34
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton5: TsSpeedButton [1]
    Left = 606
    Top = 113
    Width = 101
    Height = 25
    Caption = 'Yellow'
    Margin = 12
    OnClick = sSpeedButton5Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 3
    TextOffset = 6
  end
  object sSpeedButton4: TsSpeedButton [2]
    Left = 606
    Top = 81
    Width = 101
    Height = 25
    Caption = 'Green'
    Margin = 12
    OnClick = sSpeedButton4Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 2
    TextOffset = 6
  end
  object sSpeedButton2: TsSpeedButton [3]
    Left = 606
    Top = 49
    Width = 101
    Height = 25
    Caption = 'Red'
    Margin = 12
    OnClick = sSpeedButton2Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 1
    TextOffset = 6
  end
  object sEdit1: TsEdit [4]
    Tag = 5
    Left = 268
    Top = 61
    Width = 177
    Height = 32
    AutoSize = False
    TabOrder = 0
    TextHint = 'Text hint'
    AddedGlyph.ColorTone = 14778880
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 0
    SkinData.OuterEffects.Visibility = ovAlways
    BoundLabel.UseHTML = True
    BoundLabel.AllowClick = True
    Padding.Left = 6
    LabelFromTextHint = True
    VerticalAlignment = taVerticalCenter
  end
  object sCheckBox9: TsCheckBox [5]
    Left = 317
    Top = 137
    Width = 236
    Height = 21
    Caption = '`LabelFromTextHint`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox9Click
  end
  object sCheckBox2: TsCheckBox [6]
    Left = 317
    Top = 161
    Width = 236
    Height = 21
    Caption = 'Allow outer effects'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox2Click
  end
  object sGroupBox1: TsGroupBox [7]
    Left = 112
    Top = 147
    Width = 180
    Height = 168
    Caption = '`Padding`'
    TabOrder = 3
    CaptionLayout = clTopCenter
    SkinData.CustomBorder.RadiusTopLeft = 32
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    object sTrackEdit1: TsTrackEdit
      Left = 96
      Top = 32
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '6'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Left`:'
      Increment = 1.000000000000000000
      Value = 6.000000000000000000
    end
    object sTrackEdit2: TsTrackEdit
      Left = 96
      Top = 62
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Top`:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit3: TsTrackEdit
      Left = 96
      Top = 92
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit3Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Right`:'
      Increment = 1.000000000000000000
    end
    object sTrackEdit4: TsTrackEdit
      Left = 96
      Top = 122
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Bottom`:'
      Increment = 1.000000000000000000
    end
  end
  object sGroupBox2: TsGroupBox [8]
    Left = 112
    Top = 330
    Width = 595
    Height = 147
    Caption = '`BoundLabel` property'
    TabOrder = 4
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit5: TsTrackEdit
      Left = 100
      Top = 40
      Width = 80
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Indent`:'
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
    object sTrackEdit6: TsTrackEdit
      Left = 100
      Top = 101
      Width = 80
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit6Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`MaxWidth`:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      OnCloseUp = sTrackEdit6CloseUp
    end
    object sCheckBox1: TsCheckBox
      Left = 205
      Top = 104
      Width = 164
      Height = 17
      Caption = 'Use HTML tags (`UseHTML`)'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox1Click
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 70
      Width = 80
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit7Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Offset`:'
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = -10.000000000000000000
    end
    object sComboBox1: TsComboBox
      Left = 468
      Top = 101
      Width = 108
      Height = 21
      Enabled = False
      TabOrder = 5
      OnChange = sComboBox1Change
      TextHint = 'Change layout'
      BoundLabel.Caption = '`Layout`:'
      VerticalAlignment = taVerticalCenter
      LabelFromTextHint = True
      Items.Strings = (
        '`sclLeft`'
        '`sclTopLeft`'
        '`sclTopCenter`'
        '`sclTopRight`'
        '`sclLeftTop`'
        '`sclBottomLeft`'
        '`sclBottomCenter`'
        '`sclBottomRight`'
        '`sclRight`'
        '`sclRightTop`'
        '`sclLeftLeft`'
        '`sclRightRight`')
      Style = csDropDownList
    end
    object sMemo1: TsMemo
      Left = 205
      Top = 40
      Width = 371
      Height = 54
      Enabled = False
      Lines.Strings = (
        '<b><u>BoundLabel</u></b> property')
      TabOrder = 3
      OnChange = sMemo1Change
      Text = '<b><u>BoundLabel</u></b> property'#13#10
      BoundLabel.Active = True
      BoundLabel.Caption = '`Text`:'
      BoundLabel.Layout = sclTopLeft
    end
  end
  object sGroupBox4: TsGroupBox [9]
    Left = 112
    Top = 491
    Width = 595
    Height = 78
    Caption = 'Custom borders'
    TabOrder = 5
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 32
    SkinData.CustomBorder.RadiusBottomRight = 32
    object sEdit3: TsEdit
      Left = 116
      Top = 32
      Width = 121
      Height = 26
      AutoSize = False
      TabOrder = 0
      Text = 'sEdit3'
      SkinData.CustomBorder.Width = 2
      SkinData.CustomBorder.ColorActive = clRed
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 9
      SkinData.CustomBorder.RadiusBottomRight = 0
      Padding.Left = 5
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
    end
    object sEdit4: TsEdit
      Left = 243
      Top = 32
      Width = 121
      Height = 26
      AutoSize = False
      TabOrder = 1
      Text = 'sEdit4'
      SkinData.CustomBorder.Width = 2
      SkinData.CustomBorder.ColorActive = clYellow
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 0
      Padding.Left = 5
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
    end
    object sEdit5: TsEdit
      Left = 370
      Top = 32
      Width = 121
      Height = 26
      AutoSize = False
      TabOrder = 2
      Text = 'sEdit5'
      SkinData.CustomBorder.Width = 2
      SkinData.CustomBorder.ColorActive = clLime
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 9
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 0
      Padding.Left = 5
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
    end
  end
  object sGroupBox3: TsGroupBox [10]
    Left = 478
    Top = 199
    Width = 229
    Height = 116
    Caption = '`AddedGlyph`'
    TabOrder = 6
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sSpeedButton3: TsSpeedButton
      Left = 153
      Top = 67
      Width = 57
      Height = 24
      Caption = 'Reset'
      OnClick = sSpeedButton3Click
    end
    object sTrackEdit8: TsTrackEdit
      Left = 153
      Top = 33
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '0'
      TextHint = 'Blend value'
      OnChange = sTrackEdit8Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Blend`:'
      Increment = 1.000000000000000000
    end
    object sColorBox1: TsColorBox
      Left = 91
      Top = 67
      Width = 56
      Height = 24
      AutoSize = False
      TabOrder = 1
      OnChange = sColorBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`ColorTone`:'
      Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
      ShowColorName = False
      Selected = 14778880
      NoneColorColor = clNone
      PopupMode = pmPickColor
    end
  end
  object sRadioGroup1: TsRadioGroup [11]
    Left = 317
    Top = 199
    Width = 136
    Height = 116
    Caption = '`VerticalAlignment`'
    TabOrder = 7
    OnClick = sRadioGroup1Click
    SkinData.CustomBorder.RadiusTopLeft = 0
    SkinData.CustomBorder.RadiusTopRight = 0
    SkinData.CustomBorder.RadiusBottomLeft = 0
    SkinData.CustomBorder.RadiusBottomRight = 0
    ItemIndex = 2
    ContentVOffset = 6
    ContentHOffset = 10
    Items.Strings = (
      '`taAlignTop`'
      '`taAlignBottom`'
      '`taAlignCenter`')
  end
  object sColorBox2: TsColorBox [12]
    Left = 606
    Top = 145
    Width = 61
    Height = 25
    AutoSize = False
    TabOrder = 8
    OnChange = sColorBox2Change
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
end
