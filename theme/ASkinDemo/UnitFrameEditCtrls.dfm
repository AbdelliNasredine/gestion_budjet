inherited Frame_EditCtrls: TFrame_EditCtrls
  Height = 429
  VertScrollBar.Tracking = True
  object sEdit1: TsEdit [0]
    Tag = 5
    Left = 137
    Top = 24
    Width = 130
    Height = 24
    TabOrder = 4
    Text = 'sEdit1'
    AddedGlyph.Images = MainForm.CharImageList16
    AddedGlyph.ImageIndex = 4
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 140
    BoundLabel.Caption = 'sEdit1'
  end
  object sGroupBox1: TsGroupBox [1]
    Left = 474
    Top = 194
    Width = 213
    Height = 145
    Caption = 'Some ComboEdits options'
    TabOrder = 16
    object sCheckBox4: TsCheckBox
      Left = 16
      Top = 60
      Width = 180
      Height = 17
      Caption = 'Direct input (by keyboard)'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = sCheckBox4Click
    end
    object sCheckBox5: TsCheckBox
      Left = 16
      Top = 91
      Width = 180
      Height = 17
      Caption = 'Old style glyphs'
      AutoSize = False
      TabOrder = 2
      OnClick = sCheckBox5Click
    end
    object sCheckBox6: TsCheckBox
      Left = 16
      Top = 30
      Width = 180
      Height = 17
      Caption = 'Show buttons'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox6Click
    end
    object sCheckBox9: TsCheckBox
      Left = 16
      Top = 120
      Width = 180
      Height = 17
      Caption = 'Colorized'
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = sCheckBox9Click
    end
  end
  object sSpinEdit1: TsSpinEdit [2]
    Tag = 5
    Left = 137
    Top = 189
    Width = 130
    Height = 24
    TabOrder = 0
    Text = '555'
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 140
    BoundLabel.Caption = 'sSpinEdit1'
    FlatSpinButtons = False
    MaxValue = 0
    MinValue = 0
    Value = 555
  end
  object sCheckBox8: TsCheckBox [3]
    Left = 137
    Top = 306
    Width = 130
    Height = 17
    Caption = 'Change colors'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 21
    OnClick = sCheckBox8Click
  end
  object sDirectoryEdit1: TsDirectoryEdit [4]
    Tag = 5
    Left = 567
    Top = 152
    Width = 120
    Height = 24
    MaxLength = 255
    TabOrder = 11
    Text = 'sDirectoryEdit1'
    CheckOnExit = True
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 110
    BoundLabel.Caption = 'sDirectoryEdit1'
    GlyphMode.ColorTone = 12344091
    Root = 'rfDesktop'
  end
  object sMemo1: TsMemo [5]
    Tag = 5
    Left = 291
    Top = 24
    Width = 160
    Height = 88
    Lines.Strings = (
      'unit Unit2;'
      ''
      'interface'
      ''
      'uses'
      
        '  Windows, Messages, SysUtils, Classes, Graphics, Controls, Form' +
        's, Dialogs,'
      
        '  sButtonControl, sCustomButton, StdCtrls, sEdit, sCustomListBox' +
        ','
      
        '  sCustomMaskEdit, sMonthCalendar, sTrackBar, sGauge, sCustomCom' +
        'boBox,'
      
        '  sCurrEdit, sTooledit, sGroupBox, ExtCtrls, sPanel, sRadioButto' +
        'n,'
      
        '  sCheckedControl, sCheckbox, sComboEdit, Mask, sCustomComboEdit' +
        ','
      
        '  sCurrencyEdit, sSpinEdit, sMemo, sCustomLabel, sBevel, sStatus' +
        'Bar,'
      '  sPageControl, ComCtrls, sSkinProvider, sScrollBar, Menus;'
      ''
      'type'
      '  TForm2 = class(TForm)'
      '    sContainer1: TsContainer;'
      '    sStatusBar1: TsStatusBar;'
      '    sPageControl1: TsPageControl;'
      '    sTabSheet1: TsTabSheet;'
      '    sTabSheet2: TsTabSheet;'
      '    sTabSheet3: TsTabSheet;'
      '    sToolBar1: TsToolBar;'
      '    sToolButton1: TsSpeedButton;'
      '    sToolButton2: TsSpeedButton;'
      '    sToolButton3: TsSpeedButton;'
      '    sGroupBox1: TsGroupBox;'
      '    sContainer2: TsContainer;'
      '    sGauge1: TsGauge;'
      '    sPanel2: TsPanel;'
      '    sSpeedButton1: TsSpeedButton;'
      '    sBitBtn1: TsBitBtn;'
      '    sButton1: TsButton;'
      '    sTrackBar1: TsTrackBar;'
      '    sEdit1: TsEdit;'
      '    sSpinEdit1: TsSpinEdit;'
      '    sMemo1: TsMemo;'
      '    sListBox1: TsListBox;'
      '    sMaskEdit1: TsMaskEdit;'
      '    sDateEdit1: TsDateEdit;'
      '    sComboEdit1: TsComboEdit;'
      '    sCalcEdit1: TsCalcEdit;'
      '    sCurrencyEdit1: TsCurrencyEdit;'
      '    sComboBox1: TsComboBox;'
      '    sDirectoryEdit1: TsDirectoryEdit;'
      '    sFilenameEdit1: TsFilenameEdit;'
      '    sScrollBar1: TsScrollBar;'
      '    sColorSelect1: TsColorSelect;'
      '    sWebLabel1: TsWebLabel;'
      '    sLabel1: TsLabel;'
      '    sRadioButton2: TsRadioButton;'
      '    sCheckBox1: TsCheckBox;'
      '    sRadioButton1: TsRadioButton;'
      '    sCheckBox2: TsCheckBox;'
      '    sCheckBox3: TsCheckBox;'
      '    sScrollBar2: TsScrollBar;'
      '    sScrollBar3: TsScrollBar;'
      '    MainMenu1: TMainMenu;'
      '    Item11: TMenuItem;'
      '    Item111: TMenuItem;'
      '    Item121: TMenuItem;'
      '    Item131: TMenuItem;'
      '    Item141: TMenuItem;'
      '    Item151: TMenuItem;'
      '    Item161: TMenuItem;'
      '    Item171: TMenuItem;'
      '    Item1211: TMenuItem;'
      '    Item1221: TMenuItem;'
      '    Item1231: TMenuItem;'
      '    Item1241: TMenuItem;'
      '    Item21: TMenuItem;'
      '    Item211: TMenuItem;'
      '    Item221: TMenuItem;'
      '    Item231: TMenuItem;'
      '    Item31: TMenuItem;'
      '    sSkinProvider1: TsSkinProvider;'
      '    sMonthCalendar1: TsMonthCalendar;'
      '    sTabSheet4: TsTabSheet;'
      '    sTabSheet5: TsTabSheet;'
      '    sTabSheet6: TsTabSheet;'
      '    sTabSheet7: TsTabSheet;'
      '    sTabSheet8: TsTabSheet;'
      '    sTabSheet9: TsTabSheet;'
      '    sTabSheet10: TsTabSheet;'
      '    sTabSheet11: TsTabSheet;'
      '    sTabSheet12: TsTabSheet;'
      
        '    procedure FormClose(Sender: TObject; var Action: TCloseActio' +
        'n);'
      '    procedure sTrackBar1Change(Sender: TObject);'
      '  private'
      '    { Private declarations }'
      '  public'
      '    { Public declarations }'
      '  end;'
      ''
      'var'
      '  Form2: TForm2;'
      ''
      'implementation'
      ''
      'uses Unit1;'
      ''
      '{$R *.DFM}'
      ''
      
        'procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAc' +
        'tion);'
      'begin'
      '  Action := caFree;'
      'end;'
      ''
      'procedure TForm2.sTrackBar1Change(Sender: TObject);'
      'begin'
      
        '  if Sender = sTrackBar1  then sGauge1.Progress := sTrackBar1.Po' +
        'sition;'
      
        '  if Sender = sScrollBar1 then sGauge1.Progress := sScrollBar1.P' +
        'osition;'
      
        '  if Sender = sScrollBar2 then sGauge1.Progress := sScrollBar2.P' +
        'osition;'
      
        '  if Sender = sScrollBar3 then sGauge1.Progress := sScrollBar3.P' +
        'osition;'
      '  sTrackBar1.Position  := sGauge1.Progress;'
      '  sScrollBar1.Position := sGauge1.Progress;'
      '  sScrollBar2.Position := sGauge1.Progress;'
      '  sScrollBar3.Position := sGauge1.Progress;'
      'end;'
      ''
      'end.')
    ScrollBars = ssBoth
    TabOrder = 12
    Text = 
      'unit Unit2;'#13#10#13#10'interface'#13#10#13#10'uses'#13#10'  Windows, Messages, SysUtils,' +
      ' Classes, Graphics, Controls, Forms, Dialogs,'#13#10'  sButtonControl,' +
      ' sCustomButton, StdCtrls, sEdit, sCustomListBox,'#13#10'  sCustomMaskE' +
      'dit, sMonthCalendar, sTrackBar, sGauge, sCustomComboBox,'#13#10'  sCur' +
      'rEdit, sTooledit, sGroupBox, ExtCtrls, sPanel, sRadioButton,'#13#10'  ' +
      'sCheckedControl, sCheckbox, sComboEdit, Mask, sCustomComboEdit,'#13 +
      #10'  sCurrencyEdit, sSpinEdit, sMemo, sCustomLabel, sBevel, sStatu' +
      'sBar,'#13#10'  sPageControl, ComCtrls, sSkinProvider, sScrollBar, Menu' +
      's;'#13#10#13#10'type'#13#10'  TForm2 = class(TForm)'#13#10'    sContainer1: TsContaine' +
      'r;'#13#10'    sStatusBar1: TsStatusBar;'#13#10'    sPageControl1: TsPageCont' +
      'rol;'#13#10'    sTabSheet1: TsTabSheet;'#13#10'    sTabSheet2: TsTabSheet;'#13#10 +
      '    sTabSheet3: TsTabSheet;'#13#10'    sToolBar1: TsToolBar;'#13#10'    sToo' +
      'lButton1: TsSpeedButton;'#13#10'    sToolButton2: TsSpeedButton;'#13#10'    ' +
      'sToolButton3: TsSpeedButton;'#13#10'    sGroupBox1: TsGroupBox;'#13#10'    s' +
      'Container2: TsContainer;'#13#10'    sGauge1: TsGauge;'#13#10'    sPanel2: Ts' +
      'Panel;'#13#10'    sSpeedButton1: TsSpeedButton;'#13#10'    sBitBtn1: TsBitBt' +
      'n;'#13#10'    sButton1: TsButton;'#13#10'    sTrackBar1: TsTrackBar;'#13#10'    sE' +
      'dit1: TsEdit;'#13#10'    sSpinEdit1: TsSpinEdit;'#13#10'    sMemo1: TsMemo;'#13 +
      #10'    sListBox1: TsListBox;'#13#10'    sMaskEdit1: TsMaskEdit;'#13#10'    sDa' +
      'teEdit1: TsDateEdit;'#13#10'    sComboEdit1: TsComboEdit;'#13#10'    sCalcEd' +
      'it1: TsCalcEdit;'#13#10'    sCurrencyEdit1: TsCurrencyEdit;'#13#10'    sComb' +
      'oBox1: TsComboBox;'#13#10'    sDirectoryEdit1: TsDirectoryEdit;'#13#10'    s' +
      'FilenameEdit1: TsFilenameEdit;'#13#10'    sScrollBar1: TsScrollBar;'#13#10' ' +
      '   sColorSelect1: TsColorSelect;'#13#10'    sWebLabel1: TsWebLabel;'#13#10' ' +
      '   sLabel1: TsLabel;'#13#10'    sRadioButton2: TsRadioButton;'#13#10'    sCh' +
      'eckBox1: TsCheckBox;'#13#10'    sRadioButton1: TsRadioButton;'#13#10'    sCh' +
      'eckBox2: TsCheckBox;'#13#10'    sCheckBox3: TsCheckBox;'#13#10'    sScrollBa' +
      'r2: TsScrollBar;'#13#10'    sScrollBar3: TsScrollBar;'#13#10'    MainMenu1: ' +
      'TMainMenu;'#13#10'    Item11: TMenuItem;'#13#10'    Item111: TMenuItem;'#13#10'   ' +
      ' Item121: TMenuItem;'#13#10'    Item131: TMenuItem;'#13#10'    Item141: TMen' +
      'uItem;'#13#10'    Item151: TMenuItem;'#13#10'    Item161: TMenuItem;'#13#10'    It' +
      'em171: TMenuItem;'#13#10'    Item1211: TMenuItem;'#13#10'    Item1221: TMenu' +
      'Item;'#13#10'    Item1231: TMenuItem;'#13#10'    Item1241: TMenuItem;'#13#10'    I' +
      'tem21: TMenuItem;'#13#10'    Item211: TMenuItem;'#13#10'    Item221: TMenuIt' +
      'em;'#13#10'    Item231: TMenuItem;'#13#10'    Item31: TMenuItem;'#13#10'    sSkinP' +
      'rovider1: TsSkinProvider;'#13#10'    sMonthCalendar1: TsMonthCalendar;' +
      #13#10'    sTabSheet4: TsTabSheet;'#13#10'    sTabSheet5: TsTabSheet;'#13#10'    ' +
      'sTabSheet6: TsTabSheet;'#13#10'    sTabSheet7: TsTabSheet;'#13#10'    sTabSh' +
      'eet8: TsTabSheet;'#13#10'    sTabSheet9: TsTabSheet;'#13#10'    sTabSheet10:' +
      ' TsTabSheet;'#13#10'    sTabSheet11: TsTabSheet;'#13#10'    sTabSheet12: TsT' +
      'abSheet;'#13#10'    procedure FormClose(Sender: TObject; var Action: T' +
      'CloseAction);'#13#10'    procedure sTrackBar1Change(Sender: TObject);'#13 +
      #10'  private'#13#10'    { Private declarations }'#13#10'  public'#13#10'    { Public' +
      ' declarations }'#13#10'  end;'#13#10#13#10'var'#13#10'  Form2: TForm2;'#13#10#13#10'implementati' +
      'on'#13#10#13#10'uses Unit1;'#13#10#13#10'{$R *.DFM}'#13#10#13#10'procedure TForm2.FormClose(Se' +
      'nder: TObject; var Action: TCloseAction);'#13#10'begin'#13#10'  Action := ca' +
      'Free;'#13#10'end;'#13#10#13#10'procedure TForm2.sTrackBar1Change(Sender: TObject' +
      ');'#13#10'begin'#13#10'  if Sender = sTrackBar1  then sGauge1.Progress := sT' +
      'rackBar1.Position;'#13#10'  if Sender = sScrollBar1 then sGauge1.Progr' +
      'ess := sScrollBar1.Position;'#13#10'  if Sender = sScrollBar2 then sGa' +
      'uge1.Progress := sScrollBar2.Position;'#13#10'  if Sender = sScrollBar' +
      '3 then sGauge1.Progress := sScrollBar3.Position;'#13#10'  sTrackBar1.P' +
      'osition  := sGauge1.Progress;'#13#10'  sScrollBar1.Position := sGauge1' +
      '.Progress;'#13#10'  sScrollBar2.Position := sGauge1.Progress;'#13#10'  sScro' +
      'llBar3.Position := sGauge1.Progress;'#13#10'end;'#13#10#13#10'end.'#13#10
    BoundLabel.Active = True
    BoundLabel.Caption = 'sMemo1'
    BoundLabel.Layout = sclTopLeft
  end
  object sTreeView1: TsTreeView [6]
    Tag = 5
    Left = 292
    Top = 129
    Width = 160
    Height = 74
    HideSelection = False
    HotTrack = True
    Images = MainForm.CharImageList16
    Indent = 21
    TabOrder = 13
    BoundLabel.Active = True
    BoundLabel.Caption = 'sTreeView1'
    BoundLabel.Layout = sclTopLeft
  end
  object sTimePicker1: TsTimePicker [7]
    Tag = 5
    Left = 137
    Top = 222
    Width = 130
    Height = 24
    TabOrder = 1
    Text = '00:00:00'
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 140
    BoundLabel.Caption = 'sTimePicker1'
    FlatSpinButtons = False
    Use12Hour = True
  end
  object sComboEdit1: TsComboEdit [8]
    Tag = 5
    Left = 567
    Top = 24
    Width = 120
    Height = 24
    TabOrder = 7
    Text = 'sComboEdit1'
    AddedGlyph.ColorTone = 372040
    AddedGlyph.Images = MainForm.CharImageList16
    AddedGlyph.ImageIndex = 23
    CheckOnExit = True
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 110
    BoundLabel.Caption = 'sComboEdit1'
    OnButtonClick = sComboEdit1ButtonClick
    GlyphMode.ColorTone = 16744448
  end
  object sCheckBox2: TsCheckBox [9]
    Left = 137
    Top = 281
    Width = 130
    Height = 17
    Caption = 'Flat spin buttons'
    AutoSize = False
    TabOrder = 3
    OnClick = sCheckBox2Click
  end
  object sCheckBox1: TsCheckBox [10]
    Left = 137
    Top = 256
    Width = 130
    Height = 17
    Caption = 'Show spin buttons'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = sCheckBox1Click
  end
  object sCheckBox3: TsCheckBox [11]
    Left = 121
    Top = 358
    Width = 540
    Height = 17
    Caption = 
      'All edit controls in this package has the BoundLabel property wi' +
      'th many available options'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 17
    OnClick = sCheckBox3Click
  end
  object sTrackEdit1: TsTrackEdit [12]
    Left = 137
    Top = 121
    Width = 130
    Height = 24
    TabOrder = 18
    Text = '0'
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 140
    BoundLabel.Caption = 'sTrackEdit1'
    Increment = 1.000000000000000000
  end
  object sFilenameEdit1: TsFilenameEdit [13]
    Tag = 5
    Left = 567
    Top = 120
    Width = 120
    Height = 24
    MaxLength = 255
    TabOrder = 10
    Text = 'sFilenameEdit1'
    CheckOnExit = True
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 110
    BoundLabel.Caption = 'sFilenameEdit1'
    GlyphMode.ColorTone = 1351199
  end
  object sDecimalSpinEdit1: TsDecimalSpinEdit [14]
    Left = 137
    Top = 155
    Width = 130
    Height = 24
    TabOrder = 19
    Text = '555,55'
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 140
    BoundLabel.Caption = 'sDecimalSpinEdit1'
    FlatSpinButtons = False
    Increment = 1.000000000000000000
    Value = 555.550000000000000000
    ShowThousandSeparator = True
  end
  object sCalcEdit1: TsCalcEdit [15]
    Tag = 5
    Left = 567
    Top = 88
    Width = 120
    Height = 24
    TabOrder = 9
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 110
    BoundLabel.Caption = 'sCalcEdit1'
    GlyphMode.ColorTone = 952229
  end
  object sRichEdit1: TsRichEdit [16]
    Tag = 5
    Left = 291
    Top = 220
    Width = 160
    Height = 74
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'sRichEdit1')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 14
    WordWrap = False
    Text = 'sRichEdit1'#13#10
    BoundLabel.Active = True
    BoundLabel.Caption = 'sRichEdit1'
    BoundLabel.Layout = sclTopLeft
  end
  object sDateEdit1: TsDateEdit [17]
    Tag = 5
    Left = 567
    Top = 56
    Width = 120
    Height = 24
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 8
    Text = '  .  .    '
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 110
    BoundLabel.Caption = 'sDateEdit1'
    GlyphMode.ColorTone = 19948
  end
  object sCurrencyEdit1: TsCurrencyEdit [18]
    Tag = 5
    Left = 137
    Top = 88
    Width = 130
    Height = 24
    TabOrder = 6
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 140
    BoundLabel.Caption = 'sCurrencyEdit1'
    Value = 555.550000000000000000
  end
  object sButton1: TsBitBtn [19]
    Tag = 5
    Left = 292
    Top = 307
    Width = 160
    Height = 32
    Caption = 'Load RTF'
    Spacing = 8
    TabOrder = 15
    OnClick = sButton1Click
    ImageIndex = 27
    Images = MainForm.CharImageList16
  end
  object sCheckBox7: TsCheckBox [20]
    Left = 121
    Top = 383
    Width = 540
    Height = 17
    Caption = 
      'Align BoundLabels to the left (the MaxWidth property must be not' +
      ' null)'
    AutoSize = False
    TabOrder = 20
    OnClick = sCheckBox7Click
  end
  object sMaskEdit1: TsMaskEdit [21]
    Tag = 5
    Left = 137
    Top = 56
    Width = 130
    Height = 24
    TabOrder = 5
    Text = 'sMaskEdit1'
    CheckOnExit = True
    BoundLabel.Active = True
    BoundLabel.MaxWidth = 140
    BoundLabel.Caption = 'sMaskEdit1'
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 4
    Top = 4
  end
  object sOpenDialog1: TOpenDialog
    Filter = 'RTF files|*.RTF'
    Left = 526
    Top = 173
  end
end
