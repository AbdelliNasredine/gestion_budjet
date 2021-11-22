inherited FrameTsFrameAdapter: TFrameTsFrameAdapter
  object sComboBox1: TsComboBox [0]
    Left = 528
    Top = 58
    Width = 167
    Height = 21
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    VerticalAlignment = taVerticalCenter
    TextHint = 'Change skin section'
    ShowFocus = False
    LabelFromTextHint = True
    Style = csDropDownList
    Enabled = False
    ItemIndex = -1
    TabOrder = 2
    OnChange = sComboBox1Change
    Items.Strings = (
      'PROGRESSH'
      'EDIT'
      'PANEL'
      'PANEL_LOW'
      'GROUPBOX'
      'TRANSPARENT')
  end
  object sBitBtn2: TsBitBtn [1]
    Tag = 5
    Left = 211
    Top = 50
    Width = 153
    Height = 37
    Caption = 'Remove all frames'
    Enabled = False
    TabOrder = 1
    OnClick = sBitBtn2Click
    ImageIndex = 14
    Images = FormData.CharList16
  end
  object sBitBtn1: TsBitBtn [2]
    Tag = 5
    Left = 50
    Top = 50
    Width = 155
    Height = 37
    Caption = 'Create 100 frames'
    TabOrder = 0
    OnClick = sBitBtn1Click
    ImageIndex = 15
    Images = FormData.CharList16
  end
end
