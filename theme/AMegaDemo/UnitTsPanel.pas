unit UnitTsPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar,
  sPanel, ExtCtrls, ComCtrls;


type
  TFrameTsPanel = class(TFrameBaseMenu)
    sPanel1: TsPanel;
    sCheckBox2: TsCheckBox;
    sComboBox1: TsComboBox;
    sRadioGroup1: TsRadioGroup;
    sGroupBox1: TsGroupBox;
    sSpeedButton2: TsSpeedButton;
    sColorBox2: TsColorBox;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sGroupBox3: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sRadioGroup2: TsRadioGroup;
    sTrackEdit2: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sPanel1Paint(Sender: TObject; Canvas: TCanvas);
    procedure sCheckBox1Click(Sender: TObject);
  public
  end;

var
  FrameTsPanel: TFrameTsPanel;

implementation

uses acgpUtils, sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsPanel.sCheckBox1Click(Sender: TObject);
begin
  sPanel1.SkinData.Invalidate; // Full repaint
end;


procedure TFrameTsPanel.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then begin
    sGroupBox3.OnCheckBoxChanged := nil;
    sGroupBox3.Checked := not sCheckBox2.Checked;
    sGroupBox3.OnCheckBoxChanged := sGroupBox3CheckBoxChanged;
    sPanel1.SkinData.OuterEffects.Visibility := ovAlways;
    sPanel1.SideShadow.Mode := ssmNone;
{  end
  else begin
    sPanel1.SideShadow.Mode := ssmInternal;
}  end
   else
     sPanel1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsPanel.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sPanel1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPanel.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  ChangeControlColors(sPanel1, clNone, NewColor);
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsPanel.sComboBox1Change(Sender: TObject);
begin
  sPanel1.SkinData.SkinSection := sComboBox1.Text;
  if sCheckBox2.Checked then
    sPanel1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsPanel.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox3.Checked then begin
    sCheckBox2.OnClick := nil;
    sCheckBox2.Checked := not sGroupBox3.Checked;
    sCheckBox2.OnClick := sCheckBox2Click;
    sPanel1.SkinData.OuterEffects.Visibility := ovNone;
    sPanel1.SideShadow.Mode := ssmInternal;
  end
  else
    sPanel1.SideShadow.Mode := ssmNone;
end;


procedure TFrameTsPanel.sPanel1Paint(Sender: TObject; Canvas: TCanvas);
const
  iMargin = 20;
begin
  if sCheckBox1.Checked then
    acgpFillEllipse(Canvas.Handle, iMargin, iMargin, sPanel1.Width - 2 * iMargin, sPanel1.Height - 2 * iMargin, TColor($220000FF));
end;


procedure TFrameTsPanel.sRadioGroup1Change(Sender: TObject);
begin
  sPanel1.BevelOuter := TBevelCut(sRadioGroup1.ItemIndex);
  sPanel1.SkinData.SkinSection := '';
  sComboBox1.ItemIndex := -1;
  if sCheckBox2.Checked then
    sPanel1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsPanel.sRadioGroup2Change(Sender: TObject);
begin
  sPanel1.SideShadow.Side := TacSide(sRadioGroup2.ItemIndex);
end;


procedure TFrameTsPanel.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sPanel1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsPanel.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sPanel1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPanel.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sPanel1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPanel.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sPanel1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPanel.sTrackEdit1Change(Sender: TObject);
begin
  sPanel1.SideShadow.Blend := sTrackEdit1.AsInteger;
end;


procedure TFrameTsPanel.sTrackEdit2Change(Sender: TObject);
begin
  sPanel1.SideShadow.ShadowSize := sTrackEdit2.AsInteger;
end;

end.
