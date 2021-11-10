object FrameTest: TFrameTest
  Left = 0
  Top = 0
  Width = 203
  Height = 58
  AutoScroll = False
  TabOrder = 0
  object sComboBox1: TsComboBox
    Left = 82
    Top = 17
    Width = 105
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection:'
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 15
    ItemIndex = -1
    TabOrder = 0
    OnChange = sComboBox1Change
    Items.Strings = (
      'PANEL'
      'GROUPBOX'
      'PANEL_LOW'
      'CHECKBOX'
      'BUTTON'
      'PROGRESSH')
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'GROUPBOX'
    Left = 4
    Top = 3
  end
end
