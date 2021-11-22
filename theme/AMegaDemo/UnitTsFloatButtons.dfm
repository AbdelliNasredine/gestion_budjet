inherited FrameTsFloatButtons: TFrameTsFloatButtons
  Width = 823
  object sSlider1: TsSlider [0]
    Left = 549
    Top = 22
    Width = 48
    Height = 25
    ParentBackground = False
    TabOrder = 1
    BoundLabel.Active = True
    BoundLabel.Caption = 'Show more buttons'
    Reversed = True
    SliderOn = False
    OnSliderChange = sSlider1SliderChange
  end
  object sGroupBox5: TsGroupBox [1]
    Left = 50
    Top = 74
    Width = 723
    Height = 519
    Caption = 'Item on the form title (works without skins also)'
    TabOrder = 0
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    BoxStyle = bsCard
    OnCheckBoxChanged = sGroupBox5CheckBoxChanged
    object sCheckBox7: TsCheckBox
      Left = 267
      Top = 444
      Width = 73
      Height = 17
      Caption = 'Allow click'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
    end
    object sCheckBox9: TsCheckBox
      Left = 267
      Top = 476
      Width = 64
      Height = 17
      Caption = 'Enabled'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
    object sGroupBox6: TsGroupBox
      Left = 32
      Top = 192
      Width = 141
      Height = 101
      Caption = '`AutoSize`:'
      Enabled = False
      TabOrder = 2
      AutoChildrenStates = csAsNotChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sTrackEdit1: TsTrackEdit
        Left = 68
        Top = 32
        Width = 48
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = '0'
        OnChange = sTrackEdit1Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`Width`:'
        Increment = 1.000000000000000000
        MaxValue = 64.000000000000000000
      end
      object sTrackEdit2: TsTrackEdit
        Left = 68
        Top = 64
        Width = 48
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = '0'
        OnChange = sTrackEdit2Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`Height`:'
        Increment = 1.000000000000000000
      end
    end
    object sGroupBox7: TsGroupBox
      Left = 195
      Top = 204
      Width = 190
      Height = 89
      Caption = 'Show glyph'
      Enabled = False
      TabOrder = 3
      AutoChildrenStates = csAsChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox7CheckBoxChanged
      object sComboBox2: TsComboBox
        Left = 20
        Top = 47
        Width = 149
        Height = 21
        Enabled = False
        TabOrder = 0
        OnChange = sComboBox2Change
        TextHint = 'Glyph layout'
        BoundLabel.Indent = 2
        BoundLabel.Caption = '`Layout`:'
        BoundLabel.Layout = sclTopLeft
        VerticalAlignment = taVerticalCenter
        LabelFromTextHint = True
        Text = ''
        Style = csDropDownList
        Items.Strings = (
          'blGlyphLeft'
          'blGlyphRight'
          'blGlyphTop'
          'blGlyphBottom')
      end
    end
    object sGroupBox8: TsGroupBox
      Left = 36
      Top = 313
      Width = 349
      Height = 80
      Caption = '`ShowCaption`'
      Enabled = False
      TabOrder = 4
      AutoChildrenStates = csAsChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox8CheckBoxChanged
      object sEdit1: TsEdit
        Left = 84
        Top = 37
        Width = 245
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'Test item'
        OnChange = sEdit1Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`Caption`:'
      end
    end
    object sComboBox1: TsComboBox
      Left = 136
      Top = 411
      Width = 98
      Height = 21
      Enabled = False
      TabOrder = 5
      OnChange = sComboBox1Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Style`:'
      VerticalAlignment = taVerticalCenter
      Text = 'fbsDefault'
      ItemIndex = 0
      Style = csDropDownList
      Items.Strings = (
        'fbsDefault'
        'fbsTransparent'
        'fbsRound')
    end
    object sCheckBox4: TsCheckBox
      Left = 267
      Top = 412
      Width = 91
      Height = 17
      Caption = 'Alphablended'
      Enabled = False
      TabOrder = 6
    end
    object sGroupBox2: TsGroupBox
      Left = 32
      Top = 32
      Width = 141
      Height = 141
      Caption = '`AlignHorz`:'
      Enabled = False
      TabOrder = 7
      object sRadioButton1: TsRadioButton
        Left = 16
        Top = 34
        Width = 110
        Height = 18
        Caption = '`taLeftJustify`'
        Enabled = False
        TabOrder = 0
        OnClick = sRadioButton1Click
        AutoSize = False
      end
      object sRadioButton2: TsRadioButton
        Tag = 2
        Left = 16
        Top = 99
        Width = 110
        Height = 18
        Caption = '`taCenter`'
        Enabled = False
        TabOrder = 2
        OnClick = sRadioButton1Click
        AutoSize = False
      end
      object sRadioButton3: TsRadioButton
        Tag = 1
        Left = 16
        Top = 66
        Width = 110
        Height = 18
        Caption = '`taRightJustify`'
        Checked = True
        Enabled = False
        TabOrder = 1
        TabStop = True
        OnClick = sRadioButton1Click
        AutoSize = False
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 195
      Top = 32
      Width = 190
      Height = 153
      Caption = '`AlignVert`:'
      Enabled = False
      TabOrder = 8
      object sRadioButton4: TsRadioButton
        Left = 16
        Top = 30
        Width = 158
        Height = 18
        Caption = '`vaAlignTop`'
        Enabled = False
        TabOrder = 0
        OnClick = sRadioButton4Click
        AutoSize = False
      end
      object sRadioButton5: TsRadioButton
        Tag = 2
        Left = 16
        Top = 88
        Width = 158
        Height = 18
        Caption = '`vaVerticalCenter`'
        Enabled = False
        TabOrder = 2
        OnClick = sRadioButton4Click
        AutoSize = False
      end
      object sRadioButton6: TsRadioButton
        Tag = 1
        Left = 16
        Top = 60
        Width = 158
        Height = 18
        Caption = '`vaAlignBottom`'
        Enabled = False
        TabOrder = 1
        OnClick = sRadioButton4Click
        AutoSize = False
      end
      object sRadioButton7: TsRadioButton
        Tag = 3
        Left = 16
        Top = 118
        Width = 158
        Height = 18
        Caption = '`vaFormTitleCenter`'
        Checked = True
        Enabled = False
        TabOrder = 3
        TabStop = True
        OnClick = sRadioButton4Click
        AutoSize = False
      end
    end
    object sTrackEdit4: TsTrackEdit
      Left = 136
      Top = 443
      Width = 98
      Height = 21
      Enabled = False
      TabOrder = 9
      Text = '-160'
      OnChange = sTrackEdit4Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`OffsetX`:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      MinValue = -300.000000000000000000
      Value = -160.000000000000000000
    end
    object sTrackEdit5: TsTrackEdit
      Left = 136
      Top = 475
      Width = 98
      Height = 21
      Enabled = False
      TabOrder = 10
      Text = '0'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`OffsetY`:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      MinValue = -300.000000000000000000
    end
    object sGroupBox1: TsGroupBox
      Left = 406
      Top = 32
      Width = 285
      Height = 361
      Caption = '`PaintOptions` (used when Style = fbsRound)'
      TabOrder = 11
      AutoChildrenStates = csAsChecked
      object sTrackEdit3: TsTrackEdit
        Left = 126
        Top = 66
        Width = 96
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = '1'
        OnChange = sTrackEdit3Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`BevelWidth`:'
        Increment = 1.000000000000000000
        MaxValue = 10.000000000000000000
        Value = 1.000000000000000000
      end
      object sTrackEdit6: TsTrackEdit
        Left = 126
        Top = 34
        Width = 96
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = '2'
        OnChange = sTrackEdit6Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`BorderWidth`:'
        Increment = 1.000000000000000000
        MaxValue = 10.000000000000000000
        Value = 2.000000000000000000
      end
      object sGroupBox4: TsGroupBox
        Left = 10
        Top = 112
        Width = 265
        Height = 239
        Caption = #39'CustomColors'#39':'
        Enabled = False
        TabOrder = 2
        AutoChildrenStates = csAsChecked
        CheckBoxVisible = True
        OnCheckBoxChanged = sGroupBox4CheckBoxChanged
        object sPageControl2: TsPageControl
          Left = 10
          Top = 29
          Width = 246
          Height = 201
          ActivePage = sTabSheet5
          Enabled = False
          TabOrder = 0
          object sTabSheet5: TsTabSheet
            Caption = '`NormalData`'
            Enabled = False
            object sColorBox1: TsColorBox
              Left = 96
              Top = 23
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`Color1`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clBtnFace
              Enabled = False
              TabOrder = 0
              OnChange = sColorBox1Change
            end
            object sColorBox2: TsColorBox
              Left = 96
              Top = 57
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`Color2`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = cl3DLight
              Enabled = False
              TabOrder = 1
              OnChange = sColorBox2Change
            end
            object sColorBox3: TsColorBox
              Left = 96
              Top = 91
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`BorderColor`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clActiveBorder
              Enabled = False
              TabOrder = 2
              OnChange = sColorBox3Change
            end
            object sColorBox4: TsColorBox
              Left = 96
              Top = 124
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`FontColor`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clBtnText
              Enabled = False
              TabOrder = 3
              OnChange = sColorBox4Change
            end
          end
          object sTabSheet6: TsTabSheet
            Caption = #39'DataActive'#39
            Enabled = False
            object sColorBox5: TsColorBox
              Left = 96
              Top = 23
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`Color1`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clBtnHighlight
              Enabled = False
              TabOrder = 0
              OnChange = sColorBox5Change
            end
            object sColorBox6: TsColorBox
              Left = 96
              Top = 57
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`Color2`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clBtnFace
              Enabled = False
              TabOrder = 1
              OnChange = sColorBox6Change
            end
            object sColorBox7: TsColorBox
              Left = 96
              Top = 91
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`BorderColor`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clActiveBorder
              Enabled = False
              TabOrder = 2
              OnChange = sColorBox7Change
            end
            object sColorBox8: TsColorBox
              Left = 96
              Top = 124
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`FontColor`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clBtnText
              Enabled = False
              TabOrder = 3
              OnChange = sColorBox8Change
            end
          end
          object sTabSheet7: TsTabSheet
            Caption = '`DataPressed`'
            Enabled = False
            object sColorBox9: TsColorBox
              Left = 96
              Top = 23
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.AllowClick = True
              BoundLabel.Caption = '`Color1`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = cl3DLight
              Enabled = False
              TabOrder = 0
              OnChange = sColorBox9Change
            end
            object sColorBox10: TsColorBox
              Left = 96
              Top = 57
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`Color2`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = cl3DLight
              Enabled = False
              TabOrder = 1
              OnChange = sColorBox10Change
            end
            object sColorBox11: TsColorBox
              Left = 96
              Top = 91
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`BorderColor`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clActiveBorder
              Enabled = False
              TabOrder = 2
              OnChange = sColorBox11Change
            end
            object sColorBox12: TsColorBox
              Left = 96
              Top = 124
              Width = 100
              Height = 22
              BoundLabel.Active = True
              BoundLabel.Caption = '`FontColor`:'
              Style = [cbSystemColors, cbIncludeNone, cbCustomColor]
              Selected = clBtnText
              Enabled = False
              TabOrder = 3
              OnChange = sColorBox12Change
            end
          end
        end
      end
    end
  end
  object sSlider2: TsSlider [2]
    Left = 318
    Top = 22
    Width = 48
    Height = 25
    ParentBackground = False
    TabOrder = 2
    BoundLabel.Active = True
    BoundLabel.Caption = 'Show watermark'
    Reversed = True
    SliderOn = False
    OnSliderChange = sSlider2SliderChange
  end
end
