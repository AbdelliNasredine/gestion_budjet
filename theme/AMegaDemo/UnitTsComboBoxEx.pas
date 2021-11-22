unit UnitTsComboBoxEx;
{$I sDefs.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,
  {$IFDEF DELPHI_XE2} UItypes, {$ENDIF}

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, ComCtrls, acntTypes, Mask, sMaskEdit,
  sCustomComboEdit, sRadioButton, sTrackBar;


type
  TFrameTsComboBoxEx = class(TFrameBaseMenu)
    sComboBoxEx1: TsComboBoxEx;
    sRadioGroup1: TsRadioGroup;
    sGroupBox2: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sTrackEdit7: TsTrackEdit;
    sComboBox1: TsComboBox;
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
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sCheckBox10: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sTrackEdit9: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit4: TsTrackEdit;
    sGroupBox3: TsGroupBox;
    sSpeedButton3: TsSpeedButton;
    sTrackEdit8: TsTrackEdit;
    sColorBox1: TsColorBox;
    sComboBox4: TsComboBox;
    sTrackBar1: TsTrackBar;
    sLabel1: TsLabel;
    sCheckBox13: TsCheckBox;
    sGroupBox5: TsGroupBox;
    sCheckBox7: TsCheckBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sCheckBox14: TsCheckBox;
    sCheckBox15: TsCheckBox;
    sCheckBox16: TsCheckBox;
    procedure sRadioGroup1Click(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
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
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sCheckBox10Click(Sender: TObject);
    procedure sTrackEdit9Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit8Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sCheckBox12Click(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure UpdateItemParams;
    procedure sTrackBar1Change(Sender: TObject);
    procedure sCheckBox13Click(Sender: TObject);
    procedure sComboBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox11Click(Sender: TObject);
    procedure sCheckBox14Click(Sender: TObject);
    procedure sCheckBox15Click(Sender: TObject);
    procedure sCheckBox16Click(Sender: TObject);
  public
    procedure AfterCreation; override;
  end;

var
  FrameTsComboBox: TFrameTsComboBoxEx;

implementation

uses sConst, acntUtils, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsComboBoxEx.AfterCreation;
var
  i, l: integer;
begin
  for i := 0 to 9 do begin
    with sComboBoxEx1.ItemsEx.Add do begin
      Caption := 'Item ' + IntToStr(i);
      ImageIndex := i;
    end;
    for l := 0 to 9 do
      with sComboBoxEx1.ItemsEx.Add do begin
        Caption := 'Item ' + IntToStr(i) + IntToStr(l);
        Indent := 4;
        ImageIndex := l;
      end;
  end;
end;


procedure TFrameTsComboBoxEx.sCheckBox10Click(Sender: TObject);
begin
  sComboBoxEx1.SkinData.SkinManager.ButtonsOptions.ShowFocusRect := sCheckBox10.Checked;
  sComboBoxEx1.ShowFocus := sCheckBox10.Checked;
end;


procedure TFrameTsComboBoxEx.sCheckBox11Click(Sender: TObject);
begin
  if sCheckBox11.Checked then
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx + [csExNoEditImage]
  else
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx - [csExNoEditImage];
end;


procedure TFrameTsComboBoxEx.sCheckBox12Click(Sender: TObject);
begin
  if sCheckBox12.Checked then
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx + [csExNoEditImageIndent]
  else
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx - [csExNoEditImageIndent];
end;


procedure TFrameTsComboBoxEx.sCheckBox13Click(Sender: TObject);
begin
  if sCheckBox13.Checked then begin
    sComboBoxEx1.OnDrawItem := sComboBox2DrawItem;
//    sComboBoxEx1.Style := csExDropDown, csExSimple, csExDropDownList;
  end
  else begin
    sComboBoxEx1.OnDrawItem := nil;
    if sCheckBox8.Checked then
      sComboBoxEx1.Style := csExDropDownList
    else
      sComboBoxEx1.Style := csExDropDown;
  end;
end;


procedure TFrameTsComboBoxEx.sCheckBox14Click(Sender: TObject);
begin
  if sCheckBox14.Checked then
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx + [csExNoSizeLimit]
  else
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx - [csExNoSizeLimit];
end;


procedure TFrameTsComboBoxEx.sCheckBox15Click(Sender: TObject);
begin
  if sCheckBox15.Checked then
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx + [csExPathWordBreak]
  else
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx - [csExPathWordBreak];
end;


procedure TFrameTsComboBoxEx.sCheckBox16Click(Sender: TObject);
begin
  sComboBoxEx1.DropInplace := sCheckBox16.Checked;
end;


procedure TFrameTsComboBoxEx.sCheckBox1Click(Sender: TObject);
begin
  sComboBoxEx1.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsComboBoxEx.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sComboBoxEx1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sComboBoxEx1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsComboBoxEx.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sComboBoxEx1.DisabledKind := sComboBoxEx1.DisabledKind + [dkBlended]
  else
    sComboBoxEx1.DisabledKind := sComboBoxEx1.DisabledKind - [dkBlended];
end;


procedure TFrameTsComboBoxEx.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sComboBoxEx1.DisabledKind := sComboBoxEx1.DisabledKind + [dkGrayed]
  else
    sComboBoxEx1.DisabledKind := sComboBoxEx1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsComboBoxEx.sCheckBox5Click(Sender: TObject);
begin
  sComboBoxEx1.AllowMouseWheel := sCheckBox5.Checked;
end;


procedure TFrameTsComboBoxEx.sCheckBox6Click(Sender: TObject);
begin
  sComboBoxEx1.ReadOnly := sCheckBox6.Checked;
end;


procedure TFrameTsComboBoxEx.sCheckBox7Click(Sender: TObject);
begin
  if sCheckBox7.Checked then
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx + [csExCaseSensitive]
  else
    sComboBoxEx1.StyleEx := sComboBoxEx1.StyleEx - [csExCaseSensitive];
end;


procedure TFrameTsComboBoxEx.sCheckBox8Click(Sender: TObject);
begin
  if sCheckBox8.Checked then
    sComboBoxEx1.Style := csExDropDownList
  else
    sComboBoxEx1.Style := csExDropDown;

  UpdateItemParams;
  sCheckBox10.Enabled := sCheckBox8.Checked;
end;


procedure TFrameTsComboBoxEx.sCheckBox9Click(Sender: TObject);
begin
  sComboBoxEx1.LabelFromTextHint := sCheckBox9.Checked;
  if sCheckBox9.Checked then begin
    sComboBoxEx1.ItemIndex := -1; // Show text hint
    sGroupBox2.Checked := False;
    sComboBoxEx1.TextHint := 'TextHint';
    sComboBoxEx1.SkinData.Invalidate;
  end
  else
    sGroupBox2.Checked := True;
end;


procedure TFrameTsComboBoxEx.sColorBox1Change(Sender: TObject);
begin
  sComboBoxEx1.AddedGlyph.ColorTone := sColorBox1.Selected;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsComboBoxEx.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sComboBoxEx1.AddedGlyph.ColorTone := NewColor;
  sSpeedButton3.Enabled := NewColor <> sColorBox2.NoneColorColor;
end;


procedure TFrameTsComboBoxEx.sColorBox2Change(Sender: TObject);
begin
  sComboBoxEx1.Color := sColorBox2.Selected;
  sComboBoxEx1.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBoxEx.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sComboBoxEx1.Color := NewColor;
  sComboBoxEx1.SkinData.CustomColor := NewColor <> clNone;
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsComboBoxEx.sComboBox1Change(Sender: TObject);
begin
  sComboBoxEx1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsComboBoxEx.sComboBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  s: string;
begin
  sComboBoxEx1.Canvas.Font.Style := [];
  if Index mod 2 = 0 then
    sComboBoxEx1.Canvas.Font.Style := sComboBoxEx1.Canvas.Font.Style + [fsItalic];

  if Index mod 3 = 0 then
    sComboBoxEx1.Canvas.Font.Style := sComboBoxEx1.Canvas.Font.Style + [fsUnderline];

  if Index mod 4 = 0 then
    sComboBoxEx1.Canvas.Font.Style := sComboBoxEx1.Canvas.Font.Style + [fsBold];

  if Index mod 5 = 0 then begin
    sComboBoxEx1.Canvas.Font.Style := sComboBoxEx1.Canvas.Font.Style + [fsStrikeOut];
    sComboBoxEx1.Canvas.Font.Color := clRed;
  end
  else
    if not (odSelected in State) then
      sComboBoxEx1.Canvas.Font.Color := acColorToRGB(clHighlightText)
    else
      sComboBoxEx1.Canvas.Font.Color := acColorToRGB(clWindowText);

  if not (odComboBoxEdit in State) then begin
    if not (odSelected in State) then
      sComboBoxEx1.Canvas.Brush.Color := acColorToRGB(clWindow)
    else
      sComboBoxEx1.Canvas.Brush.Color := acColorToRGB(clHighlight);

    sComboBoxEx1.Canvas.FillRect(Rect);
  end;
  s := sComboBoxEx1.Items[Index];
  sComboBoxEx1.Canvas.TextOut(Rect.Left + 2, (Rect.Top + Rect.Bottom - sComboBoxEx1.Canvas.TextExtent(s).cy) div 2, s);
end;


procedure TFrameTsComboBoxEx.sComboBox4Change(Sender: TObject);
begin
  sComboBoxEx1.SkinData.SkinSection := sComboBox4.Text;
  sComboBoxEx1.SkinData.OuterEffects.Invalidate;
end;


procedure TFrameTsComboBoxEx.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sComboBoxEx1.BoundLabel.Active := sGroupBox2.Checked;
  if sGroupBox2.Checked then
    sComboBoxEx1.BoundLabel.Caption := sMemo1.Text
  else
    if sCheckBox9.Checked then
      sCheckBox9.OnClick(sCheckBox9);
end;


procedure TFrameTsComboBoxEx.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox3.Checked then
    sComboBoxEx1.AddedGlyph.Images := FormData.CharList16
  else
    sComboBoxEx1.AddedGlyph.Images := nil;
end;


procedure TFrameTsComboBoxEx.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sComboBoxEx1.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsComboBoxEx.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  UpdateItemParams;
end;


procedure TFrameTsComboBoxEx.sMemo1Change(Sender: TObject);
begin
  sComboBoxEx1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsComboBoxEx.sRadioGroup1Click(Sender: TObject);
begin
  sComboBoxEx1.VerticalAlignment := TVerticalAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsComboBoxEx.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sComboBoxEx1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsComboBoxEx.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sComboBoxEx1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBoxEx.sSpeedButton3Click(Sender: TObject);
begin
  sComboBoxEx1.AddedGlyph.ColorTone := clNone;
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsComboBoxEx.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sComboBoxEx1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBoxEx.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sComboBoxEx1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBoxEx.sTrackBar1Change(Sender: TObject);
begin
  sComboBoxEx1.Height := sTrackBar1.Position;
  sComboBoxEx1.SkinData.Invalidate(True);
  sComboBoxEx1.SkinData.OuterEffects.Invalidate;
end;


procedure TFrameTsComboBoxEx.sTrackEdit2Change(Sender: TObject);
begin
  sComboBoxEx1.Padding.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsComboBoxEx.sTrackEdit3Change(Sender: TObject);
begin
  sComboBoxEx1.Padding.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsComboBoxEx.sTrackEdit4Change(Sender: TObject);
begin
  sComboBoxEx1.Padding.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsComboBoxEx.sTrackEdit5Change(Sender: TObject);
begin
  sComboBoxEx1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsComboBoxEx.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sComboBoxEx1.BoundLabel.FTheLabel.Transparent := False;
    sComboBoxEx1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sComboBoxEx1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsComboBoxEx.sTrackEdit6CloseUp(Sender: TObject);
begin
  sComboBoxEx1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsComboBoxEx.sTrackEdit7Change(Sender: TObject);
begin
  sComboBoxEx1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;


procedure TFrameTsComboBoxEx.sTrackEdit8Change(Sender: TObject);
begin
  sComboBoxEx1.AddedGlyph.Blend := sTrackEdit8.AsInteger;
end;


procedure TFrameTsComboBoxEx.sTrackEdit9Change(Sender: TObject);
begin
  sComboBoxEx1.Padding.Left := sTrackEdit9.AsInteger;
end;


procedure TFrameTsComboBoxEx.UpdateItemParams;
begin
  sTrackBar1.Min := sTrackBar1.Min;
  sTrackBar1.Max := ScaleInt(64, sComboBoxEx1.SkinData) + sComboBoxEx1.SkinData.CommonSkinData.Spacing;
  sComboBoxEx1.Height := sTrackBar1.Max;
  sTrackBar1.Position := sComboBoxEx1.Height;
  sComboBoxEx1.SkinData.Invalidate; // Full repaint
end;

end.
