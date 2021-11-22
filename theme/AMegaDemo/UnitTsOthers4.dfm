inherited FrameTsOthers4: TFrameTsOthers4
  Width = 806
  Height = 659
  Align = alClient
  object sGroupBox1: TsGroupBox [0]
    Left = 50
    Top = 20
    Width = 643
    Height = 141
    Caption = 'TsDragBar'
    TabOrder = 0
    object sDragBar1: TsDragBar
      Left = 80
      Top = 38
      Width = 481
      Height = 31
      Cursor = crHandPoint
      SkinData.SkinSection = 'DRAGBAR'
      Align = alNone
      BevelOuter = bvNone
      Caption = 'sDragBar1'
      ParentBackground = False
      TabOrder = 0
      DraggedControl = WinControlForm_6.Owner
    end
    object sComboBox1: TsComboBox
      Left = 416
      Top = 96
      Width = 145
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = 'DraggedControl:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Main form'
      OnChange = sComboBox1Change
      Items.Strings = (
        'Main form'
        'Parent GroupBox'
        'sDragBar1')
    end
  end
  object TsSysButton: TsGroupBox [1]
    Left = 50
    Top = 176
    Width = 643
    Height = 85
    Caption = 'TsSysButton'
    TabOrder = 1
    object sSysButton1: TsSysButton
      Left = 136
      Top = 36
      Width = 36
      Height = 24
      SysCommand = acscMaxNorm
    end
    object sComboBox2: TsComboBox
      Left = 416
      Top = 36
      Width = 145
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = 'SysCommand:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 0
      Text = 'acscMaxNorm'
      OnChange = sComboBox2Change
      Items.Strings = (
        'acscClose'
        'acscMinimize'
        'acscMaxNorm')
    end
  end
  object sGroupBox2: TsGroupBox [2]
    Left = 50
    Top = 276
    Width = 643
    Height = 340
    Caption = 'TsWebBrowser'
    TabOrder = 2
    object sComboEdit1: TsComboEdit
      Left = 16
      Top = 21
      Width = 613
      Height = 25
      AutoSize = False
      TabOrder = 0
      Text = 'http://www.google.com'
      OnKeyPress = sComboEdit1KeyPress
      AddedGlyph.ColorTone = 11755008
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 10
      Padding.Left = 4
      VerticalAlignment = taVerticalCenter
      OnButtonClick = sComboEdit1ButtonClick
      GlyphMode.ColorTone = 39214
      GlyphMode.Images = FormData.CharList16
      GlyphMode.ImageIndex = 11
      CheckOnExit = True
    end
    object sWebBrowser1: TsWebBrowser
      Left = 16
      Top = 58
      Width = 613
      Height = 267
      TabOrder = 1
      ControlData = {
        4C0000005B3F0000981B00000100000001020000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
end
