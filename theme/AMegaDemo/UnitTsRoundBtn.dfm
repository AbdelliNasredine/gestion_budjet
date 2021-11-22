inherited FrameTsRoundBtn: TFrameTsRoundBtn
  object sGroupBox1: TsGroupBox [0]
    Left = 429
    Top = 46
    Width = 281
    Height = 251
    Caption = 'Custom colors'
    TabOrder = 1
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sPageControl2: TsPageControl
      Left = 22
      Top = 31
      Width = 239
      Height = 201
      ActivePage = sTabSheet5
      Enabled = False
      TabOrder = 0
      object sTabSheet5: TsTabSheet
        Caption = 'Normal'
        Enabled = False
        object sColorBox1: TsColorBox
          Left = 76
          Top = 23
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 1:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clBtnFace
          Enabled = False
          TabOrder = 0
          OnChange = sColorBox1Change
        end
        object sColorBox2: TsColorBox
          Left = 76
          Top = 57
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 2:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = cl3DLight
          Enabled = False
          TabOrder = 1
          OnChange = sColorBox2Change
        end
        object sColorBox3: TsColorBox
          Left = 76
          Top = 91
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Border:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clActiveBorder
          Enabled = False
          TabOrder = 2
          OnChange = sColorBox3Change
        end
        object sColorBox4: TsColorBox
          Left = 76
          Top = 124
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Font:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clBtnText
          Enabled = False
          TabOrder = 3
          OnChange = sColorBox4Change
        end
      end
      object sTabSheet6: TsTabSheet
        Caption = 'Active'
        Enabled = False
        object sColorBox5: TsColorBox
          Left = 76
          Top = 23
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 1:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clBtnHighlight
          Enabled = False
          TabOrder = 0
          OnChange = sColorBox5Change
        end
        object sColorBox6: TsColorBox
          Left = 76
          Top = 57
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 2:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clBtnFace
          Enabled = False
          TabOrder = 1
          OnChange = sColorBox6Change
        end
        object sColorBox7: TsColorBox
          Left = 76
          Top = 91
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Border:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clActiveBorder
          Enabled = False
          TabOrder = 2
          OnChange = sColorBox7Change
        end
        object sColorBox8: TsColorBox
          Left = 76
          Top = 124
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Font:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clBtnText
          Enabled = False
          TabOrder = 3
          OnChange = sColorBox8Change
        end
      end
      object sTabSheet7: TsTabSheet
        Caption = 'Pressed'
        Enabled = False
        object sColorBox9: TsColorBox
          Left = 76
          Top = 23
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 1:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = cl3DLight
          Enabled = False
          TabOrder = 0
          OnChange = sColorBox9Change
        end
        object sColorBox10: TsColorBox
          Left = 76
          Top = 57
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 2:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = cl3DLight
          Enabled = False
          TabOrder = 1
          OnChange = sColorBox10Change
        end
        object sColorBox11: TsColorBox
          Left = 76
          Top = 91
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Border:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clActiveBorder
          Enabled = False
          TabOrder = 2
          OnChange = sColorBox11Change
        end
        object sColorBox12: TsColorBox
          Left = 76
          Top = 124
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Font:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clBtnText
          Enabled = False
          TabOrder = 3
          OnChange = sColorBox12Change
        end
      end
    end
  end
  object sCheckBox9: TsCheckBox [1]
    Left = 310
    Top = 252
    Width = 85
    Height = 17
    Caption = 'Transparent'
    TabOrder = 0
    OnClick = sCheckBox9Click
  end
  object sTrackEdit2: TsTrackEdit [2]
    Left = 310
    Top = 175
    Width = 96
    Height = 21
    TabOrder = 3
    Text = '1'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Border width:'
    Increment = 1.000000000000000000
    MaxValue = 10.000000000000000000
    Value = 1.000000000000000000
  end
  object sRoundBtn1: TsRoundBtn [3]
    Left = 50
    Top = 46
    Width = 140
    Height = 140
    GlyphBlend = 50
    Images = sVirtualImageList1
    ImageIndex = 0
    Caption = 'Push'
    Layout = blGlyphTop
  end
  object sTrackEdit3: TsTrackEdit [4]
    Left = 310
    Top = 207
    Width = 96
    Height = 21
    TabOrder = 4
    Text = '2'
    OnChange = sTrackEdit3Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Bevel width:'
    Increment = 1.000000000000000000
    MaxValue = 10.000000000000000000
    Value = 2.000000000000000000
  end
  object sGroupBox2: TsGroupBox [5]
    Left = 356
    Top = 316
    Width = 354
    Height = 113
    Caption = 'Show glyph'
    TabOrder = 5
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sCheckBox8: TsCheckBox
      Left = 234
      Top = 36
      Width = 90
      Height = 18
      Caption = 'Reflected'
      AutoSize = False
      TabOrder = 0
      OnClick = sCheckBox8Click
    end
    object sCheckBox1: TsCheckBox
      Left = 234
      Top = 68
      Width = 90
      Height = 18
      Caption = 'Grayed'
      AutoSize = False
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
    object sTrackEdit5: TsTrackEdit
      Left = 113
      Top = 33
      Width = 96
      Height = 21
      TabOrder = 2
      Text = '50'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Glyph blend:'
      Increment = 1.000000000000000000
      Value = 50.000000000000000000
    end
    object sComboBox4: TsComboBox
      Left = 113
      Top = 65
      Width = 96
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = 'Glyph layout'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 3
      Text = 'blGlyphTop'
      OnChange = sComboBox4Change
      Items.Strings = (
        'blGlyphLeft'
        'blGlyphRight'
        'blGlyphTop'
        'blGlyphBottom')
    end
  end
  object sGroupBox3: TsGroupBox [6]
    Left = 100
    Top = 316
    Width = 230
    Height = 113
    Caption = 'Show caption'
    TabOrder = 7
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox3CheckBoxChanged
    object sEdit1: TsEdit
      Left = 105
      Top = 49
      Width = 96
      Height = 21
      TabOrder = 0
      Text = 'Push'
      OnChange = sEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Added text:'
    end
  end
  object sTrackEdit1: TsTrackEdit [7]
    Left = 310
    Top = 143
    Width = 96
    Height = 21
    TabOrder = 2
    Text = '140'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Size:'
    Increment = 1.000000000000000000
    MaxValue = 190.000000000000000000
    MinValue = 7.000000000000000000
    Value = 140.000000000000000000
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 47
    Width = 47
    AlphaImageList = FormData.sCharImageList1
    Left = 316
    Top = 28
    Bitmap = {}
  end
end
