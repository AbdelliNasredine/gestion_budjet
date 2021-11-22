unit UnitTsSpeedButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, ExtCtrls, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, ComCtrls,

  UnitBaseMenu,

  acAlphaImageList, sComboBox, sGroupBox, sRadioButton,
  sComboBoxes, sEdit, acPopupCtrls, sCheckBox, sSpeedButton, sFrameAdapter;


type
  TFrameTsSpeedButton = class(TFrameBaseMenu)
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
    sSpeedButton1: TsSpeedButton;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sGroupBox3: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sCheckBox2: TsCheckBox;
    sRadioGroup2: TsRadioGroup;
    sSpeedButton3: TsSpeedButton;
    sComboBox4: TsComboBox;
    sColorBox1: TsColorBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton4: TsSpeedButton;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sVirtualImageList1: TsVirtualImageList;
    sGroupBox4: TsGroupBox;
    sCheckBox7: TsCheckBox;
    sComboBox1: TsComboBox;
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
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
    procedure CheckLayoutControls;
    procedure CheckDisableGroup;
    procedure CheckTextGroup;
  end;

var
  FrameTsSpeedButton: TFrameTsSpeedButton;

implementation

{$R *.dfm}

uses sVCLUtils, sCommonData, sConst, UnitDataModule, UnitMain;


const
  AlignmentArray:     array [0..2] of TAlignment         = (taLeftJustify, taRightJustify, taCenter);
  VertAlignmentArray: array [0..2] of TVerticalAlignment = (taAlignTop,    taAlignBottom,  taVerticalCenter);
  LayoutArray:        array [0..3] of TButtonLayout      = (blGlyphLeft,   blGlyphRight,   blGlyphTop,   blGlyphBottom);


procedure EnabledControls(Ctrl: TControl; Data: integer);
begin
  Ctrl.Enabled := not boolean(Data);
end;


procedure TFrameTsSpeedButton.CheckDisableGroup;
begin
  IterateControls(sGroupBox1, integer(sSpeedButton1.Enabled), EnabledControls);
  sCheckBox3.Enabled := not sSpeedButton1.Enabled;
  sCheckBox4.Enabled := not sSpeedButton1.Enabled;
  sCheckBox5.Enabled := not sSpeedButton1.Enabled and sGroupBox3.Checked;
  sCheckBox6.Enabled := not sSpeedButton1.Enabled and sGroupBox3.Checked;
end;


procedure TFrameTsSpeedButton.CheckLayoutControls;
begin
  sRadioButton1.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  sRadioButton2.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  sRadioButton3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked and (sRadioGroup1.ItemIndex = 2);
  sRadioButton4.Enabled := sCheckBox1.Checked and sGroupBox3.Checked and (sRadioGroup1.ItemIndex = 2);
end;


procedure TFrameTsSpeedButton.CheckTextGroup;
begin
  sRadioGroup3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked and ((sRadioGroup1.ItemIndex = 0) and sRadioButton1.Checked or (sRadioGroup1.ItemIndex = 1) and sRadioButton2.Checked);
end;


procedure TFrameTsSpeedButton.sCheckBox1Click(Sender: TObject);
begin
  sSpeedButton1.ShowCaption := sCheckBox1.Checked;
  sTrackEdit3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  CheckTextGroup;
  CheckLayoutControls;
end;


procedure TFrameTsSpeedButton.sCheckBox2Click(Sender: TObject);
begin
  sComboBox4.ItemIndex := 0; // Empty
  sSpeedButton1.SkinData.SkinSection := '';
  sSpeedButton1.Flat := sCheckBox2.Checked;
end;


procedure TFrameTsSpeedButton.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sSpeedButton1.DisabledKind := sSpeedButton1.DisabledKind + [dkBlended]
  else
    sSpeedButton1.DisabledKind := sSpeedButton1.DisabledKind - [dkBlended];
end;


procedure TFrameTsSpeedButton.sCheckBox4Click(Sender: TObject);
begin
  sCheckBox6.Enabled := not sCheckBox4.Checked;
  if sCheckBox4.Checked then
    sSpeedButton1.DisabledKind := sSpeedButton1.DisabledKind + [dkGrayed]
  else
    sSpeedButton1.DisabledKind := sSpeedButton1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsSpeedButton.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then
    sSpeedButton1.DisabledGlyphKind := sSpeedButton1.DisabledGlyphKind + [dgBlended]
  else
    sSpeedButton1.DisabledGlyphKind := sSpeedButton1.DisabledGlyphKind - [dgBlended];
end;


procedure TFrameTsSpeedButton.sCheckBox6Click(Sender: TObject);
begin
  sCheckBox4.Enabled := not sCheckBox6.Checked;
  if sCheckBox6.Checked then
    sSpeedButton1.DisabledGlyphKind := sSpeedButton1.DisabledGlyphKind + [dgGrayed]
  else
    sSpeedButton1.DisabledGlyphKind := sSpeedButton1.DisabledGlyphKind - [dgGrayed];
end;


procedure TFrameTsSpeedButton.sCheckBox7Click(Sender: TObject);
begin
  if sCheckBox7.Checked then
    sSpeedButton1.OnClick := sSpeedButton1Click
  else
    sSpeedButton1.OnClick := nil;

  sSpeedButton1.SkinData.Invalidate;
  sComboBox1.Enabled := Assigned(sSpeedButton1.OnClick);
end;


procedure TFrameTsSpeedButton.sCheckBox8Click(Sender: TObject);
begin
  sSpeedButton1.Grayed := sCheckBox8.Checked;
