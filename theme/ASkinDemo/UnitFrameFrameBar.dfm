inherited Frame_FrameBar: TFrame_FrameBar
  Width = 566
  Height = 426
  object sSplitter1: TsSplitter [0]
    Left = 181
    Top = 0
    Width = 8
    Height = 426
    SizingByClick = True
    ShowGrip = True
  end
  object sFrameBar1: TsFrameBar [1]
    Tag = 5
    Left = 0
    Top = 0
    Width = 173
    Height = 426
    HorzScrollBar.Range = 185
    HorzScrollBar.Tracking = True
    HorzScrollBar.Visible = False
    VertScrollBar.Increment = 22
    VertScrollBar.Range = 288
    VertScrollBar.Tracking = True
    AutoMouseWheel = True
    AutoScroll = False
    TabOrder = 0
    SkinData.SkinSection = 'BAR'
    SkinData.VertScrollData.ScrollWidth = 12
    SkinData.VertScrollData.ButtonsSize = 0
    BorderWidth = 0
    ActiveFrameIndex = -1
    TitleHeight = 22
    Spacing = 0
    AllowAllClose = True
    AllowAllOpen = True
    Images = MainForm.CharImageList16
    Items = <
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 0
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 1'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 1
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 2'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 2
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 3'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 3
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 4'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 0
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 5'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 1
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 6'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 2
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 7'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 3
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 8'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 0
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 9'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 1
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 10'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 2
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 11'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 3
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 12'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end
      item
        DisplayName = 'TsTitleItem'
        Margin = 10
        ImageIndex = 0
        ShowArrow = True
        Alignment = taLeftJustify
        TextAlignment = taLeftJustify
        Caption = 'Title button 13'
        SkinSection = 'BARTITLE'
        OnCreateFrame = sFrameBar1Items0CreateFrame
      end>
  end
  object sPanel1: TsPanel [2]
    Left = 189
    Top = 0
    Width = 377
    Height = 426
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object sLabel1: TsLabel
      Tag = 5
      Left = 58
      Top = 188
      Width = 61
      Height = 13
      Caption = 'Border width'
    end
    object sLabel2: TsLabel
      Tag = 5
      Left = 64
      Top = 221
      Width = 53
      Height = 13
      Caption = 'Title height'
    end
    object sTrackBar1: TsTrackBar
      Tag = 5
      Left = 123
      Top = 182
      Width = 132
      Height = 26
      TabOrder = 0
      OnChange = sTrackBar1Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
    end
    object sTrackBar2: TsTrackBar
      Tag = 5
      Left = 123
      Top = 216
      Width = 132
      Height = 26
      Max = 64
      Min = 18
      Position = 22
      TabOrder = 1
      OnChange = sTrackBar2Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
    end
    object sGroupBox1: TsGroupBox
      Left = 53
      Top = 253
      Width = 210
      Height = 117
      Caption = 'SkinSections'
      TabOrder = 2
      object sComboBox1: TsComboBox
        Tag = 5
        Left = 88
        Top = 20
        Width = 110
        Height = 21
        TabOrder = 0
        OnChange = sComboBox1Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'General'
        DropDownCount = 8
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
        ItemIndex = -1
      end
      object sComboBox2: TsComboBox
        Tag = 5
        Left = 88
        Top = 52
        Width = 110
        Height = 21
        TabOrder = 1
        OnChange = sComboBox2Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'Title buttons'
        DropDownCount = 8
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
        ItemIndex = -1
      end
      object sComboBox3: TsComboBox
        Tag = 5
        Left = 88
        Top = 84
        Width = 110
        Height = 21
        TabOrder = 2
        OnChange = sComboBox3Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'Frame'
        DropDownCount = 8
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
        ItemIndex = -1
      end
    end
    object sCheckBox1: TsCheckBox
      Left = 49
      Top = 65
      Width = 130
      Height = 17
      Caption = 'AllowAllClose'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox1Click
    end
    object sCheckBox2: TsCheckBox
      Left = 49
      Top = 88
      Width = 130
      Height = 17
      Caption = 'AllowAllOpen'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox2Click
    end
    object sBitBtn1: TsBitBtn
      Left = 53
      Top = 385
      Width = 210
      Height = 25
      Caption = 'Add new item'
      TabOrder = 5
      OnClick = sBitBtn1Click
      ImageIndex = 22
      Images = MainForm.CharImageList16
    end
    object sCheckBox3: TsCheckBox
      Left = 48
      Top = 137
      Width = 130
      Height = 17
      Caption = 'Show scroll arrows'
      AutoSize = False
      TabOrder = 6
      OnClick = sCheckBox3Click
    end
    object sCheckBox4: TsCheckBox
      Left = 49
      Top = 42
      Width = 130
      Height = 17
      Caption = 'Animated'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = sCheckBox4Click
    end
    object sCheckBox6: TsCheckBox
      Left = 48
      Top = 112
      Width = 130
      Height = 17
      Caption = 'Show arrows'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 8
      OnClick = sCheckBox6Click
    end
    object sGroupBox2: TsGroupBox
      Left = 200
      Top = 68
      Width = 141
      Height = 89
      Caption = 'Customizing items'
      TabOrder = 9
      object sCheckBox5: TsCheckBox
        Left = 19
        Top = 28
        Width = 100
        Height = 17
        Caption = 'Drag items'
        AutoSize = False
        TabOrder = 0
        OnClick = sCheckBox5Click
      end
      object sCheckBox7: TsCheckBox
        Left = 19
        Top = 56
        Width = 100
        Height = 17
        Caption = 'Close buttons'
        AutoSize = False
        TabOrder = 1
        OnClick = sCheckBox7Click
      end
    end
  end
  object sPanel2: TsPanel [3]
    Left = 0
    Top = 0
    Width = 8
    Height = 426
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 8
    Top = 4
  end
end
