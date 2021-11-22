unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Buttons, jpeg, StdCtrls, ComCtrls, ImgList,

  sSkinProvider, sPanel, sSpeedButton, acImage, acPNG, sComboBoxes, acAlphaImageList, sStatusBar, sLabel, sCheckBox, acTitleBar,
  acFloatCtrls, sEdit, acPopupCtrls, sButton, sScrollBox,

  UnitDataModule, sMaskEdit, sCustomComboEdit, sComboBox;


type
  TMainForm = class(TForm)
    ImageBG: TsImage;
    PanelMenu: TsScrollBox;
    PanelMain: TsPanel;
    sDragBar1: TsDragBar;
    sDragBar2: TsDragBar;
    PanelContainer: TsScrollBox;
    sStatusBar1: TsStatusBar;
    sSplitView2: TsSplitView;
    sSysButton1: TsSysButton;
    sSysButton2: TsSysButton;
    sSysButton3: TsSysButton;
    sSplitView1: TsSplitView;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSkinProvider1: TsSkinProvider;
    sSkinSelector1: TsSkinSelector;
    sImgLabel1: TsImgLabel;
    sTitleBar1: TsTitleBar;
    sFloatButtons1: TsFloatButtons;
    sFloatButtons2: TsFloatButtons;
    sAlphaImageList2: TsAlphaImageList;
    sFloatSample: TsFloatButtons;
    sFloatSampleClose: TsFloatButtons;
    sAlphaImageList3: TsAlphaImageList;
    sCheckBox1: TsCheckBox;
    sTrackEdit1: TsTrackEdit;
    sSpeedButton4: TsSpeedButton;
    sEdit1: TsEdit;
    FakeBtn: TsSpeedButton;
    procedure FormPaint(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton4Paint(Sender: TObject; Bmp: TBitmap);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit1TrackChanged(Sender: TObject);
    procedure sDragBar1Paint(Sender: TObject; Canvas: TCanvas);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  public
    BGBmp: TBitmap;
    IsShown: Boolean;
    FirstBtn: TsSpeedButton;
    procedure LoadGroupsInfo;
    procedure ShowFirstFrame;
    function PrepareBG: TBitmap;
    destructor Destroy; override;
    procedure AddBtn(Ndx: integer);
    procedure CmpButtonClick(Sender: TObject);
    procedure GroupButtonClick(Sender: TObject);
    procedure LoadCmps(GroupNdx: integer; Animated: Boolean);
    procedure SpeedButtonPaint(Sender: TObject; Bmp: TBitmap);
    procedure StopButtonAttention(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  end;

var
  MainForm: TMainForm;

const
  iEllipseSize = 20;
  iSelWidth = 4;

implementation

{$R *.dfm}

uses Math, sConst, acAnimation, sThirdParty, sSkinManager, sDialogs, sCommonData, sVCLUtils, acgpUtils, acntUtils, sStoreUtils,
  UnitBaseMenu, UnitTsSkinManager, UnitTsTrackEdit, UnitTsRollOutPanel;


var
  IniName: string; // Form positions and skin name are saved in Ini

const
  sSectionName = 'Options';


procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not IsZoomed(Handle) then
    try // Save window position in Ini-file if it's possible
      sStoreUtils.WriteIniStr(sSectionName, 'Top', IntToStr(Top), IniName);
    finally
      sStoreUtils.WriteIniStr(sSectionName, 'Left', IntToStr(Left), IniName);
    end;
  // Save skin data if exists in Ini
  sStoreUtils.WriteIniStr(sSectionName, 'SkinDirectory', FormData.sSkinManager1.SkinDirectory, IniName);      // Skin directory
  sStoreUtils.WriteIniStr(sSectionName, 'SkinName',      FormData.sSkinManager1.SkinName, IniName);           // Skin name
  sStoreUtils.WriteIniStr(sSectionName, 'SkinActive', iff(FormData.sSkinManager1.Active, '1', '0'), IniName); // Skin activity
end;


procedure TMainForm.FormCreate(Sender: TObject);
begin
  // sSpeedButton1.Top := ClientHeight; // Avoiding of incorrect controls order after scaling by VCL
  sSplitView2.Opened := False;
  sTrackEdit1.Value := FormData.sSkinManager1.Options.PixelsPerInch;
  sSkinProvider1.TitleBar := nil; // Hide TsTitleBar items after start
  sSpeedButton2.Caption := 'AlphaControls'#13#10'version ' + FormData.sSkinManager1.Version;
  LoadGroupsInfo;
  ShowFirstFrame;
end;


procedure TMainForm.FormPaint(Sender: TObject);
var
  AspectWidth, AspectHeight: integer;
  SavedDC: hdc;
begin
  if sSkinProvider1.SkinData.Skinned and not sSkinProvider1.IsBlurred then begin
    if BGBmp = nil then
      BGBmp := PrepareBG;

    AspectWidth := max(Width, Height * BGBmp.Width div BGBmp.Height);
    AspectHeight := max(Height, Width * BGBmp.Height div BGBmp.Width);
    SetStretchBltMode(Canvas.Handle, COLORONCOLOR);
    SavedDC := SaveDC(Canvas.Handle);
    try
      IntersectClipRect(Canvas.Handle, 0, 0, ClientWidth, ClientHeight);
      StretchBlt(Canvas.Handle, 0, 0, AspectWidth, AspectHeight, BGBmp.Canvas.Handle, 0, 0, BGBmp.Width, BGBmp.Height, SRCCOPY);
    finally
      RestoreDC(Canvas.Handle, SavedDC);
    end;
  end;
end;


procedure TMainForm.GroupButtonClick(Sender: TObject);
var
  PreviousBtn: TsSpeedButton;

  procedure UpdateBtn;
  begin
    if FormData.CurrentMenuBtn <> nil then begin
      FormData.CurrentMenuBtn.SkinData.SkinSection := 'SELBTN'; // Section defined in the sSkinManager1.CommonSections
      FormData.CurrentMenuBtn.SkinData.Invalidate;
    end;
  end;

begin
  FormData.CurrentWorkBtn := nil;
  PreviousBtn := FormData.CurrentMenuBtn;
  FormData.CurrentMenuBtn := TsSpeedButton(Sender);
  if PreviousBtn <> nil then begin
    StopTimer(PreviousBtn.SkinData);
    PreviousBtn.SkinData.SkinSection := 'LBTN'; // Section defined in the sSkinManager1.CommonSections
  end;
  sSplitView2.AnimatedHiding := not sSplitView2.SysBlurUsed(True); // Slow with sys bluring
  sSplitView2.AnimatedShowing := sSplitView2.AnimatedHiding;
  if sSplitView2.Opened then
    if FormData.CurrentMenuBtn = PreviousBtn then begin
      FormData.CurrentMenuBtn := nil;
      sSplitView2.Close;
    end
    else begin
      UpdateBtn;
      Application.ProcessMessages; // Repaint the button right now
      LoadCmps(FormData.CurrentMenuBtn.Tag, True);
    end
  else begin
    UpdateBtn;
    LoadCmps(FormData.CurrentMenuBtn.Tag, True);
    if not MainForm.IsShown then
      sSplitView2.AnimatedShowing := False;

    sSplitView2.Open;
    sSplitView2.AnimatedShowing := True;
  end;
end;


procedure TMainForm.LoadCmps(GroupNdx: integer; Animated: Boolean);
var
  i: integer;
  cd: TCmpsArray;
//  ad: TacAttentionData;
begin
  PanelMenu.SkinData.BeginUpdate;
  PanelMenu.DisableAlign;
  for i := PanelMenu.ControlCount - 1 downto 0 do
    if PanelMenu.Controls[i] <> FakeBtn then
      PanelMenu.Controls[i].Free;

  cd := PCmpsArray(GetCmps)^;
  for i := 0 to Length(cd) - 1 do
//  for i := Length(cd) - 1 downto 0 do
    if cd[i].GroupIndex = GroupNdx then
      AddBtn(i);

  PanelMenu.EnableAlign;
  PanelMenu.SkinData.EndUpdate;
  PanelMenu.Realign;
  // Add attention effect to 'Buttons animation'
(*
  if GroupNdx = 0 then begin
{
    ad.Mode := amColor;
    ad.Color := acColorToRGB(slBtnBlueActive);
    ad.Interval := 90;
}
    ad.Mode := amWavering;
    ad.Interval := 1000;
{
    ad.Mode := amVibration;
    ad.Interval := 1000;
}
    TsSpeedButton(PanelMenu.Controls[1]).OnMouseDown := StopButtonAttention;
    TsSpeedButton(PanelMenu.Controls[1]).SkinData.Invalidate;
    StartAttention(PanelMenu.Controls[1], ad);
  end;
*)
end;


procedure TMainForm.LoadGroupsInfo;
var
  i: integer;
  ga: TGroupsArray;
  Btn: TsSpeedButton;
begin
  ga := PGroupsArray(GetGroups)^;
  for i := Length(ga) - 1 downto 0 do begin
    Btn := TsSpeedButton.Create(sSplitView1);
    Btn.Visible := False;
    Btn.Images := FormData.sCharImageList1;
    Btn.ImageIndex := ga[i].ImgIndex;
    Btn.Caption := ga[i].Caption;
    Btn.Tag := i;
    Btn.SkinData.SkinSection := sSpeedButton2.SkinData.SkinSection;
    Btn.Align := alTop;
    Btn.Flat := True;
    Btn.Margin := sSpeedButton2.Margin;
    Btn.Spacing := sSpeedButton2.Spacing;
    Btn.Alignment := sSpeedButton2.Alignment;
    Btn.TextAlignment := sSpeedButton2.TextAlignment;
    Btn.TextOffset := sSpeedButton2.TextOffset;
    Btn.Parent := sSplitView1;
    Btn.Font.Height := sSpeedButton2.Font.Height;
    Btn.Font.Style := [fsBold];
    Btn.ParentFont := False;
    Btn.OnClick := GroupButtonClick;
    Btn.OnPaint := sSpeedButton4Paint;
    Btn.Height := sSpeedButton2.Height;
    Btn.Visible := True;
  end;
  FirstBtn := Btn;
  sSpeedButton2.Top := 0;
end;


function TMainForm.PrepareBG: TBitmap;
begin
  Result := TBitmap.Create;
  Result.PixelFormat := pf32bit;
  Result.Height := ImageBG.Picture.Height;
  Result.Width := ImageBG.Picture.Width;
  Result.Canvas.Draw(0, 0, ImageBG.Picture.Graphic);
end;


procedure TMainForm.sCheckBox1Click(Sender: TObject);
begin
  FormData.sSkinManager1.Options.ScaleMode := TacScaleMode(iff(sCheckBox1.Checked, ord(smCustomPPI), ord(smVCL)));
  sTrackEdit1.Enabled := sCheckBox1.Checked;
end;


procedure TMainForm.sDragBar1Paint(Sender: TObject; Canvas: TCanvas);
begin
  if sDragBar1.SkinData.Skinned then
    acgpDrawLine(Canvas.Handle, 0, sDragBar1.Height - 1, Width, sDragBar1.Height - 1, $44000000 {AlphaChannel} or Cardinal(acColorToRGB(clBtnText)));
end;


procedure TMainForm.sEdit1Change(Sender: TObject);
var
  s: string;
  i: integer;
  cd: TCmpsArray;
begin
  PanelMenu.SkinData.BeginUpdate;
  FormData.CurrentWorkBtn := nil;
  for i := PanelMenu.ControlCount - 1 downto 0 do
    PanelMenu.Controls[i].Free;

  cd := PCmpsArray(GetCmps)^;
  s := UpperCase(sEdit1.Text);
  if s <> '' then begin
    for i := Length(cd) - 1 downto 0 do
      if (Pos(s, UpperCase(cd[i].Caption)) > 0) or (Pos(s, UpperCase(cd[i].Hint)) > 0) then
        AddBtn(i);
  end
  else
    for i := MaxNdx downto 0 do
      AddBtn(FormData.OrderedIndexes[i]);

  PanelMenu.SkinData.EndUpdate;
end;


procedure TMainForm.ShowFirstFrame;
var
  l, t: integer;
begin
  if not IsShown then begin
    // Load position from Ini
    IniName := ExtractFilePath(Application.ExeName) + 'ASkinDemo.ini';
    t := sStoreUtils.ReadIniInteger(sSectionName, 'Top',  -1, IniName);
    l := sStoreUtils.ReadIniInteger(sSectionName, 'Left', -1, IniName);
    if (t <> -1) and (l <> -1) then
      // Do not forget change Form.Position to poDesigned
      SetBounds(l, t, Width, Height);

    GroupButtonClick(FirstBtn);
{$WARNINGS OFF}
    if PanelMenu.ControlCount > 0 then
      FormData.OpenCmp(TsSpeedButton(PanelMenu.Controls[1])); // Click first button

    IsShown := True;
  end;
end;


procedure TMainForm.SpeedButtonPaint(Sender: TObject; Bmp: TBitmap);
begin
  if Sender = FormData.CurrentWorkBtn then
    FormData.PaintSelRect(Bmp);
end;


procedure TMainForm.sSpeedButton1Click(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.sSpeedButton2Click(Sender: TObject);
begin
  if sSplitView1.Opened then
    sSplitView1.Close
  else
    sSplitView1.Open;
end;


procedure TMainForm.sSpeedButton4Paint(Sender: TObject; Bmp: TBitmap);
begin
  if Sender = FormData.CurrentMenuBtn then
    FormData.PaintSelRect(Bmp);
end;


procedure TMainForm.StopButtonAttention(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StopAttention(TsSpeedButton(Sender));
end;


procedure TMainForm.sTrackEdit1TrackChanged(Sender: TObject);
begin
  sTrackEdit1.CloseTrackForm;
  if FormData <> nil then
    if FormData.sSkinManager1.Effects.AllowAnimation then
      SetPPIAnimated(sTrackEdit1.AsInteger)
    else
      FormData.sSkinManager1.Options.PixelsPerInch := sTrackEdit1.AsInteger;
end;


procedure TMainForm.AddBtn(Ndx: integer);
var
  cd: TCmpsArray;
  Btn: TsSpeedButton;
  iHeight, iMargin, iTextOffset: integer;
begin
  cd := PCmpsArray(GetCmps)^;
  iHeight := ScaleInt(33, sSplitView1.SkinData);
  iMargin := ScaleInt(10, sSplitView1.SkinData);
  iTextOffset := ScaleInt(4, sSplitView1.SkinData);

  Btn := TsSpeedButton.Create(PanelMenu);
  Btn.Caption := cd[Ndx].Caption;
  Btn.ImageIndex := cd[Ndx].ImgIndex;
  Btn.Align := alTop;
  Btn.Flat := True;
  Btn.Tag := Ndx;
  Btn.Hint := cd[Ndx].Hint;
  Btn.OnClick := CmpButtonClick;
  Btn.OnPaint := SpeedButtonPaint;
  Btn.SkinData.SkinSection := 'LBTN';
  case cd[Ndx].ImgListIndex of
    -1: Btn.Images := FormData.Char24x24;
    1: Btn.Images := FormData.Img24x52;
    2: Btn.Images := FormData.Img24x80;
    3: Btn.Images := FormData.Img24x136;
    4: Btn.Images := FormData.Img24x164
    else Btn.Images := FormData.ImgListPalette;
  end;
  Btn.Alignment := taLeftJustify;
  Btn.TextAlignment := taLeftJustify;
  Btn.Grayed := (cd[Ndx].ImgListIndex >= 0);
  Btn.Height := iHeight;
  Btn.Margin := iMargin;
  Btn.TextOffset := iTextOffset;
  Btn.Parent := PanelMenu;
end;


procedure TMainForm.CmpButtonClick(Sender: TObject);
begin
  FormData.OpenCmp(TsSpeedButton(Sender));
end;


destructor TMainForm.Destroy;
begin
  inherited;
  FreeAndNil(BGBmp);
end;

end.
