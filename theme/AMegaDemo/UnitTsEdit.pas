unit UnitTsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, ComCtrls, Mask, sMaskEdit,
  sCustomComboEdit, sPageControl;


type
  TFrameTsEdit = class(TFrameBaseMenu)
    sEdit1: TsEdit;
    sCheckBox9: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sGroupBox1: TsGroupBox;
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
    sMemo1: TsMemo;
    sGroupBox4: TsGroupBox;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sGroupBox3: TsGroupBox;
    sSpeedButton3: TsSpeedButton;
    sTrackEdit8: TsTrackEdit;
    sColorBox1: TsColorBox;
    sRadioGroup1: TsRadioGroup;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
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
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
  public
  end;

var
  FrameTsEdit: TFrameTsEdit;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsEdit.sCheckBox1Click(Sender: TObject);
begin
  sEdit1.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsEdit.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sEdit1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sEdit1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsEdit.sCheckBox9Click(Sender: TObject);
begin
  sEdit1.LabelFromTextHint := sCheckBox9.Checked;
  sEdit1.Text := '';
  if sCheckBox9.Checked then begin
    sGroupBox2.Checked := False;
    sEdit1.TextHint := 'TextHint';
    sEdit1.SkinData.Invalidate;
  end
  else
    sGroupBox2.Checked := True;
end;


procedure TFrameTsEdit.sColorBox1Change(Sender: TObject);
begin
  sEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsEdit.sColorBox2Change(Sender: TObject);
begin
  sEdit1.Color := sColorBox2.Selected;
  sEdit1.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsEdit.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sEdit1.Color := NewColor;
  sEdit1.SkinData.CustomColor := NewColor <> clNone;
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsEdit.sComboBox1Change(Sender: TObject);
begin
  sEdit1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsEdit.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sEdit1.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsEdit.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox3.Checked then
    sEdit1.AddedGlyph.Images := FormData.CharList16
  else
    sEdit1.AddedGlyph.Images := nil;
end;


procedure TFrameTsEdit.sMemo1Change(Sender: TObject);
begin
  sEdit1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsEdit.sRadioGroup1Click(Sender: TObject);
begin
  sEdit1.VerticalAlignment := TVerticalAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsEdit.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sEdit1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsEdit.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sEdit1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsEdit.sSpeedButton3Click(Sender: TObject);
begin
  sEdit1.AddedGlyph.ColorTone := clNone;
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsEdit.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sEdit1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsEdit.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sEdit1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsEdit.sTrackEdit1Change(Sender: TObject);
begin
  sEdit1.Padding.Left := sTrackEdit1.AsInteger;
end;


procedure TFrameTsEdit.sTrackEdit2Change(Sender: TObject);
begin
  sEdit1.Padding.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsEdit.sTrackEdit3Change(Sender: TObject);
begin
  sEdit1.Padding.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsEdit.sTrackEdit4Change(Sender: TObject);
begin
  sEdit1.Padding.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsEdit.sTrackEdit5Change(Sender: TObject);
begin
  sEdit1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsEdit.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sEdit1.BoundLabel.FTheLabel.Transparent := False;
    sEdit1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sEdit1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsEdit.sTrackEdit6CloseUp(Sender: TObject);
begin
  sEdit1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsEdit.sTrackEdit7Change(Sender: TObject);
begin
  sEdit1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;


procedure TFrameTsEdit.sTrackEdit8Change(Sender: TObject);
begin
  sEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
end;

end.
