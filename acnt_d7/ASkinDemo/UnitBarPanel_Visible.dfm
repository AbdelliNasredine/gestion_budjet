object BarPanel_Visible: TBarPanel_Visible
  Tag = 5
  Left = 0
  Top = 0
  Width = 202
  Height = 288
  AutoScroll = False
  TabOrder = 0
  object sTreeView1: TsTreeViewEx
    Left = 4
    Top = 6
    Width = 191
    Height = 275
    Cursor = crHandPoint
    BorderStyle = bsNone
    HideSelection = False
    HotTrack = True
    Indent = 19
    ParentColor = True
    ReadOnly = True
    TabOrder = 0
    OnChange = sTreeView1Change
    SkinData.SkinSection = 'TRANSPARENT'
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'BARPANEL'
    Left = 107
    Top = 70
  end
end
