inherited Frame_ListView: TFrame_ListView
  Anchors = [akLeft, akTop, akBottom]
  DesignSize = (
    704
    400)
  object sListView1: TsListView [0]
    Left = 22
    Top = 122
    Width = 661
    Height = 258
    SkinData.SkinSection = 'EDIT'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = 'Column 1'
        ImageIndex = 0
        Width = 200
      end
      item
        Caption = 'Column 2'
        ImageIndex = 1
        Width = 100
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'Column 3'
        ImageIndex = 6
      end>
    DragMode = dmAutomatic
    FullDrag = True
    HideSelection = False
    LargeImages = MainForm.ImageList32
    MultiSelect = True
    RowSelect = True
    ShowWorkAreas = True
    SmallImages = MainForm.ImageList16
    TabOrder = 0
    ViewStyle = vsReport
    OnCustomDrawItem = sListView1CustomDrawItem
    OnCustomDrawSubItem = sListView1CustomDrawSubItem
  end
  object sGroupBox10: TsGroupBox [1]
    Left = 22
    Top = 21
    Width = 204
    Height = 84
    Caption = 'ViewStyle'
    TabOrder = 1
    SkinData.SkinSection = 'GROUPBOX'
    Images = MainForm.ImageList16
    ImageIndex = 0
    object sRadioButton21: TsRadioButton
      Tag = 5
      Left = 19
      Top = 24
      Width = 52
      Height = 20
      Caption = 'vsIcon'
      TabOrder = 0
      OnClick = sRadioButton21Change
    end
    object sRadioButton22: TsRadioButton
      Tag = 5
      Left = 108
      Top = 24
      Width = 47
      Height = 20
      HelpContext = 1
      Caption = 'vsList'
      TabOrder = 1
      OnClick = sRadioButton22Change
    end
    object sRadioButton23: TsRadioButton
      Tag = 5
      Left = 19
      Top = 48
      Width = 64
      Height = 20
      HelpContext = 2
      Caption = 'vsReport'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton23Change
    end
    object sRadioButton24: TsRadioButton
      Tag = 5
      Left = 108
      Top = 48
      Width = 76
      Height = 20
      HelpContext = 3
      Caption = 'vsSmallIcon'
      TabOrder = 3
      OnClick = sRadioButton24Change
    end
  end
  object sButton1: TsButton [2]
    Left = 512
    Top = 48
    Width = 125
    Height = 37
    Caption = 'Add 1000 items'
    TabOrder = 2
    OnClick = sButton1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sCheckBox1: TsCheckBox [3]
    Left = 252
    Top = 30
    Width = 80
    Height = 20
    Caption = 'Show glyphs'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox1Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox2: TsCheckBox [4]
    Left = 252
    Top = 56
    Width = 78
    Height = 20
    Caption = 'Checkboxes'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox2Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox3: TsCheckBox [5]
    Left = 360
    Top = 30
    Width = 63
    Height = 20
    Caption = 'Grid lines'
    TabOrder = 5
    OnClick = sCheckBox3Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox4: TsCheckBox [6]
    Left = 252
    Top = 82
    Width = 72
    Height = 20
    Caption = 'Row select'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = sCheckBox4Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox5: TsCheckBox [7]
    Left = 360
    Top = 56
    Width = 63
    Height = 20
    Caption = 'HotTrack'
    TabOrder = 7
    OnClick = sCheckBox5Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 88
    Top = 16
  end
end
