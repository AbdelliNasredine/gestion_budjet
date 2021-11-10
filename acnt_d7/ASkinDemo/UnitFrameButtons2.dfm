inherited Frame_Buttons2: TFrame_Buttons2
  object sCheckBox1: TsCheckBox [0]
    Left = 488
    Top = 40
    Width = 84
    Height = 20
    Caption = 'Show caption'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox1Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sGroupBox2: TsGroupBox [1]
    Left = 32
    Top = 248
    Width = 153
    Height = 129
    Caption = 'Glyph layout'
    TabOrder = 7
    SkinData.SkinSection = 'GROUPBOX'
    object sRadioButton1: TsRadioButton
      Left = 16
      Top = 26
      Width = 74
      Height = 20
      Caption = 'blGlyphLeft'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 16
      Top = 50
      Width = 80
      Height = 20
      Caption = 'blGlyphRight'
      TabOrder = 1
      OnClick = sRadioButton1Click
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 16
      Top = 74
      Width = 73
      Height = 20
      Caption = 'blGlyphTop'
      TabOrder = 2
      OnClick = sRadioButton1Click
    end
    object sRadioButton4: TsRadioButton
      Tag = 3
      Left = 16
      Top = 98
      Width = 89
      Height = 20
      Caption = 'blGlyphBottom'
      TabOrder = 3
      OnClick = sRadioButton1Click
    end
  end
  object sSpinEdit1: TsSpinEdit [2]
    Left = 368
    Top = 40
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = '-1'
    OnChange = sSpinEdit1Change
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Active = True
    BoundLabel.Caption = 'Margin:'
    MaxValue = 22
    MinValue = -1
    Value = -1
  end
  object sComboBox1: TsComboBox [3]
    Left = 480
    Top = 359
    Width = 121
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'Section:'
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = -1
    TabOrder = 11
    OnChange = sComboBox1Change
    Items.Strings = (
      'TOOLBUTTON'
      'SPEEDBUTTON'
      'BUTTON')
  end
  object sSpinEdit2: TsSpinEdit [4]
    Left = 368
    Top = 72
    Width = 81
    Height = 21
    TabOrder = 9
    Text = '4'
    OnChange = sSpinEdit2Change
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Active = True
    BoundLabel.Caption = 'Spacing:'
    MaxValue = 14
    MinValue = 0
    Value = 4
  end
  object sBitBtn2: TsBitBtn [5]
    Tag = 5
    Left = 424
    Top = 248
    Width = 185
    Height = 97
    Caption = 'Button with child '#13#10'controls'
    TabOrder = 10
    Margin = 16
    Spacing = 16
    AcceptsControls = True
    ImageIndex = 9
    Images = MainForm.ImageList32
    VerticalAlignment = taAlignTop
    Reflected = True
    ShowFocus = False
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
      Animated = False
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clBlack
      MaxValue = 100
      Progress = 47
      Suffix = '%'
    end
  end
  object sGroupBox1: TsGroupBox [6]
    Left = 232
    Top = 248
    Width = 154
    Height = 129
    Caption = 'Disable control'
    TabOrder = 6
    SkinData.SkinSection = 'GROUPBOX'
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sCheckBox3: TsCheckBox
      Left = 14
      Top = 26
      Width = 85
      Height = 20
      Caption = 'AlphaBlended'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox3Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox4: TsCheckBox
      Left = 14
      Top = 50
      Width = 55
      Height = 20
      Caption = 'Grayed'
      Enabled = False
      TabOrder = 1
      OnClick = sCheckBox4Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox5: TsCheckBox
      Left = 14
      Top = 74
      Width = 114
      Height = 20
      Caption = 'AlphaBlended glyph'
      Enabled = False
      TabOrder = 2
      OnClick = sCheckBox5Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox6: TsCheckBox
      Left = 14
      Top = 98
      Width = 84
      Height = 20
      Caption = 'Grayed glyph'
      Enabled = False
      TabOrder = 3
      OnClick = sCheckBox6Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object sRadioGroup3: TsRadioGroup [7]
    Left = 432
    Top = 116
    Width = 154
    Height = 105
    Caption = 'Text alignment'
    Enabled = False
    TabOrder = 4
    OnClick = sRadioGroup3Click
    SkinData.SkinSection = 'GROUPBOX'
    ItemIndex = 2
    Items.Strings = (
      'taLeftJustify'
      'taRightJustify'
      'taCenter')
  end
  object sCheckBox2: TsCheckBox [8]
    Left = 488
    Top = 72
    Width = 75
    Height = 20
    Caption = 'Show glyph'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox2Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sRadioGroup1: TsRadioGroup [9]
    Left = 32
    Top = 116
    Width = 154
    Height = 105
    Caption = 'Alignment'
    TabOrder = 1
    OnClick = sRadioGroup1Click
    SkinData.SkinSection = 'GROUPBOX'
    ItemIndex = 2
    Items.Strings = (
      'taLeftJustify'
      'taRightJustify'
      'taCenter')
  end
  object sBitBtn1: TsBitBtn [10]
    Tag = 5
    Left = 32
    Top = 24
    Width = 242
    Height = 73
    Caption = 'Test of content alignment'
    TabOrder = 0
    Margin = 8
    Spacing = 8
    ImageIndex = 9
    Images = MainForm.ImageList32
    Reflected = True
    ShowFocus = False
  end
  object sRadioGroup2: TsRadioGroup [11]
    Left = 232
    Top = 116
    Width = 154
    Height = 105
    Caption = 'Vertical alignment'
    TabOrder = 2
    OnClick = sRadioGroup2Click
    SkinData.SkinSection = 'GROUPBOX'
    ItemIndex = 2
    Items.Strings = (
      'taAlignTop'
      'taAlignBottom'
      'taVerticalCenter')
  end
end
