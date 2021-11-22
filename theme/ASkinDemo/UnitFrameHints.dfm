inherited Frame_Hints: TFrame_Hints
  object sLabelFX1: TsLabelFX [0]
    Left = 100
    Top = 12
    Width = 497
    Height = 141
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
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -7
    Shadow.OffsetKeeper.RightBottom = 9
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 32
    Top = 152
    Width = 641
    Height = 233
    Caption = 'Show hints'
    TabOrder = 0
    Images = MainForm.CharImageList16
    ImageIndex = 12
    CheckBoxVisible = True
    OnCheckBoxChanged = sGroupBox1CheckBoxChanged
    object sRadioButton3: TsRadioButton
      Tag = 2
      Left = 32
      Top = 128
      Width = 90
      Height = 17
      Caption = 'Standard'
      TabOrder = 0
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton2: TsRadioButton
      Tag = 1
      Left = 32
      Top = 88
      Width = 90
      Height = 17
      Caption = 'Templated'
      TabOrder = 1
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sRadioButton1: TsRadioButton
      Left = 32
      Top = 48
      Width = 90
      Height = 17
      Caption = 'Skinned'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = sRadioButton1Click
      AutoSize = False
    end
    object sListBox1: TsListBox
      Left = 144
      Top = 40
      Width = 473
      Height = 112
      Columns = 3
      IntegralHeight = True
      ItemHeight = 18
      TabOrder = 3
      OnClick = sListBox1Click
    end
    object sBitBtn1: TsBitBtn
      Left = 432
      Top = 168
      Width = 183
      Height = 29
      Caption = 'Open templates editor...'
      TabOrder = 4
      OnClick = sBitBtn1Click
      ShowFocus = False
      ImageIndex = 19
      Images = MainForm.CharImageList16
    end
    object sCheckBox1: TsCheckBox
      Left = 60
      Top = 180
      Width = 78
      Height = 20
      Caption = 'Animated'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = sCheckBox1Click
    end
    object sCheckBox2: TsCheckBox
      Left = 180
      Top = 180
      Width = 107
      Height = 20
      Caption = 'AutoAlignment'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = sCheckBox2Click
    end
    object sCheckBox3: TsCheckBox
      Left = 324
      Top = 180
      Width = 81
      Height = 20
      Caption = 'Use HTML'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = sCheckBox3Click
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 8
    Top = 12
  end
end
