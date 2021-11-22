inherited FrameTsOthers5: TFrameTsOthers5
  Width = 956
  Height = 605
  Align = alClient
  object sGroupBox1: TsGroupBox [0]
    Left = 50
    Top = 50
    Width = 735
    Height = 163
    Caption = 'TsPathDialog dialogs'
    TabOrder = 0
    BoxStyle = bsCard
    object sBitBtn1: TsBitBtn
      Left = 391
      Top = 48
      Width = 103
      Height = 29
      Caption = 'Call dialog'
      TabOrder = 1
      OnClick = sBitBtn1Click
    end
    object sGroupBox3: TsGroupBox
      Left = 520
      Top = 24
      Width = 185
      Height = 121
      Caption = '`DialogOptions`:'
      TabOrder = 4
      object sCheckBox1: TsCheckBox
        Left = 24
        Top = 32
        Width = 140
        Height = 18
        Caption = '`sdAllowCreate`'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox1Click
      end
      object sCheckBox2: TsCheckBox
        Left = 24
        Top = 60
        Width = 140
        Height = 18
        Caption = '`sdPerformCreate`'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = sCheckBox2Click
      end
      object sCheckBox3: TsCheckBox
        Left = 24
        Top = 88
        Width = 140
        Height = 18
        Caption = '`sdPrompt`'
        AutoSize = False
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = sCheckBox3Click
      end
    end
    object sEdit1: TsEdit
      Left = 80
      Top = 48
      Width = 305
      Height = 29
      AutoSize = False
      TabOrder = 0
      Text = 'c:\'
      AddedGlyph.Images = FormData.CharList16
      AddedGlyph.ImageIndex = 19
      BoundLabel.Active = True
      BoundLabel.Caption = '`Path`:'
      Padding.Left = 4
      VerticalAlignment = taVerticalCenter
    end
    object sComboBox1: TsComboBox
      Left = 80
      Top = 92
      Width = 174
      Height = 21
      BoundLabel.Active = True
      BoundLabel.Caption = '`Root`:'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'rfDesktop'
      OnChange = sComboBox1Change
      Items.Strings = (
        'rfDesktop'
        'rfMyComputer'
        'rfNetwork'
        'rfRecycleBin'
        'rfAppData'
        'rfCommonDesktopDirectory'
        'rfCommonPrograms'
        'rfCommonStartMenu'
        'rfCommonStartup'
        'rfControlPanel'
        'rfDesktopDirectory'
        'rfFavorites'
        'rfFonts'
        'rfInternet'
        'rfPersonal'
        'rfPrinters'
        'rfPrintHood'
        'rfPrograms'
        'rfRecent'
        'rfSendTo'
        'rfStartMenu'
        'rfStartup'
        'rfTemplates')
    end
    object sCheckBox4: TsCheckBox
      Left = 274
      Top = 95
      Width = 108
      Height = 17
      Caption = '`ShowRootBtns`'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox4Click
    end
  end
  object sGroupBox2: TsGroupBox [1]
    Left = 50
    Top = 240
    Width = 735
    Height = 173
    Caption = 'File dialogs'
    TabOrder = 1
    BoxStyle = bsCard
    object sBitBtn2: TsBitBtn
      Left = 26
      Top = 35
      Width = 165
      Height = 29
      Caption = 'TsOpenDialog'
      TabOrder = 0
      OnClick = sBitBtn2Click
    end
    object sBitBtn3: TsBitBtn
      Left = 199
      Top = 35
      Width = 165
      Height = 29
      Caption = 'TsSaveDialog'
      TabOrder = 1
      OnClick = sBitBtn3Click
    end
    object sBitBtn4: TsBitBtn
      Left = 545
      Top = 35
      Width = 165
      Height = 29
      Caption = 'TsSavePictureDialog'
      TabOrder = 3
      OnClick = sBitBtn4Click
    end
    object sBitBtn5: TsBitBtn
      Left = 372
      Top = 35
      Width = 165
      Height = 29
      Caption = 'TsOpenPictureDialog'
      TabOrder = 2
      OnClick = sBitBtn5Click
    end
    object sGroupBox4: TsGroupBox
      Left = 26
      Top = 86
      Width = 255
      Height = 63
      Caption = 'Zip files opening'
      TabOrder = 4
      object sRadioButton1: TsRadioButton
        Left = 32
        Top = 28
        Width = 86
        Height = 17
        Caption = '`zsAsFolder`'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = sRadioButton1Click
      end
      object sRadioButton2: TsRadioButton
        Tag = 1
        Left = 152
        Top = 28
        Width = 72
        Height = 17
        Caption = '`zsAsFile`'
        TabOrder = 1
        OnClick = sRadioButton1Click
      end
    end
  end
  object sPathDialog1: TsPathDialog
    Root = 'rfDesktop'
    ShowRootBtns = True
    Left = 292
    Top = 64
  end
  object sOpenDialog1: TsOpenDialog
    ZipShowing = zsAsFile
    Left = 148
    Top = 244
  end
  object sSaveDialog1: TsSaveDialog
    Left = 336
    Top = 244
  end
  object sOpenPictureDialog1: TsOpenPictureDialog
    Left = 512
    Top = 244
  end
  object sSavePictureDialog1: TsSavePictureDialog
    Left = 692
    Top = 244
  end
end
