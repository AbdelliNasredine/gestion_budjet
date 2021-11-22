unit UnitTsPageControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, ExtCtrls, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, ComCtrls,

  UnitBaseMenu,

  sPageControl, sBitBtn, sEdit, acPopupCtrls, sComboBox, sGroupBox, sCheckBox, sFrameAdapter, sPanel,
  Menus, acAlphaImageList, sButton, sTrackBar, sLabel, sRadioButton, acSlider;


type
  TFrameTsPageControl = class(TFrameBaseMenu)
    sBitBtn1: TsBitBtn;
    sCharImageList1: TsCharImageList;
    sPageControl1: TsPageControl;
    sTabSheet3: TsTabSheet;
    sTabSheet1: TsTabSheet;
    sCheckBox3: TsCheckBox;
    sRadioGroup1: TsRadioGroup;
    sComboBox1: TsComboBox;
    sCheckBox11: TsCheckBox;
    sRadioGroup2: TsRadioGroup;
    sRadioGroup3: TsRadioGroup;
    sTabSheet2: TsTabSheet;
    sTabSheet4: TsTabSheet;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sCheckBox9: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sComboBox2: TsComboBox;
    sTabSheet5: TsTabSheet;
    sTabSheet6: TsTabSheet;
    sCheckBox6: TsCheckBox;
    sPanel1: TsPanel;
    sTrackBar1: TsTrackBar;
    sLabel1: TsLabel;
    sRadioGroup4: TsRadioGroup;
    sCheckBox4: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sTabSheet7: TsTabSheet;
    sTrackBar2: TsTrackBar;
    sLabel3: TsLabel;
    sGroupBox2: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sSlider1: TsSlider;
    sTrackEdit4: TsTrackEdit;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox11Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sRadioGroup2CheckBoxChanged(Sender: TObject);
    procedure sRadioGroup3Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sPageControl1CloseBtnClick(Sender: TComponent; TabIndex: Integer; var CanClose: Boolean; var Action: TacCloseAction);
    procedure sRadioGroup4Change(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox12Click(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sSlider1SliderChange(Sender: TObject);
  public
  end;


var
  FrameTsPageControl: TFrameTsPageControl;

implementation

{$R *.dfm}

uses sConst, sCommonData, UnitMain, UnitDataModule;

var
  pgCount: integer = 7;

procedure TFrameTsPageControl.sBitBtn1Click(Sender: TObject);
var
  ts: TsTabSheet;
begin
  sPageControl1.Tag := 2;
  ts := TsTabSheet.Create(sPageControl1);
  ts.Name := 'sTabSheet' + IntToStr(pgCount);
  ts.Caption := ts.Name;
  ts.ImageIndex := Random(sCharImageList1.Count);
  ts.PageControl := sPageControl1;
  inc(pgCount);
end;


procedure TFrameTsPageControl.sCheckBox11Click(Sender: TObject);
begin
  sPageControl1.AllowTabsDrag := sCheckBox11.Checked;
end;


procedure TFrameTsPageControl.sCheckBox12Click(Sender: TObject);
begin
  sPageControl1.FitScrollButtons := sCheckBox12.Checked;
end;


procedure TFrameTsPageControl.sCheckBox1Click(Sender: TObject);
begin
  sPageControl1.ShowDropDownBtn := sCheckBox1.Checked;
end;


procedure TFrameTsPageControl.sCheckBox2Click(Sender: TObject);
begin
  sPageControl1.ShowNextPrev := sCheckBox2.Checked;
end;


procedure TFrameTsPageControl.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sPageControl1.Images := sCharImageList1
  else
    sPageControl1.Images := nil;
end;


procedure TFrameTsPageControl.sCheckBox4Click(Sender: TObject);
begin
  sPageControl1.ReflectedGlyphs := sCheckBox4.Checked;
end;


procedure TFrameTsPageControl.sCheckBox5Click(Sender: TObject);
begin
  sPageControl1.WordWrap := sCheckBox5.Checked;
  sTrackEdit1.Enabled := not sCheckBox5.Checked;
  if sCheckBox5.Checked then
    sPageControl1.TabWidth := ScaleInt(96, sPageControl1.SkinData) // Make tab width limited for showing of wrapped text
  else
    sPageControl1.TabWidth := 0;
end;


procedure TFrameTsPageControl.sCheckBox6Click(Sender: TObject);
begin
  sPageControl1.RotateCaptions := sCheckBox6.Checked;
end;


procedure TFrameTsPageControl.sCheckBox7Click(Sender: TObject);
begin
  sPageControl1.ActiveTabEnlarged := sCheckBox7.Checked;
end;


procedure TFrameTsPageControl.sCheckBox9Click(Sender: TObject);
begin
  sPageControl1.ActiveIsBold := sCheckBox9.Checked;
end;


procedure TFrameTsPageControl.sComboBox1Change(Sender: TObject);
begin
  sTabSheet3.TabType := TacTabType(sComboBox1.ItemIndex);
end;


procedure TFrameTsPageControl.sComboBox2Change(Sender: TObject);
begin
  sPageControl1.TabsLineSkin := sComboBox2.Text;
end;


procedure TFrameTsPageControl.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sPageControl1.AllowAnimSwitching := sGroupBox2.Checked;
end;


procedure TFrameTsPageControl.sPageControl1CloseBtnClick(Sender: TComponent; TabIndex: Integer; var CanClose: Boolean; var Action: TacCloseAction);
begin
  CanClose := TabIndex > 2;
  if not CanClose then
    ShowMessage('Closing of this page is forbidden in the OnCloseBtnClick event');
end;


procedure TFrameTsPageControl.sRadioButton1Click(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.PageChange.Mode := TacAnimTypeCtrl(TsRadioButton(Sender).Tag);
  sTrackEdit4.Enabled := sRadioButton1.Checked;
end;


procedure TFrameTsPageControl.sRadioGroup1Change(Sender: TObject);
begin
  sPageControl1.TabPosition := TTabPosition(sRadioGroup1.ItemIndex);
  if sPageControl1.TabPosition in [tpTop, tpBottom] then
    sPageControl1.MultiLine := False;
end;


procedure TFrameTsPageControl.sRadioGroup2Change(Sender: TObject);
begin
  sPageControl1.CloseBtnVisibility := TacCloseBtnVisibility(sRadioGroup2.ItemIndex);
end;


procedure TFrameTsPageControl.sRadioGroup2CheckBoxChanged(Sender: TObject);
begin
  sPageControl1.ShowCloseBtns := sRadioGroup2.Checked;
end;


procedure TFrameTsPageControl.sRadioGroup3Change(Sender: TObject);
const
  TabsAlignments: array [0 .. 2] of TAlignment = (taLeftJustify, taRightJustify, taCenter);
begin
  sPageControl1.TabAlignment := TabsAlignments[sRadioGroup3.ItemIndex];
end;


procedure TFrameTsPageControl.sRadioGroup4Change(Sender: TObject);
begin
  sPageControl1.GlyphLayout := TacGlyphLayout(sRadioGroup4.ItemIndex);
  case sPageControl1.GlyphLayout of
    glLeft: sPageControl1.TabHeight := 36;
    glTop: sPageControl1.TabHeight := 54;
  end;
end;


procedure TFrameTsPageControl.sSlider1SliderChange(Sender: TObject);
begin
  sPageControl1.AccessibleDisabledPages := sSlider1.SliderOn;
end;


procedure TFrameTsPageControl.sTrackBar1Change(Sender: TObject);
begin
  sPageControl1.Padding.Top := sTrackBar1.Position;
end;


procedure TFrameTsPageControl.sTrackBar2Change(Sender: TObject);
begin
  sPageControl1.PageMargins.OffsetTop := sTrackBar2.Position;
end;


procedure TFrameTsPageControl.sTrackEdit1Change(Sender: TObject);
begin
  if IsWindowVisible(sPageControl1.Handle) then // If loaded already
    sPageControl1.TabPadding := Round(sTrackEdit1.Value);
end;


procedure TFrameTsPageControl.sTrackEdit2Change(Sender: TObject);
begin
  if IsWindowVisible(sPageControl1.Handle) then // If loaded already
    sPageControl1.TabSpacing := Round(sTrackEdit2.Value);
end;


procedure TFrameTsPageControl.sTrackEdit3Change(Sender: TObject);
begin
  if IsWindowVisible(sPageControl1.Handle) then // If loaded already
    sPageControl1.TabMargin := Round(sTrackEdit3.Value);
end;


procedure TFrameTsPageControl.sTrackEdit4Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.PageChange.Time := sTrackEdit4.AsInteger;
end;

end.
