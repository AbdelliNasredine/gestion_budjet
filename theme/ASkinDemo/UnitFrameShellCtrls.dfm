inherited Frame_ShellControls: TFrame_ShellControls
  object sComboBox1: TsComboBox [0]
    Tag = 5
    Left = 551
    Top = 372
    Width = 145
    Height = 21
    Anchors = [akRight, akBottom]
    TabOrder = 3
    OnChange = sComboBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'View style'
    SkinData.SkinSection = 'COMBOBOX'
    Items.Strings = (
      'vsIcon'
      'vsList'
      'vsReport'
      'vsSmallIcon')
    ItemIndex = -1
    Style = csDropDownList
  end
  object sShellListView1: TsShellListView [1]
    Tag = 5
    Left = 203
    Top = 5
    Width = 496
    Height = 361
    ShowExt = seSystem
    ReadOnly = False
    Sorted = True
    HideSelection = False
    MultiSelect = True
    TabOrder = 2
    Root = 'rfDesktop'
    ShellTreeView = sShellTreeView1
    ShellComboBox = sShellComboBox1
  end
  object sShellTreeView1: TsShellTreeView [2]
    Tag = 5
    Left = 8
    Top = 36
    Width = 189
    Height = 357
    Anchors = [akLeft, akTop, akBottom]
    Indent = 19
    TabOrder = 1
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    ShellComboBox = sShellComboBox1
    ShellListView = sShellListView1
    UseShellImages = True
    AutoRefresh = False
    ShowExt = seSystem
  end
  object sShellComboBox1: TsShellComboBox [3]
    Tag = 5
    Left = 8
    Top = 8
    Width = 189
    Height = 21
    TabOrder = 0
    SkinData.SkinSection = 'ALPHACOMBOBOX'
    DropDownCount = 18
    Root = 'rfDesktop'
    ShellTreeView = sShellTreeView1
    ShellListView = sShellListView1
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 4
  end
end
