inherited FrameTsSplitView: TFrameTsSplitView
  object sPanel1: TsPanel [0]
    Left = 44
    Top = 36
    Width = 617
    Height = 353
    BevelOuter = bvSpace
    TabOrder = 0
    object sPanel2: TsPanel
      Left = 1
      Top = 1
      Width = 615
      Height = 351
      OnPaint = sPanel1Paint
      Align = alClient
      BevelOuter = bvNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object sPanel3: TsPanel
        Left = 50
        Top = 0
        Width = 565
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object sRadioGroup1: TsRadioGroup
          Left = 31
          Top = 24
          Width = 138
          Height = 81
          Caption = 'DisplayMode'
          TabOrder = 0
          ImageIndex = 0
          ItemIndex = 1
          ContentVOffset = 6
          Items.Strings = (
            'svmaDocked'
            'svmaOverlay')
          OnChange = sRadioGroup1Change
        end
        object sRadioGroup2: TsRadioGroup
          Left = 395
          Top = 24
          Width = 126
          Height = 145
          Caption = 'Placement'
          TabOrder = 1
          ItemIndex = 0
          ContentVOffset = 6
          Items.Strings = (
            'svpaLeft'
            'svpaRight'
            'svpaTop'
            'svpaBottom')
          OnChange = sRadioGroup2Change
        end
        object sRadioGroup3: TsRadioGroup
          Left = 206
          Top = 24
          Width = 149
          Height = 81
          Caption = 'CloseStyle'
          TabOrder = 2
          ItemIndex = 1
          ContentVOffset = 6
          Items.Strings = (
            'svcaCollapse'
            'svcaCompact')
          OnChange = sRadioGroup3Change
        end
        object sGroupBox1: TsGroupBox
          Left = 31
          Top = 125
          Width = 324
          Height = 144
          Caption = 'Bluring'
          TabOrder = 3
          CheckBoxVisible = True
          Checked = True
          OnCheckBoxChanged = sGroupBox1CheckBoxChanged
          object sSpeedButton8: TsSpeedButton
            Left = 278
            Top = 95
            Width = 24
            Height = 22
            Enabled = False
            OnClick = sSpeedButton8Click
            Images = FormData.CharList16
            ImageIndex = 4
          end
          object sTrackEdit1: TsTrackEdit
            Left = 216
            Top = 34
            Width = 56
            Height = 21
            TabOrder = 0
            Text = '20'
            OnChange = sTrackEdit1Change
            BoundLabel.Active = True
            BoundLabel.Caption = 'Opacity:'
            Increment = 1.000000000000000000
            MaxValue = 255.000000000000000000
            Value = 20.000000000000000000
          end
          object sTrackEdit2: TsTrackEdit
            Left = 216
            Top = 65
            Width = 56
            Height = 21
            TabOrder = 1
            Text = '20'
            OnChange = sTrackEdit2Change
            BoundLabel.Active = True
            BoundLabel.Caption = 'Size:'
            Increment = 1.000000000000000000
            MaxValue = 30.000000000000000000
            Value = 20.000000000000000000
          end
          object sColorBox1: TsColorBox
            Left = 216
            Top = 95
            Width = 56
            Height = 22
            BoundLabel.Active = True
            BoundLabel.Caption = 'Color:'
            Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
            ShowColorName = False
            PopupMode = pmPickColor
            Enabled = False
            TabOrder = 2
            OnChange = sColorBox1Change
          end
          object sRadioButton1: TsRadioButton
            Tag = 1
            Left = 40
            Top = 36
            Width = 40
            Height = 17
            Caption = 'Self'
            TabOrder = 3
            OnClick = sRadioButton1Click
          end
          object sRadioButton2: TsRadioButton
            Tag = 2
            Left = 40
            Top = 67
            Width = 54
            Height = 17
            Caption = 'Parent'
            Checked = True
            TabOrder = 4
            TabStop = True
            OnClick = sRadioButton2Click
          end
        end
        object sCheckBox2: TsCheckBox
          Left = 403
          Top = 186
          Width = 70
          Height = 17
          Caption = 'AutoHide'
          TabOrder = 4
          OnClick = sCheckBox2Click
        end
        object sCheckBox1: TsCheckBox
          Left = 403
          Top = 245
          Width = 111
          Height = 17
          Caption = 'AnimatedShowing'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = sCheckBox1Click
        end
        object sCheckBox3: TsCheckBox
          Left = 403
          Top = 216
          Width = 100
          Height = 17
          Caption = 'AnimatedHiding'
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnClick = sCheckBox3Click
        end
        object sCheckBox4: TsCheckBox
          Left = 39
          Top = 275
          Width = 79
          Height = 17
          Caption = 'UseSysBlur'
          TabOrder = 7
          Visible = False
          OnClick = sCheckBox4Click
        end
      end
      object sSplitView1: TsSplitView
        Left = 0
        Top = 0
        Width = 50
        Height = 351
        AnimatedHiding = True
        BlurData.Color = clBlack
        BlurData.Mode = bmParent
        BlurData.Opacity = 20
        BlurData.Size = 20
        BlurData.UseSysBlur = False
        CloseStyle = svcaCompact
        DisplayMode = svmaOverlay
        Opened = False
        OpenedSize = 180
        Placement = svpaLeft
        SideShadow.Side = asLeft
        TabOrder = 1
        object sSpeedButton1: TsSpeedButton
          Left = 1
          Top = 1
          Width = 48
          Height = 349
          Align = alClient
          Margin = 6
          Spacing = 12
          OnClick = sSpeedButton1Click
          SkinData.SkinSection = 'TOOLBUTTON'
          Images = sCharImageList1
          TextAlignment = taLeftJustify
          ImageIndex = 0
          ShowCaption = False
          WordWrap = False
        end
      end
    end
  end
  object sCharImageList1: TsCharImageList
    Height = 34
    Width = 34
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        ScalingFactor = 1.010000000000000000
        Char = 61659
      end>
    Left = 377
    Top = 116
    Bitmap = {}
  end
end
