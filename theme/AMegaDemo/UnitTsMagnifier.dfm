inherited FrameTsMagnifier: TFrameTsMagnifier
  object sSpeedButton1: TsSpeedButton [0]
    Left = 50
    Top = 50
    Width = 154
    Height = 79
    Caption = 'Show magnifier'
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 16
  end
  object sCheckBox2: TsCheckBox [1]
    Left = 50
    Top = 206
    Width = 164
    Height = 17
    Caption = 'Custom screen source'
    AutoSize = False
    TabOrder = 2
    OnClick = sCheckBox2Click
  end
  object sCheckBox1: TsCheckBox [2]
    Left = 50
    Top = 176
    Width = 164
    Height = 17
    Caption = '`ShowPopupMenu`'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox1Click
  end
  object sTrackEdit1: TsTrackEdit [3]
    Left = 166
    Top = 294
    Width = 48
    Height = 21
    TabOrder = 5
    Text = '2'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = '`Scaling`:'
    Increment = 1.000000000000000000
    MaxValue = 8.000000000000000000
    MinValue = 2.000000000000000000
    Value = 2.000000000000000000
    OnSetTextFromValue = sTrackEdit1SetTextFromValue
  end
  object sCheckBox3: TsCheckBox [4]
    Left = 50
    Top = 236
    Width = 164
    Height = 17
    Caption = 'Resizeable'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox3Click
  end
  object sRadioGroup2: TsRadioGroup [5]
    Left = 260
    Top = 50
    Width = 145
    Height = 79
    Caption = '`Style`:'
    TabOrder = 0
    CaptionMargin.Right = 0
    ItemIndex = 1
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      '`Rectangular`'
      '`Round lense`')
    OnChange = sRadioGroup2Change
  end
  object sColorBox1: TsColorBox [6]
    Left = 328
    Top = 294
    Width = 77
    Height = 22
    BoundLabel.Active = True
    BoundLabel.Caption = '`BorderColor`:'
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
    ShowColorName = False
    PopupMode = pmPickColor
    Enabled = False
    TabOrder = 6
    OnChange = sColorBox1Change
  end
  object sRadioGroup1: TsRadioGroup [7]
    Left = 260
    Top = 159
    Width = 145
    Height = 105
    Caption = '`BordersStyle`:'
    TabOrder = 4
    CaptionMargin.Right = 0
    ItemIndex = 0
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      '`Default`'
      '`Flat`'
      '`None`')
    OnChange = sRadioGroup1Change
  end
  object sMagnifier1: TsMagnifier
    Width = 350
    Height = 350
    Style = amsLens
    OnDblClick = sMagnifier1DblClick
    Left = 492
    Top = 124
  end
end
