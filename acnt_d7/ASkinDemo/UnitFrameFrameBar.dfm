inherited Frame_FrameBar: TFrame_FrameBar
  Width = 566
  Height = 426
  object sSplitter1: TsSplitter [0]
    Left = 197
    Top = 0
    Width = 8
    Height = 426
    SizingByClick = True
    ShowGrip = True
    SkinData.SkinSection = 'SPLITTER'
  end
  object sFrameBar1: TsFrameBar [1]
    Tag = 5
    Left = 0
    Top = 0
    Width = 197
    Height = 426
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Increment = 22
    VertScrollBar.Range = 834
    VertScrollBar.Tracking = True
    AutoMouseWheel = True
    AutoScroll = False
    TabOrder = 0
    SkinData.SkinSection = 'BAR'
    SkinData.VertScrollData.ButtonsSize = 0
    BorderWidth = 0
    ActiveFrameIndex = -1
    TitleHeight = 64
    Spacing = 0
    AutoFrameSize = False
    Items = <
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 0
        Margin = 10
        Caption = 'Title button 1'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 1
        Margin = 10
        Caption = 'Title button 2'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 2
        Margin = 10
        Caption = 'Title button 3'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 3
        Margin = 10
        Caption = 'Title button 4'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 0
        Margin = 10
        Caption = 'Title button 5'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 1
        Margin = 10
        Caption = 'Title button 6'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 2
        Margin = 10
        Caption = 'Title button 7'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 3
        Margin = 10
        Caption = 'Title button 8'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 0
        Margin = 10
        Caption = 'Title button 9'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 1
        Margin = 10
        Caption = 'Title button 10'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 2
        Margin = 10
        Caption = 'Title button 11'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 3
        Margin = 10
        Caption = 'Title button 12'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        ImageIndex = 0
        Margin = 10
        Caption = 'Title button 13'
        Cursor = crDefault
        SkinSection = 'BARTITLE'
        TextAlignment = taLeftJustify
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end>
  end
  object sPanel1: TsPanel [2]
    Left = 205
    Top = 0
    Width = 361
    Height = 426
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object sLabel1: TsLabel
      Tag = 5
      Left = 43
      Top = 120
      Width = 61
      Height = 13
      Caption = 'Border width'
    end
    object sLabel2: TsLabel
      Tag = 5
      Left = 49
      Top = 153
      Width = 53
      Height = 13
      Caption = 'Title height'
    end
    object sSpeedButton1: TsSpeedButton
      Tag = 5
      Left = 46
      Top = 32
      Width = 186
      Height = 22
      AllowAllUp = True
      GroupIndex = 1
      Down = True
      Caption = 'Items animation enabled'
      OnClick = sSpeedButton1Click
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sTrackBar1: TsTrackBar
      Tag = 5
      Left = 108
      Top = 114
      Width = 132
      Height = 26
      TabOrder = 0
      OnChange = sTrackBar1Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
    end
    object sTrackBar2: TsTrackBar
      Tag = 5
      Left = 108
      Top = 148
      Width = 132
      Height = 26
      Max = 64
      Min = 18
      Position = 64
      TabOrder = 1
      OnChange = sTrackBar2Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
    end
    object sGroupBox1: TsGroupBox
      Left = 38
      Top = 189
      Width = 210
      Height = 117
      Caption = 'SkinSections'
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      object sComboBox1: TsComboBox
        Tag = 5
        Left = 88
        Top = 20
        Width = 110
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'General'
        DropDownCount = 8
        VerticalAlignment = taAlignTop
        ItemHeight = 15
        ItemIndex = -1
        TabOrder = 0
        OnChange = sComboBox1Change
        Items.Strings = (
          'BUTTON_BIG'
          'TRANSPARENT'
          'PANEL_LOW'
          'PANEL'
          'BUTTON'
          'SPEEDBUTTON'
          'GROUPBOX'
          'DIALOG'
          'BAR'
          'FORM')
      end
      object sComboBox2: TsComboBox
        Tag = 5
        Left = 88
        Top = 52
        Width = 110
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'Title buttons'
        DropDownCount = 8
        VerticalAlignment = taAlignTop
        ItemHeight = 15
        ItemIndex = -1
        TabOrder = 1
        OnChange = sComboBox2Change
        Items.Strings = (
          'BUTTON_BIG'
          'MENUITEM'
          'PANEL_LOW'
          'PANEL'
          'BUTTON'
          'SPEEDBUTTON'
          'TOOLBUTTON'
          'BARTITLE'
          'FORM')
      end
      object sComboBox3: TsComboBox
        Tag = 5
        Left = 88
        Top = 84
        Width = 110
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'Frame'
        DropDownCount = 8
        VerticalAlignment = taAlignTop
        ItemHeight = 15
        ItemIndex = -1
        TabOrder = 2
        OnChange = sComboBox3Change
        Items.Strings = (
          'BUTTON_BIG'
          'TRANSPARENT'
          'PANEL_LOW'
          'PANEL'
          'BUTTON'
          'SPEEDBUTTON'
          'TOOLBUTTON'
          'GROUPBOX'
          'DIALOG'
          'BARPANEL'
          'FORM')
      end
    end
    object sCheckBox1: TsCheckBox
      Left = 47
      Top = 77
      Width = 82
      Height = 20
      Caption = 'AllowAllClose'
      TabOrder = 3
      OnClick = sCheckBox1Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox2: TsCheckBox
      Left = 151
      Top = 77
      Width = 82
      Height = 20
      Caption = 'AllowAllOpen'
      TabOrder = 4
      OnClick = sCheckBox2Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sButton1: TsButton
      Left = 38
      Top = 357
      Width = 210
      Height = 25
      Caption = 'Add new item'
      TabOrder = 5
      OnClick = sButton1Click
    end
    object sCheckBox3: TsCheckBox
      Left = 48
      Top = 322
      Width = 109
      Height = 20
      Caption = 'Show scroll arrows'
      TabOrder = 6
      OnClick = sCheckBox3Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
end
