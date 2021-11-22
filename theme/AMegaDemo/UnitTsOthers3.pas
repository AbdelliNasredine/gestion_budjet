unit UnitTsOthers3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ComCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sToolEdit, sMaskEdit, sCustomComboEdit, sComboEdit,
  sFrameAdapter, sComboBoxes, sSpeedButton, sGroupBox, sEdit, acPopupCtrls,
  sCheckBox, sCurrEdit, Mask;


type
  TFrameTsOthers3 = class(TFrameBaseMenu)
    sComboEdit1: TsComboEdit;
    sDirectoryEdit1: TsDirectoryEdit;
    sFilenameEdit1: TsFilenameEdit;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sSpeedButton3: TsSpeedButton;
    sTrackEdit8: TsTrackEdit;
    sColorBox1: TsColorBox;
    sTrackEdit2: TsTrackEdit;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sTrackEdit1: TsTrackEdit;
    sGroupBox2: TsGroupBox;
    sDateEdit1: TsDateEdit;
    sGroupBox4: TsGroupBox;
    sCalcEdit1: TsCalcEdit;
    sCheckBox12: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit4: TsTrackEdit;
    sCheckBox4: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sCheckBox7: TsCheckBox;
    sCheckBox10: TsCheckBox;
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sTrackEdit8Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sCheckBox12Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sCheckBox10Click(Sender: TObject);
  public
  end;

var
  FrameTsOthers3: TFrameTsOthers3;

implementation

{$R *.dfm}

uses sConst, UnitDataModule;


procedure TFrameTsOthers3.sCheckBox10Click(Sender: TObject);
begin
  sComboEdit1.ButtonMode := sCheckBox10.Checked;
  sDirectoryEdit1.ButtonMode := sCheckBox10.Checked;
  sFilenameEdit1.ButtonMode := sCheckBox10.Checked;
  sDateEdit1.ButtonMode := sCheckBox10.Checked;
  sCalcEdit1.ButtonMode := sCheckBox10.Checked;
end;


procedure TFrameTsOthers3.sCheckBox12Click(Sender: TObject);
begin
  sDateEdit1.TravellingSelection := sCheckBox12.Checked;
end;


procedure TFrameTsOthers3.sCheckBox1Click(Sender: TObject);
begin
  sComboEdit1.DirectInput := sCheckBox1.Checked;
  sDirectoryEdit1.DirectInput := sCheckBox1.Checked;
  sFilenameEdit1.DirectInput := sCheckBox1.Checked;
  sDateEdit1.DirectInput := sCheckBox1.Checked;
  sCalcEdit1.DirectInput := sCheckBox1.Checked;
end;


procedure TFrameTsOthers3.sCheckBox2Click(Sender: TObject);
begin
  sDateEdit1.Animated := sCheckBox2.Checked;
end;


procedure TFrameTsOthers3.sCheckBox3Click(Sender: TObject);
begin
  sCheckBox1.Enabled := not sCheckBox3.Checked;
  sComboEdit1.Readonly := sCheckBox3.Checked;
  sDirectoryEdit1.Readonly := sCheckBox3.Checked;
  sFilenameEdit1.Readonly := sCheckBox3.Checked;
  sDateEdit1.Readonly := sCheckBox3.Checked;
  sCalcEdit1.Readonly := sCheckBox3.Checked;
end;


procedure TFrameTsOthers3.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then begin
    sCheckBox1.SkinData.OuterEffects.Visibility := ovAlways;
    sComboEdit1.SkinData.OuterEffects.Visibility := ovAlways;
    sDirectoryEdit1.SkinData.OuterEffects.Visibility := ovAlways;
    sFilenameEdit1.SkinData.OuterEffects.Visibility := ovAlways;
    sDateEdit1.SkinData.OuterEffects.Visibility := ovAlways;
    sCalcEdit1.SkinData.OuterEffects.Visibility := ovAlways;
  end
  else begin
    sCheckBox1.SkinData.OuterEffects.Visibility := ovNone;
    sComboEdit1.SkinData.OuterEffects.Visibility := ovNone;
    sDirectoryEdit1.SkinData.OuterEffects.Visibility := ovNone;
    sFilenameEdit1.SkinData.OuterEffects.Visibility := ovNone;
    sDateEdit1.SkinData.OuterEffects.Visibility := ovNone;
    sCalcEdit1.SkinData.OuterEffects.Visibility := ovNone;
  end;
