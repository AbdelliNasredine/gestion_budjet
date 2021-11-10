inherited Frame_ShellControls: TFrame_ShellControls
  DesignSize = (
    704
    400)
  object sShellListView1: TsShellListView [0]
    Tag = 5
    Left = 200
    Top = 8
    Width = 496
    Height = 361
    SkinData.SkinSection = 'EDIT'
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = False
    Sorted = True
    HideSelection = False
    TabOrder = 2
    ObjectTypes = [otFolders, otNonFolders]
    Root = 'rfDesktop'
    ShellTreeView = sShellTreeView1
    ShellComboBox = sShellComboBox1
    ShowExt = seSystem
  end
  object sShellTreeView1: TsShellTreeView [1]
    Tag = 5
    Left = 8
    Top = 36
    Width = 189
    Height = 357
    Anchors = [akLeft, akTop, akBottom]
    Indent = 19
    TabOrder = 1
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    SkinData.SkinSection = 'EDIT'
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    ShellComboBox = sShellComboBox1
    ShellListView = sShellListView1
    UseShellImages = True
    AutoRefresh = False
    ShowExt = seSystem
  end
  object sComboBox1: TsComboBox [2]
    Tag = 5
    Left = 551
    Top = 372
    Width = 145
    Height = 21
    Anchors = [akRight, akBottom]
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'View style'
    SkinData.SkinSection = 'COMBOBOX'
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = -1
    TabOrder = 3
    OnChange = sComboBox1Change
    Items.Strings = (
      'vsIcon'
      'vsList'
      'vsReport'
      'vsSmallIcon')
  end
  object sShellComboBox1: TsShellComboBox [3]
    Tag = 5
    Left = 8
    Top = 8
    Width = 189
    Height = 22
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    SkinData.SkinSection = 'ALPHACOMBOBOX'
    DropDownCount = 18
    TabOrder = 0
    Root = 'rfDesktop'
    ShellTreeView = sShellTreeView1
    ShellListView = sShellListView1
  end
end
