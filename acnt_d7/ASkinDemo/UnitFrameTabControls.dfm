inherited Frame_TabControls: TFrame_TabControls
  object sPageControl1: TsPageControl [0]
    Left = 0
    Top = 0
    Width = 704
    Height = 400
    ActivePage = sTabSheet1
    Align = alClient
    HotTrack = True
    Images = MainForm.ImageList16
    MultiLine = True
    TabHeight = 28
    TabOrder = 0
    OnChange = sPageControl1Change
    ActiveIsBold = True
    ShowCloseBtns = True
    OnCloseBtnClick = sPageControl1CloseBtnClick
    object sTabSheet1: TsTabSheet
      Caption = '1'
      ImageIndex = 1
      SkinData.SkinSection = 'TABSHEET'
      UseCloseBtn = False
      object sPageControl2: TsPageControl
        Tag = 2
        Left = 60
        Top = 28
        Width = 301
        Height = 189
        ActivePage = sTabSheet8
        HotTrack = True
        Images = MainForm.ImageList16
        MultiLine = True
        TabHeight = 100
        TabOrder = 0
        TabPosition = tpLeft
        TabWidth = 27
        AccessibleDisabledPages = False
        ActiveIsBold = True
        RotateCaptions = True
        ShowCloseBtns = True
        ShowFocus = False
        TabAlignment = taLeftJustify
        object sTabSheet8: TsTabSheet
          Caption = 'Blue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 8
          ParentFont = False
          SkinData.CustomFont = True
          DesignSize = (
            193
            181)
          object sPanel1: TsPanel
            Tag = 10
            Left = 52
            Top = 62
            Width = 89
            Height = 57
            Anchors = []
            BevelOuter = bvNone
            Color = clBlue
            TabOrder = 0
            SkinData.CustomColor = True
          end
        end
        object sTabSheet9: TsTabSheet
          Caption = 'Red'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 10
          ParentFont = False
          SkinData.CustomFont = True
          DesignSize = (
            193
            181)
          object sPanel2: TsPanel
            Left = 52
            Top = 62
            Width = 89
            Height = 57
            Anchors = []
            BevelOuter = bvNone
            Color = clRed
            TabOrder = 0
            SkinData.CustomColor = True
          end
        end
        object sTabSheet10: TsTabSheet
          Caption = 'Green'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 9
          ParentFont = False
          SkinData.CustomFont = True
          DesignSize = (
            193
            181)
          object sPanel3: TsPanel
            Left = 52
            Top = 62
            Width = 89
            Height = 57
            Anchors = []
            BevelOuter = bvNone
            Color = clGreen
            TabOrder = 0
            SkinData.CustomColor = True
          end
        end
        object sTabSheet11: TsTabSheet
          Caption = 'Yellow'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clOlive
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 11
          ParentFont = False
          SkinData.CustomFont = True
          DesignSize = (
            193
            181)
          object sPanel4: TsPanel
            Left = 52
            Top = 62
            Width = 89
            Height = 57
            Anchors = []
            BevelOuter = bvNone
            Color = clYellow
            ParentBackground = False
            TabOrder = 0
            SkinData.CustomColor = True
          end
        end
      end
      object sCheckBox17: TsCheckBox
        Left = 120
        Top = 300
        Width = 95
        Height = 20
        Caption = 'RotateCaptions'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = sCheckBox17Click
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sCheckBox4: TsCheckBox
        Left = 280
        Top = 276
        Width = 108
        Height = 20
        Caption = 'Use the Font color'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = sCheckBox4Click
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sCheckBox5: TsCheckBox
        Left = 280
        Top = 300
        Width = 114
        Height = 20
        Caption = 'Active tab enlarged'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = sCheckBox5Click
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sCheckBox6: TsCheckBox
        Left = 436
        Top = 276
        Width = 83
        Height = 20
        Caption = 'Active is bold'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = sCheckBox6Click
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sRadioGroup1: TsRadioGroup
        Left = 542
        Top = 24
        Width = 123
        Height = 112
        Caption = 'Tab alignment'
        Enabled = False
        TabOrder = 5
        OnClick = sRadioGroup1Click
        SkinData.SkinSection = 'GROUPBOX'
        ItemIndex = 0
        Items.Strings = (
          'taLeftJustify'
          'taRightJustify'
          'taCenter')
      end
      object sCheckBox15: TsCheckBox
        Left = 120
        Top = 276
        Width = 115
        Height = 20
        Caption = 'Show Close buttons'
        Checked = True
        State = cbChecked
        TabOrder = 6
        OnClick = sCheckBox15Click
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sCheckBox8: TsCheckBox
        Tag = 5
        Left = 436
        Top = 300
        Width = 58
        Height = 20
        Caption = 'Multiline'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 7
        OnClick = sCheckBox8Change
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sRadioGroup2: TsRadioGroup
        Tag = 5
        Left = 398
        Top = 24
        Width = 115
        Height = 112
        Caption = 'Tabs position'
        TabOrder = 8
        OnClick = sRadioGroup2Click
        SkinData.SkinSection = 'GROUPBOX'
        ItemIndex = 2
        Items.Strings = (
          'tpTop'
          'tpBottom'
          'tpLeft'
          'tpRight')
      end
      object sRadioGroup3: TsRadioGroup
        Left = 398
        Top = 150
        Width = 115
        Height = 95
        Caption = 'Tab style'
        Enabled = False
        TabOrder = 9
        OnClick = sRadioGroup3Click
        SkinData.SkinSection = 'GROUPBOX'
        ItemIndex = 0
        Items.Strings = (
          'tsTabs'
          'tsButtons'
          'tsFlatButtons')
      end
      object sGroupBox1: TsGroupBox
        Left = 540
        Top = 150
        Width = 125
        Height = 95
        Caption = 'Disable last 2 tabs'
        TabOrder = 10
        SkinData.SkinSection = 'GROUPBOX'
        CheckBoxVisible = True
        OnCheckBoxChanged = sGroupBox1CheckBoxChanged
        object sCheckBox3: TsCheckBox
          Left = 16
          Top = 28
          Width = 95
          Height = 45
          Caption = 'Accessible disabled pages'
          AutoSize = False
          TabOrder = 0
          OnClick = sCheckBox3Click
          ImgChecked = 0
          ImgUnchecked = 0
          WordWrap = True
        end
      end
    end
    object sTabSheet3: TsTabSheet
      Caption = '2'
    end
    object sTabSheet4: TsTabSheet
      Caption = '3'
      ImageIndex = 3
    end
    object sTabSheet2: TsTabSheet
      Caption = '+'
      ImageIndex = -1
      TabType = ttButton
      TabSkin = 'SPEEDBUTTON'
      SkinData.SkinSection = 'TABSHEET'
      UseCloseBtn = False
      OnClickBtn = sTabSheet2ClickBtn
    end
  end
  object sPanel5: TsPanel [1]
    Left = 483
    Top = 1
    Width = 218
    Height = 23
    BevelOuter = bvNone
    TabOrder = 1
    object sComboBox1: TsComboBox
      Left = 77
      Top = 0
      Width = 140
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = 'SkinSection:'
      VerticalAlignment = taAlignTop
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 0
      OnChange = sComboBox1Change
      Items.Strings = (
        'TRANSPARENT'
        'PAGECONTROL'
        'PANEL'
        'PANEL_LOW'
        'GROUPBOX'
        'TOOLBAR'
        'BARPANEL')
    end
  end
end
