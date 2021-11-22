object FrameTest: TFrameTest
  Left = 0
  Top = 0
  Width = 203
  Height = 58
  TabOrder = 0
  object sComboBox1: TsComboBox
    Left = 82
    Top = 17
    Width = 105
    Height = 21
    TabOrder = 0
    OnChange = sComboBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection:'
    Items.Strings = (
      'PANEL'
      'GROUPBOX'
      'PANEL_LOW'
      'TRANSPARENT'
      'BUTTON'
      'PROGRESSH')
    ItemIndex = -1
    Style = csDropDownList
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'GROUPBOX'
    Left = 8
    Top = 7
  end
end
