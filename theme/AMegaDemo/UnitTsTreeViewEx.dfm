inherited FrameTsTreeViewEx: TFrameTsTreeViewEx
  object sSpeedButton1: TsSpeedButton [0]
    Left = 616
    Top = 155
    Width = 31
    Height = 22
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
    ShowCaption = False
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 546
    Top = 58
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
    Left = 546
    Top = 90
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
    Left = 546
    Top = 122
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
  object sComboBox2: TsComboBox [4]
    Left = 52
    Top = 293
    Width = 153
    Height = 21
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection:'
    BoundLabel.Layout = sclTopLeft
    VerticalAlignment = taVerticalCenter
    Style = csDropDownList
    ItemIndex = 2
    TabOrder = 5
    Text = 'TRANSPARENT'
    OnChange = sComboBox2Change
    Items.Strings = (
      'PROGRESSH'
      'EDIT'
      'TRANSPARENT'
      'PANEL'
      'PANEL_LOW'
      ''
      'GROUPBOX')
  end
  object sCheckBox4: TsCheckBox [5]
    Left = 245
    Top = 296
    Width = 110
    Height = 17
    Caption = 'Show checkboxes'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = sCheckBox4Click
  end
  object sCheckBox6: TsCheckBox [6]
    Left = 412
    Top = 296
    Width = 85
    Height = 17
    Caption = 'Show glyphs'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = sCheckBox6Click
  end
  object sCheckBox3: TsCheckBox [7]
    Left = 412
    Top = 269
    Width = 88
    Height = 17
    Caption = 'ShowButtons'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = sCheckBox3Click
  end
  object sCheckBox2: TsCheckBox [8]
    Left = 245
    Top = 269
    Width = 116
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox2Click
  end
  object sCheckBox7: TsCheckBox [9]
    Left = 553
    Top = 268
    Width = 75
    Height = 17
    Caption = 'RowSelect'
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = sCheckBox7Click
  end
  object sCheckBox8: TsCheckBox [10]
    Left = 553
    Top = 296
    Width = 75
    Height = 17
    Caption = 'ShowLines'
    TabOrder = 10
    OnClick = sCheckBox8Click
  end
  object sGroupBox1: TsGroupBox [11]
    Left = 52
    Top = 496
    Width = 595
    Height = 139
    Caption = 'Customize scrolls'
    TabOrder = 4
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    object sGroupBox5: TsGroupBox
      Left = 30
      Top = 26
      Width = 217
      Height = 92
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox5CheckBoxChanged
      object sCheckBox5: TsCheckBox
        Left = 37
        Top = 31
        Width = 81
        Height = 17
        Caption = 'Default size'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox5Click
      end
      object sTrackBar3: TsTrackBar
        Left = 12
        Top = 55
        Width = 193
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 16
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar3Change
        ShowProgress = True
      end
    end
    object sGroupBox6: TsGroupBox
      Left = 275
      Top = 26
      Width = 290
      Height = 92
      Caption = 'Default scroll width'
      TabOrder = 1
      CaptionLayout = clTopCenter
      AutoChildrenStates = csAsNotChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sStickyLabel3: TsStickyLabel
        Left = 71
        Top = 34
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vertical:'
        Enabled = False
        AttachTo = sTrackBar4
      end
      object sStickyLabel4: TsStickyLabel
        Left = 58
        Top = 62
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Horizontal:'
        Enabled = False
        AttachTo = sTrackBar5
      end
      object sTrackBar4: TsTrackBar
        Left = 112
        Top = 27
        Width = 148
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 24
        TabOrder = 0
        TickStyle = tsNone
        OnChange = sTrackBar4Change
        ShowProgress = True
      end
      object sTrackBar5: TsTrackBar
        Left = 112
        Top = 55
        Width = 148
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 12
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar5Change
        ShowProgress = True
      end
    end
  end
  object sGroupBox2: TsGroupBox [12]
    Left = 52
    Top = 330
    Width = 595
    Height = 147
    Caption = 'BoundLabel property'
    TabOrder = 1
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit5: TsTrackEdit
      Left = 100
      Top = 40
      Width = 80
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Indent:'
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
    object sTrackEdit6: TsTrackEdit
      Left = 100
      Top = 101
      Width = 80
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit6Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'MaxWidth:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      OnCloseUp = sTrackEdit6CloseUp
    end
    object sCheckBox1: TsCheckBox
      Left = 205
      Top = 104
      Width = 96
      Height = 17
      Caption = 'Use HTML tags'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox1Click
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 70
      Width = 80
      Height = 21
      TabOrder = 3
      Text = '0'
      OnChange = sTrackEdit7Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Offset:'
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = -10.000000000000000000
    end
    object sComboBox1: TsComboBox
      Left = 480
      Top = 101
      Width = 96
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = 'Layout:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 4
      TabOrder = 4
      Text = 'sclLeftTop'
      OnChange = sComboBox1Change
      Items.Strings = (
        'sclLeft'
        'sclTopLeft'
        'sclTopCenter'
        'sclTopRight'
        'sclLeftTop'
        'sclBottomLeft'
        'sclBottomCenter'
        'sclBottomRight'
        'sclRight'
        'sclRightTop'
        'sclLeftLeft'
        'sclRightRight')
    end
    object sMemo1: TsMemo
      Left = 205
      Top = 40
      Width = 371
      Height = 54
      Lines.Strings = (
        '<b><u>BoundLabel</u></b> property')
      TabOrder = 5
      OnChange = sMemo1Change
      Text = '<b><u>BoundLabel</u></b> property'#13#10
      BoundLabel.Active = True
      BoundLabel.Caption = 'Text:'
      BoundLabel.Layout = sclTopLeft
    end
  end
  object sTreeViewEx1: TsTreeViewEx [13]
    Tag = 6
    Left = 220
    Top = 58
    Width = 233
    Height = 179
    Images = FormData.CharList16
    Indent = 23
    ShowLines = False
    TabOrder = 0
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = '<b><u>BoundLabel</u></b> property'
    BoundLabel.Layout = sclLeftTop
    SkinData.SkinSection = 'TRANSPARENT'
    SkinData.OuterEffects.Visibility = ovAlways
    SkinData.VertScrollData.ButtonsSize = 0
    SkinData.HorzScrollData.ButtonsSize = 0
    Checkboxes = True
  end
  object sColorBox2: TsColorBox [14]
    Left = 546
    Top = 155
    Width = 64
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    TabOrder = 3
    OnChange = sColorBox2Change
  end
end
