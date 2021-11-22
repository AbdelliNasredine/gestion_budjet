inherited Frame_ScrollBars: TFrame_ScrollBars
  Width = 606
  Height = 412
  object sTreeView1: TsTreeView [0]
    Tag = 5
    Left = 30
    Top = 20
    Width = 264
    Height = 140
    HideSelection = False
    Indent = 19
    TabOrder = 0
    BoundLabel.Layout = sclTopLeft
    SkinData.OuterEffects.Visibility = ovAlways
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 30
    Top = 176
    Width = 264
    Height = 213
    Caption = 'Scrolls in all application'
    TabOrder = 1
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    CaptionYOffset = -4
    BoxStyle = bsCard
    object sGroupBox2: TsGroupBox
      Left = 16
      Top = 29
      Width = 233
      Height = 69
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox2CheckBoxChanged
      object sCheckBox3: TsCheckBox
        Left = 21
        Top = 30
        Width = 96
        Height = 20
        Caption = 'Default size'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox3Click
      end
      object sTrackBar2: TsTrackBar
        Left = 104
        Top = 28
        Width = 113
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 18
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar2Change
        ShowProgress = True
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 16
      Top = 108
      Width = 233
      Height = 89
      Caption = 'Default scroll width'
      TabOrder = 1
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox3CheckBoxChanged
      object sTrackBar1: TsTrackBar
        Left = 24
        Top = 35
        Width = 185
        Height = 27
        Max = 36
        Min = 12
        Position = 24
        TabOrder = 0
        TickStyle = tsNone
        OnChange = sTrackBar1Change
        ShowProgress = True
      end
    end
  end
  object sTreeView2: TsTreeView [2]
    Tag = 5
    Left = 318
    Top = 20
    Width = 264
    Height = 140
    HideSelection = False
    Indent = 19
    TabOrder = 2
    BoundLabel.Layout = sclTopLeft
    SkinData.OuterEffects.Visibility = ovAlways
    SkinData.VertScrollData.ScrollWidth = 24
    SkinData.VertScrollData.ButtonsSize = 0
    SkinData.HorzScrollData.ScrollWidth = 12
    SkinData.HorzScrollData.ButtonsSize = 0
  end
  object sGroupBox4: TsGroupBox [3]
    Left = 318
    Top = 176
    Width = 264
    Height = 213
    Caption = 'Scrolls in custom control'
    TabOrder = 3
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    CaptionYOffset = -4
    BoxStyle = bsCard
    object sGroupBox5: TsGroupBox
      Left = 16
      Top = 29
      Width = 233
      Height = 69
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox5CheckBoxChanged
      object sCheckBox5: TsCheckBox
        Left = 21
        Top = 30
        Width = 96
        Height = 20
        Caption = 'Default size'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox5Click
      end
      object sTrackBar3: TsTrackBar
        Left = 104
        Top = 28
        Width = 113
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 16
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar3Change
        ShowProgress = True
      end
    end
    object sGroupBox6: TsGroupBox
      Left = 16
      Top = 108
      Width = 233
      Height = 89
      Caption = 'Default scroll width'
      TabOrder = 1
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sStickyLabel3: TsStickyLabel
        Left = 19
        Top = 26
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vertical:'
        AttachTo = sTrackBar4
      end
      object sStickyLabel4: TsStickyLabel
        Left = 5
        Top = 56
        Width = 62
        Height = 16
        Alignment = taRightJustify
        Caption = 'Horizontal:'
        AttachTo = sTrackBar5
      end
      object sTrackBar4: TsTrackBar
        Left = 69
        Top = 21
        Width = 148
        Height = 27
        Max = 36
        Min = 12
        Position = 24
        TabOrder = 0
        TickStyle = tsNone
        OnChange = sTrackBar4Change
        ShowProgress = True
      end
      object sTrackBar5: TsTrackBar
        Left = 69
        Top = 51
        Width = 148
        Height = 27
        Max = 36
        Min = 12
        Position = 12
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar5Change
        ShowProgress = True
      end
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 8
    Top = 8
  end
end
