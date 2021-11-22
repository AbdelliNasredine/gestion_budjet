unit UnitTsComboBox;
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
  TFrameTsComboBox = class(TFrameBaseMenu)
    sComboBox12: TsComboBox;
    sRadioGroup1: TsRadioGroup;
    sGroupBox2: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sTrackEdit7: TsTrackEdit;
    sComboBox11: TsComboBox;
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
    sGroupBox5: TsGroupBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sComboBox13: TsComboBox;
    sGroupBox6: TsGroupBox;
    sCheckBox7: TsCheckBox;
    sTrackBar1: TsTrackBar;
    sLabel1: TsLabel;
    sCheckBox13: TsCheckBox;
    sCheckBox14: TsCheckBox;
    procedure sRadioGroup1Click(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox11Change(Sender: TObject);
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
    procedure sGroupBox5CheckBoxChanged(Sender: TObject);

    procedure ComboBoxGetItemDrawData(Sender: TObject; var ItemDrawData: TacItemDrawData);
    procedure sCheckBox12Click(Sender: TObject);
    procedure sComboBox13Change(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure UpdateItemParams;
    procedure sCheckBox7Click(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure sCheckBox13Click(Sender: TObject);
    procedure sComboBox12DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure sCheckBox14Click(Sender: TObject);
  public
  end;

var
  FrameTsComboBox: TFrameTsComboBox;

implementation

uses sConst, acntUtils, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsComboBox.sCheckBox10Click(Sender: TObject);
begin
  sComboBox12.SkinData.SkinManager.ButtonsOptions.ShowFocusRect := sCheckBox10.Checked;
  sComboBox12.ShowFocus := sCheckBox10.Checked;
end;


procedure TFrameTsComboBox.sCheckBox12Click(Sender: TObject);
begin
  sComboBox12.Invalidate;
end;


procedure TFrameTsComboBox.sCheckBox13Click(Sender: TObject);
begin
  if sCheckBox13.Checked then begin
    sComboBox12.OnDrawItem := sComboBox12DrawItem;
    sComboBox12.Style := csOwnerDrawFixed;
  end
  else begin
    sComboBox12.OnDrawItem := nil;
    if sCheckBox8.Checked then
      sComboBox12.Style := csDropDownList
    else
      sComboBox12.Style := csDropDown;
  end;
end;


procedure TFrameTsComboBox.sCheckBox14Click(Sender: TObject);
begin
  sComboBox12.DropInplace := sCheckBox14.Checked;
end;


procedure TFrameTsComboBox.sCheckBox1Click(Sender: TObject);
begin
  sComboBox12.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsComboBox.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sComboBox12.SkinData.OuterEffects.Visibility := ovAlways
  else
    sComboBox12.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsComboBox.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sComboBox12.DisabledKind := sComboBox12.DisabledKind + [dkBlended]
  else
    sComboBox12.DisabledKind := sComboBox12.DisabledKind - [dkBlended];
end;


procedure TFrameTsComboBox.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sComboBox12.DisabledKind := sComboBox12.DisabledKind + [dkGrayed]
  else
    sComboBox12.DisabledKind := sComboBox12.DisabledKind - [dkGrayed];
end;


procedure TFrameTsComboBox.sCheckBox5Click(Sender: TObject);
begin
  sComboBox12.AllowMouseWheel := sCheckBox5.Checked;
end;


procedure TFrameTsComboBox.sCheckBox6Click(Sender: TObject);
begin
  sComboBox12.ReadOnly := sCheckBox6.Checked;
end;


procedure TFrameTsComboBox.sCheckBox7Click(Sender: TObject);
begin
  UpdateItemParams;
end;


procedure TFrameTsComboBox.sCheckBox8Click(Sender: TObject);
begin
  if sCheckBox8.Checked then
    sComboBox12.Style := csDropDownList
  else
    sComboBox12.Style := csDropDown;

  UpdateItemParams;
  sCheckBox10.Enabled := sCheckBox8.Checked;
end;


procedure TFrameTsComboBox.sCheckBox9Click(Sender: TObject);
begin
  sComboBox12.LabelFromTextHint := sCheckBox9.Checked;
  if sCheckBox9.Checked then begin
    sComboBox12.ItemIndex := -1; // Show text hint
    sGroupBox2.Checked := False;
    sComboBox12.TextHint := 'TextHint';
    sComboBox12.SkinData.Invalidate;
  end
  else
    sGroupBox2.Checked := True;
end;


procedure TFrameTsComboBox.sColorBox1Change(Sender: TObject);
begin
  sComboBox12.AddedGlyph.ColorTone := sColorBox1.Selected;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsComboBox.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sComboBox12.AddedGlyph.ColorTone := NewColor;
  sSpeedButton3.Enabled := NewColor <> sColorBox2.NoneColorColor;
end;


procedure TFrameTsComboBox.sColorBox2Change(Sender: TObject);
begin
  sComboBox12.Color := sColorBox2.Selected;
  sComboBox12.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBox.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sComboBox12.Color := NewColor;
  sComboBox12.SkinData.CustomColor := NewColor <> clNone;
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsComboBox.sComboBox11Change(Sender: TObject);
begin
  sComboBox12.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox11.ItemIndex);
end;


procedure TFrameTsComboBox.sComboBox12DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  s: string;
begin
  sComboBox12.Canvas.Font.Style := [];
  if Index mod 2 = 0 then
    sComboBox12.Canvas.Font.Style := sComboBox12.Canvas.Font.Style + [fsItalic];

  if Index mod 3 = 0 then
    sComboBox12.Canvas.Font.Style := sComboBox12.Canvas.Font.Style + [fsUnderline];

  if Index mod 4 = 0 then
    sComboBox12.Canvas.Font.Style := sComboBox12.Canvas.Font.Style + [fsBold];

  if Index mod 5 = 0 then begin
    sComboBox12.Canvas.Font.Style := sComboBox12.Canvas.Font.Style + [fsStrikeOut];
    sComboBox12.Canvas.Font.Color := clRed;
  end
  else
    if not (odSelected in State) then
      sComboBox12.Canvas.Font.Color := acColorToRGB(clHighlightText)
    else
      sComboBox12.Canvas.Font.Color := acColorToRGB(clWindowText);

  if not (odComboBoxEdit in State) then begin
    if not (odSelected in State) then
      sComboBox12.Canvas.Brush.Color := acColorToRGB(clWindow)
    else
      sComboBox12.Canvas.Brush.Color := acColorToRGB(clHighlight);

    sComboBox12.Canvas.FillRect(Rect);
  end;
  s := sComboBox12.Items[Index];
  sComboBox12.Canvas.TextOut(Rect.Left + 2, (Rect.Top + Rect.Bottom - sComboBox12.Canvas.TextExtent(s).cy) div 2, s);
end;


procedure TFrameTsComboBox.sComboBox13Change(Sender: TObject);
begin
  sComboBox12.SkinData.SkinSection := sComboBox13.Text;
  sComboBox12.SkinData.OuterEffects.Invalidate;
end;


procedure TFrameTsComboBox.ComboBoxGetItemDrawData(Sender: TObject; var ItemDrawData: TacItemDrawData);
begin
  // If define custom form
  if sCheckBox11.Checked then begin
    if ItemDrawData.ItemIndex mod 2 = 0 then
      ItemDrawData.Font.Style := ItemDrawData.Font.Style + [fsItalic];

    if ItemDrawData.ItemIndex mod 3 = 0 then
      ItemDrawData.Font.Style := ItemDrawData.Font.Style + [fsUnderline];

    if ItemDrawData.ItemIndex mod 4 = 0 then
      ItemDrawData.Font.Style := ItemDrawData.Font.Style + [fsBold];

    if ItemDrawData.ItemIndex mod 5 = 0 then begin
      ItemDrawData.Font.Style := ItemDrawData.Font.Style + [fsStrikeOut];
      ItemDrawData.Font.Color := clRed;
    end;
  end;
  // Added text
  if sGroupBox6.Checked and (not (odComboBoxEdit in ItemDrawData.State {Do not show added text in the edit place}) or sCheckBox7.Checked) then
    ItemDrawData.HtmlText := '<font size=-1>MultiLine comment for the item ¹' + IntToStr(ItemDrawData.ItemIndex) +
                            '<br>Second line of comment';
  // Link ImageList
  if sCheckBox12.Checked then begin
    sComboBox12.Images := FormData.CharList16;
    ItemDrawData.ImageIndex := ItemDrawData.ItemIndex;
  end
  else
    sComboBox12.Images := nil;
end;


procedure TFrameTsComboBox.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sComboBox12.BoundLabel.Active := sGroupBox2.Checked;
  if sGroupBox2.Checked then
    sComboBox12.BoundLabel.Caption := sMemo1.Text
  else
    if sCheckBox9.Checked then
      sCheckBox9.OnClick(sCheckBox9);
end;


procedure TFrameTsComboBox.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox3.Checked then
    sComboBox12.AddedGlyph.Images := FormData.CharList16
  else
    sComboBox12.AddedGlyph.Images := nil;
end;


procedure TFrameTsComboBox.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sComboBox12.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsComboBox.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox5.Checked then
    sComboBox12.OnGetItemDrawData := ComboBoxGetItemDrawData
  else
    sComboBox12.OnGetItemDrawData := nil;

  UpdateItemParams;
  sComboBox12.Invalidate;
  sCheckBox13.Enabled := not sGroupBox5.Checked;
  sCheckBox13.Checked := sCheckBox13.Enabled;
  sCheckBox13Click(sCheckBox13);
end;


procedure TFrameTsComboBox.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  UpdateItemParams;
end;


procedure TFrameTsComboBox.sMemo1Change(Sender: TObject);
begin
  sComboBox12.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsComboBox.sRadioGroup1Click(Sender: TObject);
begin
  sComboBox12.VerticalAlignment := TVerticalAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsComboBox.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sComboBox12, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsComboBox.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sComboBox12, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBox.sSpeedButton3Click(Sender: TObject);
begin
  sComboBox12.AddedGlyph.ColorTone := clNone;
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsComboBox.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sComboBox12, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBox.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sComboBox12, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsComboBox.sTrackBar1Change(Sender: TObject);
begin
  sComboBox12.Height := sTrackBar1.Position;
  sComboBox12.SkinData.Invalidate(True);
  sComboBox12.SkinData.OuterEffects.Invalidate;
end;


procedure TFrameTsComboBox.sTrackEdit2Change(Sender: TObject);
begin
  sComboBox12.Padding.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsComboBox.sTrackEdit3Change(Sender: TObject);
begin
  sComboBox12.Padding.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsComboBox.sTrackEdit4Change(Sender: TObject);
begin
  sComboBox12.Padding.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsComboBox.sTrackEdit5Change(Sender: TObject);
begin
  sComboBox12.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsComboBox.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sComboBox12.BoundLabel.FTheLabel.Transparent := False;
    sComboBox12.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sComboBox12.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsComboBox.sTrackEdit6CloseUp(Sender: TObject);
begin
  sComboBox12.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsComboBox.sTrackEdit7Change(Sender: TObject);
begin
  sComboBox12.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;


procedure TFrameTsComboBox.sTrackEdit8Change(Sender: TObject);
begin
  sComboBox12.AddedGlyph.Blend := sTrackEdit8.AsInteger;
end;


procedure TFrameTsComboBox.sTrackEdit9Change(Sender: TObject);
begin
  sComboBox12.Padding.Left := sTrackEdit9.AsInteger;
end;


procedure TFrameTsComboBox.UpdateItemParams;
begin
  sTrackBar1.Min := sTrackBar1.Min;
  sTrackBar1.Max := ScaleInt(64, sComboBox12.SkinData) + sComboBox12.SkinData.CommonSkinData.Spacing;
  sCheckBox7.Enabled := sCheckBox8.Checked and sGroupBox6.Checked;
  if sGroupBox5.Checked and sGroupBox6.Checked then begin // Added text
    sComboBox12.DropDownCount := 8;
    sComboBox12.ItemHeight := ScaleInt(48, sComboBox12.SkinData);
    if sComboBox12.IsDropDownList and sCheckBox7.Checked then
      sComboBox12.Height := sTrackBar1.Max
    else
      sComboBox12.Height := sTrackBar1.Min;
  end
  else begin
    sComboBox12.DropDownCount := 16;
    sComboBox12.ItemHeight := ScaleInt(iff(Assigned(sComboBox12.OnGetItemDrawData) and (sComboBox12.Images <> nil), 20, 15), sComboBox12.SkinData) + sComboBox12.SkinData.CommonSkinData.Spacing;
    sComboBox12.Height := sTrackBar1.Min;
  end;
  sTrackBar1.Position := sComboBox12.Height;
  sComboBox12.SkinData.Invalidate; // Full repaint
end;

end.
