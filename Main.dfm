object MainForm: TMainForm
  Left = -1112
  Top = 138
  Width = 983
  Height = 637
  Align = alClient
  Caption = 'Principale - Gestion Budjet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 559
    Width = 967
    Height = 19
    Panels = <>
  end
  object pageControle: TsPageControl
    Left = 0
    Top = 0
    Width = 967
    Height = 559
    ActivePage = sTabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Images = sAlphaImageList1
    MultiLine = True
    ParentFont = False
    TabHeight = 65
    TabOrder = 1
    OnChange = pageControleChange
    TabMargin = 12
    TabPadding = 12
    TabSpacing = 12
    object budjet: TsTabSheet
      Caption = 'Budjet'
      object sGroupBox3: TsGroupBox
        Left = 8
        Top = 8
        Width = 681
        Height = 281
        Align = alCustom
        Caption = 'Insertion de budjet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Images = actionsIcons
        ImageIndex = 7
        BoxStyle = bsCard
        object cbxRubrique: TsComboBox
          Left = 120
          Top = 92
          Width = 450
          Height = 25
          BiDiMode = bdRightToLeft
          DoubleBuffered = False
          ParentBiDiMode = False
          TabOrder = 0
          BoundLabel.Active = True
          BoundLabel.Indent = 40
          BoundLabel.Caption = 'Rubriques'
          BoundLabel.Font.Charset = ARABIC_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclRight
          BoundLabel.ParentFont = False
        end
        object cbxSections: TsComboBox
          Left = 120
          Top = 136
          Width = 450
          Height = 25
          DoubleBuffered = False
          TabOrder = 1
          BoundLabel.Active = True
          BoundLabel.Indent = 40
          BoundLabel.Caption = 'Sections'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object cbxChapitres: TsComboBox
          Left = 120
          Top = 180
          Width = 450
          Height = 25
          DoubleBuffered = False
          TabOrder = 2
          BoundLabel.Active = True
          BoundLabel.Indent = 40
          BoundLabel.Caption = 'Chapitres'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object cbxArticles: TsComboBox
          Left = 120
          Top = 224
          Width = 450
          Height = 25
          DoubleBuffered = False
          TabOrder = 3
          BoundLabel.Active = True
          BoundLabel.Indent = 40
          BoundLabel.Caption = 'Articles'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object btnAddBranche: TsBitBtn
          Left = 592
          Top = 44
          Width = 25
          Height = 25
          Default = True
          TabOrder = 4
          OnClick = btnAddBrancheClick
          ImageIndex = 5
          Images = actionsIcons
        end
        object btnEditBranche: TsBitBtn
          Left = 632
          Top = 44
          Width = 25
          Height = 25
          Default = True
          TabOrder = 5
          OnClick = btnEditBrancheClick
          ImageIndex = 7
          Images = actionsIcons
        end
        object btnAddRubrique: TsBitBtn
          Left = 592
          Top = 92
          Width = 25
          Height = 25
          Default = True
          TabOrder = 6
          ImageIndex = 5
          Images = actionsIcons
        end
        object btnEditRubrique: TsBitBtn
          Left = 632
          Top = 92
          Width = 25
          Height = 25
          Default = True
          TabOrder = 7
          ImageIndex = 7
          Images = actionsIcons
        end
        object btnAddSection: TsBitBtn
          Left = 592
          Top = 136
          Width = 25
          Height = 25
          Default = True
          TabOrder = 8
          ImageIndex = 5
          Images = actionsIcons
        end
        object btnEditSection: TsBitBtn
          Left = 632
          Top = 136
          Width = 25
          Height = 25
          Default = True
          TabOrder = 9
          ImageIndex = 7
          Images = actionsIcons
        end
        object btnAddChapitre: TsBitBtn
          Left = 592
          Top = 180
          Width = 25
          Height = 25
          Default = True
          TabOrder = 10
          ImageIndex = 5
          Images = actionsIcons
        end
        object btnEditChapitre: TsBitBtn
          Left = 632
          Top = 180
          Width = 25
          Height = 25
          Default = True
          TabOrder = 11
          ImageIndex = 7
          Images = actionsIcons
        end
        object btnAddArticle: TsBitBtn
          Left = 592
          Top = 224
          Width = 25
          Height = 25
          Default = True
          TabOrder = 12
          ImageIndex = 5
          Images = actionsIcons
        end
        object btnEditArticle: TsBitBtn
          Left = 632
          Top = 224
          Width = 25
          Height = 25
          Default = True
          TabOrder = 13
          ImageIndex = 7
          Images = actionsIcons
        end
        object cbxBranches: TsComboBox
          Left = 120
          Top = 44
          Width = 450
          Height = 25
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          ParentBiDiMode = False
          TabOrder = 14
          BoundLabel.Active = True
          BoundLabel.Indent = 40
          BoundLabel.Caption = 'Branches'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
      end
    end
    object engagements: TsTabSheet
      Caption = 'Engagements'
      ImageIndex = 2
    end
    object sTabSheet2: TsTabSheet
      Caption = 'Param'#233'tre'
      ImageIndex = 1
      object sGroupBox1: TsGroupBox
        Left = 15
        Top = 8
        Width = 769
        Height = 345
        Caption = 'Fiche d'#39'entreprise'
        TabOrder = 0
        BoxStyle = bsCard
        object edtCodeEnt: TLabeledEdit
          Left = 188
          Top = 64
          Width = 121
          Height = 25
          EditLabel.Width = 31
          EditLabel.Height = 17
          EditLabel.Caption = 'Code'
          EditLabel.Color = clWhite
          EditLabel.ParentColor = False
          LabelPosition = lpLeft
          LabelSpacing = 12
          TabOrder = 0
        end
        object edtNominationEntAr: TLabeledEdit
          Left = 480
          Top = 104
          Width = 209
          Height = 25
          BiDiMode = bdRightToLeft
          EditLabel.Width = 29
          EditLabel.Height = 17
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = #199#225#199#211#227
          EditLabel.Color = clWhite
          EditLabel.Font.Charset = ARABIC_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Segoe UI'
          EditLabel.Font.Style = []
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentColor = False
          EditLabel.ParentFont = False
          EditLabel.Layout = tlCenter
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          LabelPosition = lpRight
          LabelSpacing = 12
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
        end
        object edtNominationEnt: TLabeledEdit
          Left = 188
          Top = 104
          Width = 209
          Height = 25
          EditLabel.Width = 68
          EditLabel.Height = 17
          EditLabel.Caption = 'Nomination'
          EditLabel.Color = clWhite
          EditLabel.ParentColor = False
          LabelPosition = lpLeft
          LabelSpacing = 12
          TabOrder = 2
        end
        object edtCodeMinEnt: TLabeledEdit
          Left = 188
          Top = 224
          Width = 121
          Height = 25
          EditLabel.Width = 89
          EditLabel.Height = 17
          EditLabel.Caption = 'Code Minist'#232're'
          EditLabel.Color = clWhite
          EditLabel.ParentColor = False
          LabelPosition = lpLeft
          LabelSpacing = 12
          TabOrder = 3
        end
        object edtServiceEnt: TLabeledEdit
          Left = 188
          Top = 184
          Width = 97
          Height = 25
          EditLabel.Width = 99
          EditLabel.Height = 17
          EditLabel.Caption = 'Service Minist'#232're'
          EditLabel.Color = clWhite
          EditLabel.ParentColor = False
          LabelPosition = lpLeft
          LabelSpacing = 12
          TabOrder = 4
        end
        object edtComptTreEnt: TLabeledEdit
          Left = 188
          Top = 264
          Width = 201
          Height = 25
          EditLabel.Width = 87
          EditLabel.Height = 17
          EditLabel.Caption = 'Compte Tr'#233'sor'
          EditLabel.Color = clWhite
          EditLabel.ParentColor = False
          LabelPosition = lpLeft
          LabelSpacing = 12
          TabOrder = 5
        end
        object btnSave: TsBitBtn
          Left = 616
          Top = 296
          Width = 110
          Height = 25
          Caption = 'Enregistrer'
          Default = True
          TabOrder = 6
          OnClick = btnSaveClick
          ImageIndex = 4
          Images = actionsIcons
        end
        object edtWilayaAr: TLabeledEdit
          Left = 480
          Top = 144
          Width = 209
          Height = 25
          BiDiMode = bdRightToLeft
          EditLabel.Width = 32
          EditLabel.Height = 17
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = #199#225#230#225#199#237#201
          EditLabel.Color = clWhite
          EditLabel.Font.Charset = ARABIC_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Segoe UI'
          EditLabel.Font.Style = []
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentColor = False
          EditLabel.ParentFont = False
          EditLabel.Layout = tlCenter
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          LabelPosition = lpRight
          LabelSpacing = 12
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
        end
        object edtWilaya: TLabeledEdit
          Left = 188
          Top = 144
          Width = 209
          Height = 25
          EditLabel.Width = 38
          EditLabel.Height = 17
          EditLabel.Caption = 'Wilaya'
          EditLabel.Color = clWhite
          EditLabel.ParentColor = False
          LabelPosition = lpLeft
          LabelSpacing = 12
          TabOrder = 8
        end
      end
      object sGroupBox2: TsGroupBox
        Left = 16
        Top = 360
        Width = 769
        Height = 97
        Caption = 'Language'
        TabOrder = 1
        BoxStyle = bsCard
        object sComboBox1: TsComboBox
          Left = 192
          Top = 40
          Width = 233
          Height = 25
          DoubleBuffered = False
          TabOrder = 0
          BoundLabel.Active = True
          BoundLabel.Indent = 12
          BoundLabel.Caption = 'Language'
          LabelFromTextHint = True
          Items.Strings = (
            'Francais'
            'Arabe')
        end
        object sBitBtn1: TsBitBtn
          Left = 448
          Top = 40
          Width = 110
          Height = 25
          Caption = 'Enregistrer'
          Default = True
          TabOrder = 1
          ImageIndex = 4
          Images = actionsIcons
        end
      end
    end
  end
  object sideMenuIcons: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <>
    Left = 1009
  end
  object MainMenu1: TMainMenu
    Images = mainMenuIcons
    Left = 1106
    object F1: TMenuItem
      Caption = 'Fichier'
      object N2: TMenuItem
        Caption = '-'
      end
      object Q2: TMenuItem
        Caption = 'Quitter'
        ImageIndex = 0
        OnClick = Q2Click
      end
    end
    object N1: TMenuItem
      Caption = '?'
      object A1: TMenuItem
        Caption = 'A propos'
        ImageIndex = 1
      end
    end
  end
  object mainMenuIcons: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61453
        Color = -16777036
      end
      item
        Char = 61530
        Color = -5344256
      end>
    Left = 1041
    Bitmap = {}
  end
  object actionsIcons: TsCharImageList
    Height = 16
    Width = 16
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61452
      end
      item
        Char = 61453
      end
      item
        Char = 61442
      end
      item
        Char = 61460
      end
      item
        Char = 61639
      end
      item
        Char = 61543
      end
      item
        Char = 61544
      end
      item
        Char = 61504
      end>
    Left = 1074
    Bitmap = {}
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 976
  end
  object sAlphaImageList1: TsAlphaImageList
    Height = 32
    Width = 32
    Items = <
      item
        ImageFormat = ifPNG
        ImageName = 'cheap_2_30px'
        ImgData = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A200000006624B474400FF00FF00FFA0BDA793000005A049444154480DED165B
          6C1455F4CC9D9D9DD947DB9576DBED76DBD215A93615248410024109C8438981
          0AF880F86134A4F0AD319420313C3E8C1FF883443F4C03BE1284288616C32B52
          8D214D5385F2E8635B4AB7CF6DB7ED3E6666E7CE78EFDDDD76A6B44062F48BC9
          DC73CFEB9E73EFB9F79E73019E7CFF5304B8C7F57362DF86628CF41A8720BC83
          753DA063238F8E453C378E10D7ABAAB81EABEA8F7B3FBD3240F98F6A8F74FCF9
          872F051C0EFB51006E4B7989972BF57B5DB96E0748A29DD9961515266249E8E9
          1B8AF786470CE0B8D35A4AADAB3D7CA98F29CC011EEAF88BFDEBB79171F5550B
          02B6C5CF950B36C146C8B9FF9486E1AFB6907AAB33ACE9BABEABF6F0AF67E6D2
          9ED3F18903EB3FB021FEE0DA558B9CDE79B96C3CEF9080773981174500C4331E
          E818B0A2008E2500CB32E30D47C6E162D3DF09E2FDC0EE4F1A3F63CC196056C7
          C7EB5EDE2ADA6D2737AF5BE6743944408200F6827980A8C31906CCA44E26A08E
          8C829E4A413C21C3B98BCD4939A5BFB9E750C34F663D8A3FE098EEA9248A6D1B
          D72CC9C9F7E4009244100BBDC02144F5A75A6BF34DE0C9AAAB973C3BC5A388A1
          EBA00C8D804E561F199B84862B2D930686CADD471AFBA93CDBACD608D7E9108F
          5557964AD42967B3CDEA74341285DE50187ABAEE43C79D10C44998C950F6D309
          8A85F9C091F390FF540E542D0C3878913FC684266059F1F18F36CEE705687B63
          F30A073D4892BF08905D9C56370CF8EDD29F70A3E5CE348F60B924323BDFAB21
          D8F4AFCB0AC80383904A69F0C3B9A6644A87CABD872FF466352CC7D4E0714D45
          C007D4292F4956A76444677B0F739A4756B274F92216FEF1E80484EF0D10A9F5
          A75B440F23800CE5812223D43B406736B5728B6351B06D2B2D29705013BCDB45
          3B4B8B0C8D31BAB26A0154562F603805C60A0A1F6CBCCB05382943594981B3B7
          7F643BD198726CD96372F78279B969873C395444D1F27B8BF2194D0FD6ED1B9D
          E426E98CE62C1BC6580CA04C92F1E438010CA3823133C0E21863C3E390D21989
          E32D22A65EF14C19BCB0AC1A142505971BAEC1C92F4F436B73DBD40498920970
          BC8D514E6253C37A7AD68C43D240A6671D9939C710064C28A3D360C58B4BA1E6
          ED57A0A4CCC74EF3EF97AFC3D9EF1B00639C56784C68591642683429AB6CA8F1
          104345C505F0DA8E0DB0E5AD4DE0265B33181E863B373BD9383330B0C6C804B1
          C9F35C84111930C331171A9F8833113D140C3181E8D804C43272CA2E2E298485
          55418A426C32C17A33A0578AD25122E33814A278B6A53721439124FF6D77DFD0
          A2527F810BC71360CB716724E96E283C02971B9BC0EBCB07CFBC3CB6B75D777B
          48E1E220505E9C5632419C484FA6FBDE602CA5A44E994480CC84A1A19FEFDD8F
          208D5C7A9AF06933CB733DEEE9D0DEE880F65B5DA4562058BD7639F803456655
          563068D46802215789D7113A6756E0CC04C5BF3AB8A17E614560C7D2E783224D
          9992DFC7120595651B4D917F5C6D06511260D59AE5446E3563908A25F70F8241
          1670BDB54369EF097FF3FEC1C677B3E3698F2830B74442D977BBE3BE1A894E82
          A1692CE15343661D97DB09C56485053427A3194E71BA4850A7B448DCED0AABBA
          0A75E6F114E72930B7F34DDD139B56CEBFD5DD37BC3958E6B30BC42E4E245969
          4424F167750BC93E67134A9647B746191A06434D97C5F3575A622AD677D61EB9
          D09CD5C9F60F38A6825FAE856EBFBA3AA8B587FA57FABC1EC1290A80E37152EA
          1422A6AF1B44C29B0E168D0A4E2620351A8554741C809445FA10387FB5258175
          E3E3DA4317BE86593EB29E59B819D6F1BA75AF936B505F19F4F38BABE68BA25D
          C84866EF14B2D2D6B66E998497E413BC6BCFD18B6767D72417612E4196CF1E06
          927884E4DAED7E5FBE162C2B727B725DE076494C251697616C3C06217265C283
          A33640E83BACA9FBFFD5638F59CE00FABCD5386DAB24D87692683E9DCDBD361E
          4500711D9AA29DD235EDCCE33E6F33669F74FF7D04FE0189C94093EEE86D6100
          00000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImageName = 'settings_30px'
        ImgData = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A200000006624B474400FF00FF00FFA0BDA7930000067749444154480DD5166B
          509455F47CDF7EFBED9BDD655958581430350346818C40990C347BCCA8659335
          933A8E694E53D39496A0CD1433390D98E94CFFB419D3D499D4F191CDA889AF12
          04342441B114935558814576D9F7EEF7EADEBBEC02020AFD69FAE69E73CFEB9E
          73EF77EF3DE702FC471F35DEB85BD6ED4B9368BE0D067D024DA595552EBF3B48
          F4589279ACC54306222D14A74C4CF615941468B0AAEE4CADAFB3BDB318D1BB11
          8CB9D163B6EC376415CC224B6A12098A4549A9160DC3B00B313D1E18F38ABFDA
          B0DBC40AF0A62888F34C49E6588C044B028892307FF3A7BBDE63787EFFDA6DAB
          7A63CA4710D4237444555E7E803570DC1792207E94684D1253274DD05AD3AD44
          17451D6D1D70EFF63DAFC3DE454B14BDD5AD907F595EBE241CD58FD40F09FC4D
          E99E59344DBFCEF1C2317D5FE0A2572BB7C894CA33268BC93AFDD9196A8D563D
          928F98CCEFF1C3D5FA269FA3CBD1210543F3B45EAEB34FAF9A2567640B45513C
          B4AE72D9C5A8712CF081370EC8EC53F89BD68CD40CE703A7C7EBF2C881026146
          FE7465DAD474B2256EA71B6CAD6DE0B03B201808121F4AB512CCC989903E251D
          74061D91DDF9EB0EDF7CA9290040315A838E339A0CBAF63BED77ACB7E453971C
          5C22602306230C7727853E301A0D96DC59397832715C98039FDB07860403A0D9
          C2B5CBCD60BF6B8769394F40565E3E68F491F3E5EBF381EDB61D6A4E5503DE82
          EC99D990F16406633419759A380DC859B90AFB77BBDC165B86FB7D447F8B00AD
          0961BC8FBA60B8FB993933F52913539064A0E1A0B5676A41A353C2732FCF0446
          1E9BEB8011A2788E870BC72F83CF1B8682B90580B60C49071A9EF4E55F2FF769
          7BFDE6353BD670E43A450E82B8BAB1BAD1DFD7EB1AB04654537D13A8352C942C
          281835283223BAE28585A05433D07CA9198B62807D62DF00D26A1C142B641861
          38557DA4655EE1A23FD1E95C98949224C77BE776F641CB951678E5ADE741C644
          4CBD6E3F9C3B56EBBB58D5205EADBBC177DEEB09255A4DAC42C9A22D0548CDB0
          40FDD92B6049B58042A900578F0B2E9CB810407F6EE9BA8A6587702C0C64C598
          C0F0C9E6E58769197DC9EBF16216DA5A6D90993705E40A39E171D0C33B4F06EE
          DB7A2AF8204CC370DFE6A838BAAB2AE0F3A0B384AC583481A7F22643DB2D1BE2
          00BC6E2F5032AA7E6DC5D22344D08F866D98280AD9F16623513B3ABA617A7E21
          A131AAF9E5779FC843C5DACAB73761BE1F366DDBB887AAA96A289DBFB8488365
          6993AD70EEE73A44668311F99244C842CC903664C55823F0925EA152621202BE
          00E8FA4F2F16DCBFDBCD72527027A60783141077DADBBA23BF0529E20C1AF07B
          FD880250225F22CF1B0833080D0B3C48071262288A4278A051122D0E70118A93
          F31250D83AC293BB3288ED970EE986059631545FA83F39A8352A70BB22FB8D47
          254F4C0C3334BB0AD3838165D877522698F9A8CCEDF481BA3FCBE14443338C2B
          AA8BF64C9488F6342DBBD6EB70CE516B3560B62682EDA61DE2CD06A22E28C9D1
          FCB4E7CCC6ADA5FB204887B663A15254ACA1296A4341492E491458666BED0073
          4A1226C1E9700245D1D70833080D59F196F53F2C46D5275FABD312139C066F34
          B60217E208AF37C5C1E2952FAA92D312CA9412DBA1A4D8F6E43473D9A2152FA8
          E2E275C4261C0CC38D2BAD903E358DF0DA382D48A250B0B56CEF6B44D08F621B
          F875E99E252CC37C5FF4D26CB53E3EB2426C83722EF07C08E62E9A45EE29968D
          0A12C0E9A335E8FEAA21EBE9EC98194E20D5276BFCBCC0AD5857B1FC20569015
          E3944953B023B7287748506C80736FC0CF1187A140188B468420D2551DA98650
          4040773F6B880D5E08F68D66FEDDF677B793D34FD2D1F9F30785F9B35FF5A1B2
          56943E355D8147E122E1717A40850E184EFE3D9D0FA0EE6C03702827B3720658
          959C148FDE2E17DCB87A1B7E3B5E0FF10926C89B9D07144D938C85B39D4C4642
          C095EA068FDF17FAECC36F57D661FFB15F3D5A59CCCCCB544DCE9C4C4647CB62
          B7BD1B55AEC83DD5A20A644E195A166FB7B4F2D71B5A0228C0A86531161819C1
          C30F01A75195AC9431A78D89F1D69CC29C313D041A6B1BFDE856B48BC1E0D81E
          0238F04880F75F1FE63F9724F1E3A494C4D19F3E7FDFF33A3AFEE5D367A4C051
          59F4B147CB6495C50B4AB43ABD96A83C7D5E9497CF7A799E5F3F9EC71E193C1E
          B46DE3DEFD5587AF4AADD7DD044E1DFA43DAB661DF8FE3F1816DC975C2C45881
          E3C4135DF64E4FD4BEBBA3CB2308FC89283FD67E58CA7CDC4041269CBF6FEBD4
          1DD9152BAF3A4A64CEC3FFE5FB074329BAC11BC842950000000049454E44AE42
          6082}
      end
      item
        ImageFormat = ifPNG
        ImageName = 'withdrawal_30px'
        ImgData = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A200000006624B474400FF00FF00FFA0BDA793000003D949444154480DED565D
          6C1455143EF3B333B33BB0D5A4A2DBDD50581B8BA45434AD403028815290EA8B
          C627240A43820F4DFC894050928DF181447DC107695A83C4C47F1321D0C0D282
          109A1A4BD240D2604D6CBB05B6B0E581FEB83BB373EF5CEFBDC96EDBCDEECEEE
          06A326DEE4DC39F39D73BEEFCED9D97B07E0BF368CE3070FED3A76E050A5EB96
          2A29348EBF1FF12AEA7E4592D7AF7A619D3CF8D3E58BE5F2942DBCFBD8C1C3BA
          A6BEB9B5798D5E170C29B1C49DE686ED6BFD83272EF796235E963013F579D5F6
          D6A635BA227B40124558FE4840194FDC79B2A16DDDE272C44B16DED9B56FBF43
          9C8895B63D4363A3D018AEE30FF8F5F91EB06C5B710879E68917D79B574FF6F5
          F1C0DF31D14590E8582F37E657A2215652743F6AFE17BE1F5D2C89E31F6BB5C0
          9677E0A32EC2AECC0EBF6B708CF9B9D6D3B9E9612228ED49597F6F91887978C6
          9160B193FC1059E8D3D637A2090EE69972351688B06021E168D7F3AF8A027404
          962E1742E1C734AFBE88D3A7FE9C819B23BF9B13E36384106CB41867BFE2819C
          2997BBA4569FFB7CDB4ED9231F7D7AE3566FFDE38D9A62D9806E27B8291686FA
          15ABB5E6E7B6782559ED8C766EDF91A399F7D655B8F7B3B6A02888479B37B4F8
          54228095B80B8E6901711C6E8E69823539095E2242D386CD3E51828E331DAD81
          BC6AF3405761A2396F0797D5495E8F02686A9A978EDD9C841FBBFBE154EF1518
          8FDFE5983D3D033E458360EDA3B22C7BDEE26091C9555814A59702B561851167
          78E87E0D4FAD0A43DBA626585A539D81015171962B49E2CB59B080E32A8C110E
          E87E3F38567A01C5D0F00DB8F8CB1024535616772C0B747F1560846AB26001C7
          5598D791ECBF8DDFD6876BA06D731304963C088343A31C9B9BC89C5BC4731596
          646962767A0A4455C9D2CC264D401843DA46A06973B8A8AA303B750F24598E67
          930B38AEC20E767E88C7FE303DB4DD198E7B53B3D037701DE8190CAB572E83CC
          90ABFC108F8D98B4D5DF67B04257576149201FC763A338655BE079A08AF38402
          D5F0ECDA06685C51CBBF4218C862492B0513E32318DBE81386153357E18DAF77
          DFC60E180397CED1063BA02EA90651530104BAE95113350DD487AA2145105CB9
          D493A4AFC3AE625B676631AEC22CB1D538FD0DB2D1DE5F2F9C490D5FBF66A655
          0F68A120B7B42AC1F06F57CD819FA3298CAC3D2DBBBBBF63356E26BB2564E25B
          8CEE2FE92111A5BF617BE2D68D571046B52C46778B9883D1B7385DFC9060B905
          8D6EE456FB9123B48F05532A0A304ECA6DCE2FCE6935E9F799FA3B9148A4E44E
          CC27CBE7332EDDF2EEA32FC582AFCF8502926008987C61EAA10FE80A4BFEF4CD
          2798C1E863B283BB1F13F41AFC1BC65F47AC7CBFA18762190000000049454E44
          AE426082}
      end>
    Left = 936
    Top = 8
    Bitmap = {}
  end
end
