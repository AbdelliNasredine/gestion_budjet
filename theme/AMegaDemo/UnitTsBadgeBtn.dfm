inherited FrameTsBadgeBtn: TFrameTsBadgeBtn
  object sEdit2: TsEdit [0]
    Left = 50
    Top = 50
    Width = 132
    Height = 31
    AutoSize = False
    TabOrder = 6
    Text = 'TsEdit'
    AddedGlyph.Images = FormData.CharList16
    AddedGlyph.ImageIndex = 11
    SkinData.OuterEffects.Visibility = ovAlways
    Padding.Left = 6
    VerticalAlignment = taVerticalCenter
  end
  object sTrackEdit3: TsTrackEdit [1]
    Left = 177
    Top = 406
    Width = 48
    Height = 21
    TabOrder = 4
    Text = '1'
    OnChange = sTrackEdit3Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Bevel width:'
    Increment = 1.000000000000000000
    MaxValue = 5.000000000000000000
    Value = 1.000000000000000000
  end
  object sGroupBox2: TsGroupBox [2]
    Left = 433
    Top = 352
    Width = 281
    Height = 77
    Caption = 'Show glyph'
    TabOrder = 5
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit5: TsTrackEdit
      Left = 137
      Top = 31
      Width = 96
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '25'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Glyph blend:'
      Increment = 1.000000000000000000
      Value = 25.000000000000000000
    end
  end
  object sCheckBox9: TsCheckBox [3]
    Left = 270
    Top = 257
    Width = 85
    Height = 17
    Caption = 'Transparent'
    TabOrder = 0
    OnClick = sCheckBox9Click
  end
  object sRadioGroup2: TsRadioGroup [4]
    Left = 254
    Top = 288
    Width = 148
    Height = 141
    Caption = 'AlignTo'
    TabOrder = 9
    ItemIndex = 1
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      'baTopLeft'
      'baTopRight'
      'baBottomLeft'
      'baBottomRight')
    OnChange = sRadioGroup2Change
  end
  object sDragBar1: TsDragBar [5]
    Left = 50
    Top = 159
    Width = 132
    Height = 30
    Cursor = crHandPoint
    SkinData.SkinSection = 'DRAGBAR'
    Align = alNone
    BevelOuter = bvNone
    Caption = 'TsDragBar'
    ParentBackground = False
    TabOrder = 13
    DraggedControl = sDragBar1
  end
  object sRadioGroup1: TsRadioGroup [6]
    Left = 210
    Top = 54
    Width = 119
    Height = 135
    Caption = 'AttachTo'
    TabOrder = 8
    ItemIndex = 0
    ContentVOffset = 6
    ContentHOffset = 12
    Items.Strings = (
      'Edit'
      'BitBtn'
      'GroupBox'
      'DragBar')
    OnChange = sRadioGroup1Change
  end
  object sTrackEdit2: TsTrackEdit [7]
    Left = 177
    Top = 373
    Width = 48
    Height = 21
    TabOrder = 3
    Text = '0'
    OnChange = sTrackEdit2Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Border width:'
    Increment = 1.000000000000000000
    MaxValue = 5.000000000000000000
  end
  object sGroupBox1: TsGroupBox [8]
    Left = 433
    Top = 82
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
        object sColorBox1: TsColorBox
          Left = 76
          Top = 23
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 1:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clHighlight
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
          Selected = clAppWorkSpace
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
          Selected = clWhite
          Enabled = False
          TabOrder = 3
          OnChange = sColorBox4Change
        end
      end
      object sTabSheet6: TsTabSheet
        Caption = 'Active'
        object sColorBox5: TsColorBox
          Left = 76
          Top = 23
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 1:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = clHighlight
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
          Selected = clBtnShadow
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
          Selected = clWhite
          Enabled = False
          TabOrder = 3
          OnChange = sColorBox8Change
        end
      end
      object sTabSheet7: TsTabSheet
        Caption = 'Pressed'
        object sColorBox9: TsColorBox
          Left = 76
          Top = 23
          Width = 133
          Height = 22
          BoundLabel.Active = True
          BoundLabel.Caption = 'Color 1:'
          Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
          Selected = cl3DDkShadow
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
          Selected = cl3DDkShadow
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
          Selected = clWhite
          Enabled = False
          TabOrder = 3
          OnChange = sColorBox12Change
        end
      end
    end
  end
  object sTrackEdit4: TsTrackEdit [9]
    Left = 177
    Top = 277
    Width = 48
    Height = 21
    TabOrder = 10
    Text = '0'
    OnChange = sTrackEdit4Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'OffsetX:'
    Increment = 1.000000000000000000
    MaxValue = 10.000000000000000000
    MinValue = -10.000000000000000000
  end
  object sTrackEdit6: TsTrackEdit [10]
    Left = 177
    Top = 309
    Width = 48
    Height = 21
    TabOrder = 11
    Text = '0'
    OnChange = sTrackEdit6Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'OffsetX:'
    Increment = 1.000000000000000000
    MaxValue = 10.000000000000000000
    MinValue = -10.000000000000000000
  end
  object sBitBtn1: TsBitBtn [11]
    Left = 50
    Top = 98
    Width = 132
    Height = 43
    Caption = 'TsBitBtn'
    Spacing = 8
    TabOrder = 7
    ImageIndex = 3
    Images = sVirtualImageList1
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sTrackEdit1: TsTrackEdit [12]
    Left = 177
    Top = 341
    Width = 48
    Height = 21
    TabOrder = 2
    Text = '32'
    OnChange = sTrackEdit1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'Size:'
    Increment = 1.000000000000000000
    MaxValue = 40.000000000000000000
    MinValue = 7.000000000000000000
    Value = 32.000000000000000000
  end
  object sBadgeBtn1: TsBadgeBtn [13]
    Left = 166
    Top = 34
    Width = 32
    Height = 32
    GlyphBlend = 25
    Images = FormData.CharList16
    TabStop = False
    Caption = '4'
    PaintOptions.BevelWidth = 1
    PaintOptions.BorderWidth = 0
    PaintOptions.DataActive.Color1 = clHighlight
    PaintOptions.DataActive.Color2 = clBtnShadow
    PaintOptions.DataActive.FontColor = clWhite
    PaintOptions.DataNormal.Color1 = clHighlight
    PaintOptions.DataNormal.Color2 = clActiveBorder
    PaintOptions.DataNormal.FontColor = clWhite
    AttachTo = sEdit2
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 27
    Width = 27
    AlphaImageList = FormData.sCharImageList1
    Left = 68
    Top = 4
    Bitmap = {}
  end
end
