unit UnitTsBitBtn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, ExtCtrls, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, ComCtrls,

  UnitBaseMenu,

  acAlphaImageList, sRadioButton, sComboBoxes, sGroupBox,
  sComboBox, sEdit, acPopupCtrls, sCheckBox, sBitBtn, sSpeedButton,
  sFrameAdapter, acntTypes, sLabel;


type
  TFrameTsBitBtn = class(TFrameBaseMenu)
    sTrackEdit3: TsTrackEdit;
    sGroupBox2: TsGroupBox;
    sCheckBox1: TsCheckBox;
    sTrackEdit2: TsTrackEdit;
    sGroupBox1: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sRadioGroup3: TsRadioGroup;
    sRadioGroup1: TsRadioGroup;
    sBitBtn1: TsBitBtn;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sGroupBox3: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sSpeedButton3: TsSpeedButton;
    sComboBox4: TsComboBox;
    sColorBox1: TsColorBox;
    sCheckBox9: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton4: TsSpeedButton;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sVirtualImageList1: TsVirtualImageList;
    sRadioGroup2: TsRadioGroup;
    sCheckBox2: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sLabel1: TsLabel;
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sRadioGroup1Click(Sender: TObject);
    procedure sRadioGroup3Click(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sRadioGroup2Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sBitBtn1GetColoring(Sender: TObject; State: Integer; var Coloring: acntTypes.TacColoring);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
    procedure AfterCreation; override;
    procedure CheckLayoutControls;
    procedure CheckDisableGroup;
    procedure CheckTextGroup;
  end;

var
  FrameTsBitBtn: TFrameTsBitBtn;

implementation

{$R *.dfm}

uses sVCLUtils, sConst, UnitDataModule, UnitMain;


const
  AlignmentArray:     array [0..2] of TAlignment         = (taLeftJustify, taRightJustify, taCenter);
  VertAlignmentArray: array [0..2] of TVerticalAlignment = (taAlignTop,    taAlignBottom,  taVerticalCenter);
  LayoutArray:        array [0..3] of TButtonLayout      = (blGlyphLeft,   blGlyphRight,   blGlyphTop,   blGlyphBottom);


procedure EnabledControls(Ctrl: TControl; Data: integer);
begin
  Ctrl.Enabled := not boolean(Data);
end;


procedure TFrameTsBitBtn.AfterCreation;
begin
  sCheckBox8.Enabled := not FormData.sSkinManager1.Active or FormData.sSkinManager1.ButtonsOptions.ShowFocusRect;
end;


procedure TFrameTsBitBtn.CheckDisableGroup;
begin
  IterateControls(sGroupBox1, integer(sBitBtn1.Enabled), EnabledControls);
  sCheckBox3.Enabled := not sBitBtn1.Enabled;
  sCheckBox4.Enabled := not sBitBtn1.Enabled;
  sCheckBox5.Enabled := not sBitBtn1.Enabled and sGroupBox3.Checked;
  sCheckBox6.Enabled := not sBitBtn1.Enabled and sGroupBox3.Checked;
end;


procedure TFrameTsBitBtn.CheckLayoutControls;
begin
  sRadioButton1.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  sRadioButton2.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  sRadioButton3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked and (sRadioGroup1.ItemIndex = 2);
  sRadioButton4.Enabled := sCheckBox1.Checked and sGroupBox3.Checked and (sRadioGroup1.ItemIndex = 2);
end;


procedure TFrameTsBitBtn.CheckTextGroup;
begin
  sRadioGroup3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked and ((sRadioGroup1.ItemIndex = 0) and sRadioButton1.Checked or (sRadioGroup1.ItemIndex = 1) and sRadioButton2.Checked);
end;


procedure TFrameTsBitBtn.sBitBtn1GetColoring(Sender: TObject; State: Integer; var Coloring: acntTypes.TacColoring);
begin
  if sCheckBox7.Checked and (sBitBtn1.GlyphColorTone = clNone) then
    if State = 0 then
      Coloring.ColorGlyph := slBtnBlueText // Such colors are defined in each skin
    else
      Coloring.ColorGlyph := slBtnBlueTextActive;
end;


procedure TFrameTsBitBtn.sCheckBox1Click(Sender: TObject);
begin
  sBitBtn1.ShowCaption := sCheckBox1.Checked;
  sTrackEdit3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  CheckTextGroup;
  CheckLayoutControls;
end;


procedure TFrameTsBitBtn.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sBitBtn1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sBitBtn1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsBitBtn.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sBitBtn1.DisabledKind := sBitBtn1.DisabledKind + [dkBlended]
  else
    sBitBtn1.DisabledKind := sBitBtn1.DisabledKind - [dkBlended];
end;


procedure TFrameTsBitBtn.sCheckBox4Click(Sender: TObject);
begin
  sCheckBox6.Enabled := not sCheckBox4.Checked;
  if sCheckBox4.Checked then
    sBitBtn1.DisabledKind := sBitBtn1.DisabledKind + [dkGrayed]
  else
    sBitBtn1.DisabledKind := sBitBtn1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsBitBtn.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then
    sBitBtn1.DisabledGlyphKind := sBitBtn1.DisabledGlyphKind + [dgBlended]
  else
    sBitBtn1.DisabledGlyphKind := sBitBtn1.DisabledGlyphKind - [dgBlended];
end;


procedure TFrameTsBitBtn.sCheckBox6Click(Sender: TObject);
begin
  sCheckBox4.Enabled := not sCheckBox6.Checked;
  if sCheckBox6.Checked then
    sBitBtn1.DisabledGlyphKind := sBitBtn1.DisabledGlyphKind + [dgGrayed]
  else
    sBitBtn1.DisabledGlyphKind := sBitBtn1.DisabledGlyphKind - [dgGrayed];
end;


procedure TFrameTsBitBtn.sCheckBox7Click(Sender: TObject);
begin
  sBitBtn1.SkinData.Invalidate;
end;


procedure TFrameTsBitBtn.sCheckBox8Click(Sender: TObject);
begin
  sBitBtn1.ShowFocus := sCheckBox8.Checked;
end;


procedure TFrameTsBitBtn.sCheckBox9Click(Sender: TObject);
begin
  sBitBtn1.Reflected := sCheckBox9.Checked;
end;


procedure TFrameTsBitBtn.sColorBox1Change(Sender: TObject);
begin
  sTrackEdit5.Value := 0;
  sTrackEdit5.OnChange(sTrackEdit5);
  sBitBtn1.SkinData.ColorTone := sColorBox1.Selected;
  sTrackEdit5.Enabled := sColorBox1.Selected = clNone;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsBitBtn.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sTrackEdit5.Value := 0;
  sTrackEdit5.OnChange(sTrackEdit5);
  sBitBtn1.SkinData.ColorTone := NewColor;
  sTrackEdit5.Enabled := NewColor = clNone;
  sSpeedButton3.Enabled := NewColor <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsBitBtn.sColorBox2Change(Sender: TObject);
begin
  sBitBtn1.GlyphColorTone := sColorBox2.Selected;
  sCheckBox7.Enabled := False;
  sCheckBox7.Checked := False;
  sSpeedButton4.Enabled := sColorBox2.Selected <> sColorBox2.NoneColorColor;
end;


procedure TFrameTsBitBtn.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sBitBtn1.GlyphColorTone := NewColor;
  sCheckBox7.Enabled := NewColor = sColorBox2.NoneColorColor;
  sCheckBox7.Checked := NewColor = sColorBox2.NoneColorColor;
  sSpeedButton4.Enabled := NewColor <> sColorBox2.NoneColorColor;
end;


procedure TFrameTsBitBtn.sComboBox4Change(Sender: TObject);
begin
  sBitBtn1.SkinData.SkinSection := sComboBox4.Text;
  if sCheckBox2.Checked then
    sBitBtn1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsBitBtn.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sBitBtn1.Enabled := not sGroupBox1.Checked;
  CheckDisableGroup;
end;


procedure TFrameTsBitBtn.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sTrackEdit3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  CheckTextGroup;
  CheckLayoutControls;
  CheckDisableGroup;
  if sGroupBox3.Checked then
    sBitBtn1.Images := FormData.sCharImageList1
  else
    sBitBtn1.Images := nil;
end;


procedure TFrameTsBitBtn.sRadioButton1Click(Sender: TObject);
begin
  sBitBtn1.Layout := LayoutArray[TsRadioButton(Sender).Tag];
  sRadioGroup1.Controls[0].Enabled := TsRadioButton(Sender).Tag < 2;
  sRadioGroup1.Controls[1].Enabled := TsRadioButton(Sender).Tag < 2;
  CheckTextGroup;
end;


procedure TFrameTsBitBtn.sRadioGroup1Click(Sender: TObject);
begin
  sBitBtn1.Alignment := AlignmentArray[sRadioGroup1.ItemIndex];
  sTrackEdit2.Enabled := (sRadioGroup1.ItemIndex < 2);
  CheckTextGroup;
  CheckLayoutControls;
end;


procedure TFrameTsBitBtn.sRadioGroup2Click(Sender: TObject);
begin
  sBitBtn1.VerticalAlignment := VertAlignmentArray[sRadioGroup2.ItemIndex];
  sTrackEdit2.Enabled := (sRadioGroup1.ItemIndex < 2) or (sRadioGroup2.ItemIndex < 2);
end;


procedure TFrameTsBitBtn.sRadioGroup3Click(Sender: TObject);
begin
  sBitBtn1.TextAlignment := AlignmentArray[sRadioGroup3.ItemIndex];
end;


procedure TFrameTsBitBtn.sSpeedButton3Click(Sender: TObject);
begin
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
  sColorBox1.OnChange(sColorBox1);
end;


procedure TFrameTsBitBtn.sSpeedButton4Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  sBitBtn1.GlyphColorTone := clNone;
  sCheckBox7.Enabled := True;
  sSpeedButton4.Enabled := False;
end;


procedure TFrameTsBitBtn.sTrackEdit2Change(Sender: TObject);
begin
  sBitBtn1.Margin := sTrackEdit2.AsInteger;
  sBitBtn1.SkinData.Invalidate;
end;


procedure TFrameTsBitBtn.sTrackEdit3Change(Sender: TObject);
begin
  sBitBtn1.Spacing := sTrackEdit3.AsInteger;
end;


procedure TFrameTsBitBtn.sTrackEdit4Change(Sender: TObject);
begin
  sVirtualImageList1.AcBeginUpdate;
  sVirtualImageList1.Height := sTrackEdit4.AsInteger;
  sVirtualImageList1.Width := sTrackEdit4.AsInteger;
  sVirtualImageList1.AcEndUpdate;
end;


procedure TFrameTsBitBtn.sTrackEdit5Change(Sender: TObject);
begin
  sBitBtn1.SkinData.HUEOffset := sTrackEdit5.AsInteger;
end;


procedure TFrameTsBitBtn.sTrackEdit1Change(Sender: TObject);
begin
  sBitBtn1.Blend := sTrackEdit1.AsInteger;
end;

end.
