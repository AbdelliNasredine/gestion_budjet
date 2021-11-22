unit UnitFrameCurrentSkin;
{$I sDefs.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  {$IFDEF DELPHI7UP} Types, {$ENDIF}
  Dialogs, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls,

  UnitFrameCustom,

  sCheckBox, sPanel, acSlider, sBitBtn, sMaskEdit, sCustomComboEdit, sToolEdit,
  sFrameAdapter, sButton, sLabel, sTrackBar, sSpeedButton, sGroupBox,
  sComboBox, sComboBoxes;


type
  TFrame_CurrentSkin = class(TCustomInfoFrame)
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sLabel12: TsLabel;

    sTrackBar2: TsTrackBar;
    sTrackBar1: TsTrackBar;
    sTrackBar3: TsTrackBar;

    sGroupBox1: TsGroupBox;
    sHTMLLabel1: TsHTMLLabel;
    SkinsDirectoryEdit: TsDirectoryEdit;
    sGroupBox2: TsGroupBox;
    SliderExtBorders: TsSlider;
    SliderDiscolor: TsSlider;
    SliderNonClient: TsSlider;
    SliderBlendOnMove: TsSlider;
    sComboBox1: TsComboBox;
    sGroupBox3: TsGroupBox;
    sComboBox3: TsComboBoxEx;
    sComboBox2: TsComboBoxEx;
    procedure SkinsDirectoryEditChange      (Sender: TObject);
    procedure sStickyLabel2Click            (Sender: TObject);
    procedure SliderExtBordersSliderChange  (Sender: TObject);
    procedure SliderNonClientSliderChange   (Sender: TObject);
    procedure SliderBlendOnMoveSliderChange (Sender: TObject);
    procedure SliderDiscolorSliderChange    (Sender: TObject);
    procedure sTrackBar1SkinPaint           (Sender: TObject; Canvas: TCanvas);
    procedure sComboBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure sComboBox1Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sTrackBar1UserChanged(Sender: TObject);
    procedure sTrackBar2UserChanged(Sender: TObject);
    procedure sTrackBar3UserChanged(Sender: TObject);
  public
    HintWnd: THintWindow;
    procedure AfterCreation; override;
    procedure AfterSkinChange; override;
  end;


implementation


uses
  sStyleSimply, sGraphUtils, acntUtils, sSkinManager, sConst, acntTypes, sCommonData, acAlphaHints, sVCLUtils,
  MainUnit;

{$R *.dfm}

procedure TFrame_CurrentSkin.AfterCreation;
begin
  InInit := True;
  inherited;
  SkinsDirectoryEdit.Text := MainForm.sSkinManager1.SkinDirectory;

  SliderExtBorders .SliderOn := MainForm.sSkinManager1.ExtendedBorders;
  SliderBlendOnMove.SliderOn := MainForm.sSkinManager1.AnimEffects.BlendOnMoving.Active;
  SliderDiscolor   .SliderOn := MainForm.sSkinManager1.Effects.DiscoloredGlyphs;
  SliderNonClient  .SliderOn := MainForm.sSkinProvider1.DrawNonClientArea;

  sTrackBar1.Enabled := MainForm.ActionSkinned.Checked;
  sTrackBar2.Enabled := MainForm.ActionSkinned.Checked;
  sTrackBar3.Enabled := MainForm.ActionSkinned.Checked;

  AfterSkinChange;

  if sComboBox3.ItemIndex >= 0 then
    MainForm.sSkinManager1.Fonts.MainFont := sComboBox3.Items[sComboBox3.ItemIndex]; // Custom font - Comic Sans MS
    
  InInit := False;
end;


procedure TFrame_CurrentSkin.SkinsDirectoryEditChange(Sender: TObject);
begin
  if MainForm.sSkinManager1.SkinDirectory <> SkinsDirectoryEdit.Text then begin
    MainForm.sSkinManager1.SkinDirectory := SkinsDirectoryEdit.Text;
    // Clear list of skins in menus
    MainForm.Builtinskins1.Clear;
    MainForm.Externalskins1.Clear;
  end;
end;


procedure TFrame_CurrentSkin.AfterSkinChange;
begin
  inherited;
  sTrackBar1.Position := MainForm.sSkinManager1.HueOffset;
  sTrackBar2.Position := MainForm.sSkinManager1.Saturation;
  sTrackBar3.Position := MainForm.sSkinManager1.Brightness;

  sTrackBar3.Min := MainForm.sSkinManager1.SkinCommonInfo.BrightMin;
  sTrackBar3.Max := MainForm.sSkinManager1.SkinCommonInfo.BrightMax;
end;


procedure TFrame_CurrentSkin.sComboBox1Change(Sender: TObject);
begin
  MainForm.sSkinManager1.Options.ArrowsStyle := TacArrowsStyle(sComboBox1.ItemIndex);
end;


procedure TFrame_CurrentSkin.sComboBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  R: TRect;
  s: TacSide;
  h, ndx: integer;
  Flags: cardinal;
begin
  R := Rect;
  Flags := DT_EXPANDTABS or DT_SINGLELINE or DT_VCENTER or DT_NOCLIP;
  h := HeightOf(R);
  if Control.BiDiMode = bdLeftToRight then begin
    R.Left := 3;
    R.Right := R.Left + h;
  end
  else begin
    R.Right := R.Right - 3;
    Flags := Flags or DT_RIGHT;
  end;
  h := h div 2 - 2;
  sComboBox1.Canvas.Font.Assign(sComboBox1.Font);
  if (odSelected in State) and (sComboBox1.SkinData.SkinManager <> nil) then
    ndx := sComboBox1.SkinData.SkinManager.SkinCommonInfo.Sections[ssSelection]
  else
    if sComboBox1.SkinData.Skinned then
      if odComboBoxEdit in State then
        ndx := sComboBox1.SkinData.SkinIndex
      else
        ndx := sComboBox1.SkinData.SkinManager.SkinCommonInfo.Sections[ssEdit]
    else
      ndx := -1;

  if ndx >= 0 then begin
    sComboBox1.Canvas.Font.Color := sComboBox1.SkinData.CommonSkinData.gd[ndx].Props[1].FontColor.Color;
    SelectObject(sComboBox1.Canvas.Handle, sComboBox1.Canvas.Font.HAndle);
  end;

  if Index = ord(arsDefault) then
    acWriteTextEx(sComboBox1.Canvas, PacChar(sComboBox1.Items[Index]), True, R, Flags, ndx, odSelected in State, sComboBox1.SkinData.SkinManager)
  else
    for s := High(TacSide) downto Low(TacSide) do begin
      DrawArrow(sComboBox1.Canvas.Handle, sComboBox1.Canvas.Font.Color, clNone, R, s, sComboBox1.SkinData.CommonSkinData.LineWidth, 0, h, TacArrowsStyle(Index));//, GetPPI(sComboBox1.SkinData));
      OffsetRect(R, h * 2 + 2, 0);
    end;
end;


procedure TFrame_CurrentSkin.sComboBox2Change(Sender: TObject);
begin
  if sComboBox3.ItemIndex < 0 then
    sComboBox3.ItemIndex := 0;
    
  MainForm.sSkinManager1.BeginUpdate;
  if TacFontMode(sComboBox2.ItemIndex) = fmCustom then
    MainForm.sSkinManager1.Fonts.MainFont := sComboBox3.Items[sComboBox3.ItemIndex];

  MainForm.sSkinManager1.Fonts.MainMode := TacFontMode(sComboBox2.ItemIndex);
  sComboBox3.Enabled := sComboBox2.ItemIndex = ord(fmCustom);
  MainForm.sSkinManager1.EndUpdate(True, True);
end;


procedure TFrame_CurrentSkin.sComboBox3Change(Sender: TObject);
begin
  MainForm.sSkinManager1.BeginUpdate;
  MainForm.sSkinManager1.Fonts.MainFont := sComboBox3.Items[sComboBox3.ItemIndex];
  MainForm.sSkinManager1.EndUpdate(True, True);
end;


procedure TFrame_CurrentSkin.sTrackBar2UserChanged(Sender: TObject);
begin
  if not (msSkinChanging in MainForm.sSkinManager1.ManagerState) and (MainForm.sSkinManager1.Saturation <> sTrackBar2.Position) then begin // If not in a skin changing (global variable from AC package used)
    MainForm.sSkinManager1.BeginUpdate;
    MainForm.sSkinManager1.Saturation := sTrackBar2.Position;
    MainForm.sSkinManager1.EndUpdate(True, False); // Repaint without animation
  end;
end;


procedure TFrame_CurrentSkin.sStickyLabel2Click(Sender: TObject);
begin
  if TsStickyLabel(Sender).AttachTo <> nil then
    TsSlider(TsStickyLabel(Sender).AttachTo).Click;
end;


procedure TFrame_CurrentSkin.SliderExtBordersSliderChange(Sender: TObject);
begin
  if not InInit then MainForm.sSpeedButton5Click(nil);
end;


procedure TFrame_CurrentSkin.SliderNonClientSliderChange(Sender: TObject);
begin
  if not InInit then
    MainForm.sSkinManager1.Options.DrawNonClientArea := SliderNonClient.SliderOn;

  SliderExtBorders.Enabled := SliderNonClient.SliderOn;
  SliderBlendOnMove.Enabled := SliderNonClient.SliderOn;
end;


procedure TFrame_CurrentSkin.SliderBlendOnMoveSliderChange(Sender: TObject);
begin
  if not InInit then MainForm.sSkinManager1.AnimEffects.BlendOnMoving.Active := SliderBlendOnMove.SliderOn;
end;


procedure TFrame_CurrentSkin.SliderDiscolorSliderChange(Sender: TObject);
begin
  if not InInit then begin
    MainForm.sSkinManager1.BeginUpdate;
    MainForm.sSkinManager1.Effects.DiscoloredGlyphs := SliderDiscolor.SliderOn;
    MainForm.sSkinManager1.EndUpdate(True, False);
  end;
end;


procedure TFrame_CurrentSkin.sTrackBar3UserChanged(Sender: TObject);
begin
  if not (msSkinChanging in MainForm.sSkinManager1.ManagerState) and (MainForm.sSkinManager1.Brightness <> sTrackBar3.Position) then begin // If not in a skin changing (global variable from AC package used)
    MainForm.sSkinManager1.BeginUpdate;
    MainForm.sSkinManager1.Brightness := sTrackBar3.Position;
    MainForm.sSkinManager1.EndUpdate(True, False); // Repaint without animation
  end;
end;


procedure TFrame_CurrentSkin.sTrackBar1SkinPaint(Sender: TObject; Canvas: TCanvas);
const
  LineHeight = 3;
var
  R: TRect;
  C: TsColor;
  Bmp: TBitmap;
  lh, x: integer;
  HUEValue, HUEStep: real;
begin
  R := sTrackBar1.ChannelRect;
  OffsetRect(R, 0, HeightOf(R) + 4);
  InflateRect(R, -WidthOf(sTrackBar1.ThumbRect) div 2, 0);
  lh := ScaleInt(LineHeight, sTrackBar1.SkinData);
  R.Bottom := R.Top + lh;

  HUEValue := 0;
  HUEStep := 360 / WidthOf(R);
  Bmp := CreateBmp32(WidthOf(R), HeightOf(R));

  with Bmp do begin
    Canvas.Brush.Style := bsClear;
    Canvas.Pen.Style := psSolid;
    for x := 0 to Width - 1 do begin
      Canvas.Pen.Color := ChangeHue(Round(HUEValue), 5460991);
      Canvas.MoveTo(X, 0);
      Canvas.LineTo(X, lh);
      HUEValue := HUEValue + HUEStep;
    end;

    if sTrackBar1.SkinData.Skinned then begin
      C.C := sTrackBar1.SkinData.SkinManager.GetGlobalColor;
      // Receive a HUE value of the current skin global color
      HUEValue := Rgb2Hsv(C).h;
      HUEValue := HUEValue - sTrackBar1.SkinData.SkinManager.HueOffset;
      if HUEValue < 0 then
        HUEValue := HUEValue + 360;

      ChangeBitmapPixels(Bmp, ChangeColorHUE, Round(HUEValue), clFuchsia);
    end;
  end;
  BitBlt(Canvas.Handle, R.Left, R.Top, Bmp.Width, Bmp.Height, Bmp.Canvas.Handle, 0, 0, SRCCOPY);
  Bmp.Free;
end;


procedure TFrame_CurrentSkin.sTrackBar1UserChanged(Sender: TObject);
begin
  if not (msSkinChanging in MainForm.sSkinManager1.ManagerState) and (MainForm.sSkinManager1.HueOffset <> sTrackBar1.Position) then begin // If not in a skin changing (global variable from AC package used)
    MainForm.sSkinManager1.BeginUpdate;
    MainForm.sSkinManager1.HueOffset := sTrackBar1.Position;
    MainForm.sSkinManager1.EndUpdate(True, False); // Repaint without animation
  end;
end;

end.

