unit UnitTsPageScroller;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, 
  sPanel, acPageScroller, sBitBtn, sButton, ComCtrls, ExtCtrls;


type
  TFrameTsPageScroller = class(TFrameBaseMenu)
    sPageScroller1: TsPageScroller;
    sPageScroller2: TsPageScroller;
    sPanel1: TsPanel;
    sSpeedButton21: TsSpeedButton;
    sSpeedButton20: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    sSpeedButton11: TsSpeedButton;
    sSpeedButton12: TsSpeedButton;
    sEdit1: TsEdit;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sPanel2: TsPanel;
    sSpeedButton14: TsSpeedButton;
    sSpeedButton15: TsSpeedButton;
    sSpeedButton16: TsSpeedButton;
    sSpeedButton17: TsSpeedButton;
    sPanel3: TsPanel;
    sCheckBox4: TsCheckBox;
    sRadioGroup2: TsRadioGroup;
    sTrackEdit1: TsTrackEdit;
    sCheckBox5: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sComboBox1: TsComboBox;
    sGroupBox1: TsGroupBox;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sColorBox2: TsColorBox;
    sRadioGroup1: TsRadioGroup;
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sSpeedButton20Click(Sender: TObject);
    procedure sSpeedButton21Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
  public
    procedure AfterCreation; override;
  end;

var
  FrameTsPageScroller: TFrameTsPageScroller;

implementation

uses acAnimation, sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure EnableDisableProc(Ctrl: TControl; Data: integer);
begin
  Ctrl.Enabled := boolean(Data);
  if Ctrl is TWinControl then
    IterateControls(TWinControl(Ctrl), Data, EnableDisableProc);
end;


procedure TFrameTsPageScroller.sSpeedButton20Click(Sender: TObject);
begin
  StopAttention(sSpeedButton20);
  sPanel1.Caption := '';
  sPageScroller1.Caption := '';
  sPanel1.BevelOuter := bvNone;
  sPageScroller1.Control := sPanel1;
  sSpeedButton20.Enabled := False;
  sSpeedButton21.Enabled := True;
  sPageScroller1.Control := sPanel1;
  IterateControls(sPanel3, 1, EnableDisableProc);
end;


procedure TFrameTsPageScroller.sSpeedButton21Click(Sender: TObject);
begin
  sPageScroller1.Control := nil;
  sPanel1.Parent := Self;
  sPanel1.Top := 16;
  sPanel1.Left := 60;
  sPanel1.BevelOuter := bvRaised;
  sSpeedButton21.Enabled := False;
  sSpeedButton20.Enabled := True;
  IterateControls(sPanel3, 0, EnableDisableProc);
end;


procedure TFrameTsPageScroller.AfterCreation;
var
  ad: TacAttentionData;
begin
  ad.Mode := amWavering;
  ad.Interval := 1000;
  StartAttention(sSpeedButton20, ad);
end;


procedure TFrameTsPageScroller.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sPageScroller1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sPageScroller1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsPageScroller.sCheckBox4Click(Sender: TObject);
begin
  sPageScroller1.AutoScroll := sCheckBox4.Checked;
end;


procedure TFrameTsPageScroller.sCheckBox5Click(Sender: TObject);
begin
  sPageScroller1.Animated := sCheckBox5.Checked;
end;


procedure TFrameTsPageScroller.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sPageScroller1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPageScroller.sComboBox1Change(Sender: TObject);
begin
  sPageScroller1.SkinData.SkinSection := sComboBox1.Text;
  if sCheckBox2.Checked then
    sPageScroller1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsPageScroller.sRadioGroup1Change(Sender: TObject);
begin
  sPageScroller1.BevelOuter := TBevelCut(sRadioGroup1.ItemIndex);
  sPageScroller1.SkinData.SkinSection := '';
  sComboBox1.ItemIndex := -1;
  if sCheckBox2.Checked then
    sPageScroller1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsPageScroller.sRadioGroup2Change(Sender: TObject);
begin
  sPageScroller1.ScrollPosition := TacScrollPosition(sRadioGroup2.ItemIndex);
end;


procedure TFrameTsPageScroller.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sPageScroller1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsPageScroller.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sPageScroller1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPageScroller.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sPageScroller1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPageScroller.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sPageScroller1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPageScroller.sTrackEdit1Change(Sender: TObject);
begin
  if sTrackEdit1.DroppedDown then
    sPageScroller1.ButtonSize := sTrackEdit1.AsInteger;
end;

end.
