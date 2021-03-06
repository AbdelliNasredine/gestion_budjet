inherited FrameTsTrackBar: TFrameTsTrackBar
  object sGroupBox1: TsGroupBox [0]
    Left = 181
    Top = 224
    Width = 252
    Height = 72
    Caption = 'Disable control'
    TabOrder = 3
    CaptionLayout = clTopCenter
    AutoChildrenStates = csAsChecked
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sCheckBox1: TsCheckBox
      Left = 128
      Top = 35
      Width = 91
      Height = 17
      Caption = 'AlphaBlended'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox1Click
    end
    object sCheckBox2: TsCheckBox
      Left = 32
      Top = 35
      Width = 61
      Height = 17
      Caption = 'Grayed'
      Enabled = False
      TabOrder = 0
      OnClick = sCheckBox2Click
    end
  end
  object sTrackBar1: TsTrackBar [1]
    Tag = 5
    Left = 181
    Top = 74
    Width = 252
    Height = 43
    Max = 100
    Frequency = 10
    Position = 27
    PositionToolTip = ptTop
    TabOrder = 1
    ShowProgress = True
    OnGetToolTipInfo = sTrackBar1GetToolTipInfo
  end
  object sCheckBox7: TsCheckBox [2]
    Left = 483
    Top = 272
    Width = 76
    Height = 17
    Caption = 'PosByClick'
    TabOrder = 8
    OnClick = sCheckBox7Click
  end
  object sTrackBar2: TsTrackBar [3]
    Tag = 5
    Left = 59
    Top = 74
    Width = 54
    Height = 222
    Max = 100
    Orientation = trVertical
    Frequency = 10
    Position = 27
    PositionToolTip = ptLeft
    TabOrder = 0
    TickStyle = tsNone
    Reversed = True
    ShowProgress = True
    OnSkinPaint = sTrackBar2SkinPaint
    OnGetToolTipInfo = sTrackBar1GetToolTipInfo
  end
  object sCheckBox4: TsCheckBox [4]
    Left = 483
    Top = 239
    Width = 142
    Height = 17
    Caption = 'Show TrackBar progress'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = sCheckBox4Click
    WordWrap = True
  end
  object sCheckBox3: TsCheckBox [5]
    Left = 483
    Top = 205
    Width = 90
    Height = 17
    Caption = 'Custom slider'
    TabOrder = 6
    OnClick = sCheckBox3Click
  end
  object sCheckBox6: TsCheckBox [6]
    Left = 483
    Top = 172
    Width = 89
    Height = 17
    Caption = 'Custom draw'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox6Click
  end
  object sGroupBox2: TsGroupBox [7]
    Left = 59
    Top = 316
    Width = 574
    Height = 113
    Caption = 'PositionToolTip'
    TabOrder = 9
    CheckBoxVisible = True
    Checked = True
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sRadioButton1: TsRadioButton
      Tag = 1
      Left = 88
      Top = 28
      Width = 50
      Height = 17
      Caption = 'ptTop'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = sRadioButton1Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 2
      Left = 188
      Top = 28
      Width = 51
      Height = 17
      Caption = 'ptLeft'
      TabOrder = 1
      OnClick = sRadioButton1Click
    end
    object sRadioButton3: TsRadioButton
      Tag = 3
      Left = 304
      Top = 28
      Width = 66
      Height = 17
      Caption = 'ptBottom'
      TabOrder = 2
      OnClick = sRadioButton1Click
    end
    object sRadioButton4: TsRadioButton
      Tag = 4
      Left = 432
      Top = 28
      Width = 57
      Height = 17
      Caption = 'ptRight'
      TabOrder = 3
      OnClick = sRadioButton1Click
    end
    object sEdit1: TsEdit
      Left = 146
      Top = 68
      Width = 121
      Height = 21
      TabOrder = 4
      Text = ' %'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Added text:'
    end
  end
  object sComboBox4: TsComboBox [8]
    Tag = 5
    Left = 261
    Top = 172
    Width = 172
    Height = 21
    TabOrder = 2
    OnChange = sComboBox4Change
    TextHint = 'Change skin section'
    BoundLabel.Indent = 2
    BoundLabel.Caption = '`SkinData.SkinSection`:'
    VerticalAlignment = taVerticalCenter
    LabelFromTextHint = True
    ShowFocus = False
    Items.Strings = (
      ''
      'PROGRESSH'
      'SPEEDBUTTON'
      'TOOLBUTTON'
      'TRANSPARENT')
    Style = csDropDownList
  end
  object sCheckBox5: TsCheckBox [9]
    Left = 483
    Top = 140
    Width = 72
    Height = 17
    Caption = 'Reversed'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = sCheckBox5Click
  end
  object sAlphaImageList1: TsAlphaImageList
    Height = 24
    Width = 24
    Items = <
      item
        ImageFormat = ifPNG
        ImageName = 'ball_red'
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          87000008C849444154789CED99DB6F1C571DC73FBF73666776BDCEC64E62A74E
          E3C4859496B688B442AD0A8816841A0955AD5BF1C4038117C4035210E6019E4A
          1F79B054FE025A5440020101AA428384482B28978AB822943634ADDDDC7C891D
          5FD6DE9D9D9973783833BBB39B5DD74E5BAA4AF9494773E6FEFDFEEE6706AECB
          75B92E1F689177EB419370181807EE030670FB799902968193C0F109B7FF8EE5
          1D11987440BF091C05C6002AC325760E97D87FC760DBB5E74F5F6165BEC6EA7C
          2D3B340D3C053C31E1885D935C13811CF063C0C0D04D3BB8EBC1838CDE7D2B95
          B1310806A06F2FE8A2BB21A9C3C61C84CBAC4E4F73EEEFAFF2CF67665878730D
          1CF81F5C2B916D13485DE557C0D8E81DBBB8F7CB77B2FF730FC0C0CD0EF85624
          5C81E5339CFFE3095EFCD129CE9D5E02679147B6EB5ADB2230095F017E18943D
          8E4C7C92430F3D8CDD753B58C0DA74DBE50D22A040445AFB992C9EE6F5E3C779
          6EF22F84EB31C05727E0C9779D40067E68B49F071F7B889D773F0C12608D0563
          B119898EC78AE44908A20474C7D684ACBEF41B7EFDDD5F646EB565125B229081
          DFB3AF8F471FFF22C58F7F01127B35F8CD2C2038B04A10ED065A219E209E42B4
          22FCEF73FCEC1B4F6F8BC4DB12487DFED4EEE112E3DF7A80D23D8F4062B0490A
          DEE480DB4EF42DF048AA6D458E847256F0145270A371E677FCFCDBBF64617A0D
          E0CEB78B894D09A4D9E6941FE8B147BF740BBB1EFA1A28BF09DE69DFB6C740D7
          B7487B1C284134CE0299150A2AB544CCCA0B4FF1D3C7FF46B8114FA7247A6627
          BD198123F01D60FCFE4FEF65E4539F87BEDDD87A840DDD30618C6D44D8468C8D
          E2D6363FE26C1E41D49ADB288674B45D9B58FC5299017F81D7A7160780F004FC
          A91746EF6DB47FEC863D0137563CD8318259ABB5BB0DB8AD7473FCABA5795566
          8D7C4C78AAE94AE8210E8C94D877B09F8B33D563939BD4889E0470856AE06307
          CB50DC830D0DD85ABB9B4BEA129DD8B363CD6B6D736373C46D7ABF55B8A0CE91
          48C212777D620F1767AA59D1FCDE76091C1D2C7B0C1515A61661EAF53425A6E0
          D2E0B4D92ED245F1D204EF807758CE82491989A46955BB7848AA86E1B2C7EEDD
          018B8BE1D15E0454B78369E619BB656F111B1917B071031B47103720892069E4
          460426B76F2237D2733689D27B3A477A7DDCC0862176A38659AF61D66A98D506
          F14AC8473FBC03606CF2EAE670530B8C030C570A2ED529EB5E248255E2149DCB
          EF88B850C88EE7A4CDE56CBB056CBE766419CD38AB9AF506763D62B8DC84384E
          9794DA8BC07DE540D35FD68812ECDAA2D398903A2E39576ACDDDA99C2BD99C13
          D9561CB4153D9B2B86260D1203F1DC2CA215A540D35FD454EBC97DDD80F62230
          D05F54AD42A3846476063D3C0256B022AD78C8B50A5725A34CF2FE9F079EDB8A
          B158E3F693D90B4E718981BAA51C28AAF5A46BA7D88BC0E1BD833EE2A9669A33
          B36FA0F7EC013AC1A76D0274F7A14EE03890CDF62305EDDA12B0C6925C38EB32
          5262B18961B8DF636E25DA560C8012F05A4D17A64172F12C7AE4803BD761019B
          11EB261DBEDFD4789BDB3802E6C2342421A2B3B8EA9A67B64640B472F939B582
          5D9DC7F61591CAA0CB5F99F63322AD4A9543DBAA73B6C3EFB3E0CD865959C22C
          CFB916C39D744F50BD3B9E9E044404F15AE0B358304BE721A9A106879CDFE7DB
          E5EC3D793239B7912CF3987622D680599CC35C59746E2B264D080A30F4366D6F
          02537357C2C3CD9637670594406D1993D4509541088A3491DB4E4B64F39CB63B
          B636AC639717B1F53AE209366901B7D6CDE75723E8D195F622B05CDD485AE0B3
          D637474288B0D505680448B18C147CA7A966416811C838B459210CB11B556C58
          77C73D0549CB6D0405D6CDD7EB096CB3173A59DD88EF5F0F13FA2BBE2BEFD90A
          2A23903662D818C2156CA4A15040740174EEB1D6A6016B218A5C358F226C629C
          9F7B0A9B58240F3C9B5B45B5165175044E7603DA2BC48F03CC5E0E5BABA7DCCA
          493CE5D29CEF21C500E9EB43CA7DA86211F10BADCEB2390451365D7D692878EE
          1959EFD37C76CBDAD97C6EB9D186694B169880A949987EE5CCEAD8476EDDD974
          25474423854273E015C0F310AD412950AAD5A13683D620C660930489B3F54004
          8D081B359028C162DAB48F758B9E57A7AB00D3BD56669B75A34F2D2D858FCDCE
          D719D95F463C8DF83E120488EF83EF3B129E7319D11AB402516D59C35558E348
          2431364E90D811B08D861B611DC20696D801B780162E2DD4595A89C07D00EB2A
          9B11780238766A6A6960DF4D3B91529F031F141D11DF773E9F12406B24B54033
          B7DAAC4839022409C431C44EFB141A50089D157508F51AD806D626608597FFB3
          022E789FE805B2E792F204D48F40A9BA16DDBF7B6F89C1D161545F3F52ECCB8D
          92231414514109F18B885F44F90152F0914200051FF17C47D42B20DA035D00AD
          4179A034A23422A9F5004CC25B6FADF3AF579601BE3F01BFBF160B6456387AF2
          0F17C6860EEEA67268B8E9420EA09FFABF079E07A29C15F28527B34092E42C10
          83D7407403AB0B585500E5A194C688666D699D175E9C07F7B5AEA7F637B540CE
          0A2793C47EFDE2CC0A876EDF893FBCCF693F284150449A9A0F10BF98C646AAFD
          54F3A2FD54FBB978696A3F8B1B473CBCBCC073BF3D4BB51A037C76C291B83602
          2989D92330535B8FC7CFBD36CFA1DB2A146E380041EA3E7E1132028520759B0C
          7C462003EE81F210A51D78D10EB8525814E185699EF9C969161743701FB67ABA
          CE9609A424A69A245EB9C4E80128ED3B80947634C1E3179DE6BDFCE80E5E9406
          49D3AE288842564E4FF1ECD3532C5EAE67E09FDC0AB62D11C893D8A846E3AFFD
          F51C3BFD05768D945103FB90A0CFC543AAF9E6D005D059E07A4887F66D126367
          CF70F6C4F33CFBE37F53753DCF7BF3713793FCE7F51B0F55B8E7E19B19FDCCBD
          C8C81D4865E4AA3A90D5008CC1262E80EDF225CCF9D39CFBF34BFCE3C49B5C4C
          8B15EFF5E7F51C89F61F1CA3FD1C7EE04646EF1AA3F2A131A47C83BBB072C0F5
          F94B6FBAEFA9CB9758796386F32FBFC5CBCF5FE2F2C50DF87FFFE0E841E428D9
          2FA6A12295A112FB6F1B6CEBF7CFBF7A85B5CB21AB8BF5ECF669DEAF5F4CDDE4
          FDFAC9775DAECB75F980CBFF0023F443144BCB85700000000049454E44AE4260
          82}
      end>
    Left = 336
    Top = 16
    Bitmap = {}
  end
end