end;


procedure TFrameTsOthers3.sCheckBox5Click(Sender: TObject);
begin
  sDateEdit1.ShowCurrentDate := sCheckBox5.Checked;
end;


procedure TFrameTsOthers3.sCheckBox6Click(Sender: TObject);
begin
  sCalcEdit1.ShowZeroIfEmpty := sCheckBox6.Checked;
end;


procedure TFrameTsOthers3.sCheckBox7Click(Sender: TObject);
begin
  sDirectoryEdit1.ShowRootBtns := sCheckBox7.Checked;
end;


procedure TFrameTsOthers3.sCheckBox8Click(Sender: TObject);
begin
  sDateEdit1.ShowTodayBtn := sCheckBox8.Checked;
end;


procedure TFrameTsOthers3.sCheckBox9Click(Sender: TObject);
begin
  sDateEdit1.ShowWeeks := sCheckBox9.Checked;
end;


procedure TFrameTsOthers3.sColorBox1Change(Sender: TObject);
begin
  sSpeedButton3.Enabled := True;
  sComboEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sDirectoryEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sFilenameEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sDateEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sCalcEdit1.AddedGlyph.ColorTone := sColorBox1.Selected;
end;


procedure TFrameTsOthers3.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpeedButton3.Enabled := NewColor <> clNone;
  sComboEdit1.AddedGlyph.ColorTone := NewColor;
  sDirectoryEdit1.AddedGlyph.ColorTone := NewColor;
  sFilenameEdit1.AddedGlyph.ColorTone := NewColor;
  sDateEdit1.AddedGlyph.ColorTone := NewColor;
  sCalcEdit1.AddedGlyph.ColorTone := NewColor;
end;


procedure TFrameTsOthers3.sColorBox2Change(Sender: TObject);
begin
  sSpeedButton1.Enabled := True;
  sComboEdit1.GlyphMode.ColorTone := sColorBox2.Selected;
  sDirectoryEdit1.GlyphMode.ColorTone := sColorBox2.Selected;
  sFilenameEdit1.GlyphMode.ColorTone := sColorBox2.Selected;
  sDateEdit1.GlyphMode.ColorTone := sColorBox2.Selected;
  sCalcEdit1.GlyphMode.ColorTone := sColorBox2.Selected;
end;


procedure TFrameTsOthers3.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpeedButton1.Enabled := NewColor <> clNone;
  sComboEdit1.GlyphMode.ColorTone := NewColor;
  sDirectoryEdit1.GlyphMode.ColorTone := NewColor;
  sFilenameEdit1.GlyphMode.ColorTone := NewColor;
  sDateEdit1.GlyphMode.ColorTone := NewColor;
  sCalcEdit1.GlyphMode.ColorTone := NewColor;
end;


procedure TFrameTsOthers3.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sSpeedButton1.Enabled := sGroupBox1.Checked and (sColorBox2.Selected <> clNone);
  sComboEdit1.ShowButton := sGroupBox1.Checked;
  sDirectoryEdit1.ShowButton := sGroupBox1.Checked;
  sFilenameEdit1.ShowButton := sGroupBox1.Checked;
  sDateEdit1.ShowButton := sGroupBox1.Checked;
  sCalcEdit1.ShowButton := sGroupBox1.Checked;
end;


