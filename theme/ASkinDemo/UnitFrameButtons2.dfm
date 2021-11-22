inherited Frame_Buttons2: TFrame_Buttons2
  Height = 399
  object sComboBox1: TsComboBox [0]
    Left = 480
    Top = 359
    Width = 121
    Height = 21
    TabOrder = 11
    OnChange = sComboBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Section:'
    Items.Strings = (
      'TOOLBUTTON'
      'SPEEDBUTTON'
      'BUTTON')
    ItemIndex = -1
    Style = csDropDownList
  end
  object sRadioGroup3: TsRadioGroup [1]
    Left = 432
    Top = 116
    Width = 154
    Height = 105
    Caption = 'Text alignment'
    Enabled = False
    TabOrder = 4
    OnClick = sRadioGroup3Click
    CaptionLayout = clTopCenter
    ItemIndex = 2
    ContentVOffset = 6
    Items.Strings = (
      'taLeftJustify'
      'taRightJustify'
      'taCenter')
  end
  object sGroupBox2: TsGroupBox [2]
    Left = 32
    Top = 248
    Width = 153
    Height = 129
    Caption = 'Glyph layout'
    TabOrder = 7
    CaptionLayout = clTopCenter
    object sRadioButton1: TsRadioButton
      Left = 16
      Top = 26
      Width = 120
      Height = 17
      Caption = 'blGlyphLeft'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 16
      Top = 50
      Width = 120
      Height = 17
      Caption = 'blGlyphRight'
      TabOrder = 1
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 16
      Top = 74
      Width = 120
      Height = 17
      Caption = 'blGlyphTop'
      TabOrder = 2
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton4: TsRadioButton
      Tag = 3
      Left = 16
      Top = 98
      Width = 120
      Height = 17
      Caption = 'blGlyphBottom'
      TabOrder = 3
      OnClick = sRadioButton1Click
      AutoSize = False
    end
  end
  object sRadioGroup1: TsRadioGroup [3]
    Left = 32
    Top = 116
    Width = 154
    Height = 105
    Caption = 'Alignment'
    TabOrder = 1
    OnClick = sRadioGroup1Click
    CaptionLayout = clTopCenter
    ItemIndex = 2
    ContentVOffset = 6
    Items.Strings = (
      'taLeftJustify'
      'taRightJustify'
      'taCenter')
  end
  object sCheckBox1: TsCheckBox [4]
    Left = 488
    Top = 43
    Width = 100
    Height = 17
    Caption = 'Show caption'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox1Click
  end
  object sSpinEdit1: TsSpinEdit [5]
    Left = 368
    Top = 40
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = '-1'
    OnChange = sSpinEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Margin:'
    MaxValue = 22
    MinValue = -1
    Value = -1
  end
  object sGroupBox1: TsGroupBox [6]
    Left = 224
    Top = 248
    Width = 170
    Height = 129
    Caption = 'Disable control'
    TabOrder = 6
    CaptionLayout = clTopCenter
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 14
      Top = 26
      Width = 140
      Height = 17
      Caption = 'AlphaBlended'
      AutoSize = False
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox3Click
    end
    object sCheckBox4: TsCheckBox
      Left = 14
      Top = 50
      Width = 140
      Height = 17
      Caption = 'Grayed'
      AutoSize = False
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
    object sCheckBox5: TsCheckBox
      Left = 14
      Top = 74
      Width = 140
      Height = 17
      Caption = 'AlphaBlended glyph'
      AutoSize = False
      Enabled = False
      TabOrder = 2
      OnClick = sCheckBox5Click
    end
    object sCheckBox6: TsCheckBox
      Left = 14
      Top = 98
      Width = 140
      Height = 17
      Caption = 'Grayed glyph'
      AutoSize = False
      Enabled = False
      TabOrder = 3
      OnClick = sCheckBox6Click
    end
  end
  object sBitBtn2: TsBitBtn [7]
    Tag = 5
    Left = 424
    Top = 248
    Width = 185
    Height = 97
    Caption = 'Button with child '#13#10'controls'
    Margin = 10
    Spacing = 8
    TabOrder = 10
    AcceptsControls = True
    Reflected = True
    ShowFocus = False
    ImageIndex = 9
    Images = MainForm.ImageList32
    VerticalAlignment = taAlignTop
    SkinData.SkinSection = 'SPEEDBUTTON'
    object sWebLabel1: TsWebLabel
      Left = 68
      Top = 47
      Width = 100
      Height = 13
      Caption = 'www.alphaskins.com'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'Tahoma'
      HoverFont.Style = []
      URL = 'http://www.alphaskins.com'
    end
    object sGauge1: TsGauge
      Left = 16
      Top = 70
      Width = 154
      Height = 15
      ForeColor = clBlack
      Animated = False
      Progress = 47
      Suffix = '%'
    end
  end
  object sBitBtn1: TsBitBtn [8]
    Tag = 5
    Left = 32
    Top = 24
    Width = 242
    Height = 73
    Caption = 'Test of content alignment'
    Default = True
    Spacing = 8
    TabOrder = 0
    Reflected = True
    ShowFocus = False
    ImageIndex = 6
    Images = MainForm.ImageList32
  end
  object sCheckBox2: TsCheckBox [9]
    Left = 488
    Top = 75
    Width = 100
    Height = 17
    Caption = 'Show glyph'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox2Click
  end
  object sRadioGroup2: TsRadioGroup [10]
    Left = 224
    Top = 116
    Width = 170
    Height = 105
    Caption = 'Vertical alignment'
    TabOrder = 2
    OnClick = sRadioGroup2Click
    CaptionLayout = clTopCenter
    ItemIndex = 2
    ContentVOffset = 6
    Items.Strings = (
      'taAlignTop'
      'taAlignBottom'
      'taVerticalCenter')
  end
  object sSpinEdit2: TsSpinEdit [11]
    Left = 368
    Top = 72
    Width = 81
    Height = 21
    TabOrder = 9
    Text = '4'
    OnChange = sSpinEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Spacing:'
    MaxValue = 14
    MinValue = 0
    Value = 4
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 8
    Top = 8
  end
end
