object FormCustomPopup: TFormCustomPopup
  Left = 425
  Top = 378
  BorderStyle = bsNone
  Caption = 'FormCustomPopup'
  ClientHeight = 173
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 365
    Height = 173
    SkinData.SkinSection = 'MAINMENU'
    Align = alClient
    TabOrder = 0
    object sSpeedButton1: TsSpeedButton
      Left = 20
      Top = 16
      Width = 77
      Height = 22
      Caption = 'Last month'
      OnClick = sSpeedButton1Click
    end
    object sSpeedButton2: TsSpeedButton
      Tag = 1
      Left = 103
      Top = 16
      Width = 77
      Height = 22
      Caption = 'Last week'
      OnClick = sSpeedButton1Click
    end
    object sSpeedButton3: TsSpeedButton
      Tag = 2
      Left = 186
      Top = 16
      Width = 77
      Height = 22
      Caption = 'Next week'
      OnClick = sSpeedButton1Click
    end
    object sSpeedButton4: TsSpeedButton
      Tag = 3
      Left = 269
      Top = 16
      Width = 77
      Height = 22
      Caption = 'Next month'
      OnClick = sSpeedButton1Click
    end
    object sSpeedButton5: TsSpeedButton
      Left = 20
      Top = 135
      Width = 77
      Height = 25
      Caption = 'Hide'
      OnClick = sSpeedButton5Click
    end
    object sBitBtn1: TsBitBtn
      Left = 191
      Top = 135
      Width = 75
      Height = 25
      Caption = 'Ok'
      Enabled = False
      ModalResult = 1
      TabOrder = 0
      OnClick = sBitBtn1Click
    end
    object sBitBtn2: TsBitBtn
      Left = 271
      Top = 135
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = sBitBtn2Click
    end
    object sGroupBox1: TsGroupBox
      Left = 20
      Top = 46
      Width = 326
      Height = 77
      Caption = 'Choose period:'
      TabOrder = 2
      object sDateEdit2: TsDateEdit
        Left = 208
        Top = 32
        Width = 86
        Height = 21
        AutoSize = False
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        OnChange = sDateEdit2Change
        Color = clWhite
        BoundLabel.Active = True
        BoundLabel.Caption = 'To:'
      end
      object sDateEdit1: TsDateEdit
        Left = 72
        Top = 32
        Width = 86
        Height = 21
        AutoSize = False
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnChange = sDateEdit1Change
        Color = clWhite
        BoundLabel.Active = True
        BoundLabel.Caption = 'From:'
      end
    end
  end
  object sSkinProvider1: TsSkinProvider
    SkinData.SkinSection = 'MAINMENU'
    TitleButtons = <>
    Left = 228
    Top = 4
  end
end
