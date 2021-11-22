inherited FrameTsSplitter: TFrameTsSplitter
  object sPanel1: TsPanel [0]
    Left = 28
    Top = 32
    Width = 621
    Height = 397
    BevelOuter = bvNone
    TabOrder = 0
    object sSplitter1: TsSplitter
      Left = 185
      Top = 0
      Width = 10
      Height = 397
      SizingByClick = True
      ShowGrip = True
    end
    object sPanel2: TsPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 397
      SkinData.CustomBorder.RadiusTopLeft = 32
      SkinData.CustomBorder.RadiusTopRight = 0
      SkinData.CustomBorder.RadiusBottomLeft = 32
      SkinData.CustomBorder.RadiusBottomRight = 0
      Align = alLeft
      Caption = 'sPanel2'
      TabOrder = 0
    end
    object sPanel3: TsPanel
      Left = 195
      Top = 0
      Width = 426
      Height = 397
      SkinData.CustomBorder.RadiusTopLeft = 0
      SkinData.CustomBorder.RadiusTopRight = 32
      SkinData.CustomBorder.RadiusBottomLeft = 0
      SkinData.CustomBorder.RadiusBottomRight = 32
      Align = alClient
      Caption = 'sPanel3'
      TabOrder = 1
    end
  end
  object sCheckBox1: TsCheckBox [1]
    Left = 156
    Top = 460
    Width = 98
    Height = 17
    Caption = '`SizingByClick`'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox1Click
  end
  object sComboBox1: TsComboBox [2]
    Left = 492
    Top = 458
    Width = 157
    Height = 21
    TabOrder = 3
    OnChange = sComboBox1Change
    TextHint = 'Change skin section'
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    Items.Strings = (
      'PROGRESSH'
      'TOOLBUTTON'
      'MENUITEM'
      'TRANSPARENT')
    Style = csDropDownList
  end
  object sCheckBox2: TsCheckBox [3]
    Left = 40
    Top = 460
    Width = 83
    Height = 17
    Caption = '`ShowGrip`'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox2Click
  end
end
