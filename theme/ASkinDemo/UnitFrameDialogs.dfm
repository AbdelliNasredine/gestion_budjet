inherited Frame_Dialogs: TFrame_Dialogs
  OnResize = FrameResize
  object sGroupBox1: TsGroupBox [0]
    Left = 37
    Top = 15
    Width = 632
    Height = 238
    Caption = 'sMessageDlg function'
    TabOrder = 0
    object sEdit1: TsEdit
      Left = 249
      Top = 32
      Width = 218
      Height = 21
      TabOrder = 0
      Text = 'Message text'
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sGroupBox2: TsGroupBox
      Left = 249
      Top = 73
      Width = 152
      Height = 120
      Caption = 'Message type'
      TabOrder = 1
      CaptionLayout = clTopCenter
      object sRadioButton1: TsRadioButton
        Left = 21
        Top = 21
        Width = 110
        Height = 17
        Caption = 'Warning'
        Checked = True
        TabOrder = 0
        TabStop = True
        AutoSize = False
      end
      object sRadioButton2: TsRadioButton
        Left = 21
        Top = 43
        Width = 110
        Height = 17
        Caption = 'Error'
        TabOrder = 1
        AutoSize = False
      end
      object sRadioButton3: TsRadioButton
        Left = 21
        Top = 65
        Width = 110
        Height = 17
        Caption = 'Information'
        TabOrder = 2
        AutoSize = False
      end
      object sRadioButton4: TsRadioButton
        Left = 21
        Top = 87
        Width = 110
        Height = 17
        Caption = 'Confirmation'
        TabOrder = 3
        AutoSize = False
      end
    end
    object sButton1: TsButton
      Left = 500
      Top = 30
      Width = 98
      Height = 25
      Caption = 'Show dialog'
      TabOrder = 2
      OnClick = sButton1Click
    end
    object sRadioGroup1: TsRadioGroup
      Left = 33
      Top = 73
      Width = 186
      Height = 148
      Caption = 'Message buttons'
      TabOrder = 3
      CaptionLayout = clTopCenter
      Items.Strings = (
        'OK'
        'OKCANCEL'
        'ABORTRETRYIGNORE'
        'YESNOCANCEL'
        'YESNO'
        'RETRYCANCEL')
    end
    object sCheckBox1: TsCheckBox
      Left = 265
      Top = 204
      Width = 111
      Height = 17
      Caption = 'Show Help button'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object sEdit4: TsEdit
      Left = 33
      Top = 32
      Width = 186
      Height = 21
      TabOrder = 5
      Text = 'Dialog title'
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sCheckBox2: TsCheckBox
      Left = 444
      Top = 94
      Width = 135
      Height = 17
      Caption = 'Blackout the main form'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object sGroupBox3: TsGroupBox [1]
    Left = 37
    Top = 274
    Width = 348
    Height = 102
    Caption = 'Messages'
    TabOrder = 1
    object sEdit2: TsEdit
      Left = 28
      Top = 26
      Width = 291
      Height = 21
      TabOrder = 0
      Text = 'Message text for "sShowMessage" procedure'
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sButton2: TsButton
      Left = 28
      Top = 58
      Width = 131
      Height = 25
      Caption = 'sShowMessage'
      TabOrder = 1
      OnClick = sButton2Click
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sButton4: TsButton
      Left = 161
      Top = 58
      Width = 158
      Height = 25
      Caption = 'Application.MessageBox'
      TabOrder = 2
      OnClick = sButton4Click
      SkinData.OuterEffects.Visibility = ovAlways
    end
  end
  object sGroupBox4: TsGroupBox [2]
    Left = 405
    Top = 274
    Width = 264
    Height = 102
    Caption = 'sInputQuery function'
    TabOrder = 2
    object sEdit3: TsEdit
      Left = 27
      Top = 26
      Width = 213
      Height = 21
      TabOrder = 0
      Text = 'Message text for "sInputQuery" function'
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sButton3: TsButton
      Left = 27
      Top = 58
      Width = 213
      Height = 25
      Caption = 'Show dialog'
      TabOrder = 1
      OnClick = sButton3Click
      SkinData.OuterEffects.Visibility = ovAlways
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 12
    Top = 24
  end
end
