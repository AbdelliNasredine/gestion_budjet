inherited FrameTsOthers1: TFrameTsOthers1
  Width = 772
  Height = 597
  Align = alClient
  object sPanel1: TsPanel [0]
    Left = 40
    Top = 40
    Width = 653
    Height = 505
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 0
    object sGauge1: TsGauge
      Left = 132
      Top = 232
      Width = 216
      Height = 23
      SkinData.OuterEffects.Visibility = ovAlways
      ForeColor = clBlack
      Progress = 47
      Suffix = ' percents'
    end
    object sGauge2: TsGauge
      Left = 35
      Top = 232
      Width = 32
      Height = 189
      Kind = gkVerticalBar
      SkinData.OuterEffects.Visibility = ovAlways
      ForeColor = clBlack
      Progress = 47
      Suffix = '%'
    end
    object sCoolBar1: TsCoolBar
      Left = 10
      Top = 10
      Width = 633
      Height = 53
      Bands = <
        item
          Control = sToolBar1
          ImageIndex = -1
          MinHeight = 29
          Width = 200
        end
        item
          Break = False
          Control = sToolBar2
          ImageIndex = -1
          MinHeight = 29
          Width = 423
        end>
      SkinData.OuterEffects.Visibility = ovAlways
      object sToolBar1: TsToolBar
        Left = 11
        Top = 0
        Width = 187
        Height = 29
        ButtonHeight = 24
        ButtonWidth = 25
        Caption = 'sToolBar1'
        Images = FormData.CharList16
        TabOrder = 0
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 0
        end
        object ToolButton2: TToolButton
          Left = 25
          Top = 0
          Caption = 'ToolButton2'
          ImageIndex = 1
        end
        object ToolButton3: TToolButton
          Left = 50
          Top = 0
          Caption = 'ToolButton3'
          ImageIndex = 2
        end
        object ToolButton4: TToolButton
          Left = 75
          Top = 0
          Caption = 'ToolButton4'
          ImageIndex = 3
        end
        object ToolButton5: TToolButton
          Left = 100
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 4
          Style = tbsDivider
        end
        object ToolButton6: TToolButton
          Left = 108
          Top = 0
          Caption = 'ToolButton6'
          DropdownMenu = PopupMenu1
          ImageIndex = 5
          Style = tbsDropDown
        end
      end
      object sToolBar2: TsToolBar
        Left = 215
        Top = 0
        Width = 414
        Height = 29
        ButtonHeight = 24
        ButtonWidth = 25
        Caption = 'sToolBar1'
        Images = FormData.CharList16
        TabOrder = 1
        object ToolButton7: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 0
        end
        object ToolButton8: TToolButton
          Left = 25
          Top = 0
          Caption = 'ToolButton2'
          ImageIndex = 1
        end
        object ToolButton9: TToolButton
          Left = 50
          Top = 0
          Caption = 'ToolButton3'
          ImageIndex = 2
        end
        object ToolButton10: TToolButton
          Left = 75
          Top = 0
          Caption = 'ToolButton4'
          ImageIndex = 3
        end
        object ToolButton11: TToolButton
          Left = 100
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 4
          Style = tbsDivider
        end
        object ToolButton12: TToolButton
          Left = 108
          Top = 0
          Caption = 'ToolButton6'
          DropdownMenu = PopupMenu1
          ImageIndex = 5
          Style = tbsDropDown
        end
      end
    end
    object sTabControl1: TsTabControl
      Left = 10
      Top = 84
      Width = 631
      Height = 101
      TabOrder = 1
      Tabs.Strings = (
        'Tab 0'
        'Tab 1'
        'Tab 2'
        'Tab 3'
        'Tab 4')
      TabIndex = 0
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sRadioButton1: TsRadioButton
      Left = 159
      Top = 308
      Width = 55
      Height = 17
      Caption = 'Normal'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton1Click
    end
    object sComboBox1: TsComboBox
      Tag = 5
      Left = 268
      Top = 357
      Width = 132
      Height = 21
      BoundLabel.Caption = '`SkinData.SkinSection`:'
      TextHint = 'SkinSection property'
      ShowFocus = False
      LabelFromTextHint = True
      Style = csDropDownList
      ItemIndex = -1
      TabOrder = 3
      OnChange = sComboBox1Change
      Items.Strings = (
        'GAUGE'
        'TRANSPARENT'
        'PANEL_LOW'
        'PANEL'
        'BUTTON'
        'SPEEDBUTTON'
        'GROUPBOX'
        'EDIT')
    end
    object sComboBox2: TsComboBox
      Tag = 5
      Left = 268
      Top = 388
      Width = 132
      Height = 21
      BoundLabel.Caption = '`ProgressSkin`:'
      TextHint = 'Progress skin'
      ShowFocus = False
      LabelFromTextHint = True
      Style = csDropDownList
      ItemIndex = -1
      TabOrder = 4
      OnChange = sComboBox2Change
      Items.Strings = (
        'PANEL'
        'BUTTON'
        'GROUPBOX'
        'DIALOG'
        'PROGRESSH'
        'SPEEDBUTTON'
        'PROGRESSV')
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 253
      Top = 308
      Width = 64
      Height = 17
      Caption = 'Marquee'
      TabOrder = 5
      OnClick = sRadioButton1Click
    end
    object sProgressBar2: TsProgressBar
      Left = 80
      Top = 232
      Width = 20
      Height = 189
      BorderWidth = 1
      Orientation = pbVertical
      Position = 47
      TabOrder = 6
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sCheckBox1: TsCheckBox
      Left = 423
      Top = 390
      Width = 116
      Height = 18
      Caption = 'Animated'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = sCheckBox1Click
    end
    object sProgressBar1: TsProgressBar
      Left = 132
      Top = 269
      Width = 216
      Height = 25
      BorderWidth = 1
      Position = 47
      MarqueeInterval = 50
      TabOrder = 8
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sCheckBox3: TsCheckBox
      Left = 423
      Top = 360
      Width = 116
      Height = 18
      Caption = 'Allow shadow'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = sCheckBox3Click
    end
    object sGroupBox1: TsGroupBox
      Left = 388
      Top = 224
      Width = 225
      Height = 70
      Caption = 'Show text'
      TabOrder = 10
      AutoChildrenStates = csAsChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox1CheckBoxChanged
      object sEdit1: TsEdit
        Left = 113
        Top = 32
        Width = 88
        Height = 21
        TabOrder = 0
        Text = ' percents'
        OnChange = sEdit1Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'Gauge suffix:'
      end
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Top = 28
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 272
    object I1: TMenuItem
      Caption = 'Item 1'
    end
    object I2: TMenuItem
      Caption = 'Item 2'
    end
    object I3: TMenuItem
      Caption = 'Item 3'
    end
    object I4: TMenuItem
      Caption = 'Item 4'
    end
    object I5: TMenuItem
      Caption = 'Item 5'
    end
  end
end
