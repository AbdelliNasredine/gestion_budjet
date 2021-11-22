unit UnitTsScrollBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, sPanel, sScrollBox, ComCtrls, sMaskEdit, sCustomComboEdit;


type
  TFrameTsScrollBox = class(TFrameBaseMenu)
    sScrollBox1: TsScrollBox;
    sCheckBox2: TsCheckBox;
    sComboBox1: TsComboBox;
    sGroupBox1: TsGroupBox;
    sSpeedButton2: TsSpeedButton;
    sColorBox2: TsColorBox;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sGroupBox2: TsGroupBox;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sColorBox1: TsColorBox;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sGroupBox3: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sGroupBox4: TsGroupBox;
    sGroupBox5: TsGroupBox;
    sCheckBox5: TsCheckBox;
    sTrackBar3: TsTrackBar;
    sGroupBox6: TsGroupBox;
    sStickyLabel3: TsStickyLabel;
    sStickyLabel4: TsStickyLabel;
    sTrackBar4: TsTrackBar;
    sTrackBar5: TsTrackBar;
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sGroupBox5CheckBoxChanged(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure sTrackBar4Change(Sender: TObject);
    procedure sTrackBar5Change(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
  end;

var
  FrameTsScrollBox: TFrameTsScrollBox;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsScrollBox.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sScrollBox1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sScrollBox1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsScrollBox.sCheckBox5Click(Sender: TObject);
begin
  sTrackBar3.Enabled := not sCheckBox5.Checked;
  if sCheckBox5.Checked then
    sScrollBox1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
  else
    sScrollBox1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;

  sScrollBox1.SkinData.HorzScrollData.ButtonsSize := sScrollBox1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsScrollBox.sColorBox1Change(Sender: TObject);
begin
  sSpeedButton1.OnClick(sSpeedButton1);
  sScrollBox1.SkinData.ColorTone := sColorBox1.Selected;
  sSpeedButton8.Enabled := True;
end;


procedure TFrameTsScrollBox.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sScrollBox1, clNone, sColorBox2.Selected);
  sSpeedButton8.OnClick(sSpeedButton8);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsScrollBox.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  ChangeControlColors(sScrollBox1, clNone, NewColor);
  sSpeedButton8.OnClick(sSpeedButton8);
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsScrollBox.sComboBox1Change(Sender: TObject);
begin
  sScrollBox1.SkinData.SkinSection := sComboBox1.Text;
  if sCheckBox2.Checked then
    sScrollBox1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsScrollBox.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sScrollBox1.AutoMouseWheel := sGroupBox3.Checked;
end;


procedure TFrameTsScrollBox.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  sCheckBox5.Enabled := sGroupBox5.Checked;
  sTrackBar3.Enabled := not sCheckBox5.Checked and sCheckBox5.Enabled;
  if sGroupBox5.Checked then
    if sCheckBox5.Checked then
      sScrollBox1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
    else
      sScrollBox1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position
  else
    sScrollBox1.SkinData.VertScrollData.ButtonsSize := 0; // Not visible

  sScrollBox1.SkinData.HorzScrollData.ButtonsSize := sScrollBox1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsScrollBox.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox6.Checked then begin
    sScrollBox1.SkinData.VertScrollData.ScrollWidth := -1; // Default system size will be used
    sScrollBox1.SkinData.HorzScrollData.ScrollWidth := -1;
  end
  else begin
    sScrollBox1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
    sScrollBox1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
  end;
end;


procedure TFrameTsScrollBox.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sScrollBox1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsScrollBox.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sScrollBox1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsScrollBox.sSpeedButton3Click(Sender: TObject);
begin
  sSpeedButton1.OnClick(sSpeedButton1);
  sScrollBox1.SkinData.ColorTone := TColor(TsSpeedButton(Sender).Tag);
  sSpeedButton8.Enabled := True;
end;


procedure TFrameTsScrollBox.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sScrollBox1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsScrollBox.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sScrollBox1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsScrollBox.sSpeedButton8Click(Sender: TObject);
begin
  sScrollBox1.SkinData.ColorTone := clNone;
  sSpeedButton8.Enabled := False;
end;


procedure TFrameTsScrollBox.sTrackBar3Change(Sender: TObject);
begin
  sScrollBox1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;
  sScrollBox1.SkinData.HorzScrollData.ButtonsSize := sScrollBox1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsScrollBox.sTrackBar4Change(Sender: TObject);
begin
  sScrollBox1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
end;


procedure TFrameTsScrollBox.sTrackBar5Change(Sender: TObject);
begin
  sScrollBox1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
end;


procedure TFrameTsScrollBox.sTrackEdit1Change(Sender: TObject);
begin
  sScrollBox1.WheelDelta := sTrackEdit1.AsInteger;
end;

end.
