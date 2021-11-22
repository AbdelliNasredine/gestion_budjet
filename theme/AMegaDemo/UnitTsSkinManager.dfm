inherited FrameTsSkinManager: TFrameTsSkinManager
  Width = 783
  Height = 661
  object sSpeedButton1: TsSpeedButton [0]
    Left = 604
    Top = 40
    Width = 137
    Height = 43
    Caption = 'Internal skins editor'
    Margin = 8
    Spacing = 12
    OnClick = sSpeedButton1Click
    Images = FormData.Char24x24
    ImageIndex = 12
  end
  object sSpeedButton3: TsSpeedButton [1]
    Left = 604
    Top = 91
    Width = 137
    Height = 42
    Caption = 'Random skin'
    Margin = 8
    Spacing = 12
    OnClick = sSpeedButton3Click
    Images = FormData.Char24x24
    ImageIndex = 23
  end
  object sGroupBox1: TsGroupBox [2]
    Left = 248
    Top = 31
    Width = 317
    Height = 102
    Caption = 'Filtering of available skins'
    TabOrder = 3
    object sCheckBox1: TsCheckBox
      Left = 68
      Top = 71
      Width = 90
      Height = 18
      Caption = '`sfiInternal`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
    object sCheckBox2: TsCheckBox
      Left = 188
      Top = 71
      Width = 90
      Height = 18
      Caption = '`sfiExternal`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = sCheckBox2Click
    end
    object sSkinSelector1: TsSkinSelector
      Left = 104
      Top = 24
      Width = 193
      Height = 33
      AutoSize = False
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.Caption = '`SkinName`:'
      SkinData.OuterEffects.Visibility = ovAlways
      VerticalAlignment = taVerticalCenter
      AllowMouseWheel = False
      ColCount = 1
      RowCount = 22
      ThumbSize = tsSmall
    end
  end
  object sPageControl1: TsPageControl [3]
    Left = 40
    Top = 164
    Width = 701
    Height = 461
    ActivePage = sTabSheet1
    MultiLine = True
    TabHeight = 96
    TabOrder = 4
    TabPosition = tpRight
    TabWidth = 34
    RotateCaptions = True
    ActiveTabEnlarged = False
    TabPadding = 12
    TabsStartIndent = 34
    SkinData.OuterEffects.Visibility = ovAlways
    object sTabSheet1: TsTabSheet
      Caption = 'App scaling'
      TabCustomBorder.RadiusTopLeft = 0
      TabCustomBorder.RadiusTopRight = 9
      TabCustomBorder.RadiusBottomLeft = 0
      TabCustomBorder.RadiusBottomRight = 0
      object sHTMLLabel1: TsHTMLLabel
        Left = 37
        Top = 420
        Width = 340
        Height = 13
        Caption = 
          '* Look more info about scaling of apps with AlphaControls in <a ' +
          'href="http://www.alphaskins.com/showdoc.php?l=en&n=21">this arti' +
          'cle</a>'
      end
      object sGroupBox2: TsGroupBox
        Left = 24
        Top = 18
        Width = 553
        Height = 393
        Caption = '`Options.ScaleMode` property:'
        TabOrder = 0
        CheckBoxRadio = True
        BoxStyle = bsCard
        object sRadioButton6: TsRadioButton
          Tag = 5
          Left = 40
          Top = 270
          Width = 457
          Height = 49
          Caption = 
            '`smOldMode` (backward compatibility mode, ACDPIAWARE compiler di' +
            'rective must be OFF in the sDefs.inc file)'
          Enabled = False
          TabOrder = 7
          WordWrap = True
          OnClick = sRadioButton1Click
          AutoSize = False
        end
        object sRadioButton5: TsRadioButton
          Tag = 4
          Left = 40
          Top = 238
          Width = 394
          Height = 17
          Caption = 
            '`smAuto` (automatic using of current system scale under old Delp' +
            'hi versions)'
          Enabled = False
          TabOrder = 6
          OnClick = sRadioButton1Click
        end
        object sGroupBox18: TsGroupBox
          Left = 31
          Top = 147
          Width = 454
          Height = 73
          Caption = '`smCustomPPI`'
          TabOrder = 5
          OnClick = sGroupBox18Click
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          CheckBoxRadio = True
          object sTrackEdit4: TsTrackEdit
            Left = 245
            Top = 30
            Width = 117
            Height = 21
            Enabled = False
            TabOrder = 0
            Text = '0'
            BoundLabel.Active = True
            BoundLabel.Caption = '`PixelsPerInch`:'
            EditorEnabled = False
            Increment = 1.000000000000000000
            MaxValue = 250.000000000000000000
            MinValue = 50.000000000000000000
            OnTrackChanged = sTrackEdit4TrackChanged
          end
        end
        object sRadioButton7: TsRadioButton
          Tag = 6
          Left = 40
          Top = 85
          Width = 457
          Height = 39
          Caption = 
            '`smVCL` (automatic scaling with latest Delphi versions, the "per' +
            ' monitor" mode is supported)'
          Checked = True
          TabOrder = 4
          TabStop = True
          WordWrap = True
          OnClick = sRadioButton1Click
          AutoSize = False
        end
        object sRadioButton1: TsRadioButton
          Left = 40
          Top = 47
          Width = 65
          Height = 17
          Caption = '`sm100`'
          TabOrder = 0
          OnClick = sRadioButton1Click
        end
        object sRadioButton2: TsRadioButton
          Tag = 1
          Left = 160
          Top = 47
          Width = 65
          Height = 17
          Caption = '`sm125`'
          TabOrder = 1
          OnClick = sRadioButton1Click
        end
        object sRadioButton3: TsRadioButton
          Tag = 2
          Left = 276
          Top = 47
          Width = 65
          Height = 17
          Caption = '`sm150`'
          TabOrder = 2
          OnClick = sRadioButton1Click
        end
        object sRadioButton4: TsRadioButton
          Tag = 3
          Left = 388
          Top = 47
          Width = 65
          Height = 17
          Caption = '`sm200`'
          TabOrder = 3
          OnClick = sRadioButton1Click
        end
      end
    end
    object sTabSheet4: TsTabSheet
      Caption = 'Buttons'
      TabCustomBorder.RadiusTopLeft = 0
      TabCustomBorder.RadiusTopRight = 0
      TabCustomBorder.RadiusBottomLeft = 0
      TabCustomBorder.RadiusBottomRight = 0
      object sBitBtn1: TsBitBtn
        Tag = 9
        Left = 34
        Top = 16
        Width = 87
        Height = 30
        Caption = 'OK'
        ModalResult = 1
        Spacing = 6
        TabOrder = 0
        ImageIndex = 13
        Images = FormData.CharList16
        SkinData.OuterEffects.Visibility = ovAlways
      end
      object sBitBtn2: TsBitBtn
        Tag = 9
        Left = 135
        Top = 16
        Width = 97
        Height = 30
        Caption = 'Cancel'
        ModalResult = 2
        Spacing = 6
        TabOrder = 1
        ImageIndex = 14
        Images = FormData.CharList16
        SkinData.OuterEffects.Visibility = ovAlways
      end
      object sBitBtn3: TsBitBtn
        Tag = 9
        Left = 246
        Top = 16
        Width = 153
        Height = 30
        Caption = 'Normal button 1'
        Spacing = 6
        TabOrder = 2
        ImageIndex = 7
        Images = FormData.CharList16
        SkinData.OuterEffects.Visibility = ovAlways
      end
      object sBitBtn4: TsBitBtn
        Tag = 9
        Left = 413
        Top = 16
        Width = 152
        Height = 30
        Caption = 'Normal button 2'
        Spacing = 6
        TabOrder = 3
        ImageIndex = 7
        Images = FormData.CharList16
        SkinData.OuterEffects.Visibility = ovAlways
      end
      object sGroupBox14: TsGroupBox
        Left = 34
        Top = 66
        Width = 531
        Height = 191
        Caption = '`AnimEffects.Buttons.Events` property'
        TabOrder = 4
        BoxStyle = bsCard
        object sCheckBox20: TsCheckBox
          Left = 148
          Top = 164
          Width = 107
          Height = 17
          Caption = '`beMouseEnter`'
          Checked = True
          Ctl3D = False
          ParentCtl3D = False
          State = cbChecked
          TabOrder = 3
          OnClick = sCheckBox20Click
        end
        object sCheckBox21: TsCheckBox
          Tag = 1
          Left = 20
          Top = 164
          Width = 110
          Height = 17
          Caption = '`beMouseLeave`'
          Checked = True
          Ctl3D = False
          ParentCtl3D = False
          State = cbChecked
          TabOrder = 2
          OnClick = sCheckBox21Click
        end
        object sCheckBox22: TsCheckBox
          Tag = 2
          Left = 396
          Top = 164
          Width = 108
          Height = 17
          Caption = '`beMouseDown`'
          Checked = True
          Ctl3D = False
          ParentCtl3D = False
          State = cbChecked
          TabOrder = 5
          OnClick = sCheckBox22Click
        end
        object sCheckBox23: TsCheckBox
          Tag = 3
          Left = 277
          Top = 164
          Width = 94
          Height = 17
          Caption = '`beMouseUp`'
          Checked = True
          Ctl3D = False
          ParentCtl3D = False
          State = cbChecked
          TabOrder = 4
          OnClick = sCheckBox23Click
        end
        object sGroupBox19: TsGroupBox
          Left = 12
          Top = 95
          Width = 506
          Height = 58
          Caption = '`beLighting`'
          TabOrder = 1
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox19CheckBoxChanged
          object sLabel4: TsLabel
            Left = 45
            Top = 28
            Width = 181
            Height = 13
            Alignment = taRightJustify
            Caption = '`AnimEffects.Buttons.LightingMode`:'
          end
          object sRadioButton11: TsRadioButton
            Left = 238
            Top = 26
            Width = 112
            Height = 17
            Caption = '`lmAffectNearest`'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = sRadioButton11Click
          end
          object sRadioButton12: TsRadioButton
            Tag = 1
            Left = 366
            Top = 26
            Width = 109
            Height = 17
            Caption = '`lmActiveControl`'
            TabOrder = 1
            OnClick = sRadioButton11Click
          end
        end
        object sGroupBox17: TsGroupBox
          Left = 12
          Top = 29
          Width = 506
          Height = 58
          Caption = '`beClick`'
          TabOrder = 0
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox17CheckBoxChanged
          object sLabel3: TsLabel
            Left = 28
            Top = 28
            Width = 168
            Height = 13
            Alignment = taRightJustify
            Caption = '`AnimEffects.Buttons.ClickEffect`:'
          end
          object sRadioButton8: TsRadioButton
            Left = 208
            Top = 26
            Width = 71
            Height = 17
            Caption = '`ceCircle`'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = sRadioButton8Click
          end
          object sRadioButton9: TsRadioButton
            Tag = 1
            Left = 285
            Top = 26
            Width = 91
            Height = 17
            Caption = '`ceWaveOut`'
            TabOrder = 1
            OnClick = sRadioButton8Click
          end
          object sRadioButton10: TsRadioButton
            Tag = 2
            Left = 383
            Top = 26
            Width = 118
            Height = 17
            Caption = '`ceCircleAndWave`'
            TabOrder = 2
            OnClick = sRadioButton8Click
          end
        end
      end
      object sGroupBox7: TsGroupBox
        Left = 34
        Top = 271
        Width = 531
        Height = 166
        Caption = '`ButtonsOptions`'
        TabOrder = 5
        BoxStyle = bsCard
        object sCheckBox8: TsCheckBox
          Tag = 9
          Left = 44
          Top = 134
          Width = 114
          Height = 17
          Caption = '`ShowFocusRect`'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = sCheckBox8Click
        end
        object sCheckBox9: TsCheckBox
          Tag = 9
          Left = 172
          Top = 134
          Width = 134
          Height = 17
          Caption = '`ShiftContentOnClick`'
          TabOrder = 2
          OnClick = sCheckBox9Click
        end
        object sGroupBox20: TsGroupBox
          Tag = 9
          Left = 336
          Top = 32
          Width = 169
          Height = 117
          Caption = '`ModalButtonsColoring`'
          TabOrder = 3
          CaptionLayout = clTopCenter
          object sCheckBox10: TsCheckBox
            Tag = 9
            Left = 34
            Top = 56
            Width = 105
            Height = 17
            Caption = '`bcBackground`'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = sCheckBox10Click
          end
          object sCheckBox14: TsCheckBox
            Tag = 9
            Left = 34
            Top = 28
            Width = 76
            Height = 17
            Caption = '`bcGlyph`'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = sCheckBox14Click
          end
          object sCheckBox15: TsCheckBox
            Tag = 9
            Left = 34
            Top = 84
            Width = 71
            Height = 17
            Caption = '`bcText`'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = sCheckBox15Click
          end
        end
        object sGroupBox8: TsGroupBox
          Tag = 9
          Left = 20
          Top = 32
          Width = 289
          Height = 89
          Caption = '`OldGlyphsMode`:'
          TabOrder = 0
          CheckBoxVisible = True
          OnCheckBoxChanged = sGroupBox8CheckBoxChanged
          object sDateEdit1: TsDateEdit
            Tag = 9
            Left = 49
            Top = 27
            Width = 92
            Height = 21
            MaxLength = 10
            TabOrder = 0
          end
          object sCalcEdit1: TsCalcEdit
            Tag = 9
            Left = 49
            Top = 54
            Width = 92
            Height = 21
            TabOrder = 1
          end
          object sDirectoryEdit1: TsDirectoryEdit
            Left = 169
            Top = 27
            Width = 92
            Height = 21
            MaxLength = 255
            TabOrder = 2
            CheckOnExit = True
            Text = ''
            Root = 'rfDesktop'
          end
          object sFilenameEdit1: TsFilenameEdit
            Left = 170
            Top = 54
            Width = 92
            Height = 21
            MaxLength = 255
            TabOrder = 3
            CheckOnExit = True
            Text = ''
          end
        end
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = 'App looking'
      TabCustomBorder.RadiusTopLeft = 0
      TabCustomBorder.RadiusTopRight = 0
      TabCustomBorder.RadiusBottomLeft = 0
      TabCustomBorder.RadiusBottomRight = 0
      object sGroupBox6: TsGroupBox
        Tag = 9
        Left = 30
        Top = 211
        Width = 540
        Height = 135
        Caption = '`Options`'
        TabOrder = 1
        BoxStyle = bsCard
        object sComboBox1: TsComboBox
          Tag = 9
          Left = 384
          Top = 95
          Width = 122
          Height = 21
          TabOrder = 4
          OnChange = sComboBox1Change
          BoundLabel.Active = True
          BoundLabel.Caption = '`ArrowsStyle`:'
          BoundLabel.Layout = sclTopLeft
          SkinData.SkinSection = 'GROUPBOX'
          SkinData.OuterEffects.Visibility = ovAlways
          ItemIndex = 5
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            'Default')
          Style = csOwnerDrawFixed
          Text = 'Default'
          OnDrawItem = sComboBox1DrawItem
        end
        object sCheckBox11: TsCheckBox
          Tag = 9
          Left = 32
          Top = 37
          Width = 160
          Height = 19
          Hint = 
            'Changes color of selection area in edits and some other sys colo' +
            'rs'
          Caption = '`ChangeSysColors`'
          AutoSize = False
          TabOrder = 0
          OnClick = sCheckBox11Click
        end
        object sCheckBox12: TsCheckBox
          Tag = 9
          Left = 32
          Top = 62
          Width = 160
          Height = 19
          Caption = '`DrawNonClientArea`'
          AutoSize = False
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = sCheckBox12Click
        end
        object sCheckBox13: TsCheckBox
          Tag = 9
          Left = 32
          Top = 90
          Width = 160
          Height = 19
          Caption = '`NoMouseHover`'
          AutoSize = False
          TabOrder = 2
          OnClick = sCheckBox13Click
        end
        object sRadioGroup1: TsRadioGroup
          Left = 198
          Top = 32
          Width = 134
          Height = 85
          Caption = '`GroupBoxStyle`'
          TabOrder = 3
          OnClick = sRadioGroup1Click
          ContentVOffset = 10
          ContentHOffset = 10
          Items.Strings = (
            '`gsStandard`'
            '`gsCard`')
        end
      end
      object sGroupBox4: TsGroupBox
        Tag = 9
        Left = 30
        Top = 123
        Width = 540
        Height = 67
        Caption = 'Custom coloring'
        TabOrder = 2
        BoxStyle = bsCard
        object sTrackEdit1: TsTrackEdit
          Tag = 9
          Left = 458
          Top = 34
          Width = 48
          Height = 21
          TabOrder = 2
          Text = '0'
          BoundLabel.Active = True
          BoundLabel.Caption = '`Brightness`:'
          Increment = 1.000000000000000000
          MaxValue = 50.000000000000000000
          MinValue = -50.000000000000000000
          OnTrackChanged = sTrackEdit1TrackChanged
        end
        object sTrackEdit2: TsTrackEdit
          Tag = 9
          Left = 127
          Top = 34
          Width = 48
          Height = 21
          TabOrder = 0
          Text = '0'
          BoundLabel.Active = True
          BoundLabel.Caption = '`HueOffset`:'
          Increment = 1.000000000000000000
          MaxValue = 360.000000000000000000
          OnTrackChanged = sTrackEdit2TrackChanged
        end
        object sTrackEdit3: TsTrackEdit
          Tag = 9
          Left = 290
          Top = 34
          Width = 48
          Height = 21
          TabOrder = 1
          Text = '0'
          BoundLabel.Active = True
          BoundLabel.Caption = '`Saturation`:'
          Increment = 1.000000000000000000
          MinValue = -100.000000000000000000
          OnTrackChanged = sTrackEdit3TrackChanged
        end
      end
      object sGroupBox3: TsGroupBox
        Left = 30
        Top = 24
        Width = 540
        Height = 77
        Caption = 'Fonts management (`Fonts` property)'
        TabOrder = 0
        ImageIndex = 9
        BoxStyle = bsCard
        object sComboBox3: TsComboBoxEx
          Left = 376
          Top = 37
          Width = 130
          Height = 21
          Enabled = False
          TabOrder = 1
          OnChange = sComboBox3Change
          BoundLabel.Active = True
          BoundLabel.Caption = '`MainFont`:'
          ItemsEx = <
            item
              Caption = 'Arial'
            end
            item
              Caption = 'Calibri'
            end
            item
              Caption = 'Comic Sans MS'
            end>
          Style = csExDropDownList
          ItemIndex = 2
          Text = 'Comic Sans MS'
        end
        object sComboBox2: TsComboBoxEx
          Tag = 1
          Left = 104
          Top = 37
          Width = 177
          Height = 21
          TabOrder = 0
          OnChange = sComboBox2Change
          BoundLabel.Active = True
          BoundLabel.Caption = '`MainMode`:'
          ItemsEx = <
            item
              Caption = 'Default font (do not change)'
            end
            item
              Caption = 'Font stored in the skin'
            end
            item
              Caption = 'Custom...'
            end>
          Style = csExDropDownList
          ItemIndex = 1
          Text = 'Font stored in the skin'
        end
      end
    end
    object sTabSheet3: TsTabSheet
      Caption = 'Effects'
      TabCustomBorder.RadiusTopLeft = 0
      TabCustomBorder.RadiusTopRight = 0
      TabCustomBorder.RadiusBottomLeft = 0
      TabCustomBorder.RadiusBottomRight = 0
      object sGroupBox5: TsGroupBox
        Left = 199
        Top = 19
        Width = 374
        Height = 386
        Caption = '`AnimEffects`'
        TabOrder = 1
        CaptionLayout = clTopCenter
        BoxStyle = bsCard
        object sGroupBox9: TsGroupBox
          Left = 24
          Top = 30
          Width = 325
          Height = 59
          Caption = '`BlendOnMoving`'
          TabOrder = 0
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox9CheckBoxChanged
          object sTrackEdit5: TsTrackEdit
            Tag = 9
            Left = 116
            Top = 24
            Width = 48
            Height = 21
            TabOrder = 0
            Text = '170'
            OnChange = sTrackEdit5Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`BlendValue`:'
            Increment = 1.000000000000000000
            MaxValue = 255.000000000000000000
            Value = 170.000000000000000000
          end
          object sSpinEdit1: TsSpinEdit
            Left = 256
            Top = 24
            Width = 56
            Height = 21
            TabOrder = 1
            Text = '1000'
            OnChange = sSpinEdit1Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Time` (ms):'
            MaxValue = 0
            MinValue = 0
            Value = 1000
          end
        end
        object sGroupBox10: TsGroupBox
          Left = 24
          Top = 308
          Width = 325
          Height = 59
          Caption = '`Minimizing`'
          TabOrder = 4
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox10CheckBoxChanged
          object sSpinEdit2: TsSpinEdit
            Left = 256
            Top = 24
            Width = 56
            Height = 21
            TabOrder = 0
            Text = '100'
            OnChange = sSpinEdit2Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Time` (ms):'
            MaxValue = 0
            MinValue = 0
            Value = 100
          end
        end
        object sGroupBox11: TsGroupBox
          Left = 24
          Top = 239
          Width = 325
          Height = 59
          Caption = '`PageChange`'
          TabOrder = 3
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox11CheckBoxChanged
          object sSpinEdit3: TsSpinEdit
            Left = 256
            Top = 24
            Width = 56
            Height = 21
            Enabled = False
            TabOrder = 0
            Text = '100'
            OnChange = sSpinEdit3Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Time` (ms):'
            MaxValue = 0
            MinValue = 0
            Value = 100
          end
          object sComboBox6: TsComboBox
            Left = 86
            Top = 24
            Width = 78
            Height = 21
            TabOrder = 1
            OnChange = sComboBox6Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Mode`:'
            ItemIndex = 2
            Items.Strings = (
              'atcFade'
              'atcBlur2'
              'atcRunup')
            Style = csDropDownList
            Text = 'atcRunup'
          end
        end
        object sGroupBox12: TsGroupBox
          Left = 24
          Top = 100
          Width = 325
          Height = 59
          Caption = '`SkinChanging`'
          TabOrder = 1
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox12CheckBoxChanged
          object sSpinEdit4: TsSpinEdit
            Left = 256
            Top = 24
            Width = 56
            Height = 21
            TabOrder = 1
            Text = '200'
            OnChange = sSpinEdit4Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Time` (ms):'
            MaxValue = 0
            MinValue = 0
            Value = 200
          end
          object sComboBox5: TsComboBox
            Left = 86
            Top = 24
            Width = 78
            Height = 21
            TabOrder = 0
            OnChange = sComboBox5Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Mode`:'
            ItemIndex = 0
            Items.Strings = (
              'atFading'
              'atAero')
            Style = csDropDownList
            Text = 'atFading'
          end
        end
        object sGroupBox13: TsGroupBox
          Left = 24
          Top = 170
          Width = 325
          Height = 59
          Caption = 'Forms/dialogs showing/hiding'
          TabOrder = 2
          AutoChildrenStates = csAsChecked
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox13CheckBoxChanged
          object sSpinEdit5: TsSpinEdit
            Left = 256
            Top = 24
            Width = 56
            Height = 21
            TabOrder = 1
            Text = '100'
            OnChange = sSpinEdit5Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Time` (ms):'
            MaxValue = 0
            MinValue = 0
            Value = 100
          end
          object sComboBox4: TsComboBox
            Left = 86
            Top = 24
            Width = 78
            Height = 21
            TabOrder = 0
            OnChange = sComboBox4Change
            BoundLabel.Active = True
            BoundLabel.Caption = '`Mode`:'
            ItemIndex = 1
            Items.Strings = (
              'atFading'
              'atAero'
              'atDropDown')
            Style = csDropDownList
            Text = 'atAero'
          end
        end
      end
      object sGroupBox22: TsGroupBox
        Left = 24
        Top = 19
        Width = 149
        Height = 190
        Caption = '`Effects`'
        TabOrder = 0
        BoxStyle = bsCard
        object sCheckBox3: TsCheckBox
          Tag = 9
          Left = 16
          Top = 69
          Width = 110
          Height = 17
          Caption = '`AllowAnimation`'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = sCheckBox3Click
        end
        object sCheckBox4: TsCheckBox
          Tag = 9
          Left = 16
          Top = 99
          Width = 100
          Height = 17
          Caption = '`AllowGlowing`'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = sCheckBox4Click
        end
        object sCheckBox6: TsCheckBox
          Tag = 9
          Left = 16
          Top = 157
          Width = 119
          Height = 17
          Caption = '`DiscoloredGlyphs`'
          TabOrder = 4
          OnClick = sCheckBox6Click
        end
        object sCheckBox5: TsCheckBox
          Tag = 9
          Left = 16
          Top = 128
          Width = 125
          Height = 17
          Caption = '`AllowOuterEffects`'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = sCheckBox5Click
        end
        object sCheckBox17: TsCheckBox
          Left = 16
          Top = 39
          Width = 111
          Height = 17
          Caption = 'Allow form bluring'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = sCheckBox26Click
        end
      end
    end
    object sTabSheet5: TsTabSheet
      Caption = 'Menus'
      TabCustomBorder.RadiusTopLeft = 0
      TabCustomBorder.RadiusTopRight = 0
      TabCustomBorder.RadiusBottomLeft = 0
      TabCustomBorder.RadiusBottomRight = 0
      object sSpeedButton2: TsSpeedButton
        Left = 174
        Top = 32
        Width = 221
        Height = 56
        Caption = 'Test popup menu'
        ButtonStyle = tbsDropDown
        DropdownMenu = FormData.PopupMenu2
      end
      object sGroupBox21: TsGroupBox
        Left = 32
        Top = 160
        Width = 537
        Height = 233
        Caption = '`MenuSupport` property'
        TabOrder = 0
        BoxStyle = bsCard
        object sStickyLabel1: TsStickyLabel
          Left = 69
          Top = 47
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = '`AlphaBlend`:'
          AttachTo = TrackBar_AlphaBlend
        end
        object sStickyLabel2: TsStickyLabel
          Left = 90
          Top = 87
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = '`Margin`:'
          AttachTo = TrackBar_Margins
        end
        object TrackBar_AlphaBlend: TsTrackBar
          Left = 140
          Top = 42
          Width = 165
          Height = 24
          Max = 255
          PageSize = 32
          Position = 255
          PositionToolTip = ptTop
          TabOrder = 0
          TickStyle = tsNone
          OnChange = TrackBar_AlphaBlendChange
          ShowProgress = True
        end
        object TrackBar_Margins: TsTrackBar
          Left = 140
          Top = 82
          Width = 165
          Height = 24
          Max = 16
          Position = 2
          PositionToolTip = ptBottom
          TabOrder = 1
          TickStyle = tsNone
          OnChange = TrackBar_MarginsChange
          ShowProgress = True
        end
        object CheckBox_ShowExtraLine: TsCheckBox
          Left = 150
          Top = 112
          Width = 367
          Height = 53
          Caption = 
            'Show Extra Line in menus (`UseExtraLine`, customized in the sSki' +
            'nManager1.GetMenuExtraLineData event)'
          AutoSize = False
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBox_ShowExtraLineClick
          WordWrap = True
        end
        object ComboBox_IcoLineSkin: TsComboBox
          Left = 150
          Top = 177
          Width = 159
          Height = 21
          TabOrder = 3
          OnChange = ComboBox_IcoLineSkinChange
          BoundLabel.Indent = 4
          BoundLabel.Caption = '`IcoLineSkin`:'
          LabelFromTextHint = True
          ShowFocus = False
          TextHint = 'Section of icon bar'
          Items.Strings = (
            'ICOLINE'
            'TRANSPARENT'
            'PROGRESSV')
          Style = csDropDownList
          Text = 'ComboBox_IcoLineSkin'
        end
      end
      object CheckBox_SkinnedMenus: TsCheckBox
        Left = 46
        Top = 122
        Width = 308
        Height = 19
        Caption = 'Enable/disable support of menus (`SkinnedPopups`)'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBox_SkinnedMenusClick
      end
    end
    object sTabSheet6: TsTabSheet
      Caption = 'Scrollbars'
      TabCustomBorder.RadiusTopLeft = 0
      TabCustomBorder.RadiusTopRight = 0
      TabCustomBorder.RadiusBottomLeft = 0
      TabCustomBorder.RadiusBottomRight = 9
      object sGroupBox15: TsGroupBox
        Left = 320
        Top = 36
        Width = 233
        Height = 136
        Caption = 'Arrow buttons visible'
        TabOrder = 0
        CaptionLayout = clTopCenter
        CheckBoxVisible = True
        BoxStyle = bsCard
        OnCheckBoxChanged = sGroupBox15CheckBoxChanged
        object sCheckBox24: TsCheckBox
          Left = 56
          Top = 44
          Width = 125
          Height = 23
          Caption = 'Default size'
          AutoSize = False
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 0
          OnClick = sCheckBox24Click
        end
        object sTrackBar2: TsTrackBar
          Left = 24
          Top = 84
          Width = 185
          Height = 27
          Enabled = False
          Max = 36
          Min = 12
          Position = 18
          PositionToolTip = ptTop
          TabOrder = 1
          TickStyle = tsNone
          OnChange = sTrackBar2Change
          ShowProgress = True
        end
      end
      object sGroupBox16: TsGroupBox
        Left = 320
        Top = 200
        Width = 233
        Height = 101
        Caption = 'Custom scroll width'
        TabOrder = 1
        CaptionLayout = clTopCenter
        AutoChildrenStates = csAsChecked
        CheckBoxVisible = True
        BoxStyle = bsCard
        OnCheckBoxChanged = sGroupBox16CheckBoxChanged
        object sTrackBar1: TsTrackBar
          Left = 24
          Top = 47
          Width = 185
          Height = 27
          Enabled = False
          Max = 36
          Min = 12
          Position = 24
          PositionToolTip = ptTop
          TabOrder = 0
          TickStyle = tsNone
          OnChange = sTrackBar1Change
          ShowProgress = True
        end
      end
      object sMemo1: TsMemo
        Left = 44
        Top = 44
        Width = 237
        Height = 257
        Lines.Strings = (
          'program AMegaDemo;'
          ''
          'uses'
          '  Forms,'
          '  UnitMain in '#39'UnitMain.pas'#39' {MainForm},'
          
            '  UnitDataModule in '#39'UnitDataModule.pas'#39' {FormData: TDataModule}' +
            ','
          '  UnitBaseMenu in '#39'UnitBaseMenu.pas'#39' {FrameBaseMenu: TFrame},'
          
            '  UnitTsPageControl in '#39'UnitTsPageControl.pas'#39' {FrameTsPageContr' +
            'ol: TFrame},'
          
            '  UnitTsSpeedButton in '#39'UnitTsSpeedButton.pas'#39' {FrameTsSpeedButt' +
            'on: TFrame},'
          '  UnitTsBitBtn in '#39'UnitTsBitBtn.pas'#39' {FrameTsBitBtn: TFrame},'
          '  UnitTsButton in '#39'UnitTsButton.pas'#39' {FrameTsButton: TFrame},'
          '  UnitTsImage in '#39'UnitTsImage.pas'#39' {FrameTsImage: TFrame},'
          '  UnitTsEdit in '#39'UnitTsEdit.pas'#39' {FrameTsEdit: TFrame},'
          
            '  UnitTsCheckBox in '#39'UnitTsCheckBox.pas'#39' {FrameTsCheckBox: TFram' +
            'e},'
          
            '  UnitTsRadioButton in '#39'UnitTsRadioButton.pas'#39' {FrameTsRadioButt' +
            'on: TFrame},'
          '  UnitTsMemo in '#39'UnitTsMemo.pas'#39' {FrameTsMemo: TFrame},'
          
            '  UnitTsComboBox in '#39'UnitTsComboBox.pas'#39' {FrameTsComboBox: TFram' +
            'e},'
          '  UnitTsPanel in '#39'UnitTsPanel.pas'#39' {FrameTsPanel: TFrame},'
          
            '  UnitTsSplitter in '#39'UnitTsSplitter.pas'#39' {FrameTsSplitter: TFram' +
            'e},'
          
            '  UnitTsTrackBar in '#39'UnitTsTrackBar.pas'#39' {FrameTsTrackBar: TFram' +
            'e},'
          
            '  UnitTsTreeView in '#39'UnitTsTreeView.pas'#39' {FrameTsTreeView: TFram' +
            'e},'
          
            '  UnitTsListView in '#39'UnitTsListView.pas'#39' {FrameTsListView: TFram' +
            'e},'
          
            '  UnitTsSpinEdit in '#39'UnitTsSpinEdit.pas'#39' {FrameTsSpinEdit: TFram' +
            'e},'
          
            '  UnitTsScrollBox in '#39'UnitTsScrollBox.pas'#39' {FrameTsScrollBox: TF' +
            'rame},'
          
            '  UnitTsListBoxes in '#39'UnitTsListBoxes.pas'#39' {FrameTsListBoxes: TF' +
            'rame},'
          '  UnitTsBoxes in '#39'UnitTsBoxes.pas'#39' {FrameTsBoxes: TFrame},'
          '  UnitTsOthers1 in '#39'UnitTsOthers1.pas'#39' {FrameTsOthers1: TFrame},'
          '  UnitTsOthers2 in '#39'UnitTsOthers2.pas'#39' {FrameTsOthers2: TFrame},'
          
            '  UnitTsSkinSelector in '#39'UnitTsSkinSelector.pas'#39' {FrameTsSkinSel' +
            'ector: TFrame},'
          
            '  UnitTsPopupBox in '#39'UnitTsPopupBox.pas'#39' {FrameTsPopupBox: TFram' +
            'e},'
          '  UnitCustomPopup in '#39'UnitCustomPopup.pas'#39' {FormCustomPopup},'
          
            '  UnitTsSplitView in '#39'UnitTsSplitView.pas'#39' {FrameTsSplitView: TF' +
            'rame},'
          
            '  UnitTsPageScroller in '#39'UnitTsPageScroller.pas'#39' {FrameTsPageScr' +
            'oller: TFrame},'
          
            '  UnitTsTreeViewEx in '#39'UnitTsTreeViewEx.pas'#39' {FrameTsTreeViewEx:' +
            ' TFrame},'
          
            '  UnitTsGradientPanel in '#39'UnitTsGradientPanel.pas'#39' {FrameTsGradi' +
            'entPanel: TFrame},'
          '  UnitTsSlider in '#39'UnitTsSlider.pas'#39' {FrameTsSlider: TFrame},'
          
            '  UnitTsMonthCalendar in '#39'UnitTsMonthCalendar.pas'#39' {FrameTsMonth' +
            'Calendar: TFrame},'
          '  UnitTsLabelFX in '#39'UnitTsLabelFX.pas'#39' {FrameTsLabelFX: TFrame},'
          
            '  UnitTsHTMLLabel in '#39'UnitTsHTMLLabel.pas'#39' {FrameTsHTMLLabel: TF' +
            'rame},'
          '  UnitTsLabels in '#39'UnitTsLabels.pas'#39' {FrameTsLabels: TFrame},'
          
            '  UnitTsExtEdits in '#39'UnitTsExtEdits.pas'#39' {FrameTsExtEdits: TFram' +
            'e},'
          
            '  UnitTsColorPickers in '#39'UnitTsColorPickers.pas'#39' {FrameTsColorPi' +
            'ckers: TFrame},'
          
            '  UnitTsShellControls in '#39'UnitTsShellControls.pas'#39' {FrameTsShell' +
            'Controls: TFrame},'
          '  UnitTsOthers3 in '#39'UnitTsOthers3.pas'#39' {FrameTsOthers3: TFrame},'
          '  UnitTsOthers4 in '#39'UnitTsOthers4.pas'#39' {FrameTsOthers4: TFrame},'
          '  UnitTsMeter in '#39'UnitTsMeter.pas'#39' {FrameTsMeter: TFrame},'
          
            '  UnitTsRoundBtn in '#39'UnitTsRoundBtn.pas'#39' {FrameTsRoundBtn: TFram' +
            'e},'
          '  UnitTsArcDial in '#39'UnitTsArcDial.pas'#39' {FrameTsArcDial: TFrame},'
          
            '  UnitTsArcHandle in '#39'UnitTsArcHandle.pas'#39' {FrameTsArcHandle: TF' +
            'rame},'
          
            '  UnitTsArcGauge in '#39'UnitTsArcGauge.pas'#39' {FrameTsArcGauge: TFram' +
            'e},'
          
            '  UnitTsArcPreloader in '#39'UnitTsArcPreloader.pas'#39' {FrameTsArcPrel' +
            'oader: TFrame},'
          
            '  UnitTsBadgeBtn in '#39'UnitTsBadgeBtn.pas'#39' {FrameTsBadgeBtn: TFram' +
            'e},'
          
            '  UnitTsSkinManager in '#39'UnitTsSkinManager.pas'#39' {FrameTsSkinManag' +
            'er: TFrame},'
          
            '  UnitTsSkinProvider in '#39'UnitTsSkinProvider.pas'#39' {FrameTsSkinPro' +
            'vider: TFrame},'
          
            '  UnitTsFrameAdapter in '#39'UnitTsFrameAdapter.pas'#39' {FrameTsFrameAd' +
            'apter: TFrame},'
          
            '  UnitTsMagnifier in '#39'UnitTsMagnifier.pas'#39' {FrameTsMagnifier: TF' +
            'rame},'
          
            '  UnitTsColorDialog in '#39'UnitTsColorDialog.pas'#39' {FrameTsColorDial' +
            'og: TFrame},'
          
            '  UnitTsAlphaImageList in '#39'UnitTsAlphaImageList.pas'#39' {FrameTsAlp' +
            'haImageList: TFrame},'
          
            '  UnitTsVirtualImageList in '#39'UnitTsVirtualImageList.pas'#39' {FrameT' +
            'sVirtualImageList: TFrame},'
          
            '  UnitTsCharImageList in '#39'UnitTsCharImageList.pas'#39' {FrameTsCharI' +
            'mageList: TFrame},'
          
            '  UnitTsAlphaHints in '#39'UnitTsAlphaHints.pas'#39' {FrameTsAlphaHints:' +
            ' TFrame},'
          
            '  UnitTsHintsFrame2 in '#39'UnitTsHintsFrame2.pas'#39' {FrameTsHints2: T' +
            'Frame},'
          
            '  UnitTsHintsFrame3 in '#39'UnitTsHintsFrame3.pas'#39' {FrameTsHints3: T' +
            'Frame},'
          
            '  UnitTsTitleBar in '#39'UnitTsTitleBar.pas'#39' {FrameTsTitleBar: TFram' +
            'e},'
          
            '  UnitTsFloatButtons in '#39'UnitTsFloatButtons.pas'#39' {FrameTsFloatBu' +
            'ttons: TFrame},'
          
            '  UnitTsFontStore in '#39'UnitTsFontStore.pas'#39' {FrameTsFontStore: TF' +
            'rame},'
          '  UnitTsOthers5 in '#39'UnitTsOthers5.pas'#39' {FrameTsOthers5: TFrame},'
          
            '  UnitTsTrackEdit in '#39'UnitTsTrackEdit.pas'#39' {FrameTsTrackEdit: TF' +
            'rame},'
          
            '  UnitTsRollOutPanel in '#39'UnitTsRollOutPanel.pas'#39' {FrameTsRollOut' +
            'Panel: TFrame},'
          '  UnitAnimation in '#39'UnitAnimation.pas'#39' {FrameAnimation: TFrame};'
          ''
          '{$R *.res}'
          ''
          'begin'
          '//  ReportMemoryLeaksOnShutdown := True;'
          '  Application.Initialize;'
          
            '//  Application.MainFormOnTaskbar := True; // Commented for comp' +
            'iling under old Delphi versions'
          '  Application.CreateForm(TFormData, FormData);'
          '  Application.CreateForm(TMainForm, MainForm);'
          '  Application.CreateForm(TFormCustomPopup, FormCustomPopup);'
          '  Application.Run;'
          'end.')
        ScrollBars = ssBoth
        TabOrder = 2
        Text = 
          'program AMegaDemo;'#13#10#13#10'uses'#13#10'  Forms,'#13#10'  UnitMain in '#39'UnitMain.pa' +
          's'#39' {MainForm},'#13#10'  UnitDataModule in '#39'UnitDataModule.pas'#39' {FormDa' +
          'ta: TDataModule},'#13#10'  UnitBaseMenu in '#39'UnitBaseMenu.pas'#39' {FrameBa' +
          'seMenu: TFrame},'#13#10'  UnitTsPageControl in '#39'UnitTsPageControl.pas'#39 +
          ' {FrameTsPageControl: TFrame},'#13#10'  UnitTsSpeedButton in '#39'UnitTsSp' +
          'eedButton.pas'#39' {FrameTsSpeedButton: TFrame},'#13#10'  UnitTsBitBtn in ' +
          #39'UnitTsBitBtn.pas'#39' {FrameTsBitBtn: TFrame},'#13#10'  UnitTsButton in '#39 +
          'UnitTsButton.pas'#39' {FrameTsButton: TFrame},'#13#10'  UnitTsImage in '#39'Un' +
          'itTsImage.pas'#39' {FrameTsImage: TFrame},'#13#10'  UnitTsEdit in '#39'UnitTsE' +
          'dit.pas'#39' {FrameTsEdit: TFrame},'#13#10'  UnitTsCheckBox in '#39'UnitTsChec' +
          'kBox.pas'#39' {FrameTsCheckBox: TFrame},'#13#10'  UnitTsRadioButton in '#39'Un' +
          'itTsRadioButton.pas'#39' {FrameTsRadioButton: TFrame},'#13#10'  UnitTsMemo' +
          ' in '#39'UnitTsMemo.pas'#39' {FrameTsMemo: TFrame},'#13#10'  UnitTsComboBox in' +
          ' '#39'UnitTsComboBox.pas'#39' {FrameTsComboBox: TFrame},'#13#10'  UnitTsPanel ' +
          'in '#39'UnitTsPanel.pas'#39' {FrameTsPanel: TFrame},'#13#10'  UnitTsSplitter i' +
          'n '#39'UnitTsSplitter.pas'#39' {FrameTsSplitter: TFrame},'#13#10'  UnitTsTrack' +
          'Bar in '#39'UnitTsTrackBar.pas'#39' {FrameTsTrackBar: TFrame},'#13#10'  UnitTs' +
          'TreeView in '#39'UnitTsTreeView.pas'#39' {FrameTsTreeView: TFrame},'#13#10'  U' +
          'nitTsListView in '#39'UnitTsListView.pas'#39' {FrameTsListView: TFrame},' +
          #13#10'  UnitTsSpinEdit in '#39'UnitTsSpinEdit.pas'#39' {FrameTsSpinEdit: TFr' +
          'ame},'#13#10'  UnitTsScrollBox in '#39'UnitTsScrollBox.pas'#39' {FrameTsScroll' +
          'Box: TFrame},'#13#10'  UnitTsListBoxes in '#39'UnitTsListBoxes.pas'#39' {Frame' +
          'TsListBoxes: TFrame},'#13#10'  UnitTsBoxes in '#39'UnitTsBoxes.pas'#39' {Frame' +
          'TsBoxes: TFrame},'#13#10'  UnitTsOthers1 in '#39'UnitTsOthers1.pas'#39' {Frame' +
          'TsOthers1: TFrame},'#13#10'  UnitTsOthers2 in '#39'UnitTsOthers2.pas'#39' {Fra' +
          'meTsOthers2: TFrame},'#13#10'  UnitTsSkinSelector in '#39'UnitTsSkinSelect' +
          'or.pas'#39' {FrameTsSkinSelector: TFrame},'#13#10'  UnitTsPopupBox in '#39'Uni' +
          'tTsPopupBox.pas'#39' {FrameTsPopupBox: TFrame},'#13#10'  UnitCustomPopup i' +
          'n '#39'UnitCustomPopup.pas'#39' {FormCustomPopup},'#13#10'  UnitTsSplitView in' +
          ' '#39'UnitTsSplitView.pas'#39' {FrameTsSplitView: TFrame},'#13#10'  UnitTsPage' +
          'Scroller in '#39'UnitTsPageScroller.pas'#39' {FrameTsPageScroller: TFram' +
          'e},'#13#10'  UnitTsTreeViewEx in '#39'UnitTsTreeViewEx.pas'#39' {FrameTsTreeVi' +
          'ewEx: TFrame},'#13#10'  UnitTsGradientPanel in '#39'UnitTsGradientPanel.pa' +
          's'#39' {FrameTsGradientPanel: TFrame},'#13#10'  UnitTsSlider in '#39'UnitTsSli' +
          'der.pas'#39' {FrameTsSlider: TFrame},'#13#10'  UnitTsMonthCalendar in '#39'Uni' +
          'tTsMonthCalendar.pas'#39' {FrameTsMonthCalendar: TFrame},'#13#10'  UnitTsL' +
          'abelFX in '#39'UnitTsLabelFX.pas'#39' {FrameTsLabelFX: TFrame},'#13#10'  UnitT' +
          'sHTMLLabel in '#39'UnitTsHTMLLabel.pas'#39' {FrameTsHTMLLabel: TFrame},'#13 +
          #10'  UnitTsLabels in '#39'UnitTsLabels.pas'#39' {FrameTsLabels: TFrame},'#13#10 +
          '  UnitTsExtEdits in '#39'UnitTsExtEdits.pas'#39' {FrameTsExtEdits: TFram' +
          'e},'#13#10'  UnitTsColorPickers in '#39'UnitTsColorPickers.pas'#39' {FrameTsCo' +
          'lorPickers: TFrame},'#13#10'  UnitTsShellControls in '#39'UnitTsShellContr' +
          'ols.pas'#39' {FrameTsShellControls: TFrame},'#13#10'  UnitTsOthers3 in '#39'Un' +
          'itTsOthers3.pas'#39' {FrameTsOthers3: TFrame},'#13#10'  UnitTsOthers4 in '#39 +
          'UnitTsOthers4.pas'#39' {FrameTsOthers4: TFrame},'#13#10'  UnitTsMeter in '#39 +
          'UnitTsMeter.pas'#39' {FrameTsMeter: TFrame},'#13#10'  UnitTsRoundBtn in '#39'U' +
          'nitTsRoundBtn.pas'#39' {FrameTsRoundBtn: TFrame},'#13#10'  UnitTsArcDial i' +
          'n '#39'UnitTsArcDial.pas'#39' {FrameTsArcDial: TFrame},'#13#10'  UnitTsArcHand' +
          'le in '#39'UnitTsArcHandle.pas'#39' {FrameTsArcHandle: TFrame},'#13#10'  UnitT' +
          'sArcGauge in '#39'UnitTsArcGauge.pas'#39' {FrameTsArcGauge: TFrame},'#13#10'  ' +
          'UnitTsArcPreloader in '#39'UnitTsArcPreloader.pas'#39' {FrameTsArcPreloa' +
          'der: TFrame},'#13#10'  UnitTsBadgeBtn in '#39'UnitTsBadgeBtn.pas'#39' {FrameTs' +
          'BadgeBtn: TFrame},'#13#10'  UnitTsSkinManager in '#39'UnitTsSkinManager.pa' +
          's'#39' {FrameTsSkinManager: TFrame},'#13#10'  UnitTsSkinProvider in '#39'UnitT' +
          'sSkinProvider.pas'#39' {FrameTsSkinProvider: TFrame},'#13#10'  UnitTsFrame' +
          'Adapter in '#39'UnitTsFrameAdapter.pas'#39' {FrameTsFrameAdapter: TFrame' +
          '},'#13#10'  UnitTsMagnifier in '#39'UnitTsMagnifier.pas'#39' {FrameTsMagnifier' +
          ': TFrame},'#13#10'  UnitTsColorDialog in '#39'UnitTsColorDialog.pas'#39' {Fram' +
          'eTsColorDialog: TFrame},'#13#10'  UnitTsAlphaImageList in '#39'UnitTsAlpha' +
          'ImageList.pas'#39' {FrameTsAlphaImageList: TFrame},'#13#10'  UnitTsVirtual' +
          'ImageList in '#39'UnitTsVirtualImageList.pas'#39' {FrameTsVirtualImageLi' +
          'st: TFrame},'#13#10'  UnitTsCharImageList in '#39'UnitTsCharImageList.pas'#39 +
          ' {FrameTsCharImageList: TFrame},'#13#10'  UnitTsAlphaHints in '#39'UnitTsA' +
          'lphaHints.pas'#39' {FrameTsAlphaHints: TFrame},'#13#10'  UnitTsHintsFrame2' +
          ' in '#39'UnitTsHintsFrame2.pas'#39' {FrameTsHints2: TFrame},'#13#10'  UnitTsHi' +
          'ntsFrame3 in '#39'UnitTsHintsFrame3.pas'#39' {FrameTsHints3: TFrame},'#13#10' ' +
          ' UnitTsTitleBar in '#39'UnitTsTitleBar.pas'#39' {FrameTsTitleBar: TFrame' +
          '},'#13#10'  UnitTsFloatButtons in '#39'UnitTsFloatButtons.pas'#39' {FrameTsFlo' +
          'atButtons: TFrame},'#13#10'  UnitTsFontStore in '#39'UnitTsFontStore.pas'#39' ' +
          '{FrameTsFontStore: TFrame},'#13#10'  UnitTsOthers5 in '#39'UnitTsOthers5.p' +
          'as'#39' {FrameTsOthers5: TFrame},'#13#10'  UnitTsTrackEdit in '#39'UnitTsTrack' +
          'Edit.pas'#39' {FrameTsTrackEdit: TFrame},'#13#10'  UnitTsRollOutPanel in '#39 +
          'UnitTsRollOutPanel.pas'#39' {FrameTsRollOutPanel: TFrame},'#13#10'  UnitAn' +
          'imation in '#39'UnitAnimation.pas'#39' {FrameAnimation: TFrame};'#13#10#13#10'{$R ' +
          '*.res}'#13#10#13#10'begin'#13#10'//  ReportMemoryLeaksOnShutdown := True;'#13#10'  App' +
          'lication.Initialize;'#13#10'//  Application.MainFormOnTaskbar := True;' +
          ' // Commented for compiling under old Delphi versions'#13#10'  Applica' +
          'tion.CreateForm(TFormData, FormData);'#13#10'  Application.CreateForm(' +
          'TMainForm, MainForm);'#13#10'  Application.CreateForm(TFormCustomPopup' +
          ', FormCustomPopup);'#13#10'  Application.Run;'#13#10'end.'#13#10
      end
    end
  end
  object sCheckBox16: TsCheckBox [4]
    Left = 76
    Top = 33
    Width = 68
    Height = 17
    Caption = '`Active`'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = sCheckBox16Click
  end
  object sCheckBox25: TsCheckBox [5]
    Left = 76
    Top = 67
    Width = 121
    Height = 17
    Caption = '`ExtendedBorders`'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox25Click
  end
  object sCheckBox26: TsCheckBox [6]
    Left = 76
    Top = 100
    Width = 102
    Height = 17
    Caption = 'Use system blur'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox26Click
  end
end
