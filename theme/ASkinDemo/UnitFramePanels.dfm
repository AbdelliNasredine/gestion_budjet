inherited Frame_Panels: TFrame_Panels
  Width = 703
  Height = 407
  object sCheckBox1: TsCheckBox [0]
    Left = 304
    Top = 377
    Width = 131
    Height = 17
    Caption = 'Click splitter for sizing'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox1Click
  end
  object sPanel1: TsPanel [1]
    Left = 28
    Top = 16
    Width = 649
    Height = 350
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 0
    object sSplitter3: TsSplitter
      Left = 257
      Top = 0
      Width = 8
      Height = 350
      SizingByClick = True
      ShowGrip = True
    end
    object sContainer2: TsPanel
      Left = 265
      Top = 0
      Width = 384
      Height = 350
      Align = alClient
      BevelOuter = bvLowered
      BorderWidth = 8
      Caption = ' '
      TabOrder = 0
      object sSplitter1: TsSplitter
        Left = 9
        Top = 192
        Width = 366
        Height = 8
        Cursor = crVSplit
        Align = alBottom
        ShowGrip = True
      end
      object sSplitter2: TsSplitter
        Left = 83
        Top = 9
        Width = 8
        Height = 183
        ShowGrip = True
      end
      object sPanel2: TsPanel
        Left = 9
        Top = 200
        Width = 366
        Height = 141
        Align = alBottom
        BorderWidth = 5
        Caption = ' '
        TabOrder = 0
        object sPanel6: TsPanel
          Left = 6
          Top = 6
          Width = 354
          Height = 129
          Align = alClient
          BevelOuter = bvLowered
          BorderWidth = 5
          Caption = ' '
          TabOrder = 0
          object sPanel7: TsPanel
            Left = 6
            Top = 6
            Width = 342
            Height = 117
            Align = alClient
            BorderWidth = 5
            TabOrder = 0
            object sCheckBox2: TsCheckBox
              Left = 204
              Top = 48
              Width = 110
              Height = 17
              Caption = 'AutoHide'
              AutoSize = False
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = sCheckBox2Click
            end
            object sCheckBox3: TsCheckBox
              Left = 204
              Top = 79
              Width = 110
              Height = 17
              Caption = 'AutoShow'
              AutoSize = False
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = sCheckBox3Click
            end
            object sCheckBox4: TsCheckBox
              Left = 204
              Top = 16
              Width = 110
              Height = 17
              Caption = 'DirectionArrow'
              AutoSize = False
              Checked = True
              State = cbChecked
              TabOrder = 2
              OnClick = sCheckBox4Click
            end
            object sRadioGroup2: TsRadioGroup
              Left = 14
              Top = 8
              Width = 169
              Height = 95
              Caption = 'Title placement:'
              TabOrder = 3
              ImageIndex = 0
              Columns = 2
              ItemIndex = 0
              ContentVOffset = 6
              Items.Strings = (
                'asLeft'
                'asTop'
                'asRight'
                'asBottom')
              OnChange = sRadioGroup2Change
            end
          end
        end
      end
      object sPanel3: TsPanel
        Left = 9
        Top = 9
        Width = 74
        Height = 183
        Align = alLeft
        TabOrder = 2
      end
      object sPanel4: TsPanel
        Left = 91
        Top = 9
        Width = 284
        Height = 183
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 1
        object sRollOutPanel1: TsRollOutPanel
          Left = 13
          Top = 12
          Width = 160
          Height = 160
          Caption = 'sRollOutPanel1'
          TabOrder = 0
          ImageIndexCollapsed = 0
          ImageIndexExpanded = 2
          Collapsed = True
          DirectionArrow = True
          AutoHide = True
          AutoShow = True
          Placement = asLeft
          Images = MainForm.CharImageList16
          object sLabel1: TsLabel
            Left = 16
            Top = 16
            Width = 36
            Height = 13
            Caption = 'sLabel1'
          end
          object sButton1: TsButton
            Left = 16
            Top = 74
            Width = 73
            Height = 25
            Caption = 'sButton1'
            TabOrder = 0
          end
          object sEdit1: TsEdit
            Left = 16
            Top = 38
            Width = 73
            Height = 21
            TabOrder = 1
            Text = 'sEdit1'
          end
        end
      end
    end
    object sGroupBox1: TsGroupBox
      Left = 0
      Top = 0
      Width = 257
      Height = 350
      Align = alLeft
      Caption = 'Panel sample'
      TabOrder = 1
      CaptionLayout = clTopCenter
      object sPanel8: TsPanel
        Left = 18
        Top = 26
        Width = 221
        Height = 147
        Caption = 'TsPanel'
        TabOrder = 0
      end
      object sComboBox1: TsComboBox
        Tag = 5
        Left = 150
        Top = 275
        Width = 89
        Height = 21
        TabOrder = 1
        OnChange = sComboBox1Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'SkinSection property:'
        DropDownCount = 10
        Items.Strings = (
          ''
          'BUTTON_BIG'
          'TRANSPARENT'
          'PANEL_LOW'
          'PANEL'
          'BUTTON'
          'SPEEDBUTTON'
          'GROUPBOX'
          'DIALOG'
          'FORMTITLE'
          'DRAGBAR'
          'EDIT'
          'PROGRESSH'
          'GRIPH'
          'EXTRALINE'
          'HINT'
          'BUTTON_HUGE')
        ItemIndex = -1
        Style = csDropDownList
      end
      object sRadioGroup1: TsRadioGroup
        Left = 18
        Top = 192
        Width = 221
        Height = 69
        Caption = 'Bevel'
        TabOrder = 2
        OnClick = sRadioGroup1Click
        Columns = 2
        ItemIndex = 2
        ContentVOffset = 4
        Items.Strings = (
          'bvNone'
          'bvLowered'
          'bvRaised'
          'bvSpace')
      end
      object sComboBox2: TsComboBox
        Tag = 5
        Left = 150
        Top = 314
        Width = 89
        Height = 21
        TabOrder = 3
        OnChange = sComboBox2Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'GroupBox.CaptionSkin:'
        DropDownCount = 10
        Items.Strings = (
          'BUTTON_BIG'
          'TRANSPARENT'
          'PANEL_LOW'
          'PANEL'
          'BUTTON'
          'SPEEDBUTTON'
          'GROUPBOX'
          'DIALOG'
          'FORMTITLE'
          'DRAGBAR'
          'EDIT'
          'PROGRESSH'
          'GRIPH'
          'EXTRALINE'
          'HINT')
        ItemIndex = -1
        Style = csDropDownList
      end
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 8
    Top = 6
  end
end
