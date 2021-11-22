unit UnitTsPopupBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sMaskEdit,
  sCustomComboEdit, sComboEdit, Mask, ComCtrls;


type
  TFrameTsPopupBox = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sRadioGroup1: TsRadioGroup;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit4: TsTrackEdit;
    sGroupBox2: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sTrackEdit7: TsTrackEdit;
    sComboBox1: TsComboBox;
    sGroupBox3: TsGroupBox;
    sTrackEdit8: TsTrackEdit;
    sSpeedButton3: TsSpeedButton;
    sColorBox1: TsColorBox;
    sGroupBox4: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sMemo1: TsMemo;
    sCheckBox2: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sPopupBox1: TsPopupBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sTrackEdit9: TsTrackEdit;
    sSpeedButton6: TsSpeedButton;
    procedure sRadioGroup1Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sTrackEdit8Change(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit6CloseUp(Sender: TObject);
    procedure sMemo1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sPopupBox1BeforePopup(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sTrackEdit9Change(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sSpeedButton6Click(Sender: TObject);
  public
  end;

var
  FrameTsPopupBox: TFrameTsPopupBox;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule, UnitCustomPopup;

{$R *.dfm}

procedure TFrameTsPopupBox.sCheckBox1Click(Sender: TObject);
begin
  sPopupBox1.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsPopupBox.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sPopupBox1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sPopupBox1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsPopupBox.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sPopupBox1.DisabledKind := sPopupBox1.DisabledKind + [dkBlended]
  else
    sPopupBox1.DisabledKind := sPopupBox1.DisabledKind - [dkBlended];
end;


procedure TFrameTsPopupBox.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sPopupBox1.DisabledKind := sPopupBox1.DisabledKind + [dkGrayed]
  else
    sPopupBox1.DisabledKind := sPopupBox1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsPopupBox.sCheckBox5Click(Sender: TObject);
begin
  sPopupBox1.DirectInput := sCheckBox5.Checked;
end;


procedure TFrameTsPopupBox.sCheckBox6Click(Sender: TObject);
begin
  sPopupBox1.ShowButton := sCheckBox6.Checked;
end;


procedure TFrameTsPopupBox.sColorBox1Change(Sender: TObject);
begin
  sPopupBox1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsPopupBox.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sPopupBox1.AddedGlyph.ColorTone := NewColor;
  sSpeedButton3.Enabled := NewColor <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsPopupBox.sColorBox2Change(Sender: TObject);
begin
  sPopupBox1.Color := sColorBox2.Selected;
  sPopupBox1.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPopupBox.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sPopupBox1.Color := NewColor;
  sPopupBox1.SkinData.CustomColor := NewColor <> clNone;
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsPopupBox.sComboBox1Change(Sender: TObject);
begin
  sPopupBox1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsPopupBox.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sPopupBox1.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsPopupBox.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox3.Checked then
    sPopupBox1.AddedGlyph.Images := FormData.CharList16
  else
    sPopupBox1.AddedGlyph.Images := nil;
end;


procedure TFrameTsPopupBox.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sPopupBox1.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsPopupBox.sMemo1Change(Sender: TObject);
begin
  sPopupBox1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsPopupBox.sPopupBox1BeforePopup(Sender: TObject);
begin
  FormCustomPopup.OwnerControl := sPopupBox1;
end;


procedure TFrameTsPopupBox.sRadioGroup1Click(Sender: TObject);
begin
  sPopupBox1.VerticalAlignment := TVerticalAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsPopupBox.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sPopupBox1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsPopupBox.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sPopupBox1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPopupBox.sSpeedButton3Click(Sender: TObject);
begin
  sPopupBox1.AddedGlyph.ColorTone := clNone;
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsPopupBox.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sPopupBox1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPopupBox.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sPopupBox1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsPopupBox.sSpeedButton6Click(Sender: TObject);
begin
  sPopupBox1.PopupWindowShow;
end;


procedure TFrameTsPopupBox.sTrackEdit1Change(Sender: TObject);
begin
  sPopupBox1.Padding.Left := sTrackEdit1.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit2Change(Sender: TObject);
begin
  sPopupBox1.Padding.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit3Change(Sender: TObject);
begin
  sPopupBox1.Padding.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit4Change(Sender: TObject);
begin
  sPopupBox1.Padding.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit5Change(Sender: TObject);
begin
  sPopupBox1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown and (sPopupBox1.BoundLabel.FTheLabel <> nil) then begin
    sPopupBox1.BoundLabel.FTheLabel.Transparent := False;
    sPopupBox1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sPopupBox1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit6CloseUp(Sender: TObject);
begin
  if sPopupBox1.BoundLabel.FTheLabel <> nil then
    sPopupBox1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsPopupBox.sTrackEdit7Change(Sender: TObject);
begin
  sPopupBox1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit8Change(Sender: TObject);
begin
  sPopupBox1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
end;


procedure TFrameTsPopupBox.sTrackEdit9Change(Sender: TObject);
begin
  if sTrackEdit9.DroppedDown then
    sPopupBox1.ButtonWidth := sTrackEdit9.AsInteger;
end;

end.
