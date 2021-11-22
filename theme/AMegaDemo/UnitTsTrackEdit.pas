unit UnitTsTrackEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, ComCtrls;


type
  TFrameTsTrackEdit = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sRadioGroup1: TsRadioGroup;
    sTrackEdit9: TsTrackEdit;
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
    sTrackEdit1: TsTrackEdit;
    procedure sRadioGroup1Click(Sender: TObject);
    procedure sTrackEdit9Change(Sender: TObject);
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
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
  public
  end;

var
  FrameTsTrackEdit: TFrameTsTrackEdit;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsTrackEdit.sCheckBox1Click(Sender: TObject);
begin
  sTrackEdit1.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsTrackEdit.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sTrackEdit1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sTrackEdit1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsTrackEdit.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sTrackEdit1.DisabledKind := sTrackEdit1.DisabledKind + [dkBlended]
  else
    sTrackEdit1.DisabledKind := sTrackEdit1.DisabledKind - [dkBlended];
end;


procedure TFrameTsTrackEdit.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sTrackEdit1.DisabledKind := sTrackEdit1.DisabledKind + [dkGrayed]
  else
    sTrackEdit1.DisabledKind := sTrackEdit1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsTrackEdit.sColorBox1Change(Sender: TObject);
begin
  sTrackEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsTrackEdit.sColorBox2Change(Sender: TObject);
begin
  sTrackEdit1.Color := sColorBox2.Selected;
  sTrackEdit1.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTrackEdit.sComboBox1Change(Sender: TObject);
begin
  sTrackEdit1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsTrackEdit.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sTrackEdit1.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsTrackEdit.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox3.Checked then
    sTrackEdit1.AddedGlyph.Images := FormData.CharList16
  else
    sTrackEdit1.AddedGlyph.Images := nil;
end;


procedure TFrameTsTrackEdit.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sTrackEdit1.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsTrackEdit.sMemo1Change(Sender: TObject);
begin
  sTrackEdit1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsTrackEdit.sRadioGroup1Click(Sender: TObject);
begin
  sTrackEdit1.VerticalAlignment := TVerticalAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsTrackEdit.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sTrackEdit1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsTrackEdit.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sTrackEdit1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTrackEdit.sSpeedButton3Click(Sender: TObject);
begin
  sTrackEdit1.AddedGlyph.ColorTone := clNone;
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsTrackEdit.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sTrackEdit1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTrackEdit.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sTrackEdit1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTrackEdit.sTrackEdit9Change(Sender: TObject);
begin
  sTrackEdit1.Padding.Left := sTrackEdit9.AsInteger;
end;


procedure TFrameTsTrackEdit.sTrackEdit2Change(Sender: TObject);
begin
  sTrackEdit1.Padding.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsTrackEdit.sTrackEdit3Change(Sender: TObject);
begin
  sTrackEdit1.Padding.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsTrackEdit.sTrackEdit4Change(Sender: TObject);
begin
  sTrackEdit1.Padding.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsTrackEdit.sTrackEdit5Change(Sender: TObject);
begin
  sTrackEdit1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsTrackEdit.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sTrackEdit1.BoundLabel.FTheLabel.Transparent := False;
    sTrackEdit1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sTrackEdit1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsTrackEdit.sTrackEdit6CloseUp(Sender: TObject);
begin
  sTrackEdit1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsTrackEdit.sTrackEdit7Change(Sender: TObject);
begin
  sTrackEdit1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;


procedure TFrameTsTrackEdit.sTrackEdit8Change(Sender: TObject);
begin
  sTrackEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
end;

end.
