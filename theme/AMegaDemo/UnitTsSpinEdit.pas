unit UnitTsSpinEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  ComCtrls, sMemo, acAlphaImageList, sLabel, sSpinEdit, sMaskEdit, sCustomComboEdit;


type
  TFrameTsSpinEdit = class(TFrameBaseMenu)
    sSpinEdit1: TsSpinEdit;
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
    sMemo1: TsMemo;
    sCheckBox2: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sTrackEdit9: TsTrackEdit;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
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
    procedure sTrackEdit6CloseUp(Sender: TObject);
    procedure sMemo1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sTrackEdit9Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sSpinEdit1Change(Sender: TObject);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
    procedure sCheckBox4Click(Sender: TObject);
  public
  end;

var
  FrameTsSpinEdit: TFrameTsSpinEdit;

implementation

uses sConst, acntTypes, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsSpinEdit.sCheckBox1Click(Sender: TObject);
begin
  sSpinEdit1.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsSpinEdit.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sSpinEdit1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sSpinEdit1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsSpinEdit.sCheckBox3Click(Sender: TObject);
begin
  sSpinEdit1.HideEmptyText := sCheckBox3.Checked;
end;


procedure TFrameTsSpinEdit.sCheckBox4Click(Sender: TObject);
begin
  sSpinEdit1.ButtonsOrientation := TacOrientation(not sCheckBox4.Checked);
end;


procedure TFrameTsSpinEdit.sCheckBox5Click(Sender: TObject);
begin
  sSpinEdit1.AllowNegative := sCheckBox5.Checked;
end;


procedure TFrameTsSpinEdit.sCheckBox6Click(Sender: TObject);
begin
  sSpinEdit1.EditorEnabled := sCheckBox6.Checked;
end;


procedure TFrameTsSpinEdit.sCheckBox7Click(Sender: TObject);
begin
  sSpinEdit1.FlatSpinButtons := sCheckBox7.Checked;
end;


procedure TFrameTsSpinEdit.sCheckBox8Click(Sender: TObject);
begin
  sSpinEdit1.ShowSpinButtons := sCheckBox8.Checked;
end;


procedure TFrameTsSpinEdit.sColorBox1Change(Sender: TObject);
begin
  sSpinEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsSpinEdit.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpinEdit1.AddedGlyph.ColorTone := NewColor;
  sSpeedButton3.Enabled := NewColor <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsSpinEdit.sColorBox2Change(Sender: TObject);
begin
  sSpinEdit1.Color := sColorBox2.Selected;
  sSpinEdit1.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSpinEdit.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpinEdit1.Color := NewColor;
  sSpinEdit1.SkinData.CustomColor := NewColor <> clNone;
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsSpinEdit.sComboBox1Change(Sender: TObject);
begin
  sSpinEdit1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsSpinEdit.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sSpinEdit1.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsSpinEdit.sMemo1Change(Sender: TObject);
begin
  sSpinEdit1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsSpinEdit.sRadioGroup1Click(Sender: TObject);
begin
  sSpinEdit1.VerticalAlignment := TVerticalAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsSpinEdit.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sSpinEdit1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsSpinEdit.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sSpinEdit1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSpinEdit.sSpeedButton3Click(Sender: TObject);
begin
  sSpinEdit1.AddedGlyph.ColorTone := clNone;
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsSpinEdit.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sSpinEdit1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSpinEdit.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sSpinEdit1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSpinEdit.sSpinEdit1Change(Sender: TObject);
begin
  sCheckBox3.Enabled := sSpinEdit1.Value = 0;
end;


procedure TFrameTsSpinEdit.sTrackEdit1Change(Sender: TObject);
begin
  sSpinEdit1.Padding.Left := sTrackEdit1.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit2Change(Sender: TObject);
begin
  sSpinEdit1.Padding.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit3Change(Sender: TObject);
begin
  sSpinEdit1.Padding.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit4Change(Sender: TObject);
begin
  sSpinEdit1.Padding.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit5Change(Sender: TObject);
begin
  sSpinEdit1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sSpinEdit1.BoundLabel.FTheLabel.Transparent := False;
    sSpinEdit1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sSpinEdit1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit6CloseUp(Sender: TObject);
begin
  sSpinEdit1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsSpinEdit.sTrackEdit7Change(Sender: TObject);
begin
  sSpinEdit1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit8Change(Sender: TObject);
begin
  sSpinEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
end;


procedure TFrameTsSpinEdit.sTrackEdit9Change(Sender: TObject);
begin
  sSpinEdit1.ButtonWidth := sTrackEdit9.AsInteger;
end;

end.
