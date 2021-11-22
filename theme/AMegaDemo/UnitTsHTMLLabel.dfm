inherited FrameTsHTMLLabel: TFrameTsHTMLLabel
  object sHTMLLabel1: TsHTMLLabel [0]
    Left = 70
    Top = 36
    Width = 523
    Height = 89
    Alignment = taCenter
    AutoSize = False
    SkinSection = 'GROUPBOX'
    Caption = 
      '<a href="http://www.alphaskins.com/showdoc.php?l=en&n=0&d=1000">' +
      'Learn more</a> about <b>the package features</b>, <b>tips</b> an' +
      'd <b>tricks</b><br>'#13#10#13'Download and try <a href="http://www.alpha' +
      'skins.com/ademos.php?d=1000">more demo programs</a>'
    Color = clInfoBk
    ParentColor = False
    Layout = tlCenter
  end
  object sLabel1: TsLabel [1]
    Left = 70
    Top = 304
    Width = 523
    Height = 41
    AutoSize = False
    Enabled = False
  end
  object sLabel2: TsLabel [2]
    Left = 70
    Top = 288
    Width = 77
    Height = 16
    Caption = 'Plain caption:'
  end
  object sCheckBox2: TsCheckBox [3]
    Left = 512
    Top = 139
    Width = 81
    Height = 18
    Caption = 'UseHTML'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox2Click
  end
  object sGroupBox1: TsGroupBox [4]
    Left = 70
    Top = 364
    Width = 523
    Height = 69
    Caption = 'Alignment'
    TabOrder = 2
    object sRadioButton1: TsRadioButton
      Left = 72
      Top = 32
      Width = 95
      Height = 18
      Caption = 'taLeftJustify'
      TabOrder = 0
      OnClick = sRadioButton1Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 208
      Top = 32
      Width = 103
      Height = 18
      Caption = 'taRightJustify'
      TabOrder = 1
      OnClick = sRadioButton1Click
    end
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 356
      Top = 32
      Width = 77
      Height = 18
      Caption = 'taCenter'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton1Click
    end
  end
  object sGroupBox2: TsGroupBox [5]
    Left = 70
    Top = 444
    Width = 523
    Height = 69
    Caption = 'Layout'
    TabOrder = 3
    object sRadioButton4: TsRadioButton
      Left = 72
      Top = 32
      Width = 57
      Height = 18
      Caption = 'tlTop'
      TabOrder = 0
      OnClick = sRadioButton4Click
    end
    object sRadioButton5: TsRadioButton
      Tag = 1
      Left = 208
      Top = 32
      Width = 73
      Height = 18
      Caption = 'tlCenter'
      TabOrder = 1
      OnClick = sRadioButton4Click
    end
    object sRadioButton6: TsRadioButton
      Tag = 2
      Left = 356
      Top = 32
      Width = 75
      Height = 18
      Caption = 'tlBottom'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton4Click
    end
  end
  object sMemo1: TsMemo [6]
    Left = 70
    Top = 180
    Width = 523
    Height = 89
    Lines.Strings = (
      
        '<a href="http://www.alphaskins.com/showdoc.php?l=en&n=0&d=1000">' +
        'Learn '
      
        'more</a> about <b>the package features</b>, <b>tips</b> and <b>t' +
        'ricks</b><br>'
      
        'Download and try <a href="http://www.alphaskins.com/ademos.php?d' +
        '=1000">more '
      'demo programs</a>')
    TabOrder = 0
    OnChange = sMemo1Change
    Text = 
      '<a href="http://www.alphaskins.com/showdoc.php?l=en&n=0&d=1000">' +
      'Learn more</a> about <b>the package features</b>, <b>tips</b> an' +
      'd <b>tricks</b><br>'#13#10'Download and try <a href="http://www.alphas' +
      'kins.com/ademos.php?d=1000">more demo programs</a>'#13#10
    BoundLabel.Active = True
    BoundLabel.Caption = 'Edit:'
    BoundLabel.Layout = sclTopLeft
  end
end
