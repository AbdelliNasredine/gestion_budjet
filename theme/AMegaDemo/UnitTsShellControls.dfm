inherited FrameTsShellControls: TFrameTsShellControls
  object sShellTreeView1: TsShellTreeView [0]
    Left = 24
    Top = 52
    Width = 193
    Height = 565
    Indent = 23
    TabOrder = 0
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    ShellComboBox = sShellComboBox1
    ShellListView = sShellListView1
    UseShellImages = True
    AutoRefresh = False
    ShowExt = seSystem
  end
  object sShellComboBox1: TsShellComboBox [1]
    Left = 24
    Top = 8
    Width = 193
    Height = 22
    TabOrder = 1
    Root = 'rfDesktop'
    ShellTreeView = sShellTreeView1
    ShellListView = sShellListView1
  end
  object sShellListView1: TsShellListView [2]
    Left = 236
    Top = 8
    Width = 484
    Height = 465
    ShowExt = seSystem
    ReadOnly = False
    Sorted = True
    HideSelection = False
    TabOrder = 2
    Root = 'rfDesktop'
    ShellTreeView = sShellTreeView1
    ShellComboBox = sShellComboBox1
  end
  object sCheckBox1: TsCheckBox [3]
    Left = 570
    Top = 500
    Width = 150
    Height = 18
    Caption = 'AutoContextMenus'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = sCheckBox1Click
  end
  object sCheckBox2: TsCheckBox [4]
    Left = 570
    Top = 528
    Width = 150
    Height = 18
    Caption = 'AutoRefresh'
    AutoSize = False
    TabOrder = 4
    OnClick = sCheckBox2Click
  end
  object sCheckBox3: TsCheckBox [5]
    Left = 570
    Top = 556
    Width = 150
    Height = 18
    Caption = 'AutoNavigate'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox3Click
  end
  object sRadioGroup1: TsRadioGroup [6]
    Left = 236
    Top = 487
    Width = 136
    Height = 130
    Caption = 'ShowExt'
    TabOrder = 6
    ItemIndex = 0
    ContentVOffset = 6
    Items.Strings = (
      'seSystem'
      'seShow'
      'seHide')
    OnChange = sRadioGroup1Change
  end
  object sRadioGroup2: TsRadioGroup [7]
    Left = 391
    Top = 487
    Width = 153
    Height = 130
    Caption = 'ViewStyle'
    TabOrder = 7
    ItemIndex = 0
    ContentVOffset = 5
    Items.Strings = (
      'vsIcon'
      'vsSmallIcon'
      'vsList'
      'vsReport')
    OnChange = sRadioGroup2Change
  end
end
