inherited Frame_ListView: TFrame_ListView
  Anchors = [akLeft, akTop, akBottom]
  object sListView1: TsListView [0]
    Left = 22
    Top = 122
    Width = 661
    Height = 258
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
    LargeImages = MainForm.CharImageList16
    MultiSelect = True
    RowSelect = True
    ShowWorkAreas = True
    SmallImages = MainForm.CharImageList16
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = sListView1ColumnClick
    OnCustomDrawItem = sListView1CustomDrawItem
  end
  object sGroupBox10: TsGroupBox [1]
    Left = 22
    Top = 21
    Width = 219
    Height = 84
    Caption = 'ViewStyle'
    TabOrder = 1
    Images = MainForm.CharImageList16
    ImageIndex = 6
    object sRadioButton21: TsRadioButton
      Tag = 5
      Left = 19
      Top = 26
      Width = 76
      Height = 17
      Caption = 'vsIcon'
      TabOrder = 0
      OnClick = sRadioButton21Change
      AutoSize = False
    end
    object sRadioButton22: TsRadioButton
      Tag = 5
      Left = 108
      Top = 26
      Width = 90
      Height = 17
      HelpContext = 1
      Caption = 'vsList'
      TabOrder = 1
      OnClick = sRadioButton22Change
      AutoSize = False
    end
    object sRadioButton23: TsRadioButton
      Tag = 5
      Left = 19
      Top = 52
      Width = 76
      Height = 17
      HelpContext = 2
      Caption = 'vsReport'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton23Change
      AutoSize = False
    end
    object sRadioButton24: TsRadioButton
      Tag = 5
      Left = 108
      Top = 52
      Width = 90
      Height = 17
      HelpContext = 3
      Caption = 'vsSmallIcon'
      TabOrder = 3
      OnClick = sRadioButton24Change
      AutoSize = False
    end
  end
  object sButton1: TsButton [2]
    Left = 496
    Top = 63
    Width = 125
    Height = 37
    Caption = 'Add 1000 items'
    TabOrder = 2
    OnClick = sButton1Click
  end
  object sCheckBox1: TsCheckBox [3]
    Left = 268
    Top = 29
    Width = 92
    Height = 17
    Caption = 'Show glyphs'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox1Click
  end
  object sCheckBox2: TsCheckBox [4]
    Left = 268
    Top = 56
    Width = 92
    Height = 17
    Caption = 'Checkboxes'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox2Click
  end
  object sCheckBox3: TsCheckBox [5]
    Left = 376
    Top = 29
    Width = 100
    Height = 17
    Caption = 'Grid lines'
    AutoSize = False
    TabOrder = 5
    OnClick = sCheckBox3Click
  end
  object sCheckBox4: TsCheckBox [6]
    Left = 268
    Top = 82
    Width = 92
    Height = 17
    Caption = 'Row select'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = sCheckBox4Click
  end
  object sCheckBox5: TsCheckBox [7]
    Left = 376
    Top = 56
    Width = 100
    Height = 17
    Caption = 'HotTrack'
    AutoSize = False
    TabOrder = 7
    OnClick = sCheckBox5Click
  end
  object sCheckBox6: TsCheckBox [8]
    Left = 376
    Top = 82
    Width = 100
    Height = 17
    Caption = 'Colored rows'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = sCheckBox6Click
  end
  object sCheckBox7: TsCheckBox [9]
    Left = 496
    Top = 29
    Width = 100
    Height = 17
    Caption = 'Sort arrows'
    AutoSize = False
    TabOrder = 9
    OnClick = sCheckBox7Click
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 4
    Top = 8
  end
end
