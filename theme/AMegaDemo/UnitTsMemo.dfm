inherited FrameTsMemo: TFrameTsMemo
  Height = 687
  object sSpeedButton1: TsSpeedButton [0]
    Left = 616
    Top = 217
    Width = 31
    Height = 25
    Enabled = False
    OnClick = sSpeedButton1Click
    Images = FormData.CharList16
    ImageIndex = 4
  end
  object sSpeedButton2: TsSpeedButton [1]
    Left = 546
    Top = 121
    Width = 101
    Height = 25
    Caption = 'Red'
    Margin = 12
    OnClick = sSpeedButton2Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 1
  end
  object sSpeedButton4: TsSpeedButton [2]
    Left = 546
    Top = 153
    Width = 101
    Height = 25
    Caption = 'Green'
    Margin = 12
    OnClick = sSpeedButton4Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 2
  end
  object sSpeedButton5: TsSpeedButton [3]
    Left = 546
    Top = 185
    Width = 101
    Height = 25
    Caption = 'Yellow'
    Margin = 12
    OnClick = sSpeedButton5Click
    Images = FormData.CharList16
    Alignment = taLeftJustify
    TextAlignment = taLeftJustify
    ImageIndex = 3
  end
  object sGroupBox2: TsGroupBox [4]
    Left = 52
    Top = 254
    Width = 595
    Height = 147
    Caption = '`BoundLabel` property'
    TabOrder = 2
    SkinData.OuterEffects.Visibility = ovAlways
    CheckBoxVisible = True
    Checked = True
    BoxStyle = bsCard
    OnCheckBoxChanged = sGroupBox2CheckBoxChanged
    object sTrackEdit5: TsTrackEdit
      Left = 100
      Top = 40
      Width = 80
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = sTrackEdit5Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Indent`:'
      Increment = 1.000000000000000000
      MaxValue = 20.000000000000000000
    end
    object sTrackEdit6: TsTrackEdit
      Left = 100
      Top = 101
      Width = 80
      Height = 21
      TabOrder = 2
      Text = '0'
      OnChange = sTrackEdit6Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`MaxWidth`:'
      Increment = 1.000000000000000000
      MaxValue = 300.000000000000000000
      OnCloseUp = sTrackEdit6CloseUp
    end
    object sCheckBox1: TsCheckBox
      Left = 205
      Top = 104
      Width = 164
      Height = 17
      Caption = 'Use HTML tags (`UseHTML`)'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = sCheckBox1Click
    end
    object sTrackEdit7: TsTrackEdit
      Left = 100
      Top = 70
      Width = 80
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = sTrackEdit7Change
      BoundLabel.Active = True
      BoundLabel.Caption = '`Offset`:'
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      MinValue = -10.000000000000000000
    end
    object sComboBox1: TsComboBox
      Left = 480
      Top = 101
      Width = 96
      Height = 21
      TabOrder = 5
      OnChange = sComboBox1Change
      TextHint = 'Change layout'
      BoundLabel.Caption = 'Layout:'
      VerticalAlignment = taVerticalCenter
      LabelFromTextHint = True
      Items.Strings = (
        'sclLeft'
        'sclTopLeft'
        'sclTopCenter'
        'sclTopRight'
        'sclLeftTop'
        'sclBottomLeft'
        'sclBottomCenter'
        'sclBottomRight'
        'sclRight'
        'sclRightTop'
        'sclLeftLeft'
        'sclRightRight')
      Style = csDropDownList
    end
    object sMemo1: TsMemo
      Left = 205
      Top = 40
      Width = 371
      Height = 54
      Lines.Strings = (
        '<b><u>BoundLabel</u></b> property')
      TabOrder = 3
      OnChange = sMemo1Change
      Text = '<b><u>BoundLabel</u></b> property'#13#10
      BoundLabel.Active = True
      BoundLabel.Caption = '`Text`:'
      BoundLabel.Layout = sclTopLeft
    end
  end
  object sGroupBox1: TsGroupBox [5]
    Left = 52
    Top = 420
    Width = 595
    Height = 143
    Caption = 'Customize scrolls'
    TabOrder = 3
    CaptionLayout = clTopCenter
    SkinData.OuterEffects.Visibility = ovAlways
    BoxStyle = bsCard
    object sGroupBox5: TsGroupBox
      Left = 30
      Top = 32
      Width = 267
      Height = 92
      Caption = 'Arrow buttons visible'
      TabOrder = 0
      CaptionLayout = clTopCenter
      CheckBoxVisible = True
      OnCheckBoxChanged = sGroupBox5CheckBoxChanged
      object sCheckBox5: TsCheckBox
        Left = 21
        Top = 32
        Width = 226
        Height = 17
        Caption = 'Default size defined in the TsSkinManager'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox5Click
      end
      object sTrackBar3: TsTrackBar
        Left = 12
        Top = 55
        Width = 193
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 16
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar3Change
        ShowProgress = True
      end
    end
    object sGroupBox6: TsGroupBox
      Left = 312
      Top = 32
      Width = 253
      Height = 92
      Caption = 'Default scroll width'
      TabOrder = 1
      CaptionLayout = clTopCenter
      AutoChildrenStates = csAsNotChecked
      CheckBoxVisible = True
      Checked = True
      OnCheckBoxChanged = sGroupBox6CheckBoxChanged
      object sStickyLabel3: TsStickyLabel
        Left = 51
        Top = 34
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vertical:'
        Enabled = False
        AttachTo = sTrackBar4
      end
      object sStickyLabel4: TsStickyLabel
        Left = 38
        Top = 62
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Horizontal:'
        Enabled = False
        AttachTo = sTrackBar5
      end
      object sTrackBar4: TsTrackBar
        Left = 92
        Top = 27
        Width = 148
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 24
        TabOrder = 0
        TickStyle = tsNone
        OnChange = sTrackBar4Change
        ShowProgress = True
      end
      object sTrackBar5: TsTrackBar
        Left = 92
        Top = 55
        Width = 148
        Height = 27
        Enabled = False
        Max = 36
        Min = 12
        Position = 12
        TabOrder = 1
        TickStyle = tsNone
        OnChange = sTrackBar5Change
        ShowProgress = True
      end
    end
  end
  object sColorBox2: TsColorBox [6]
    Left = 546
    Top = 217
    Width = 63
    Height = 25
    AutoSize = False
    TabOrder = 4
    OnChange = sColorBox2Change
    Style = [cbStandardColors, cbExtendedColors, cbIncludeNone, cbCustomColor]
    ShowColorName = False
    Selected = clNone
    NoneColorColor = clNone
    PopupMode = pmPickColor
    OnColorPreview = sColorBox2ColorPreview
  end
  object sCheckBox2: TsCheckBox [7]
    Left = 257
    Top = 221
    Width = 232
    Height = 21
    Caption = 'Allow outer effects'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = sCheckBox2Click
  end
  object sMemo2: TsMemo [8]
    Tag = 5
    Left = 196
    Top = 58
    Width = 201
    Height = 100
    Lines.Strings = (
      'type'
      '  TFrameTsMemo = class(TFrameBaseMenu)'
      '    sMemo2: TsMemo;'
      '    sGroupBox2: TsGroupBox;'
      '    sTrackEdit5: TsTrackEdit;'
      '    sTrackEdit6: TsTrackEdit;'
      '    sCheckBox1: TsCheckBox;'
      '    sTrackEdit7: TsTrackEdit;'
      '    sComboBox1: TsComboBox;'
      '    sGroupBox4: TsGroupBox;'
      '    sCheckBox3: TsCheckBox;'
      '    sCheckBox4: TsCheckBox;'
      '    sMemo1: TsMemo;'
      '    sCheckBox2: TsCheckBox;'
      '    sColorBox2: TsColorBox;'
      '    sSpeedButton1: TsSpeedButton;'
      '    sSpeedButton2: TsSpeedButton;'
      '    sSpeedButton4: TsSpeedButton;'
      '    sSpeedButton5: TsSpeedButton;'
      '    procedure sGroupBox2CheckBoxChanged(Sender: TObject);'
      '    procedure sCheckBox1Click(Sender: TObject);'
      '    procedure sTrackEdit5Change(Sender: TObject);'
      '    procedure sTrackEdit6Change(Sender: TObject);'
      '    procedure sTrackEdit7Change(Sender: TObject);'
      '    procedure sComboBox1Change(Sender: TObject);'
      '    procedure sGroupBox4CheckBoxChanged(Sender: TObject);'
      '    procedure sTrackEdit6CloseUp(Sender: TObject);'
      '    procedure sMemo1Change(Sender: TObject);'
      '    procedure sColorBox2Change(Sender: TObject);'
      '    procedure sSpeedButton1Click(Sender: TObject);'
      '    procedure sCheckBox3Click(Sender: TObject);'
      '    procedure sCheckBox4Click(Sender: TObject);'
      '    procedure sSpeedButton2Click(Sender: TObject);'
      '    procedure sSpeedButton4Click(Sender: TObject);'
      '    procedure sSpeedButton5Click(Sender: TObject);'
      '    procedure sCheckBox2Click(Sender: TObject);'
      '  public'
      '  end;')
    ScrollBars = ssBoth
    TabOrder = 0
    Text = 
      'type'#13#10'  TFrameTsMemo = class(TFrameBaseMenu)'#13#10'    sMemo2: TsMemo' +
      ';'#13#10'    sGroupBox2: TsGroupBox;'#13#10'    sTrackEdit5: TsTrackEdit;'#13#10' ' +
      '   sTrackEdit6: TsTrackEdit;'#13#10'    sCheckBox1: TsCheckBox;'#13#10'    s' +
      'TrackEdit7: TsTrackEdit;'#13#10'    sComboBox1: TsComboBox;'#13#10'    sGrou' +
      'pBox4: TsGroupBox;'#13#10'    sCheckBox3: TsCheckBox;'#13#10'    sCheckBox4:' +
      ' TsCheckBox;'#13#10'    sMemo1: TsMemo;'#13#10'    sCheckBox2: TsCheckBox;'#13#10 +
      '    sColorBox2: TsColorBox;'#13#10'    sSpeedButton1: TsSpeedButton;'#13#10 +
      '    sSpeedButton2: TsSpeedButton;'#13#10'    sSpeedButton4: TsSpeedBut' +
      'ton;'#13#10'    sSpeedButton5: TsSpeedButton;'#13#10'    procedure sGroupBox' +
      '2CheckBoxChanged(Sender: TObject);'#13#10'    procedure sCheckBox1Clic' +
      'k(Sender: TObject);'#13#10'    procedure sTrackEdit5Change(Sender: TOb' +
      'ject);'#13#10'    procedure sTrackEdit6Change(Sender: TObject);'#13#10'    p' +
      'rocedure sTrackEdit7Change(Sender: TObject);'#13#10'    procedure sCom' +
      'boBox1Change(Sender: TObject);'#13#10'    procedure sGroupBox4CheckBox' +
      'Changed(Sender: TObject);'#13#10'    procedure sTrackEdit6CloseUp(Send' +
      'er: TObject);'#13#10'    procedure sMemo1Change(Sender: TObject);'#13#10'   ' +
      ' procedure sColorBox2Change(Sender: TObject);'#13#10'    procedure sSp' +
      'eedButton1Click(Sender: TObject);'#13#10'    procedure sCheckBox3Click' +
      '(Sender: TObject);'#13#10'    procedure sCheckBox4Click(Sender: TObjec' +
      't);'#13#10'    procedure sSpeedButton2Click(Sender: TObject);'#13#10'    pro' +
      'cedure sSpeedButton4Click(Sender: TObject);'#13#10'    procedure sSpee' +
      'dButton5Click(Sender: TObject);'#13#10'    procedure sCheckBox2Click(S' +
      'ender: TObject);'#13#10'  public'#13#10'  end;'#13#10
    BoundLabel.UseHTML = True
    BoundLabel.Active = True
    BoundLabel.AllowClick = True
    BoundLabel.Caption = '<b><u>BoundLabel</u></b> property'
    BoundLabel.Layout = sclLeftTop
    SkinData.OuterEffects.Visibility = ovAlways
    SkinData.VertScrollData.ButtonsSize = 0
    SkinData.HorzScrollData.ButtonsSize = 0
    DisabledKind = []
  end
end
