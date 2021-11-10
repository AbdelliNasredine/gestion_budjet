inherited Frame_Panels: TFrame_Panels
  Width = 618
  Height = 465
  DesignSize = (
    618
    465)
  object sComboBox2: TsComboBox [0]
    Tag = 5
    Left = 180
    Top = 377
    Width = 89
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'GroupBox.CaptionSkin:'
    DropDownCount = 10
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 15
    ItemIndex = -1
    TabOrder = 2
    OnChange = sComboBox2Change
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
  end
  object sPanel1: TsPanel [1]
    Left = 28
    Top = 16
    Width = 560
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
      SkinData.SkinSection = 'SPLITTER'
    end
    object sContainer2: TsPanel
      Left = 265
      Top = 0
      Width = 295
      Height = 350
      Align = alClient
      BevelOuter = bvLowered
      BorderWidth = 8
      Caption = ' '
      TabOrder = 0
      object sSplitter1: TsSplitter
        Left = 9
        Top = 192
        Width = 277
        Height = 8
        Cursor = crVSplit
        Align = alBottom
        ShowGrip = True
        SkinData.SkinSection = 'SPLITTER'
      end
      object sSplitter2: TsSplitter
        Left = 83
        Top = 9
        Width = 8
        Height = 183
        ShowGrip = True
        SkinData.SkinSection = 'SPLITTER'
      end
      object sPanel2: TsPanel
        Left = 9
        Top = 200
        Width = 277
        Height = 141
        Align = alBottom
        BorderWidth = 5
        Caption = ' '
        TabOrder = 0
        object sPanel6: TsPanel
          Left = 6
          Top = 6
          Width = 265
          Height = 129
          Align = alClient
          BevelOuter = bvLowered
          BorderWidth = 5
          Caption = ' '
          TabOrder = 0
          object sPanel7: TsPanel
            Left = 6
            Top = 6
            Width = 253
            Height = 117
            Align = alClient
            BorderWidth = 5
            TabOrder = 0
            SkinData.SkinSection = 'PANEL'
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
        Width = 195
        Height = 183
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 1
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
      SkinData.SkinSection = 'GROUPBOX'
      object sPanel8: TsPanel
        Left = 20
        Top = 26
        Width = 221
        Height = 135
        Caption = 'TsPanel'
        TabOrder = 0
      end
      object sComboBox1: TsComboBox
        Tag = 5
        Left = 152
        Top = 309
        Width = 89
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'Panel SkinSection property:'
        DropDownCount = 10
        VerticalAlignment = taAlignTop
        Style = csDropDownList
        ItemHeight = 15
        ItemIndex = -1
        TabOrder = 1
        OnChange = sComboBox1Change
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
      end
      object sRadioGroup1: TsRadioGroup
        Left = 20
        Top = 176
        Width = 221
        Height = 113
        Caption = 'Bevel'
        TabOrder = 2
        OnClick = sRadioGroup1Click
        SkinData.SkinSection = 'GROUPBOX'
        ItemIndex = 2
        Items.Strings = (
          'bvNone'
          'bvLowered'
          'bvRaised'
          'bvSpace')
      end
    end
  end
  object sCheckBox1: TsCheckBox [2]
    Left = 304
    Top = 377
    Width = 123
    Height = 20
    Caption = 'Click splitter for sizing'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox1Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Top = 26
  end
end
