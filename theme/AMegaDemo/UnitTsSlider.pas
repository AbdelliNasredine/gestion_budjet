unit UnitTsSlider;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ComCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ExtCtrls,

  sEdit, acPopupCtrls, sGroupBox, acAlphaImageList, sTrackBar, sCheckBox, sPanel,
  acSlider, sRadioButton, sLabel, sFrameAdapter, sComboBoxes;


type
  TFrameTsSlider = class(TFrameBaseMenu)
    sLabel2: TsLabel;
    sGroupBox1: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sSlider1: TsSlider;
    sGroupBox2: TsGroupBox;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sCheckBox1: TsCheckBox;
    sTrackBar1: TsTrackBar;
    ImageListSlider: TsAlphaImageList;
    sCheckBox4: TsCheckBox;
    sGroupBox3: TsGroupBox;
    sTrackBar2: TsTrackBar;
    sLabel1: TsLabel;
    sRadioGroup1: TsRadioGroup;
    sGroupBox4: TsGroupBox;
    sGroupBox5: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit4: TsTrackEdit;
    sCheckBox2: TsCheckBox;
    sCharImageList1: TsCharImageList;
    sGroupBox6: TsGroupBox;
    sColorBox1: TsColorBox;
    sColorBox2: TsColorBox;
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sRadioButton3Click(Sender: TObject);
    procedure sRadioButton4Click(Sender: TObject);
    procedure sRadioButton5Click(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sRadioButton2Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
    procedure UpdateSize;
  end;

var
  FrameTsSlider: TFrameTsSlider;

implementation

{$R *.dfm}

uses sConst, sCommonData;

const
  DefaultHeight = 21;
  DefaultWidth = 64;


procedure TFrameTsSlider.sCheckBox1Click(Sender: TObject);
begin
  sSlider1.Reversed := sCheckBox1.Checked;
end;


procedure TFrameTsSlider.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sSlider1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sSlider1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsSlider.sCheckBox4Click(Sender: TObject);
begin
  sSlider1.Stretched := sCheckBox4.Checked;
end;


procedure TFrameTsSlider.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  if Sender = sColorBox1 then
    sSlider1.ColorOn := NewColor
  else
    sSlider1.Color := NewColor;
end;


procedure TFrameTsSlider.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sSlider1.KeepThumbAspectRatio := sGroupBox3.Checked;
end;


procedure TFrameTsSlider.sGroupBox4CheckBoxChanged(Sender: TObject);

  procedure ChangeCtrlsEnabled(Ctrl: TWinControl; Value: boolean);
  var
    i: integer;
  begin
    for i := 0 to Ctrl.ControlCount - 1 do
      if (Ctrl.Controls[i] <> sSlider1) and (Ctrl.Controls[i] <> sGroupBox4) then begin
        Ctrl.Controls[i].Enabled := Value;
        if Ctrl.Controls[i] is TWinControl then
          ChangeCtrlsEnabled(TWinControl(Ctrl.Controls[i]), Value);
      end;
  end;

begin
  ChangeCtrlsEnabled(Self, not sGroupBox4.Checked);
  sSlider1.BeginUpdate;
  if sGroupBox4.Checked then begin // Customizing of slider looking with own images
    sSlider1.Orientation := coHorizontal;
    // Offsets of thumb
    sSlider1.CustomThumbOffset.Left := 5;
    sSlider1.CustomThumbOffset.Top := 1;
    sSlider1.CustomThumbOffset.Right := 5;
    sSlider1.CustomThumbOffset.Bottom := 1;
    // Indexes of control images in the ImageListSlider
    sSlider1.ImageIndexOff := 0;
    sSlider1.ImageIndexOn := 1;
    sSlider1.ThumbIndexOff := 3;
    sSlider1.ThumbIndexOn := 3;
    // Remove glyph indexes
    sSlider1.GlyphIndexOff := -1;
    sSlider1.GlyphIndexOn := -1;
    sSlider1.Images := ImageListSlider;
    sSlider1.Width := ScaleInt(78, sSlider1.Skindata);
    sSlider1.Height := ScaleInt(38, sSlider1.Skindata);
    sSlider1.ShowCaption := False;
    sSlider1.ThumbSizeInPercent := 50;
    sSlider1.Reversed := True;
    sSlider1.ImagesUsingMode := iumFullPaint;
  end
  else begin
    sSlider1.Orientation := TControlOrientation(sRadioGroup1.ItemIndex);
    UpdateSize;
    // Offsets of thumb
    sSlider1.CustomThumbOffset.Left := 0;
    sSlider1.CustomThumbOffset.Top := 0;
    sSlider1.CustomThumbOffset.Right := 0;
    sSlider1.CustomThumbOffset.Bottom := 0;
    // Remove indexes of control images
    sSlider1.ImageIndexOff := -1;
    sSlider1.ImageIndexOn := -1;
    sSlider1.ThumbIndexOff := -1;
    sSlider1.ThumbIndexOn := -1;
    // Define glyph indexes
    sSlider1.GlyphIndexOff := 0;
    sSlider1.GlyphIndexOn := 1;
    sSlider1.Images := sCharImageList1;
    sTrackBar1Change(sTrackBar1);
    sTrackBar2Change(sTrackBar2);
    sRadioButton3.OnClick(sRadioButton3);
    sSlider1.Reversed := sCheckBox1.Checked;
    sSlider1.ImagesUsingMode := iumGlyphsOnly;
  end;
  sSlider1.EndUpdate(True);
end;


procedure TFrameTsSlider.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox6.Checked then begin
    sSlider1.ColorOn := sColorBox1.Selected;
    sSlider1.Color := sColorBox2.Selected;
    sSlider1.SkinData.CustomColor := True;
  end
  else
    sSlider1.SkinData.CustomColor := False;
end;


procedure TFrameTsSlider.sRadioButton1Click(Sender: TObject);
begin
  sSlider1.ContentPlacing := scpThumb;
end;


procedure TFrameTsSlider.sRadioButton2Click(Sender: TObject);
begin
  sSlider1.ContentPlacing := scpBackground;
end;


procedure TFrameTsSlider.sRadioButton3Click(Sender: TObject);
begin
  sSlider1.UseSymbols := False;
  sSlider1.GlyphIndexOff := -1;
  sSlider1.GlyphIndexOn := -1;
  sSlider1.ShowCaption := True;
end;


procedure TFrameTsSlider.sRadioButton4Click(Sender: TObject);
begin
  sSlider1.UseSymbols := True;
end;


procedure TFrameTsSlider.sRadioButton5Click(Sender: TObject);
begin
  sSlider1.UseSymbols := False;
  sSlider1.Images := sCharImageList1;
  sSlider1.GlyphIndexOff := 0;
  sSlider1.GlyphIndexOn := 1;
  sSlider1.ShowCaption := False;
end;


procedure TFrameTsSlider.sRadioGroup1Change(Sender: TObject);
begin
  if sSlider1.Orientation <> TControlOrientation(sRadioGroup1.ItemIndex) then begin
    sSlider1.Orientation := TControlOrientation(sRadioGroup1.ItemIndex);
    UpdateSize;
  end;
end;


procedure TFrameTsSlider.sTrackBar1Change(Sender: TObject);
begin
  UpdateSize;
end;


procedure TFrameTsSlider.sTrackBar2Change(Sender: TObject);
begin
  sSlider1.ThumbSizeInPercent := sTrackBar2.Position;
end;


procedure TFrameTsSlider.sTrackEdit1Change(Sender: TObject);
begin
  if sGroupBox4.Checked then
    sSlider1.CustomThumbOffset.Left := sTrackEdit1.AsInteger;
end;


procedure TFrameTsSlider.sTrackEdit2Change(Sender: TObject);
begin
  if sGroupBox4.Checked then
    sSlider1.CustomThumbOffset.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsSlider.sTrackEdit3Change(Sender: TObject);
begin
  if sGroupBox4.Checked then
    sSlider1.CustomThumbOffset.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsSlider.sTrackEdit4Change(Sender: TObject);
begin
  if sGroupBox4.Checked then
    sSlider1.CustomThumbOffset.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsSlider.UpdateSize;
var
  i: integer;
begin
  i := sTrackBar1.Position * 2;
  if sSlider1.Orientation = coVertical then begin
    sSlider1.Width := DefaultHeight + i;
    sSlider1.Height := DefaultWidth + i;
  end
  else begin
    sSlider1.Height := DefaultHeight + i;
    sSlider1.Width := DefaultWidth + i;
  end;
  sCharImageList1.Height := 12 + i;
  sCharImageList1.Width := 12 + i;
end;

end.
