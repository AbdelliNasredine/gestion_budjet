inherited FrameTsGradientPanel: TFrameTsGradientPanel
  object sGradientPanel1: TsGradientPanel [0]
    Left = 68
    Top = 40
    Width = 559
    Height = 150
    Caption = 'sGradientPanel1'
    TabOrder = 0
    PaintData.CustomGradient = 
      '-3360;0;44;-1108028007;26;16;-1157640574;27;16;-2130786962;50;20' +
      ';16761642;100;28;E'
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 68
    Top = 392
    Width = 559
    Height = 241
    Caption = '2 colors gradient'
    TabOrder = 1
    CaptionLayout = clTopCenter
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1Click
    object sGroupBox2: TsGroupBox
      Left = 54
      Top = 36
      Width = 265
      Height = 82
      Caption = 'Color 1'
      Enabled = False
      TabOrder = 0
      object sColorBox1: TsColorBox
        Left = 29
        Top = 36
        Width = 92
        Height = 25
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor]
        ShowColorName = False
        Selected = 11069945
        NoneColorColor = clNone
        PopupMode = pmPickColor
        Enabled = False
        TabOrder = 0
        OnChange = sColorBox1Change
      end
      object sCheckBox1: TsCheckBox
        Left = 140
        Top = 38
        Width = 97
        Height = 18
        Caption = 'Parent color'
        Enabled = False
        TabOrder = 1
        OnClick = sCheckBox1Click
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 54
      Top = 124
      Width = 265
      Height = 82
      Caption = 'Color 2'
      Enabled = False
      TabOrder = 1
      object sColorBox2: TsColorBox
        Left = 29
        Top = 36
        Width = 92
        Height = 25
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor]
        ShowColorName = False
        Selected = 15571026
        NoneColorColor = clNone
        PopupMode = pmPickColor
        Enabled = False
        TabOrder = 0
        OnChange = sColorBox2Change
      end
      object sCheckBox2: TsCheckBox
        Left = 140
        Top = 38
        Width = 97
        Height = 18
        Caption = 'Parent color'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 1
        OnClick = sCheckBox2Click
      end
    end
    object sRadioButton1: TsRadioButton
      Left = 380
      Top = 60
      Width = 85
      Height = 18
      Caption = 'Horizontal'
      Enabled = False
      TabOrder = 2
      OnClick = sRadioButton1Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 380
      Top = 88
      Width = 71
      Height = 18
      Caption = 'Vertical'
      Checked = True
      Enabled = False
      TabOrder = 3
      TabStop = True
      OnClick = sRadioButton1Click
    end
  end
  object sGroupBox4: TsGroupBox [2]
    Left = 68
    Top = 219
    Width = 559
    Height = 150
    Caption = 'Custom gradient'
    TabOrder = 2
    CaptionLayout = clTopCenter
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox4CheckBoxChanged
    object sSpeedButton2: TsSpeedButton
      Left = 24
      Top = 72
      Width = 137
      Height = 57
      OnClick = sSpeedButton2Click
      OnPaint = sSpeedButton2Paint
    end
    object sSpeedButton3: TsSpeedButton
      Left = 214
      Top = 72
      Width = 137
      Height = 57
      OnClick = sSpeedButton3Click
      OnPaint = sSpeedButton3Paint
    end
    object sSpeedButton4: TsSpeedButton
      Left = 400
      Top = 72
      Width = 137
      Height = 57
      OnClick = sSpeedButton4Click
      OnPaint = sSpeedButton4Paint
    end
    object sComboEdit1: TsComboEdit
      Left = 24
      Top = 30
      Width = 513
      Height = 28
      AutoSize = False
      TabOrder = 0
      Text = 
        '-3360;0;44;-1108028007;26;16;-1157640574;27;16;-2130786962;50;20' +
        ';16761642;100;28;E'
      OnChange = sComboEdit1Change
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 9
      CheckOnExit = True
      Padding.Left = 4
      VerticalAlignment = taVerticalCenter
      OnButtonClick = sComboEdit1ButtonClick
      GlyphMode.Images = FormData.CharList16
      GlyphMode.ImageIndex = 0
      ButtonWidth = 32
      DirectInput = False
    end
  end
end