end;


procedure TFrameTsSpeedButton.sCheckBox9Click(Sender: TObject);
begin
  sSpeedButton1.Reflected := sCheckBox9.Checked;
end;


procedure TFrameTsSpeedButton.sColorBox1Change(Sender: TObject);
begin
  sTrackEdit5.Value := 0;
  sTrackEdit5.OnChange(sTrackEdit5);
  sSpeedButton1.SkinData.ColorTone := sColorBox1.Selected;
  sTrackEdit5.Enabled := sColorBox1.Selected = clNone;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsSpeedButton.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sTrackEdit5.Value := 0;
  sTrackEdit5.OnChange(sTrackEdit5);
  sSpeedButton1.SkinData.ColorTone := NewColor;
  sTrackEdit5.Enabled := sColorBox1.Selected = clNone;
  sSpeedButton3.Enabled := (NewColor <> clNone);
end;


procedure TFrameTsSpeedButton.sColorBox2Change(Sender: TObject);
begin
  sSpeedButton1.GlyphColorTone := sColorBox2.Selected;
  sSpeedButton4.Enabled := sColorBox2.Selected <> sColorBox2.NoneColorColor;
end;


procedure TFrameTsSpeedButton.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpeedButton1.GlyphColorTone := NewColor;
  sSpeedButton4.Enabled := (clNone <> NewColor);
end;


procedure TFrameTsSpeedButton.sComboBox1Change(Sender: TObject);
begin
  sSpeedButton1.SplitterStyle := TacSplitterStyle(sComboBox1.ItemIndex);
end;


procedure TFrameTsSpeedButton.sComboBox4Change(Sender: TObject);
begin
  sSpeedButton1.SkinData.SkinSection := sComboBox4.Text;
end;


procedure TFrameTsSpeedButton.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sSpeedButton1.Enabled := not sGroupBox1.Checked;
  CheckDisableGroup;
end;


procedure TFrameTsSpeedButton.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sTrackEdit3.Enabled := sCheckBox1.Checked and sGroupBox3.Checked;
  CheckTextGroup;
  CheckLayoutControls;
  CheckDisableGroup;
  if sGroupBox3.Checked then
    sSpeedButton1.Images := FormData.sCharImageList1
  else
    sSpeedButton1.Images := nil;
end;


procedure TFrameTsSpeedButton.sRadioButton1Click(Sender: TObject);
begin
  sSpeedButton1.Layout := LayoutArray[TsRadioButton(Sender).Tag];
  sRadioGroup1.Controls[0].Enabled := TsRadioButton(Sender).Tag < 2;
  sRadioGroup1.Controls[1].Enabled := TsRadioButton(Sender).Tag < 2;
  CheckTextGroup;
end;


procedure TFrameTsSpeedButton.sRadioGroup1Click(Sender: TObject);
begin
  sSpeedButton1.Alignment := AlignmentArray[sRadioGroup1.ItemIndex];
  sTrackEdit2.Enabled := (sRadioGroup1.ItemIndex < 2);
  CheckTextGroup;
  CheckLayoutControls;
end;


procedure TFrameTsSpeedButton.sRadioGroup2Change(Sender: TObject);
begin
  case sRadioGroup2.ItemIndex of
    0: sSpeedButton1.ButtonStyle := tbsButton;
    1: sSpeedButton1.ButtonStyle := tbsDivider;
    3: sSpeedButton1.ButtonStyle := tbsSeparator;
    2: sSpeedButton1.ButtonStyle := tbsDropDown;
  end;
  sGroupBox4.Enabled := sSpeedButton1.ButtonStyle = tbsDropDown;
  IterateControls(sGroupBox4, integer(not sGroupBox4.Enabled), EnabledControls);
end;


procedure TFrameTsSpeedButton.sRadioGroup3Click(Sender: TObject);
begin
  sSpeedButton1.TextAlignment := AlignmentArray[sRadioGroup3.ItemIndex];
end;


procedure TFrameTsSpeedButton.sSpeedButton1Click(Sender: TObject);
begin
  ShowMessage('OnClick');
end;


procedure TFrameTsSpeedButton.sSpeedButton3Click(Sender: TObject);
begin
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
  sColorBox1.OnChange(sColorBox1);
end;


procedure TFrameTsSpeedButton.sSpeedButton4Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  sSpeedButton1.GlyphColorTone := clNone;
  sSpeedButton4.Enabled := False;
end;


procedure TFrameTsSpeedButton.sTrackEdit2Change(Sender: TObject);
begin
  sSpeedButton1.Margin := sTrackEdit2.AsInteger;
  sSpeedButton1.SkinData.Invalidate;
end;


procedure TFrameTsSpeedButton.sTrackEdit3Change(Sender: TObject);
begin
  sSpeedButton1.Spacing := sTrackEdit3.AsInteger;
end;


procedure TFrameTsSpeedButton.sTrackEdit4Change(Sender: TObject);
begin
  sVirtualImageList1.AcBeginUpdate;
  sVirtualImageList1.Height := sTrackEdit4.AsInteger;
  sVirtualImageList1.Width := sTrackEdit4.AsInteger;
  sVirtualImageList1.AcEndUpdate(True);
end;


procedure TFrameTsSpeedButton.sTrackEdit5Change(Sender: TObject);
begin
  sSpeedButton1.SkinData.HUEOffset := sTrackEdit5.AsInteger;
end;


procedure TFrameTsSpeedButton.sTrackEdit1Change(Sender: TObject);
begin
  sSpeedButton1.Blend := sTrackEdit1.AsInteger;
end;

end.
