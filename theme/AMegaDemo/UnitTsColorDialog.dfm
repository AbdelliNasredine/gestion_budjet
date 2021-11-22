inherited FrameTsColorDialog: TFrameTsColorDialog
  object sLabel1: TsLabel [0]
    Left = 52
    Top = 20
    Width = 200
    Height = 32
    AutoSize = False
    Caption = 'Main colors:'
    Layout = tlBottom
  end
  object sLabel2: TsLabel [1]
    Left = 306
    Top = 20
    Width = 200
    Height = 32
    AutoSize = False
    Caption = 'Additional colors:'
    Layout = tlBottom
  end
  object sLabel3: TsLabel [2]
    Left = 560
    Top = 20
    Width = 167
    Height = 32
    AutoSize = False
    Caption = 'Choosen color:'
    Layout = tlBottom
  end
  object sBitBtn1: TsBitBtn [3]
    Left = 306
    Top = 195
    Width = 220
    Height = 70
    Caption = 'Call dialog'
    Spacing = 8
    TabOrder = 2
    OnClick = sBitBtn1Click
    ImageIndex = 3
    Images = FormData.sCharImageList1
  end
  object sColorsPanel1: TsColorsPanel [4]
    Left = 50
    Top = 52
    Width = 222
    Height = 168
    AutoSize = True
    Caption = ' '
    TabOrder = 0
    Colors.Strings = (
      'FFFFE2E2'
      'FFFFF1D5'
      'FFF8FFCE'
      'FFE8FFDD'
      'FFD5FFF0'
      'FFD9ECFF'
      'FFE8DDFF'
      'FFFFD0F5'
      'FFFFC6C6'
      'FFFFE1AB'
      'FFF4FF98'
      'FFDBFFB1'
      'FFAEFFDE'
      'FFB4D8FF'
      'FFCFBEFF'
      'FFFFA2EB'
      'FFFFAAAA'
      'FFFFC988'
      'FFF9FF57'
      'FFD0FF84'
      'FF93FFC1'
      'FF88CCFF'
      'FFAEA2FF'
      'FFFF73E1'
      'FFFF8D8D'
      'FFFFBC5F'
      'FFFFFB1D'
      'FFC3FF54'
      'FF72FFA6'
      'FF60BAFF'
      'FF9484FF'
      'FFFF50C7'
      'FFFF6F6F'
      'FFFFAC37'
      'FFF7EB00'
      'FFB5FF2A'
      'FF51FF8E'
      'FF36A8FF'
      'FF7A65FF'
      'FFFF30AF'
      'FFFF5252'
      'FFFF9214'
      'FFD5D100'
      'FFA9FF00'
      'FF3AFF6C'
      'FF0F97FF'
      'FF5A4BFF'
      'FFFF00A9')
    ColCount = 8
    RowCount = 6
    UseAlpha = True
    OnChange = sColorsPanel1Change
  end
  object sColorsPanel2: TsColorsPanel [5]
    Left = 304
    Top = 52
    Width = 222
    Height = 114
    AutoSize = True
    Caption = ' '
    TabOrder = 1
    Colors.Strings = (
      'FFFFFFFF'
      'DDFFFFFF'
      'BBFFFFFF'
      '99FFFFFF'
      '77FFFFFF'
      '55FFFFFF'
      'FFFFFF00'
      'DDFFFF00'
      'BBFFFF00'
      '99FFFF00'
      '77FFFF00'
      '55FFFF00'
      'FF0000FF'
      'DD0000FF'
      'BB0000FF'
      '990000FF'
      '770000FF'
      '550000FF')
    ColCount = 6
    ItemHeight = 30
    ItemWidth = 30
    RowCount = 3
    UseAlpha = True
    OnChange = sColorsPanel2Change
  end
  object sPanel1: TsPanel [6]
    Left = 560
    Top = 52
    Width = 168
    Height = 168
    SkinData.CustomColor = True
    OnPaint = sPanel1Paint
    BevelOuter = bvNone
    Color = 2030043391
    ParentBackground = False
    TabOrder = 7
  end
  object sCheckBox1: TsCheckBox [7]
    Left = 306
    Top = 312
    Width = 83
    Height = 17
    Caption = '`UseAlpha`'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox1Click
  end
  object sGroupBox1: TsGroupBox [8]
    Left = 91
    Top = 244
    Width = 181
    Height = 157
    Caption = '`Options`'
    TabOrder = 3
    object sCheckBox2: TsCheckBox
      Left = 24
      Top = 28
      Width = 142
      Height = 18
      Caption = '`cdFullOpen`'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox2Click
    end
    object sCheckBox3: TsCheckBox
      Left = 24
      Top = 52
      Width = 142
      Height = 18
      Caption = '`cdPreventFullOpen`'
      AutoSize = False
      TabOrder = 1
      OnClick = sCheckBox3Click
    end
    object sCheckBox4: TsCheckBox
      Left = 24
      Top = 76
      Width = 142
      Height = 18
      Caption = '`cdShowHelp`'
      AutoSize = False
      TabOrder = 2
      OnClick = sCheckBox4Click
    end
    object sCheckBox5: TsCheckBox
      Left = 24
      Top = 100
      Width = 142
      Height = 18
      Caption = '`cdSolidColor`'
      AutoSize = False
      TabOrder = 3
      OnClick = sCheckBox5Click
    end
    object sCheckBox6: TsCheckBox
      Left = 24
      Top = 124
      Width = 142
      Height = 18
      Caption = '`cdAnyColor`'
      AutoSize = False
      TabOrder = 4
      OnClick = sCheckBox6Click
    end
  end
  object sCheckBox7: TsCheckBox [9]
    Left = 306
    Top = 336
    Width = 97
    Height = 17
    Caption = '`StandardDlg`'
    Enabled = False
    TabOrder = 6
    OnClick = sCheckBox7Click
  end
  object sCheckBox8: TsCheckBox [10]
    Left = 306
    Top = 287
    Width = 85
    Height = 17
    Caption = 'Use preview'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object sColorDialog1: TsColorDialog
    Color = -16776961
    UseAlpha = True
    OnColorPreview = sColorDialog1ColorPreview
    Left = 476
    Top = 168
  end
end
