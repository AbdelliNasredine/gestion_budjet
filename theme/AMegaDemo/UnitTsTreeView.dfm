inherited FrameTsTreeView: TFrameTsTreeView
  object sSpeedButton1: TsSpeedButton [0]
    Left = 616
    Top = 269
    Width = 31
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 546
    Top = 173
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
    Top = 205
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
    Top = 237
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
  object sCheckBox3: TsCheckBox [4]
    Left = 257
    Top = 271
    Width = 101
    Height = 17
    Caption = '`ShowButtons`'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox3Click
  end
  object sCheckBox2: TsCheckBox [5]
    Left = 94
    Top = 271
    Width = 117
    Height = 17
    Caption = 'Allow outer effects'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox2Click
  end
  object sTreeView1: TsTreeView [6]
    Tag = 6
    Left = 196
    Top = 58
    Width = 233
    Height = 195
    Images = FormData.CharList16
    Indent = 23
    TabOrder = 0
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = '`<b><u>BoundLabel</u></b>` property'
    BoundLabel.Layout = sclLeftTop
    SkinData.OuterEffects.Visibility = ovAlways
    SkinData.VertScrollData.ButtonsSize = 0
    SkinData.HorzScrollData.ButtonsSize = 0
  end
  object sColorBox2: TsColorBox [7]
    Left = 546
    Top = 269
    Width = 63
    Height = 25
    AutoSize = False
    TabOrder = 3
    OnChange = sColorBox2Change
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
  object sGroupBox1: TsGroupBox [8]
    Left = 52
    Top = 472
    Width = 595
    Height = 141
    Caption = 'Customize scrolls'
    TabOrder = 5
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    BoxStyle = bsCard
    object sGroupBox5: TsGroupBox
      Left = 30
      Top = 30
      Width = 263
      Height = 92
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox5CheckBoxChanged
      object sCheckBox5: TsCheckBox
        Left = 21
        Top = 32
        Width = 226
        Height = 17
        Caption = 'Default size defined in the TsSkinManager'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox5Click
      end
      object sTrackBar3: TsTrackBar
        Left = 12
        Top = 55
        Width = 233
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
      Left = 308
      Top = 30
      Width = 257
      Height = 92
      Caption = 'Default scroll width'
      TabOrder = 1
      CaptionLayout = clTopCenter
      AutoChildrenStates = csAsNotChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sStickyLabel3: TsStickyLabel
        Left = 59
        Top = 34
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vertical:'
        Enabled = False
        AttachTo = sTrackBar4
      end
      object sStickyLabel4: TsStickyLabel
        Left = 46
        Top = 62
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Horizontal:'
        Enabled = False
        AttachTo = sTrackBar5
      end
      object sTrackBar4: TsTrackBar
        Left = 100
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
        Left = 100
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
  object sGroupBox2: TsGroupBox [9]
    Left = 52
    Top = 306
    Width = 595
    Height = 147
    Caption = '`BoundLabel` property'
    TabOrder = 4
    SkinData.OuterEffects.Visibility = ovAlways
    CheckBoxVisible = True
    Checked = True
    BoxStyle = bsCard
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
      BoundLabel.Caption = '`Indent`:'
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
    object sTrackEdit6: TsTrackEdit
      Left = 100
      Top = 101
      Width = 80
      Height = 21
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
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox1Click
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 70
      Width = 80
      Height = 21
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
      Left = 464
      Top = 101
      Width = 112
      Height = 21
      TabOrder = 5
      OnChange = sComboBox1Change
      TextHint = 'Change layout'
      BoundLabel.Caption = 'Layout:'
      VerticalAlignment = taVerticalCenter
      LabelFromTextHint = True
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
      Style = csDropDownList
    end
    object sMemo1: TsMemo
      Left = 205
      Top = 40
      Width = 371
      Height = 54
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
end
