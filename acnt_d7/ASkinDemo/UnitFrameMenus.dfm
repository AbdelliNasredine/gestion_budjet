inherited Frame_Menus: TFrame_Menus
  object sStickyLabel1: TsStickyLabel [0]
    Left = 60
    Top = 56
    Width = 86
    Height = 13
    Caption = 'AlphaBlend value:'
    AttachTo = TrackBar_AlphaBlend
  end
  object sStickyLabel2: TsStickyLabel [1]
    Left = 75
    Top = 96
    Width = 71
    Height = 13
    Caption = 'Items margins:'
    AttachTo = TrackBar_Margins
  end
  object sLabel1: TsLabel [2]
    Left = 334
    Top = 56
    Width = 6
    Height = 13
    Caption = '0'
  end
  object sLabel2: TsLabel [3]
    Left = 334
    Top = 96
    Width = 6
    Height = 13
    Caption = '0'
  end
  object TrackBar_AlphaBlend: TsTrackBar [4]
    Left = 148
    Top = 51
    Width = 180
    Height = 24
    Max = 255
    PageSize = 32
    Position = 255
    TabOrder = 3
    TickStyle = tsNone
    OnChange = TrackBar_AlphaBlendChange
    SkinData.SkinSection = 'TRACKBAR'
    ShowProgress = True
    BarOffsetV = 0
    BarOffsetH = 0
  end
  object TrackBar_Margins: TsTrackBar [5]
    Left = 148
    Top = 91
    Width = 180
    Height = 24
    Max = 16
    Position = 2
    TabOrder = 4
    TickStyle = tsNone
    OnChange = TrackBar_MarginsChange
    SkinData.SkinSection = 'TRACKBAR'
    ShowProgress = True
    BarOffsetV = 0
    BarOffsetH = 0
  end
  object sBitBtn1: TsBitBtn [6]
    Left = 400
    Top = 52
    Width = 145
    Height = 69
    Caption = 'Change font in menu'
    TabOrder = 5
    OnClick = sBitBtn1Click
    Margin = 12
    Spacing = 12
    Blend = 25
    Grayed = True
    ImageIndex = 0
    Images = sAlphaImageList1
    Reflected = True
    SkinData.SkinSection = 'SPEEDBUTTON'
  end
  object CheckBox_ShowExtraLine: TsCheckBox [7]
    Left = 152
    Top = 220
    Width = 142
    Height = 20
    Caption = 'Show Extra Line in menus'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = CheckBox_ShowExtraLineClick
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object ComboBox_IcoLineSkin: TsComboBox [8]
    Left = 154
    Top = 136
    Width = 180
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Indent = 4
    BoundLabel.Caption = 'Section of icon bar:'
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'ICOLINE'
    OnChange = ComboBox_IcoLineSkinChange
    Items.Strings = (
      'ICOLINE'
      'TRANSPARENT'
      'PROGRESSV')
  end
  object CheckBox_SkinnedMenus: TsCheckBox [9]
    Left = 152
    Top = 182
    Width = 139
    Height = 20
    Caption = 'Enable support of menus'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = CheckBox_SkinnedMenusClick
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 540
    Top = 120
  end
  object sAlphaImageList1: TsAlphaImageList
    Height = 32
    Width = 32
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000005E5494441545885B5965B6C94C715C7FF33DFB7BB5EAFD7606C676D7C
          01531C9A8B8312A7C6103071622E014A9AA090A655D39498382F48794A5F5AA9
          122F7DACFA18A95111AE50D34AA9422A9208DA2A26A57512028A4A425B87A4B8
          067CDBB5F7FA5DE67FFAE0D665BF5D9A35D0239DEFE1CCCC39BF337366BEA3B0
          04B973FB37D17FE8304296DE5713B10F856DDD29809B75CC69CF981F6532B9B1
          DFFEF0BB98FCF46CC53E55A5136B9ADAB1EFA76FA22656FDFD446DE4C7C9AC87
          AC6BA095425D750896466A36EBF55DFD62ECE3D70FED82D054E457570AB06EC7
          B7100A47EE8A45ACC37F9FCC602AE320E7FAC8381E2E2773984A3BCBC3B6FA79
          7DEB6AB5EAA1C72A755B19800E85B1B6FF71842CBC3C9B7142BE21C8624D173C
          907C80E49E753B9EB9BD002D0FF6A3AA26BE4C01FBB3050F4296D5D98C8388AD
          5E4CAC5B8FF8CAD5B70F60EDA34F4101DFF68DA90E667EBD7ABE01293BB49296
          350F3F717B00E2CDABD17CEF8388D86A30957540E1FF54C7F72D00CF7FA5FF09
          E850F8D601DAB7EC0144BA0DE57E539AF52992E9EB6DF33917614B0D56C7E356
          EB86EDB706A0B4858E2D7B10B2D4C16CC10D061792432487834761C8368AEC5A
          F3C893B706D0747F1F6275F531ADF04CDEF520C2FF2AF927118E913C5A641722
          957510B1F550636717E22D6B6E1E6055DFD721224F1BB2B6A4E884BF485FBD0C
          119E21F9B7E262F421C29D5A61D5AAADDFB83980AAE58D68BEAF1755216B3099
          2904B7DF23F9CBCF4EBE86A94F3E44B96328B8BEA52007DB37ED8015892E1DA0
          75F36E28857B29EC3534C16A7FDBF8DEF4C4E8498C9F790B248F5228D7CF99CF
          3B08D9FA40B4266EAFDCB06D69004A6BB46FD9035BABC15CC15565EEFCF0F4C5
          B370E66731F1FE29F86EE112C9D325C5684C33451E6FDBBC7B6900F577F72056
          7F47C4D2F84EB6E0065FBC79926F8CBF770200609C3CAE7D34029247832F632A
          534055480FD5777C15B5ED77560ED0B2E93140649F315C5126FBD7FD422E3F79
          FEF4E2FC7FFEF91D08F92B9285603192F2A85258BB7253F91F540940385E87C4
          7D1B5115B60693997CE96B470E5F3B3702E3E417D7CC5C1885934EA5283C1E9C
          9F773DAD155E68D930003B1AFB728044CF365896D549F261DF9860F61314FEEE
          CAE8C9A23542E2CAE8C985620CFE257305D8967E2E12AD8EDCD1FD4809801D34
          B46EDE054BABE7F38EA748168D595ABF6769C5B6BEBD68EADE5A34166B5E0D4B
          AB3F184350A468CC18D34891275B36EF3A3671FAF88D019675AE47ACA1C9B62D
          F5DCEC7C1E4149D4C7F71AC3232B1EEACF055B2959F8DC93773DA4D2C56B93E9
          3C96D7540D2D6BE938166F5F87F43F2E960768DAB01D22B2D790094A71F60070
          65663EB2A236FAAC96F29D9CE31924D3B9123B0D41619F52B8AB69E3CE4FCA02
          D8D5713476F5221AB10FA6D2399052E2C8A58FAB33E9B2C1BF4C720557D9961E
          4A3CD0F7D2A5E3AFC2CF2DF8592CC286EE7ED8E1703BC96D0B8DC58D1B8F9BD1
          4CCE81A5D5B3A14824DAD0DDBF08B60890E8198052EA80E37A16C5E0FFA1BE31
          7514EE4FF40C141F41ACB513354D6D3A1CD20766E74ACF50203F5050C34A55D6
          C58B08003906A88DD7DB93F339D4D5465FAC696A3B52D3713732972E2C0034F4
          0C4044761AC3B6E0D503E002F2CAE5B786A7AE05AED08D64CDD32FA1AE6BE3CF
          82000040B25729AC6FFCDAC0F9CCA50BD0CA0EA1BEAB175561FBE05C2657E6E5
          33278CF1A766CEBD5B517000983EFB7B50E4350AB3417FD9BC034BAB1756DCD3
          036587A0A3CD1DB02255F52477BB9E5F5A402247E6FE7A0E7E66AE6280F9B18F
          E1A4A6D3247F1DF497CD3B00B0DF0A87AD687307B4D21ABE315B1DCF0B95A9DE
          29926F26CF8F541CFCDFFB8CD9F32320F94AB91BE17A5E83F14D97D21A5A00F8
          BE896472255D0F48F3AA979DF3E63EFD7069000066DE3F051AEF8FA4F9A06417
          720578BE1F11001A3430C6BC638C990E34975911F949F2DC08C4F7960CE0CD4D
          63FEE2471091C3C1A6D537E62FBE311F80063A3FF1390A93E33300B601180540
          0057007C8F6EE1EAF499134B0EFE1F997CF737109A3700BC0C2009C007F03680
          9D85C971931B1FC3BF002AAD2326EB5A36F70000000049454E44AE426082}
      end>
    Left = 512
    Top = 120
    Bitmap = {}
  end
end
