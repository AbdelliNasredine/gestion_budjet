object MainForm: TMainForm
  Left = -1185
  Top = 4
  Width = 1119
  Height = 586
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
  PixelsPerInch = 96
  TextHeight = 13
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 508
    Width = 1103
    Height = 19
    Panels = <>
  end
  object mainMenu: TsPageControl
    Left = 0
    Top = 0
    Width = 1103
    Height = 508
    ActivePage = sTabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Images = sideMenuIcons
    MultiLine = True
    ParentFont = False
    TabHeight = 135
    TabOrder = 1
    TabPosition = tpLeft
    TabWidth = 85
    GlyphLayout = glTop
    ReflectedGlyphs = True
    RotateCaptions = True
    TabMargin = 12
    TabPadding = 12
    TabSpacing = 14
    object sTabSheet1: TsTabSheet
      Caption = 'Budjet'
      object sGroupBox3: TsGroupBox
        Left = 760
        Top = 85
        Width = 200
        Height = 415
        Align = alRight
        Anchors = [akRight, akBottom]
        Caption = 'Actions'
        TabOrder = 0
        BoxStyle = bsCard
        object sBitBtn2: TsBitBtn
          Left = 7
          Top = 32
          Width = 185
          Height = 35
          Caption = 'Nouveau &Branche'
          TabOrder = 0
          OnClick = sBitBtn2Click
          Margin = 8
          ImageIndex = 5
          Alignment = taLeftJustify
          Images = actionsIcons
        end
        object sBitBtn3: TsBitBtn
          Left = 7
          Top = 72
          Width = 185
          Height = 35
          Caption = 'Nouveau &Rubrique'
          TabOrder = 1
          Margin = 8
          ImageIndex = 5
          Alignment = taLeftJustify
          Images = actionsIcons
        end
        object sBitBtn4: TsBitBtn
          Left = 7
          Top = 112
          Width = 185
          Height = 35
          Caption = 'Nouveau &Section'
          TabOrder = 2
          Margin = 8
          ImageIndex = 5
          Alignment = taLeftJustify
          Images = actionsIcons
        end
        object sBitBtn5: TsBitBtn
          Left = 7
          Top = 152
          Width = 185
          Height = 35
          Caption = 'Nouveau &Chapitre'
          TabOrder = 3
          Margin = 8
          ImageIndex = 5
          Alignment = taLeftJustify
          Images = actionsIcons
        end
        object sBitBtn6: TsBitBtn
          Left = 7
          Top = 192
          Width = 185
          Height = 35
          Caption = 'Nouveau &Article'
          TabOrder = 4
          Margin = 8
          ImageIndex = 5
          Alignment = taLeftJustify
          Images = actionsIcons
        end
      end
      object panelHeader: TsPanel
        Left = 0
        Top = 0
        Width = 960
        Height = 85
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientActiveCaption
        DoubleBuffered = False
        TabOrder = 1
        object sLabel1: TsLabel
          Left = 16
          Top = 8
          Width = 94
          Height = 45
          Align = alCustom
          Caption = 'Budjet'
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
        end
        object sLabel2: TsLabel
          Left = 16
          Top = 48
          Width = 122
          Height = 21
          Align = alCustom
          Caption = 'Gestion de budjet'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
        end
      end
      object panelBody: TsPanel
        Left = 0
        Top = 85
        Width = 760
        Height = 415
        Align = alClient
        BevelOuter = bvNone
        DoubleBuffered = False
        TabOrder = 2
        object sPageControl1: TsPageControl
          Left = 0
          Top = 0
          Width = 760
          Height = 415
          ActivePage = sTabSheet5
          Align = alClient
          TabOrder = 0
          object sTabSheet5: TsTabSheet
            Caption = 'Branches'
          end
          object sTabSheet6: TsTabSheet
            Caption = 'Rubriques'
          end
          object sTabSheet7: TsTabSheet
            Caption = 'Sections'
          end
          object sTabSheet8: TsTabSheet
            Caption = 'Chapiters'
          end
          object sTabSheet9: TsTabSheet
            Caption = 'Articles'
          end
        end
      end
    end
    object sTabSheet3: TsTabSheet
      Caption = 'Engagements'
    end
    object sTabSheet4: TsTabSheet
      Caption = 'Mandatements'
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
        object edtCode: TLabeledEdit
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
        object edtNominationAr: TLabeledEdit
          Left = 520
          Top = 104
          Width = 209
          Height = 25
          BiDiMode = bdRightToLeft
          EditLabel.Width = 85
          EditLabel.Height = 17
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Nomination Ar'
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
          LabelPosition = lpLeft
          LabelSpacing = 12
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
        end
        object edtNomination: TLabeledEdit
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
        object cbxWillaya: TsComboBox
          Left = 188
          Top = 144
          Width = 209
          Height = 25
          DoubleBuffered = False
          TabOrder = 3
          BoundLabel.Active = True
          BoundLabel.Indent = 12
          BoundLabel.Caption = 'Willaya'
          Items.Strings = (
            'Adrar'
            'Chlef'
            'Lagouat'
            'Oum El Bouaghi'
            'Batna'
            'Bejaia'
            'Biskra'
            'Bechar'
            'Blida'
            'Bouira'
            'Tamanrasset'
            'T'#233'bessa'
            'Tlemcen'
            'Tiaret'
            'Tizi Ouzou'
            'Alger'
            'Djelfa'
            'Jijel'
            'S'#233'tif'
            'Saida'
            'Skikda'
            'Sidi Bel Abb'#233's'
            'Annaba'
            'Guelma'
            'Constantine'
            'M'#233'd'#233'a'
            'Mostaganem'
            'M'#39'Slila'
            'Mascara'
            'Ouargla'
            'Oran'
            'El Bayadh'
            'Illizi'
            'Bordj Bou Arreridj'
            'Boumerd'#233's'
            'Tarf'
            'Tindouf'
            'Tissemsilt'
            'Oued'
            'Khenchla'
            'Souk Ahras'
            'Tipaza'
            'Mila'
            'Defla'
            'Naama'
            'Ain T'#233'mouchent'
            'Ghardaia'
            'Relizane'
            'Timimoun'
            'Bordj Badji Mokhtar'
            'Ouled Djellal'
            'B'#233'ni Abb'#233's'
            'In Salah'
            'In Guezzam'
            'Touggourt'
            'Djanet'
            'EL M'#39'Ghair'
            'EL Meniaa')
        end
        object edtCodeM: TLabeledEdit
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
          TabOrder = 4
        end
        object edtServiceM: TLabeledEdit
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
          TabOrder = 5
        end
        object edtComptT: TLabeledEdit
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
          TabOrder = 6
        end
        object btnSave: TsBitBtn
          Left = 616
          Top = 296
          Width = 110
          Height = 25
          Caption = 'Enregistrer'
          TabOrder = 7
          OnClick = btnSaveClick
          ImageIndex = 4
          Images = actionsIcons
        end
      end
      object sGroupBox2: TsGroupBox
        Left = 16
        Top = 360
        Width = 769
        Height = 97
        Caption = 'Language'
        TabOrder = 1
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
    Items = <
      item
        Char = 61459
      end
      item
        Char = 61918
      end>
    Left = 9
    Top = 480
    Bitmap = {}
  end
  object MainMenu1: TMainMenu
    Images = mainMenuIcons
    Left = 10
    Top = 384
    object F1: TMenuItem
      Caption = 'Fichier'
      object N2: TMenuItem
        Caption = '-'
      end
      object Q2: TMenuItem
        Caption = 'Quitter'
        ImageIndex = 0
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
    Left = 9
    Top = 448
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
      end>
    Left = 10
    Top = 416
    Bitmap = {}
  end
  object qryInsertFicheEnt: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budjet;Data Source=NAS' +
      'RO-DEV'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'nominationFr'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'nominationAr'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'wilayaFr'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'wilayaAr'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'codeM'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'serviceM'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'compte'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO entreprise (code_En, nomination_FR, nomination_AR, w' +
        'ilaya_FR, wilaya_AR, Code_M, service_M, compte_tresor_w)'
      
        'VALUES (:code, :nominationFr, :nominationAr, :wilayaFr, :wilayaA' +
        'r, :codeM, :serviceM, :compte)')
    Left = 40
    Top = 480
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 88
    Top = 368
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budjet;Data Source=NAS' +
      'RO-DEV'
    CursorType = ctStatic
    TableName = 'entreprise'
    Left = 88
    Top = 416
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 72
    Top = 480
  end
end
