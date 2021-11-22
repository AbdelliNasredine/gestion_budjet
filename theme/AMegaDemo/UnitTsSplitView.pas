unit UnitTsSplitView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ComCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ExtCtrls,

  acAlphaImageList, sPanel, sCheckBox, sRadioButton,
  sComboBoxes, sEdit, acPopupCtrls, sSpeedButton, sGroupBox, sFrameAdapter;


type
  TFrameTsSplitView = class(TFrameBaseMenu)
    sCharImageList1: TsCharImageList;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sRadioGroup1: TsRadioGroup;
    sRadioGroup2: TsRadioGroup;
    sRadioGroup3: TsRadioGroup;
    sGroupBox1: TsGroupBox;
    sSpeedButton8: TsSpeedButton;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sColorBox1: TsColorBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sCheckBox2: TsCheckBox;
    sSplitView1: TsSplitView;
    sSpeedButton1: TsSpeedButton;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sRadioGroup3Change(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sRadioButton2Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sPanel1Paint(Sender: TObject; Canvas: TCanvas);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
  public
    procedure UpdatePanelLook;
  end;

var
  FrameTsSplitView: TFrameTsSplitView;

implementation

{$R *.dfm}

uses sVCLUtils, sConst, UnitMain, UnitDataModule;


procedure TFrameTsSplitView.sCheckBox1Click(Sender: TObject);
begin
  sSplitView1.AnimatedShowing := sCheckBox1.Checked;
end;


procedure TFrameTsSplitView.sCheckBox2Click(Sender: TObject);
begin
  sSplitView1.AutoHide := sCheckBox2.Checked;
end;


procedure TFrameTsSplitView.sCheckBox3Click(Sender: TObject);
begin
  sSplitView1.AnimatedHiding := sCheckBox3.Checked;
end;


procedure TFrameTsSplitView.sCheckBox4Click(Sender: TObject);
begin
{  sGroupBox1.Enabled := not sCheckBox4.Checked;
  IterateControls(sGroupBox1, integer(sGroupBox1.Enabled), EnableCtrl);
  sSplitView1.BlurData.UseSysBlur := sCheckBox4.Checked;}
end;


procedure TFrameTsSplitView.sColorBox1Change(Sender: TObject);
begin
  sSpeedButton8.Enabled := True;
  sSplitView1.BlurData.Color := sColorBox1.Selected;
end;


procedure TFrameTsSplitView.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  SetControlsEnabled(sGroupBox1, sGroupBox1.Checked, True);
  if sGroupBox1.Checked then
    if sRadioButton1.Checked then
      sRadioButton1Click(sRadioButton1)
    else
      sRadioButton1Click(sRadioButton2)
  else
    sSplitView1.BlurData.Mode := sPanel.bmNone;

  UpdatePanelLook;
end;


procedure TFrameTsSplitView.sPanel1Paint(Sender: TObject; Canvas: TCanvas);
begin
  // StretchBlt(Canvas.Handle, 0, 0, sPanel1.Width, sPanel1.Height, MainForm.BGBmp.Canvas.Handle, 0, 0, MainForm.BGBmp.Width, MainForm.BGBmp.Height, SRCCOPY);
end;


procedure TFrameTsSplitView.sRadioButton1Click(Sender: TObject);
begin
  sSplitView1.BlurData.Mode := TacSVBlurMode(TsRadioButton(Sender).Tag);
  sTrackEdit2.Enabled := (TsRadioButton(Sender).Tag = 1);
  sColorBox1.Enabled := (TsRadioButton(Sender).Tag = 1);
//  sTrackEdit1.Value := 0; // iff(sTrackEdit2.Enabled, 140, 0);
//  sTrackEdit1Change(sTrackEdit1);
  UpdatePanelLook;
end;


procedure TFrameTsSplitView.sRadioButton2Click(Sender: TObject);
begin
  sSplitView1.BlurData.Mode := TacSVBlurMode(TsRadioButton(Sender).Tag);
  sTrackEdit2.Enabled := (TsRadioButton(Sender).Tag = 1);
  sColorBox1.Enabled := (TsRadioButton(Sender).Tag = 1);
//  sTrackEdit1.Value := 0; // iff(sTrackEdit2.Enabled, 140, 0);
//  sTrackEdit1Change(sTrackEdit1);
  UpdatePanelLook;
end;


procedure TFrameTsSplitView.sRadioGroup1Change(Sender: TObject);
begin
  sSplitView1.DisplayMode := TacSVDisplayMode(sRadioGroup1.ItemIndex);
  // sCheckBox1.Enabled := sSplitView1.DisplayMode = svmaOverlay;
  SetControlsEnabled(sGroupBox1, sSplitView1.DisplayMode = svmaOverlay);
  UpdatePanelLook;
end;


procedure TFrameTsSplitView.sRadioGroup2Change(Sender: TObject);
begin
  sSplitView1.Placement := TacSVPlacement(sRadioGroup2.ItemIndex);
end;


procedure TFrameTsSplitView.sRadioGroup3Change(Sender: TObject);
begin
  sSplitView1.CloseStyle := TacSVCloseStyle(sRadioGroup3.ItemIndex);
  UpdatePanelLook;
end;


procedure TFrameTsSplitView.sSpeedButton1Click(Sender: TObject);
begin
  sSplitView1.Opened := not sSplitView1.Opened;
end;


procedure TFrameTsSplitView.sSpeedButton8Click(Sender: TObject);
begin
  sSpeedButton8.Enabled := False;
  sColorBox1.Selected := clBtnFace;
  sColorBox1Change(sColorBox1);
end;


procedure TFrameTsSplitView.sTrackEdit1Change(Sender: TObject);
begin
  sSplitView1.BlurData.Opacity := Round(sTrackEdit1.Value);
  sColorBox1.Enabled := sTrackEdit1.Value <> 0;
end;


procedure TFrameTsSplitView.sTrackEdit2Change(Sender: TObject);
begin
  sSplitView1.BlurData.Size := Round(sTrackEdit2.Value);
end;


procedure TFrameTsSplitView.UpdatePanelLook;
begin
  if (sSplitView1.DisplayMode = svmaOverlay) and (sSplitView1.BlurData.Mode = bmSplitView) then
    sSplitView1.BevelOuter := bvNone
  else
    sSplitView1.BevelOuter := bvRaised;

  sSplitView1.BorderWidth := integer(sSplitView1.BevelOuter <> bvRaised);
  SetWindowPos(sSplitView1.Handle, 0, 0, 0, 0, 0, SWPA_FRAMECHANGED);
  sSplitView1.Perform(WM_NCPAINT, 0, 0);
end;

end.
