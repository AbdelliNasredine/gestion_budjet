inherited Frame_CheckBoxes: TFrame_CheckBoxes
  Height = 419
  object sLabel1: TsLabel [0]
    Left = 72
    Top = 342
    Width = 98
    Height = 13
    Caption = 'Content vert offset:'
  end
  object sRadioGroup1: TsRadioGroup [1]
    Tag = 5
    Left = 55
    Top = 238
    Width = 378
    Height = 97
    Caption = 'Radio Group'
    TabOrder = 2
    Images = MainForm.CharImageList16
    ImageIndex = 16
    CheckBoxVisible = True
    Checked = True
    Columns = 4
    ItemIndex = 1
    ContentVOffset = 8
    Items.Strings = (
      'Item0'
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6'
      'Item7')
  end
  object sCheckBox4: TsCheckBox [2]
    Left = 240
    Top = 362
    Width = 183
    Height = 17
    Caption = 'Disable items if not checked'
    TabOrder = 6
    OnClick = sCheckBox4Click
  end
  object sComboBox1: TsComboBox [3]
    Tag = 5
    Left = 123
    Top = 199
    Width = 105
    Height = 21
    TabOrder = 3
    OnChange = sComboBox1Change
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection:'
    Items.Strings = (
      'TRANSPARENT'
      'PANEL_LOW'
      'PANEL'
      'BUTTON'
      'SPEEDBUTTON'
      'GROUPBOX'
      'TOOLBUTTON'
      'MENUITEM')
    ItemIndex = -1
    Style = csDropDownList
  end
  object sGroupBox2: TsGroupBox [4]
    Left = 55
    Top = 32
    Width = 173
    Height = 157
    Caption = 'Show hints'
    TabOrder = 0
    CaptionLayout = clTopCenter
    Images = MainForm.CharImageList16
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sRadioButton1: TsRadioButton
      Tag = 5
      Left = 21
      Top = 31
      Width = 134
      Height = 17
      Caption = 'Skinned'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton2: TsRadioButton
      Tag = 5
      Left = 21
      Top = 69
      Width = 134
      Height = 17
      Caption = 'Standard'
      TabOrder = 1
      OnClick = sRadioButton2Click
      AutoSize = False
    end
    object sRadioButton5: TsRadioButton
      Tag = 5
      Left = 21
      Top = 87
      Width = 134
      Height = 64
      Caption = 'Custom hint window based on the Png template'
      TabOrder = 2
      WordWrap = True
      OnClick = sRadioButton5Click
      AutoSize = False
    end
  end
  object sCheckBox6: TsCheckBox [5]
    Left = 468
    Top = 39
    Width = 161
    Height = 68
    Caption = 'Custom check glyph: Unchecked'
    AutoSize = False
    TabOrder = 4
    OnClick = sCheckBox6Click
    ImgChecked = 20
    ImgUnchecked = 21
    GlyphChecked.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000A5E100009FDD00009ADA6E2DAEE1F614A7DFFA009CDBA60097
      D7420098D812009AD900009AD900009AD900009AD900009AD900009AD900009A
      D900009AD900009AD900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000A4E105009EDD8B2FBFE8FFBCFAFDFF74E5FFFF00BDF5FF00AE
      E8FF00A2E0D70098D8820097D73E0099D90B009AD900009AD900009AD900009A
      D900009AD900009AD900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000A6E28E3BC9EDFF97FCFEFFC7FFFFFF6EE2FFFF00CEFFFF00D0
      FFFF00C6FBFF00BBF3FF00ACE6F7009DDBC00097D6790099D928009AD900009A
      D900009AD900009AD900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001EBCEAFB9BFFFFFF98FFFFFFC2FFFFFF73E3FFFF00CBFFFF00CC
      FFFF00CDFFFF00CFFFFF00CBFFFF00C6FAFF00B8F0FF00A3E0EB009BD9BB0099
      D856009AD909009AD900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF003ACDF1FBA2FFFFFF95FFFFFFC4FFFFFF74E3FFFF00CBFFFF00CC
      FFFF00CCFFFF00CCFFFF00CCFFFF00CDFFFF00CCFFFF00CCFFFF00C3F8FF00AE
      E9FF009FDDE5009AD936FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0039D0F3FB9DFFFFFF91FFFFFFC0FFFFFF75E4FFFF00CBFFFF00CC
      FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00D1
      FFFF00BEF3FF009CDB98FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0033D2F4FB8EFFFFFF7FFFFFFFB6FFFFFF75E4FFFF00CBFFFF00CC
      FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CD
      FFFF00C7FBFF00A0DDC0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002DD5F6FB7BFFFFFF6DFFFFFFAAFFFFFF75E6FFFF00CDFFFF00CC
      FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CD
      FFFF00C7FBFF00A0DDC9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0026D6F8FB69FFFFFF5AFFFFFF9FFFFFFF72E8FFFF00D2FFFF00D0
      FFFF00CDFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CD
      FFFF00C6FBFF00A1DFC6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0020DAF9FB56FFFFFF48FFFFFF94FFFFFF81EDFFFF00D7FFFF00D5
      FFFF00D2FFFF00CFFFFF00CDFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CD
      FFFF00CAFEFF00A6E2C9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0018DBFBFB42FFFFFF35FFFFFF8CFFFFFFADF4FFFF00DBFFFF00DA
      FFFF00D7FFFF00D5FFFF00D0FFFF00CEFFFF00CCFFFF00CCFFFF00CCFFFF00CC
      FFFF00CFFFFF00ABE5EDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0012DEFDFB30FFFFFF24FFFFFF57FEFDFFE6FEFFFF78F0FFFF31E5
      FFFF04DDFFFF01D9FFFF00D6FFFF00D3FFFF00CFFFFF00CDFFFF00CCFFFF00CC
      FFFF00CEFFFF00AEE8FBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000BE1FEFB1AFFFFFF51E1E1FF9AB5B5FF95CBCBFF8EF7F8FFC1FF
      FFFFA6F7FFFF5AEAFFFF29E0FFFF18D9FFFF03D5FFFF00D1FFFF00CFFFFF00CC
      FFFF00CEFFFF00B1E9FBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000E0FFFB1DF7F4FFAFC2C1FFF7CECEFFC4A7A6FF36DCDCFF00FF
      FFFF14FEFFFF46FCFFFF66FAFFFF52F1FFFF35E4FFFF1DDFFFFF10DAFFFF02D0
      FFFF00CEFFFF00B6EEFBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000D1FFA905D9F8FFA4D2DAFFFFEBE9FFCDB6B5FF3FDEDDFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF05FEFFFF16FFFFFF47DCE3FF42D0E2FF1AE2
      FFFF09DEFFFF00BFF2FBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000D0FF072EC4EB32C9C1C4CAFBE9E8FFCFB9BBFF40C9E0FE00EA
      FFFF00F4FFFF00FEFFFF00FFFFFF00FFFFFF25E3E1FF9E9A98FFB29291FF51C2
      C7FF00E2FFFF00B9EFD8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0041C9EA00DCB7B503D7BFBFB5F5EBEBFFDEBDBCF672B9CD7900D2
      FF6400CDFDA500CFFDD700DBFDEB00EBFFFB34CBD4FFDDC4C4FFE5A5A0FF6598
      AFEB00C6FF7400BAF509FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4BEBC00D6BFBF07DBC6C6B9F8F1F1FFE6C4C2FAB0B4BB661ACD
      F70000D0FF0000CDFD0100CAFC2E00CEFF6253A8C4B8E0C0C0FDE8B7B4FF8291
      9E9637A9CD0042A3C500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCC6C600DCC5C500DBC6C6A8F9F6F6FFEDD9D9FFDEB3B0BAB1BA
      C1007DC0D3000BCEFB0000D0FF002EBCE200B1909048DEB7B5F3E2C2C2FFB883
      81B3BF7C7602BF7E7900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCC7C700DCC7C700DBC6C67CF1E9E9FFFBF1F1FFE1C9C9FFD7B4
      B27EE1B5B100B0B7BF00A9BAC400BFAEB000C194927CE6CBCBFFE0BDBDFFB48A
      8AAAB0868600B1878700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E1CFCF00E1CFCF00E1CECE22E5D6D6DFFEFAFAFFFAEBEBFFE2CC
      CCFFD3B9B9B4D1B1B038D2B0AF15CCAEAE4AC9AAAAE4F6DEDEFFD8B6B6FFB48B
      8B93B4898900B48A8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E2D0D000E2D0D000E2D0D000E2D0D06CECE0E0FEFDF5F5FFFEF2
      F2FFEFDEDEFFDFC8C8FCDEC8C8EBE3D2D2FFF7E7E7FFF0D8D8FFC9A7A7ECBC98
      9840BE9A9A00BE9A9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3D2D200E3D2D200E3D2D200E3D2D200E1D0D07AE9DADAFBF6E5
      E5FFFEF0F0FFFFF1F1FFFDF0F0FFFBEEEEFFEBD5D5FFD4B6B6FFC2A1A180BF9A
      9A00BF9B9B00BF9B9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3D2D200E3D2D200E3D2D200E3D2D200E3D2D200E2D1D135E3D1
      D1A6E4D0D0F3E6D4D4FDE3CFCFFCD9C1C1FBD2B6B6C4CAADAD4CC4A3A302BF9A
      9A00BF9B9B00BF9B9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    GlyphUnChecked.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000A6E20000A6
      E20000A6E20000A6E20000A6E20000A6E20000A6E20000A4E100009CDB3417A4
      DDDC2BB0E3FF02A0DDCC009AD86C0097D724009AD903009AD900009AD900009A
      D900009AD900009AD900009AD900009AD900009AD900FFFFFF0000A6E20000A6
      E20000A6E20000A6E20000A6E20000A6E20000A6E20000A0DF3F0BAAE0E49BED
      F7FFA4F4FFFF07C6F9FF00B7EEFF00A8E4EF009ADAA70096D65D0099D81B009A
      D900009AD900009AD900009AD900009AD900009AD900FFFFFF0000A9E70000A8
      E30000A8E30000A8E30000A8E30000A8E30000A7E33D1EB8E7E879EDF9FFC0FF
      FFFF97EDFFFF07CFFFFF00CFFFFF00CBFEFF00C2F8FF00B5EEFE00A1DEDD0098
      D8A10099D848009AD901009AD900009AD900009AD900FFFFFF0096A0AC0000AC
      E90000ADE80000ACE60000ACE60000ACE60000A8E5A07DF0FAFF99FFFFFFB6FF
      FFFFAAF0FFFF09CDFFFF00CCFFFF00CCFFFF00CEFFFF00CDFFFF00CBFEFF00C0
      F6FF00AEE7F9009DDCD9009AD97F0099D821009AD900FFFFFF00CB9B9800919C
      A80006B0EA0000B1EB0000B0E80000B0E80000ACE7AD89F7FDFF96FFFFFFB2FF
      FFFFCFF7FFFF10CFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CC
      FFFF00CEFFFF00C9FCFF00B9F0FF00A2DFFF0099D84BFFFFFF00BF9D9D00CC93
      8E009299A50009B2E70000B4ED0000B4EC0000B0EBAD86F7FDFF90FFFFFFACFF
      FFFFCDF7FFFF10CFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CC
      FFFF00CCFFFF00CDFFFF00D1FFFF00C4F8FF009EDCB1FFFFFF00C09C9C00BB96
      9700CD8F88001DB2E00000B9F00000B8EF0000B4EEAD76F8FDFF7EFFFFFF91FF
      FFFFC4F8FFFF11D0FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CC
      FFFF00CCFFFF00CCFFFF00CDFFFF00C9FDFF00A0DEC7FFFFFF00C09C9C00BC96
      9600B9929200B293950000BFF80000BCF00000B8F0AD65F8FEFF6DFFFFFF78FF
      FFFFBCF8FFFF12D2FFFF00CDFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CC
      FFFF00CCFFFF00CCFFFF00CDFFFF00C8FCFF00A0DDC7FFFFFF00C09C9C00BC96
      9600B8929200B79292003EB1D20000C2F80000BDF3AD55F8FEFF59FFFFFF67FF
      FFFFB9F9FFFF13D8FFFF00D3FFFF00CFFFFF00CDFFFF00CCFFFF00CCFFFF00CC
      FFFF00CCFFFF00CCFFFF00CDFFFF00C8FCFF00A3E0C5FFFFFF00BF9C9C1ABA94
      945BB892921BBE908F009D9AA20000C8FF0000C1F7AD44F9FEFF46FFFFFF55FF
      FFFFB4FAFFFF13DEFFFF00D8FFFF00D5FFFF00D2FFFF00CFFFFF00CDFFFF00CC
      FFFF00CCFFFF00CCFFFF00CCFFFF00CEFFFF00A9E3CEFFFFFF00C9ABABE1D7BB
      BBFFBD9696CCBE929013929FAA0000CCFF0000C5FAAD34F9FEFF33FFFFFF3DFF
      FFFFD6FFFFFF3AE7FFFF05DEFFFF00DAFFFF00D6FFFF00D4FFFF00D0FFFF00CE
      FFFF00CCFFFF00CCFFFF00CCFFFF00CFFFFF00ACE6F9FFFFFF00DFCECEFBF5E8
      E8FFC49E9EE2C298971895A6B00000D0FF0000C9FDAD23FAFFFF23FFFFFF13FF
      FFFF95F9F9FFC7FEFEFF8FF4FFFF5EE8FFFF30E1FFFF0DDAFFFF00D4FFFF00D2
      FFFF00CFFFFF00CCFFFF00CCFFFF00CFFFFF00B0E9FBFFFFFF00DAC5C5FBF7EA
      EAFFC9A6A6E2C79F9E1899ACB60000D3FF0000CCFFAD12FBFFFF10FFFFFF4BCF
      CFFF869C9CFF7BB9B9FF4EFFFFFF76FFFFFF71F9FFFF68EFFFFF52E5FFFF2BDC
      FFFF03D4FFFF00D1FFFF00CEFFFF00CFFFFF00B2EBFBFFFFFF00DAC5C5FBF8EE
      EEFFCEACACE1CCA5A4189DB1BB0000D3FF0000CEFF7E00E8FFFF0BF1F4FF95AD
      ADFFEFADADFFB08F8FFF0FEEEEFF00FFFFFF06FFFFFF19FFFFFF23FDFFFF2AF5
      FFFF3BEBFFFF2FDEFFFF15D6FFFF00D2FFFF00BBF1FBFFFFFF00DECBCBFBFBF2
      F2FFD3B5B5EAD1B0AF1BADB7BF0009CFFC0000D0FF0100CFFF8102CDF7BD8AB4
      C2F1F6C5C2FFB29697FF17E5EDFF00FEFFFF00FFFFFF00FFFFFF00F7FFFF00D8
      FFFF01D8FFFF01F7FFFF0EF6FFFF0DE3FEFF00BFF1F5FFFFFF00E0CECEEFFFFB
      FAFFDFC6C6FFCDB2B253DDB3B000AFB8BF0011CFF90000D2FF0064A7BD00C8A1
      A19DEECCCBFFB79597F92FB9DBB800DBFFD200E1FDFA00EBFEFF03E5FEFF04CE
      FEFF00D7FFFF00E3FEFF00DDF8FF00C3F2D300B8EE5CFFFFFF00DFCECEB0F7F2
      F2FFF4E5E4FFD5BBBBE4D0B7B72CE0B4B100ADB8C00090B7C400CC959112C9A6
      A5C2EED0D0FFC79795F1799EAD2800D5FF1600C8FD3500C8FC5800D0FC9600D5
      FBCE00DBFBF200CCF9C900BDF46100BBF30F00B9EF00FFFFFF00DFCDCD48EDE3
      E3FFFFFAFAFFF1DEDEFFD6BEBEE7CFB5B557D3B1B00CD2AAA80AC2A0A067DDC1
      C1FFF1D5D5FFC09999EEC087840F4CB3CF0000D2FF0000CCFD0000C9FC0200C7
      FA0B00C5F91100C4F80A00C1F50000BDF20000B9EF00FFFFFF00E1CFCF06E2D2
      D2A9F4EBEBFFFFF6F6FFF8E9E9FFE3CFCFFFD9C1C1EFD9C2C2E7E8D6D6FFFAE7
      E7FFDFC1C1FFBD9898B0C38D8A007AA8B90003CCFD0000CCFE0000CAFC0000C8
      FA0000C7F90000C5F80000C1F50000BDF20000B9EF00FFFFFF00E2D1D100E2D1
      D11DE4D3D3B3EFE0E0FFFBEBEBFFFFF1F1FFFCEEEEFFFEF2F2FFF8E8E8FFE3C9
      C9FFC7A7A7E0BF9C9C21BF9D9E00DB958E0034BFE20000CEFF0000CAFC0000C8
      FA0000C7F90000C5F80000C1F50000BDF20000B9EF00FFFFFF00E3D2D200E3D2
      D200E2D1D10BE2D0D05CE4D1D1CEE6D3D3FFE7D5D5FFDFCACAFFD7BEBEF6CEB2
      B296C7A6A623BF9C9C00BF9C9C00D09893002EC0E50000CEFF0000CAFC0000C8
      FA0000C7F90000C5F80000C1F50000BDF20000B9EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Images = MainForm.CharImageList16
    TextIndent = 8
    WordWrap = True
  end
  object sTrackBar1: TsTrackBar [6]
    Left = 56
    Top = 358
    Width = 158
    Height = 33
    Position = 6
    TabOrder = 5
    OnChange = sTrackBar1Change
  end
  object sGroupBox6: TsGroupBox [7]
    Left = 261
    Top = 32
    Width = 173
    Height = 191
    Caption = 'CheckBoxes '
    TabOrder = 1
    CaptionLayout = clTopCenter
    Images = MainForm.CharImageList16
    ImageIndex = 11
    object sCheckBox1: TsCheckBox
      Tag = 5
      Left = 19
      Top = 31
      Width = 136
      Height = 17
      Caption = 'Unchecked'
      AutoSize = False
      TabOrder = 0
    end
    object sCheckBox2: TsCheckBox
      Tag = 5
      Left = 19
      Top = 69
      Width = 136
      Height = 17
      Caption = 'Checked'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object sCheckBox3: TsCheckBox
      Tag = 5
      Left = 19
      Top = 110
      Width = 136
      Height = 17
      Caption = 'With Grayed state'
      AllowGrayed = True
      AutoSize = False
      State = cbGrayed
      TabOrder = 2
    end
    object sCheckBox5: TsCheckBox
      Tag = 5
      Left = 19
      Top = 141
      Width = 136
      Height = 33
      Caption = 'Multiline text CheckBox'
      AllowGrayed = True
      AutoSize = False
      TabOrder = 3
      WordWrap = True
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 380
    Top = 8
  end
end
