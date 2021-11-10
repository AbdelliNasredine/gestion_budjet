inherited Frame_Hints: TFrame_Hints
  object sLabelFX1: TsLabelFX [0]
    Left = 175
    Top = 31
    Width = 371
    Height = 83
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'The TsAlphaHints component redefines properties of standard hint' +
      's in application and adds some additional possibilities.'#13#13'For a ' +
      'component using it is enough to place it to the main form of app' +
      'lication, that'#39's all.'
    ParentFont = False
    WordWrap = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 32
    Top = 136
    Width = 641
    Height = 233
    Caption = 'Show hints'
    TabOrder = 0
    Images = MainForm.ImageList16
    ImageIndex = 1
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 32
      Top = 128
      Width = 64
      Height = 20
      Caption = 'Standard'
      TabOrder = 0
      OnClick = sRadioButton1Click
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 32
      Top = 88
      Width = 70
      Height = 20
      Caption = 'Templated'
      TabOrder = 1
      OnClick = sRadioButton1Click
    end
    object sRadioButton1: TsRadioButton
      Left = 32
      Top = 48
      Width = 57
      Height = 20
      Caption = 'Skinned'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton1Click
    end
    object sListBox1: TsListBox
      Left = 144
      Top = 40
      Width = 473
      Height = 112
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      IntegralHeight = True
      ItemHeight = 18
      ParentFont = False
      TabOrder = 3
      OnClick = sListBox1Click
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
    end
    object sBitBtn1: TsBitBtn
      Left = 470
      Top = 168
      Width = 145
      Height = 29
      Caption = 'Open templates editor...'
      TabOrder = 4
      OnClick = sBitBtn1Click
      ShowFocus = False
    end
    object sCheckBox1: TsCheckBox
      Left = 60
      Top = 180
      Width = 65
      Height = 20
      Caption = 'Animated'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = sCheckBox1Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox2: TsCheckBox
      Left = 180
      Top = 180
      Width = 90
      Height = 20
      Caption = 'AutoAlignment'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = sCheckBox2Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox3: TsCheckBox
      Left = 324
      Top = 180
      Width = 67
      Height = 20
      Caption = 'Use HTML'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = sCheckBox3Click
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 488
  end
end