procedure TFrameTsOthers3.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sSpeedButton3.Enabled := sGroupBox3.Checked and (sColorBox1.Selected <> clNone);
  if sGroupBox3.Checked then begin
    sComboEdit1.AddedGlyph.Images := FormData.CharList16;
    sDirectoryEdit1.AddedGlyph.Images := FormData.CharList16;
    sFilenameEdit1.AddedGlyph.Images := FormData.CharList16;
    sDateEdit1.AddedGlyph.Images := FormData.CharList16;
    sCalcEdit1.AddedGlyph.Images := FormData.CharList16;
  end
  else begin
    sComboEdit1.AddedGlyph.Images := nil;
    sDirectoryEdit1.AddedGlyph.Images := nil;
    sFilenameEdit1.AddedGlyph.Images := nil;
    sDateEdit1.AddedGlyph.Images := nil;
    sCalcEdit1.AddedGlyph.Images := nil;
  end;
end;

procedure TFrameTsOthers3.sSpeedButton1Click(Sender: TObject);
begin
  sSpeedButton1.Enabled := False;
  sComboEdit1.GlyphMode.ColorTone := clNone;
  sDirectoryEdit1.GlyphMode.ColorTone := clNone;
  sFilenameEdit1.GlyphMode.ColorTone := clNone;
  sDateEdit1.GlyphMode.ColorTone := clNone;
  sCalcEdit1.GlyphMode.ColorTone := clNone;
end;


procedure TFrameTsOthers3.sSpeedButton3Click(Sender: TObject);
begin
  sSpeedButton3.Enabled := False;
  sComboEdit1.AddedGlyph.ColorTone := clNone;
  sDirectoryEdit1.AddedGlyph.ColorTone := clNone;
  sFilenameEdit1.AddedGlyph.ColorTone := clNone;
  sDateEdit1.AddedGlyph.ColorTone := clNone;
  sCalcEdit1.AddedGlyph.ColorTone := clNone;
end;


procedure TFrameTsOthers3.sTrackEdit1Change(Sender: TObject);
begin
  sComboEdit1.ButtonWidth := sTrackEdit1.AsInteger;
  sDirectoryEdit1.ButtonWidth := sTrackEdit1.AsInteger;
  sFilenameEdit1.ButtonWidth := sTrackEdit1.AsInteger;
  sDateEdit1.ButtonWidth := sTrackEdit1.AsInteger;
  sCalcEdit1.ButtonWidth := sTrackEdit1.AsInteger;
end;


procedure TFrameTsOthers3.sTrackEdit2Change(Sender: TObject);
begin
  sComboEdit1.GlyphMode.Blend := sTrackEdit2.AsInteger;
  sDirectoryEdit1.GlyphMode.Blend := sTrackEdit2.AsInteger;
  sFilenameEdit1.GlyphMode.Blend := sTrackEdit2.AsInteger;
  sDateEdit1.GlyphMode.Blend := sTrackEdit2.AsInteger;
  sCalcEdit1.GlyphMode.Blend := sTrackEdit2.AsInteger;
end;


procedure TFrameTsOthers3.sTrackEdit3Change(Sender: TObject);
begin
  sDateEdit1.TitleHeight := sTrackEdit3.AsInteger;
end;


procedure TFrameTsOthers3.sTrackEdit4Change(Sender: TObject);
begin
  sDateEdit1.TitleBtnsWidth := sTrackEdit4.AsInteger;
end;


procedure TFrameTsOthers3.sTrackEdit5Change(Sender: TObject);
begin
  sDateEdit1.PopupWidth := sTrackEdit5.AsInteger;
end;


procedure TFrameTsOthers3.sTrackEdit6Change(Sender: TObject);
begin
  sDateEdit1.PopupHeight := sTrackEdit6.AsInteger;
end;


procedure TFrameTsOthers3.sTrackEdit8Change(Sender: TObject);
begin
  sComboEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
  sDirectoryEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
  sFilenameEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
  sDateEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
  sCalcEdit1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
end;


end.
