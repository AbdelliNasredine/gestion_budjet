inherited Frame_ImageLists: TFrame_ImageLists
  object sStickyLabel1: TsStickyLabel [0]
    Left = 45
    Top = 25
    Width = 88
    Height = 13
    Caption = 'sAlphaImageList1:'
    AlignTo = altTop
    AttachTo = sSpeedButton1
  end
  object sSpeedButton1: TsSpeedButton [1]
    Left = 45
    Top = 40
    Width = 108
    Height = 82
    ButtonStyle = tbsDropDown
    SkinData.SkinSection = 'SPEEDBUTTON'
    DropdownMenu = PopupMenu1
    Images = sAlphaImageList1
    ImageIndex = 0
    Reflected = True
  end
  object sSpeedButton2: TsSpeedButton [2]
    Tag = 2
    Left = 165
    Top = 40
    Width = 108
    Height = 82
    ButtonStyle = tbsDropDown
    SkinData.SkinSection = 'SPEEDBUTTON'
    DropdownMenu = PopupMenu2
    Images = sVirtualImageList1
    ImageIndex = 0
    Reflected = True
  end
  object sSpeedButton3: TsSpeedButton [3]
    Left = 285
    Top = 40
    Width = 108
    Height = 82
    ButtonStyle = tbsDropDown
    SkinData.SkinSection = 'SPEEDBUTTON'
    DropdownMenu = PopupMenu3
    Images = sVirtualImageList2
    ImageIndex = 0
    Reflected = True
  end
  object sSpeedButton4: TsSpeedButton [4]
    Left = 405
    Top = 40
    Width = 108
    Height = 82
    ButtonStyle = tbsDropDown
    SkinData.SkinSection = 'SPEEDBUTTON'
    DropdownMenu = PopupMenu4
    Images = sVirtualImageList3
    ImageIndex = 0
    Reflected = True
  end
  object sSpeedButton5: TsSpeedButton [5]
    Left = 525
    Top = 40
    Width = 108
    Height = 82
    ButtonStyle = tbsDropDown
    SkinData.SkinSection = 'SPEEDBUTTON'
    DropdownMenu = PopupMenu5
    Images = sVirtualImageList4
    ImageIndex = 0
    Reflected = True
  end
  object sStickyLabel2: TsStickyLabel [6]
    Left = 165
    Top = 25
    Width = 91
    Height = 13
    Caption = 'sVirtualImageList1:'
    AlignTo = altTop
    AttachTo = sSpeedButton2
  end
  object sStickyLabel3: TsStickyLabel [7]
    Left = 285
    Top = 25
    Width = 91
    Height = 13
    Caption = 'sVirtualImageList2:'
    AlignTo = altTop
    AttachTo = sSpeedButton3
  end
  object sStickyLabel4: TsStickyLabel [8]
    Left = 405
    Top = 25
    Width = 91
    Height = 13
    Caption = 'sVirtualImageList3:'
    AlignTo = altTop
    AttachTo = sSpeedButton4
  end
  object sStickyLabel5: TsStickyLabel [9]
    Left = 525
    Top = 25
    Width = 91
    Height = 13
    Caption = 'sVirtualImageList4:'
    AlignTo = altTop
    AttachTo = sSpeedButton5
  end
  object sLabel1: TsLabel [10]
    Left = 368
    Top = 214
    Width = 230
    Height = 85
    Alignment = taCenter
    AutoSize = False
    SkinSection = 'SELECTION'
    Caption = 
      'Single imagelist with one source glyph - many clients with diffe' +
      'rent glyph sizes'
    Color = 14810367
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
  end
  object sGroupBox1: TsGroupBox [11]
    Left = 85
    Top = 208
    Width = 249
    Height = 145
    Caption = 'sAlphaImageList1 (glyph container) size'
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object sStickyLabel8: TsStickyLabel
      Left = 58
      Top = 38
      Width = 20
      Height = 13
      Caption = 'Full:'
      AttachTo = sTrackBar1
    end
    object sStickyLabel6: TsStickyLabel
      Left = 46
      Top = 70
      Width = 32
      Height = 13
      Caption = 'Width:'
      AttachTo = sTrackBar2
    end
    object sStickyLabel7: TsStickyLabel
      Left = 43
      Top = 102
      Width = 35
      Height = 13
      Caption = 'Height:'
      AttachTo = sTrackBar3
    end
    object sTrackBar1: TsTrackBar
      Left = 80
      Top = 32
      Width = 150
      Height = 25
      Max = 64
      Min = 16
      Position = 64
      TabOrder = 0
      TickStyle = tsNone
      OnChange = sTrackBar1Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
    end
    object sTrackBar2: TsTrackBar
      Left = 80
      Top = 64
      Width = 150
      Height = 25
      Max = 64
      Min = 16
      Position = 64
      TabOrder = 1
      TickStyle = tsNone
      OnChange = sTrackBar2Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
    end
    object sTrackBar3: TsTrackBar
      Left = 80
      Top = 96
      Width = 150
      Height = 25
      Max = 64
      Min = 16
      Position = 64
      TabOrder = 2
      TickStyle = tsNone
      OnChange = sTrackBar3Change
      SkinData.SkinSection = 'TRACKBAR'
      ShowProgress = True
      BarOffsetV = 0
      BarOffsetH = 0
    end
  end
  object sBitBtn1: TsBitBtn [12]
    Left = 368
    Top = 312
    Width = 230
    Height = 37
    Caption = 'Change glyph'
    TabOrder = 1
    OnClick = C1Click
  end
  object sCheckBox1: TsCheckBox [13]
    Left = 173
    Top = 152
    Width = 66
    Height = 20
    Caption = 'Reflected'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox1Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox2: TsCheckBox [14]
    Left = 293
    Top = 152
    Width = 85
    Height = 20
    Caption = 'Alphablended'
    TabOrder = 3
    OnClick = sCheckBox2Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox3: TsCheckBox [15]
    Left = 421
    Top = 152
    Width = 69
    Height = 20
    Caption = 'Discolored'
    TabOrder = 4
    OnClick = sCheckBox3Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 512
    Top = 4
  end
  object sAlphaImageList1: TsAlphaImageList
    Tag = 3
    Height = 64
    Width = 64
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE00000B6149444154789CED9A796C5CC51DC73FF3DEEEBE3DBCBBB61362C7B1
          1372908BB690A44D394B0C3D54A8DA525AA9A8A5A85C0595AAB7A02DA0AA45A2
          97C43F454101152A5A0820485352F5A4108893903881DC77E238DE8D6F275EEF
          AE77F7BD99FEF176ED5D7B2F1F2107FDCAAB376FE637BFF9CDD7BF99DF1C4F28
          A5F820433BDB069C6DFC9F80B36DC0D986E36C1BF07EA067D3CADB1331E1D675
          B1AE66C5B742D96517BE079C58F5552358F76C7B5FF4C9B6EEE83FDBDF787276
          76F1854DC0B1279602AB7C8E4DB82AAAE98BAB4B15AE5F648B5CB843E0E8E3D3
          306A5FA477B55F24237CC8B105676A0A1E55E3803B86C42E4C024EFCD68131F3
          39FAFF390F33029D2738BEBF93B90DB507953BF0BD6CD10B730818337E476CFB
          A7193C047DFDB41D0A13AC6E08EF60CE4DCEABB676648B8AEC95E0ABAF6FBCFD
          604BE8D9F7D9DC49C5F2D9FA2BD7CF3B7C0B3D6B21EA24F4DE6602FE79BC37E5
          6BFB9B3AE62D0470391D8FFEE01B373F0C2386C0C196D0B3F7DFFA05945248A5
          ECA7CC4D67CAB2D34A16901F92A3A01C4A21348110024D643D3572DF85401320
          34FB5D2AC5ABFF798BEFDF7633A1CE5E344D67F5DFFFCBF58B23B7D0BE0E923E
          086F223E5885FB8A3B9935FBDB0B9BFEB2964F5DB9947F6FDAFE10309A80F311
          8F3FB76628FD9D1B1474BD009607C2DB39DAEAC2B5E88B3CB5A31E76AC05C0EF
          ABC8A99F97002104BA10F68B7E862C9F04DC7FEB1786D2AAFB4D7CD13F40CA84
          8EA3B41C4D10987B035D0BBECBFD8D730AEAC84BC0AF1E7B74F2AD3D83F8FE37
          1B99225F83C193D07B9AD6831D04EB96D25A77172FFFF1F91CD9077FF250CE7B
          C12170CB2D5F06C07604914EE73E73F36CB9FCF2F9CA72F386558ECC2B5666B7
          31C57A06FAB74154A76DDF7E8295F319BCFC474C092CE1DE7B970CC9AD5CB972
          543F0B1220A504014281481BAD844837AE32F620D2915453000A25ECDE09BB42
          56BD4CA755BA9EADC0AE27D2A2B97222A34B0DCBAB2102EC9CD9FA3A38F52F48
          FA08ED6AC2EF994E6CD11D242B9622A41CB65DCB7FEE519080B9736767FA0823
          52B9AF22B744E493CE5FB794EE11B9590502CC28EEFED7113DAF805501E12DC4
          A35EAA967D83CACBEF434985408DAE3B020509A80C060B159D0390D0F30EF4AD
          064B87F63DB41C93347CF44B181F7F84B1CCDCE7651834BB9B7174FD09CC3EE8
          EEE2C4E13E3C354B301A9F1EB3AEA204AC5AF51497CC9F8F655A58D2C2B2323F
          89252DA4656149492A99221E8BB268F1622CCB424A89920A4B4994944829D30B
          A1747AD4BB4AE7D9F552A924F5F5F5188691D66797274DC5DC69491604DE86C1
          FDD02F693B70147FF52276557D95F56BFE8132A3437A9552C4E371A46572CF3D
          778F9D000097CBC0D24D4CCB42CBF969589A86B02C94B4C7DAB0C1591DCDEA9C
          B486F395B2CB2C29471023894507300C23475FC2848BAB932C9C7A087AD743DC
          4D68F7462AFD333958F579BA588C4B1F400A678E3E87D349D232C7E701007B76
          EF2A253284F7DE7DB76CD952D8BF6FDFA8BCEB3EEB86DE3590F2437833838341
          4E4FBF9EE6933380C3E36AA72801F3172C60465D1D42D3D0751D5DD3D074CD7E
          6A1ABAA6A3E976FABD1D3B59FEB18F8EA9713BA28D9E9DDFD9B295850BE61308
          0400503289D1BF0147CF2AB05C707227475AA076D9CD6857FC868B95C39EF1B3
          4269069665D2BCADF03FA6A407783D5E843E92007DE8A9A70900F07ABDE5F6BD
          247C3EDFB0BED37BE1D44B600E4067989643A7B9685E23BE6B1E05A7BFA89E52
          F71E2509904A22A4BD92CA102CD22B1991B34A9B5CC8F4BCC2C001E8781E1247
          E15492D6FDC7A9ACF930158DBF01E79432F4C8A2E5E7EE8188E684643B74FD05
          A29B21E6A46DCF4E02FE9954ACF8395A70F1A43453D203447A2F2E84EDEA857E
          930D35D8099137E1D43A48F909EFDA40D05D8371C57771D4DF58B69E52B69524
          20168B218626BDE1495068C37340665D3E303050B661859019B1466C0B9C5E0D
          D20727DF251631705D762362D66D24C7D08E69160E81500601E19327CB6EAC79
          DBF6B2658B61F9DC049EFE3560A6A0E3182D8763D42CFA0CDB8C5BA1C88C3E1E
          9424E09279F3D261D081432F1C0536346D64C5759F98B845D1FD107A02126DD0
          3740EBC1309575CBA858F16B5654CC1D97CA37D7BF55B0AC741490127B576A61
          A15028EC3F95F6575532D4948D582BB4BF0403DBEDBDFDDEBD048273F137FE12
          31CECE5B9655B4FCDC8902C95EE8FE3BF4FF0B925E42BB9BF1BB6BF15EF543F4
          DAC633D6ECB9B11BB462D0F306F4BE0C5605E15D9B093802383EFC755C0BEE18
          252EA5249148609A268661E072B9C6DD74794320E3E2AAF81028E56EF9A02111
          7D5BA0FBCF2005B4EF23795A211737E25AF6209625C9C406A514C94482582C86
          699AB80C035DD75152A169DAD0F17A364AD9549280632D2D6577E6ED0D4D65CB
          666345CD6A307BA1A787D6C3DD786A2EE75DDF7DB07172A24A318C210A14DF0B
          346DDC34F628103F0EA1A7A17F170C40DBBE43544DBD94F8C77ECAB259D7E277
          DBFFCD582CC6A953A7482593186E375EAF1797CB651FDFEB3A0E47E16E28A558
          FFD6DBE32760380A4CF25E20D1099D6B21F25F487808ED6AA2C23B03EFB50FB2
          ADC5CFD2E91152BA87EEAE2EFA2311344DC3E7F56118069AA621A5C4E97416ED
          7CC6FE62383B93A039003DAF43DF1A30FD847736117055E25C7227FAACAF40CB
          5BF4F6F4609A26F1781CB7DB8DD7E3C170DB635ED3348CF4F89F28DEFF302853
          D0B711BA9F07E984F6DDC4231ADA9CCFE15EF600F1F82000274EB4118BC771BB
          3D783C1E5C8681C3E1C0300C3C1ECFA4741ECAF0002DBDEE2FB6111AD366A87F
          07743E0FD60074B5D372F814B5F31BF15CFB189DDD11BA3BEC4F781C0E9D0A9F
          0F97CB3534EEBD5EEFA859BE1CFB8BA12401870E977FD4546CC999C18ABA7590
          3C0CA753B41D68A172EAA56C0DFE1836EDCD914BA44C5ADB4205B44C1E4A1230
          6BE6CCAC282086768123A340F3B6ED5C75E515F995080DE2211C5D2F427F13C4
          0D42BB9B090666D337FF2E5C5A15C9680F0E5DC7E3F11089C6F057F868A86FC0
          1FF00F4D74E359725B96C53B5BB68E9F00A7D3595618040AAFC8CC7E88AC87C8
          DF20554178E7062ABDB574D4DC44482D4724FA711B062E9781C76B135037BD8E
          6935D3C6DCE19198F089904A7FD050EA575801D0B7D99EF42C0FE19DCD541B7E
          7AABAE2614B819958AA30970381C389D8EA11BA98A40F1B3BE7251CA6BCE7814
          B09283F651B61C84CE23A4064C4E7B2FA3EDA2DB91964013125D77E076BB995E
          57C7F4BA3A00E43896D5E3C1B8A3803D247287403E44437B11DD16FE6827A183
          AD04A72DE3E88CBB48896A9CDA204EA741F5946AEA1B1A300C63A89E3E49C76C
          A5C2E5198D024BE7CF2016DECD607836478EECA66ACE6D343B9712E9F121D409
          DC8607B7D74B3414E644289C53B779FBE49EFC1442490266CCA84388D11723D9
          6782F92E46A495227AE00D12278F93ECEBC0F191BB391E58482A16C7478AEAEA
          7A66CE9A85DF6F8FF5ECB1BA656B73CEC5C844605916DB8A905992008FDB5376
          14C8BE188987F79068D9493CD2CFC09CEB881875683245ED45954CABA9A1B6B6
          B6A87B66163E13C5842F4654FA53B6B144816834C2C92D7F63206A3270F127D1
          7D53991EACE0A2A95309565696DCC0946378B978DF37439665F1DA5FD7111453
          98B3FC734C9F5A4355D03FA1539B3389D251408C6D2F2084E0EA6BAEA1AEA161
          425FD84DD665CB84F6027EBF9F4347C617058E1C3D5676BD7C2836718D150DF5
          F5F657A979509480654B974C9A11671B85CE060B12F0D0C38F9C3163CE25E425
          E081077F76CE7F2C2D72CA40CBA76384BC96E72C2187009FC7F8E6EF5F58FBCC
          1922FB9C8194D6F599B418196F85106EEC0FEDBC4000980A54619395A1501548
          9742A6B142F22367AAB1E82D649B09F401DD403F10032CA5D420E41F0256BAE2
          20F66E51A52B9E3BD768638304124014BB4F663A0FC8EF011A368302DB1332EF
          E7331476A733FF5CA5949290DF0314C3AE587C1D79FE61D4626094077CD070BE
          8EEB49C3FF00BCE577055B0544C10000000049454E44AE426082}
      end>
    Left = 80
    Top = 104
    Bitmap = {}
  end
  object sVirtualImageList1: TsVirtualImageList
    Height = 64
    Width = 64
    AlphaImageList = sAlphaImageList1
    Left = 200
    Top = 104
    Bitmap = {}
  end
  object sVirtualImageList2: TsVirtualImageList
    Height = 48
    Width = 48
    AlphaImageList = sAlphaImageList1
    Left = 320
    Top = 104
    Bitmap = {}
  end
  object sVirtualImageList3: TsVirtualImageList
    Height = 32
    Width = 32
    AlphaImageList = sAlphaImageList1
    Left = 440
    Top = 104
    Bitmap = {}
  end
  object sVirtualImageList4: TsVirtualImageList
    Height = 24
    Width = 24
    AlphaImageList = sAlphaImageList1
    Left = 560
    Top = 104
    Bitmap = {}
  end
  object PopupMenu1: TPopupMenu
    Images = sAlphaImageList1
    Left = 112
    Top = 104
    object C1: TMenuItem
      Caption = 'Change glyph'
      ImageIndex = 0
      OnClick = C1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Images = sVirtualImageList1
    Left = 232
    Top = 104
    object MenuItem1: TMenuItem
      Caption = 'Change glyph'
      ImageIndex = 0
      OnClick = C1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Images = sVirtualImageList2
    Left = 352
    Top = 104
    object MenuItem2: TMenuItem
      Caption = 'Change glyph'
      ImageIndex = 0
      OnClick = C1Click
    end
  end
  object PopupMenu4: TPopupMenu
    Images = sVirtualImageList3
    Left = 472
    Top = 104
    object MenuItem3: TMenuItem
      Caption = 'Change glyph'
      ImageIndex = 0
      OnClick = C1Click
    end
  end
  object PopupMenu5: TPopupMenu
    Images = sVirtualImageList4
    Left = 592
    Top = 104
    object MenuItem4: TMenuItem
      Caption = 'Change glyph'
      ImageIndex = 0
      OnClick = C1Click
    end
  end
end
