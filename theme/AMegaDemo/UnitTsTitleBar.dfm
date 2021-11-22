inherited FrameTsTitleBar: TFrameTsTitleBar
  Width = 823
  object sGroupBox1: TsGroupBox [0]
    Left = 34
    Top = 38
    Width = 759
    Height = 551
    Caption = 'Show the form title'
    TabOrder = 0
    CheckBoxVisible = True
    BoxStyle = bsCard
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sGroupBox2: TsGroupBox
      Left = 36
      Top = 56
      Width = 685
      Height = 457
      Caption = 'Show the TsTitleBar'
      Enabled = False
      TabOrder = 0
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox2CheckBoxChanged
      object sTrackEdit1: TsTrackEdit
        Left = 172
        Top = 36
        Width = 48
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = '6'
        OnChange = sTrackEdit1Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`ItemsMargin`:'
        Increment = 1.000000000000000000
        MaxValue = 30.000000000000000000
        Value = 6.000000000000000000
      end
      object sTrackEdit3: TsTrackEdit
        Left = 340
        Top = 36
        Width = 48
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = '6'
        OnChange = sTrackEdit3Change
        BoundLabel.Active = True
        BoundLabel.Caption = '`RightSpacing`:'
        Increment = 1.000000000000000000
        MaxValue = 30.000000000000000000
        Value = 6.000000000000000000
      end
      object sCheckBox1: TsCheckBox
        Left = 432
        Top = 40
        Width = 148
        Height = 17
        Caption = 'Show native form caption'
        Enabled = False
        TabOrder = 2
        OnClick = sCheckBox1Click
      end
      object sGroupBox3: TsGroupBox
        Left = 16
        Top = 88
        Width = 653
        Height = 353
        Caption = 'Show the "tbItemCaption" item for test'
        Enabled = False
        TabOrder = 3
        AutoChildrenStates = csAsChecked
        CheckBoxVisible = True
        Checked = True
        BoxStyle = bsCard
        OnCheckBoxChanged = sGroupBox3CheckBoxChanged
        object sSpeedButton1: TsSpeedButton
          Left = 587
          Top = 56
          Width = 34
          Height = 25
          Enabled = False
          OnClick = sSpeedButton1Click
          Images = FormData.CharList16
          ImageIndex = 4
        end
        object sComboBox1: TsComboBox
          Left = 100
          Top = 40
          Width = 133
          Height = 21
          Enabled = False
          TabOrder = 0
          OnChange = sComboBox1Change
          TextHint = 'Align of the item'
          BoundLabel.Caption = '`Align`:'
          VerticalAlignment = taVerticalCenter
          LabelFromTextHint = True
          ShowFocus = False
          ItemIndex = -1
          Items.Strings = (
            'tbaLeft'
            'tbaRight'
            'tbaCenter'
            'tbaCenterInSpace')
          Style = csDropDownList
        end
        object sComboBox2: TsComboBox
          Left = 100
          Top = 76
          Width = 133
          Height = 21
          Enabled = False
          TabOrder = 1
          OnChange = sComboBox2Change
          TextHint = 'Content alignment'
          BoundLabel.Caption = '`Alignment`:'
          VerticalAlignment = taVerticalCenter
          LabelFromTextHint = True
          ShowFocus = False
          ItemIndex = -1
          Items.Strings = (
            'taLeftJustify'
            'taRightJustify'
            'taCenter')
          Style = csDropDownList
        end
        object sEdit1: TsEdit
          Left = 100
          Top = 181
          Width = 133
          Height = 21
          Enabled = False
          TabOrder = 3
          Text = 'AlphaControls demo'
          OnChange = sEdit1Change
          BoundLabel.Active = True
          BoundLabel.Caption = '`Caption`:'
        end
        object sCheckBox2: TsCheckBox
          Left = 487
          Top = 312
          Width = 113
          Height = 17
          Caption = '`DropdownMenu`'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 12
          OnClick = sCheckBox2Click
        end
        object sColorBox2: TsColorBox
          Left = 462
          Top = 56
          Width = 119
          Height = 25
          AutoSize = False
          Enabled = False
          TabOrder = 8
          OnChange = sColorBox2Change
          BoundLabel.Active = True
          BoundLabel.Caption = 'Custom font color:'
          BoundLabel.Layout = sclTopLeft
          Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
          ShowColorName = False
          Selected = clNone
          NoneColorColor = clNone
          PopupMode = pmPickColor
          OnColorPreview = sColorBox2ColorPreview
        end
        object sGroupBox4: TsGroupBox
          Left = 462
          Top = 93
          Width = 159
          Height = 150
          Caption = 'Custom font style'
          Enabled = False
          TabOrder = 9
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          OnCheckBoxChanged = sGroupBox4CheckBoxChanged
          object sCheckBox6: TsCheckBox
            Left = 25
            Top = 30
            Width = 106
            Height = 18
            Caption = '`fsBold`'
            AutoSize = False
            Enabled = False
            TabOrder = 0
            OnClick = sCheckBox6Click
          end
          object sCheckBox7: TsCheckBox
            Left = 25
            Top = 58
            Width = 106
            Height = 18
            Caption = '`fsItalic`'
            AutoSize = False
            Enabled = False
            TabOrder = 1
            OnClick = sCheckBox7Click
          end
          object sCheckBox8: TsCheckBox
            Left = 25
            Top = 86
            Width = 106
            Height = 18
            Caption = '`fsUnderline`'
            AutoSize = False
            Enabled = False
            TabOrder = 2
            OnClick = sCheckBox8Click
          end
          object sCheckBox9: TsCheckBox
            Left = 25
            Top = 114
            Width = 106
            Height = 18
            Caption = '`fsStrikeOut`'
            AutoSize = False
            Enabled = False
            TabOrder = 3
            OnClick = sCheckBox9Click
          end
        end
        object sComboBox3: TsComboBox
          Left = 100
          Top = 112
          Width = 133
          Height = 21
          TabOrder = 2
          OnChange = sComboBox3Change
          TextHint = 'Mouse cursor'
          BoundLabel.Caption = '`Cursor`:'
          VerticalAlignment = taVerticalCenter
          LabelFromTextHint = True
          ShowFocus = False
          ItemIndex = -1
          Items.Strings = (
            'crDefault'
            'crNone'
            'crArrow'
            'crCross'
            'crIBeam'
            'crSize'
            'crSizeNESW'
            'crSizeNS'
            'crSizeNWSE'
            'crSizeWE'
            'crUpArrow'
            'crHourGlass'
            'crDrag'
            'crNoDrop'
            'crHSplit'
            'crVSplit'
            'crMultiDrag'
            'crSQLWait'
            'crNo'
            'crAppStart'
            'crHelp'
            'crHandPoint'
            'crSizeAll')
          Style = csDropDownList
        end
        object sGroupBox5: TsGroupBox
          Left = 268
          Top = 30
          Width = 157
          Height = 106
          Caption = '`AutoSize`'
          Enabled = False
          TabOrder = 6
          AutoChildrenStates = csAsNotChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox5CheckBoxChanged
          object sTrackEdit4: TsTrackEdit
            Left = 84
            Top = 32
            Width = 48
            Height = 21
            Enabled = False
            TabOrder = 0
            Text = '0'
            OnChange = sTrackEdit4Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Width`:'
            Increment = 1.000000000000000000
            MinValue = 40.000000000000000000
          end
          object sTrackEdit5: TsTrackEdit
            Left = 84
            Top = 64
            Width = 48
            Height = 21
            Enabled = False
            TabOrder = 1
            Text = '0'
            OnChange = sTrackEdit5Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Height`:'
            Increment = 1.000000000000000000
            MinValue = 20.000000000000000000
          end
        end
        object sCheckBox3: TsCheckBox
          Left = 487
          Top = 257
          Width = 76
          Height = 17
          Caption = '`Enabled`'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 10
          OnClick = sCheckBox3Click
        end
        object sGroupBox6: TsGroupBox
          Left = 100
          Top = 220
          Width = 133
          Height = 109
          Caption = 'Show image'
          Enabled = False
          TabOrder = 5
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          OnCheckBoxChanged = sGroupBox6CheckBoxChanged
          object sCheckBox4: TsCheckBox
            Left = 17
            Top = 68
            Width = 103
            Height = 17
            Caption = '`StretchImage`'
            Enabled = False
            TabOrder = 1
            OnClick = sCheckBox4Click
          end
          object sTrackEdit2: TsTrackEdit
            Left = 70
            Top = 34
            Width = 48
            Height = 21
            Enabled = False
            TabOrder = 0
            Text = '4'
            OnChange = sTrackEdit2Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Spacing`:'
            Increment = 1.000000000000000000
            MaxValue = 20.000000000000000000
            Value = 4.000000000000000000
          end
        end
        object sCheckBox5: TsCheckBox
          Left = 487
          Top = 285
          Width = 83
          Height = 17
          Caption = '`ShowHint`'
          Enabled = False
          TabOrder = 11
          OnClick = sCheckBox5Click
        end
        object sComboBox4: TsComboBox
          Left = 100
          Top = 147
          Width = 133
          Height = 21
          Enabled = False
          TabOrder = 4
          OnChange = sComboBox4Change
          TextHint = 'Skin section'
          BoundLabel.Caption = '`SkinSection`:'
          VerticalAlignment = taVerticalCenter
          LabelFromTextHint = True
          ShowFocus = False
          ItemIndex = -1
          Items.Strings = (
            ''
            'BUTTON'
            'PANEL')
          Style = csDropDownList
        end
        object sGroupBox7: TsGroupBox
          Left = 268
          Top = 147
          Width = 157
          Height = 182
          Caption = '`Style`'
          Enabled = False
          TabOrder = 7
          object sRadioButton1: TsRadioButton
            Left = 26
            Top = 30
            Width = 100
            Height = 18
            Caption = '`bsButton`'
            Enabled = False
            TabOrder = 0
            OnClick = sRadioButton1Click
            AutoSize = False
          end
          object sRadioButton2: TsRadioButton
            Tag = 1
            Left = 26
            Top = 58
            Width = 100
            Height = 18
            Caption = '`bsMenu`'
            Enabled = False
            TabOrder = 1
            OnClick = sRadioButton1Click
            AutoSize = False
          end
          object sRadioButton3: TsRadioButton
            Tag = 2
            Left = 26
            Top = 86
            Width = 100
            Height = 18
            Caption = '`bsTab`'
            Enabled = False
            TabOrder = 2
            OnClick = sRadioButton1Click
            AutoSize = False
          end
          object sRadioButton4: TsRadioButton
            Tag = 3
            Left = 26
            Top = 114
            Width = 100
            Height = 18
            Caption = '`bsSpacing`'
            Enabled = False
            TabOrder = 3
            OnClick = sRadioButton1Click
            AutoSize = False
          end
          object sRadioButton5: TsRadioButton
            Tag = 4
            Left = 26
            Top = 142
            Width = 100
            Height = 18
            Caption = '`bsInfo`'
            Checked = True
            Enabled = False
            TabOrder = 4
            TabStop = True
            OnClick = sRadioButton1Click
            AutoSize = False
          end
        end
      end
    end
  end
end
