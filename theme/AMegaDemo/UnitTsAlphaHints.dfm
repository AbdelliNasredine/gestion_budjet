inherited FrameTsAlphaHints: TFrameTsAlphaHints
  ParentShowHint = False
  ShowHint = True
  object sGroupBox1: TsGroupBox [0]
    Left = 50
    Top = 353
    Width = 199
    Height = 140
    Caption = 'Kind of hints'
    TabOrder = 1
    object sRadioButton1: TsRadioButton
      Left = 22
      Top = 27
      Width = 156
      Height = 18
      Caption = 'Skinned hints'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
      AutoSize = False
      SkinData.SkinSection = 'TRANSPARENT'
    end
    object sRadioButton2: TsRadioButton
      Left = 22
      Top = 55
      Width = 156
      Height = 18
      Caption = 'Predefined templates'
      TabOrder = 1
      OnClick = sRadioButton2Click
      AutoSize = False
      SkinData.SkinSection = 'TRANSPARENT'
    end
    object sRadioButton3: TsRadioButton
      Left = 22
      Top = 83
      Width = 156
      Height = 18
      Caption = 'Standard mode'
      TabOrder = 2
      OnClick = sRadioButton3Click
      AutoSize = False
      SkinData.SkinSection = 'TRANSPARENT'
    end
  end
  object sGroupBox2: TsGroupBox [1]
    Left = 50
    Top = 50
    Width = 411
    Height = 283
    Caption = 'Controls with hints'
    TabOrder = 0
    object sBitBtn7: TsBitBtn
      Left = 165
      Top = 130
      Width = 216
      Height = 60
      Hint = 'Charts'
      Caption = 'Custom graphic controls on the hint window with frame'
      TabOrder = 7
    end
    object sBitBtn6: TsBitBtn
      Left = 165
      Top = 201
      Width = 216
      Height = 60
      Hint = 'Charts'
      Caption = 'Painting on hint using the sAlphaHints1.OnPaint event'
      Spacing = 12
      TabOrder = 8
      ImageIndex = 0
      AnimatEvents = [aeMouseLeave]
      Images = sCharImageList1
    end
    object sBitBtn1: TsBitBtn
      Left = 30
      Top = 38
      Width = 115
      Height = 30
      Hint = 'Hint for button '#8470'1'
      Caption = 'BitBtn 1'
      TabOrder = 0
    end
    object sBitBtn2: TsBitBtn
      Left = 148
      Top = 38
      Width = 115
      Height = 30
      Hint = 'Hint for second button'
      Caption = 'BitBtn 2'
      TabOrder = 1
    end
    object sBitBtn3: TsBitBtn
      Left = 266
      Top = 38
      Width = 115
      Height = 30
      Hint = 'Hint for third button'
      Caption = 'BitBtn 3'
      TabOrder = 2
    end
    object sCheckBox1: TsCheckBox
      Left = 30
      Top = 121
      Width = 110
      Height = 18
      Hint = 'If <u>checked</u> then <b>HTML tags</b> are used.'
      Caption = 'HTML mode'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox1Click
    end
    object sCheckBox2: TsCheckBox
      Left = 30
      Top = 95
      Width = 110
      Height = 18
      Hint = 'Showing of hints <b>with animation</b>'
      Caption = 'Animated'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox2Click
    end
    object sCheckBox3: TsCheckBox
      Left = 30
      Top = 147
      Width = 110
      Height = 18
      Hint = '<b>Alignment</b> of hint window over control'
      Caption = 'AutoAlign'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = sCheckBox3Click
    end
    object sBitBtn5: TsBitBtn
      Left = 165
      Top = 89
      Width = 216
      Height = 30
      Caption = 'Show hint with glyph after click'
      TabOrder = 6
      OnClick = sBitBtn5Click
    end
  end
  object sGroupBox3: TsGroupBox [2]
    Left = 492
    Top = 50
    Width = 219
    Height = 443
    Caption = 'Predefined templates'
    TabOrder = 4
    AutoChildrenStates = csAsChecked
    object sSpeedButton1: TsSpeedButton
      Left = 19
      Top = 399
      Width = 182
      Height = 32
      Caption = 'Edit hint template...'
      Enabled = False
      OnClick = sSpeedButton1Click
      Images = FormData.CharList16
      ImageIndex = 0
    end
    object sListBox1: TsListBox
      Left = 19
      Top = 29
      Width = 182
      Height = 364
      Enabled = False
      ItemHeight = 19
      TabOrder = 0
      OnClick = sListBox1Click
      OnMouseEnter = sListBox1MouseEnter
      OnMouseLeave = sListBox1MouseLeave
      OnMouseMove = sListBox1MouseMove
    end
  end
  object sGroupBox4: TsGroupBox [3]
    Left = 282
    Top = 350
    Width = 179
    Height = 143
    Caption = 'Default arrow position'
    TabOrder = 2
    AutoChildrenStates = csAsChecked
    object sRadioButton4: TsRadioButton
      Left = 30
      Top = 27
      Width = 120
      Height = 18
      Caption = 'Left/Top'
      Checked = True
      Enabled = False
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton4Click
      AutoSize = False
      SkinData.SkinSection = 'TRANSPARENT'
    end
    object sRadioButton5: TsRadioButton
      Tag = 1
      Left = 30
      Top = 55
      Width = 120
      Height = 18
      Caption = 'Left/Bottom'
      Enabled = False
      TabOrder = 1
      OnClick = sRadioButton4Click
      AutoSize = False
      SkinData.SkinSection = 'TRANSPARENT'
    end
    object sRadioButton6: TsRadioButton
      Tag = 2
      Left = 30
      Top = 83
      Width = 120
      Height = 18
      Caption = 'Right/Top'
      Enabled = False
      TabOrder = 2
      OnClick = sRadioButton4Click
      AutoSize = False
      SkinData.SkinSection = 'TRANSPARENT'
    end
    object sRadioButton7: TsRadioButton
      Tag = 3
      Left = 30
      Top = 111
      Width = 120
      Height = 18
      Caption = 'Right/Bottom'
      Enabled = False
      TabOrder = 3
      OnClick = sRadioButton4Click
      AutoSize = False
      SkinData.SkinSection = 'TRANSPARENT'
    end
  end
  object sGroupBox5: TsGroupBox [4]
    Left = 50
    Top = 516
    Width = 411
    Height = 69
    Caption = 'HandleDisableCtrls'
    TabOrder = 3
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox5CheckBoxChanged
    object sBitBtn4: TsBitBtn
      Left = 214
      Top = 29
      Width = 167
      Height = 21
      Hint = 'Hint of disabled button'
      Caption = 'Disabled button'
      Enabled = False
      TabOrder = 1
      ImageIndex = 14
      Images = FormData.CharList16
    end
    object sEdit1: TsEdit
      Left = 38
      Top = 29
      Width = 140
      Height = 21
      Hint = 'Hint of disabled edit'
      Enabled = False
      TabOrder = 0
      Text = 'Disabled edit'
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 14
    end
  end
  object Timer1: TTimer
    Interval = 30
    OnTimer = Timer1Timer
    Left = 320
    Top = 8
  end
  object sCharImageList1: TsCharImageList
    Height = 12
    Width = 12
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61446
      end
      item
        Char = 61722
      end
      item
        Char = 61442
      end>
    Left = 292
    Top = 8
    Bitmap = {}
  end
end
