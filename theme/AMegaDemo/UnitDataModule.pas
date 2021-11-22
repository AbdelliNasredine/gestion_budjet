unit UnitDataModule;

interface

uses
  Windows, SysUtils, Classes, ImgList, Controls, Forms, Menus,

  sSkinManager, acAlphaImageList, sSpeedButton, acAlphaHints;

const
  MaxNdx = 59;

type
  TacFrame = class of TFrame;

  TFormData = class(TDataModule)
    I1: TMenuItem;
    I2: TMenuItem;
    I3: TMenuItem;
    I4: TMenuItem;
    I5: TMenuItem;
    A1: TMenuItem;
    S2: TMenuItem;
    N3: TMenuItem;
    Exit2: TMenuItem;
    sSkinManager1: TsSkinManager;
    sCharImageList1: TsCharImageList;
    ImgListPalette: TsAlphaImageList;
    PopupMenu1: TPopupMenu;
    CharList16: TsCharImageList;
    sAlphaHints1: TsAlphaHints;
    Img24x136: TsAlphaImageList;
    Char24x24: TsVirtualImageList;
    Img24x52: TsAlphaImageList;
    Img24x80: TsAlphaImageList;
    Img24x164: TsAlphaImageList;
    PopupMenu2: TPopupMenu;
    Builtinskins1: TMenuItem;
    Externalskins1: TMenuItem;
    procedure sSkinManager1ScaleChanged(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure sSkinManager1GetMenuExtraLineData(FirstItem: TMenuItem; var SkinSection, Caption: string; var Glyph: TBitmap; var LineVisible: Boolean);
    procedure Exit2Click(Sender: TObject);
    procedure sSkinManager1SkinListChanged(Sender: TObject);
    procedure sSkinManager1AfterChange(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure sSkinManager1SkinChanging(Sender: TObject; const NewSkinName: string; var AllowChanging: Boolean);
  public
    CurrentMenuFrame: TFrame;
    CurrentMenuBtn: TsSpeedButton;
    CurrentWorkFrame: TFrame;
    CurrentWorkBtn: TsSpeedButton;
    OrderedIndexes: array [0..MaxNdx] of integer;
    procedure PaintSelRect(Bmp: TBitmap);
    procedure OpenCmp(SelectBtn: TsSpeedButton);
    procedure SkinMenuClick(Sender: TObject);
    procedure GeneratePopupMenu;
    procedure EnableDisableSysBlur(Active: boolean);
  end;

  TGroupData = record
    Caption: string;
    ImgIndex: integer;
  end;
  PGroupData = ^TGroupData;

  TCmpData = record
    Caption,
    Hint: string;
    ImgIndex,
    GroupIndex,
    ImgListIndex: integer;
    FrameType: TacFrame;
  end;
  PCmpData = ^TCmpData;

  TGroupsArray = array [0..3] of TGroupData;
  PGroupsArray = ^TGroupsArray;

  TCmpsArray = array [0..60] of TCmpData;
  PCmpsArray = ^TCmpsArray;

var
  FormData: TFormData;

function GetGroups: PGroupData;
function GetCmps: PCmpData;

implementation

{$R *.dfm}

uses Graphics, UnitMain, UnitTsSkinManager, acntUtils, sGraphUtils, sCommonData, sConst,
  sPanel, sVCLUtils, sAlphaGraph, UnitBaseMenu, acntTypes, sSkinProvider,

  UnitAnimation, UnitTsVirtualImageList, UnitTsTreeViewEx, UnitTsTreeView, UnitTsTrackEdit,
  UnitTsTrackBar, UnitTsTitleBar, UnitTsSplitView, UnitTsSplitter, UnitTsSpinEdit,
  UnitTsSpeedButton, UnitTsSlider, UnitTsSkinSelector, UnitTsSkinProvider, UnitTsShellControls,
  UnitTsScrollBox, UnitTsRoundBtn, UnitTsRollOutPanel, UnitTsRadioButton, UnitTsPopupBox,
  UnitTsPanel, UnitTsPageScroller, UnitTsPageControl, UnitTsOthers5, UnitTsOthers4,
  UnitTsOthers3, UnitTsOthers2, UnitTsOthers1, UnitTsMonthCalendar, UnitTsMeter,
  UnitTsMemo, UnitTsMagnifier, UnitTsListView, UnitTsListBoxes, UnitTsLabels, UnitTsLabelFX,
  UnitTsImage, UnitTsHTMLLabel, UnitTsHintsFrame3, UnitTsHintsFrame2, UnitTsGradientPanel,
  UnitTsFrameAdapter, UnitTsFontStore, UnitTsFloatButtons, UnitTsExtEdits, UnitTsEdit,
  UnitTsComboBox, UnitTsComboBoxEx, UnitTsColorPickers, UnitTsColorDialog, UnitTsCheckBox, UnitTsCharImageList,
  UnitTsButton, UnitTsBoxes, UnitTsBitBtn, UnitTsBadgeBtn, UnitTsArcPreloader,
  UnitTsArcHandle, UnitTsArcGauge, UnitTsArcDial, UnitTsAlphaImageList, UnitTsAlphaHints;


procedure TFormData.EnableDisableSysBlur(Active: boolean);
var
  ObscForm: TacGlowForm;
begin
  ObscForm := MakeCoverForm(MainForm.Handle);
  MainForm.PanelMain.SkinData.BeginUpdate;
  if Active then
    MainForm.PanelMain.SkinData.OpaqueMode := omForceOpaque
  else
    MainForm.PanelMain.SkinData.OpaqueMode := omAuto;

  MainForm.PanelMain.SkinData.EndUpdate;
  MainForm.sSkinProvider1.SystemBlur.Active := Active;
  if ObscForm <> nil then
    ObscForm.Free;
end;


procedure TFormData.Exit2Click(Sender: TObject);
begin
  if CustomRequest('Close application?') then
    Application.Terminate;
end;


procedure TFormData.GeneratePopupMenu;
var
  i: integer;
  mi: TMenuItem;
  sl: TacStringList;
begin
  // Menu update
  Builtinskins1.Clear;
  // Build-in skins list
  for i := 0 to sSkinManager1.InternalSkins.Count - 1 do begin
    mi := TMenuItem.Create(Application);
    mi.Caption := sSkinManager1.InternalSkins[i].Name;
    if mi.Caption = sSkinManager1.SkinName then
      mi.Checked := True;

    mi.OnClick := SkinMenuClick;
    mi.RadioItem := True;
    Builtinskins1.Add(mi);
  end;
  // External skins list
  Externalskins1.Clear;
  sl := TacStringList.Create;
  sSkinManager1.GetExternalSkinNames(sl);
  if sl.Count > 0 then begin
    sl.Sort;
    for i := 0 to sl.Count - 1 do begin
      mi := TMenuItem.Create(Application);
      mi.Caption := sl[i];
      if mi.Caption = sSkinManager1.SkinName then begin
        mi.Checked := True;
        mi.Default := True;
      end;
      mi.OnClick := SkinMenuClick;
      mi.RadioItem := True;
      if (i <> 0) and (i mod 20 = 0) then
        mi.Break := mbBreak;

      Externalskins1.Add(mi);
    end;
  end;
  FreeAndNil(sl);
  // Update skinning of dynamically created menu items
  sSkinManager1.SkinableMenus.HookPopupMenu(PopupMenu2, sSkinManager1.SkinnedPopups);
end;


procedure TFormData.PaintSelRect(Bmp: TBitmap);
begin
  FillRect32(Bmp,
             Rect(0, 0, ScaleInt(iSelWidth, MainForm.sSkinProvider1.SkinData), Bmp.Height),
             GetFontColor(MainForm.sSpeedButton2, -1, sSkinManager1), 255);
end;


procedure TFormData.PopupMenu2Popup(Sender: TObject);
begin
  if (Builtinskins1.Count = 0) and (Externalskins1.Count = 0) then
    GeneratePopupMenu;
  // Force filling of skin list if not filled yet
//  sSkinManager1.SkinListController.CheckThread;
end;


procedure TFormData.SkinMenuClick(Sender: TObject);
begin
  sSkinManager1.SkinName := DelChars(TMenuItem(Sender).Caption, '&');
end;


procedure TFormData.sSkinManager1AfterChange(Sender: TObject);
var
  i: integer;
begin
  if sSkinManager1.SkinCommonInfo.Active then begin // If form is really skinned
    for i := 0 to Builtinskins1.Count - 1 do begin  // Search item with current skin name
      Builtinskins1.Items[i].Checked := DelChars(Builtinskins1.Items[i].Caption, '&') = sSkinManager1.SkinName;
      Builtinskins1.Items[i].Default := Builtinskins1.Items[i].Checked;
    end;
    for i := 0 to Externalskins1.Count - 1 do begin // Search item with current skin name
      Externalskins1.Items[i].Checked := DelChars(Externalskins1.Items[i].Caption, '&') = sSkinManager1.SkinName;
      Externalskins1.Items[i].Default := Externalskins1.Items[i].Checked;
    end;
  end;
end;


procedure TFormData.sSkinManager1GetMenuExtraLineData(FirstItem: TMenuItem; var SkinSection, Caption: string; var Glyph: TBitmap; var LineVisible: Boolean);

  function GetSectionTextColor: TColor; // Get text color for colorizing of glyph received from CharImageList
  var
    Ndx: integer;
  begin
    Ndx := sSkinManager1.GetSkinIndex(SkinSection);
    if Ndx >= 0 then
      Result := sSkinManager1.CommonSkinData.gd[Ndx].Props[0].FontColor.Color
    else
      Result := clBlack;
  end;

begin
  sSkinManager1.MenuSupport.ExtraLineFont.Assign(MainForm.Font);
  sSkinManager1.MenuSupport.ExtraLineFont.Size := MulDiv(sSkinManager1.MenuSupport.ExtraLineFont.Size, 4, 3);
  sSkinManager1.MenuSupport.ExtraLineFont.Style := [fsBold];
  // Show ExtraLine in the FormData.PopupMenu2 only
  LineVisible := FirstItem = FormData.PopupMenu2.Items[0];
  if LineVisible then begin
    Caption := 'Test menu';
    // Make bitmap
    Char24x24.SetCharColor(GetSectionTextColor, 10, True); // Set glyph color manually
    Glyph := Char24x24.CreateBitmap32(10);
  end;
end;


procedure TFormData.sSkinManager1ScaleChanged(Sender: TObject);
begin
  MainForm.sTrackEdit1.Value := sSkinManager1.Options.PixelsPerInch;
  if CurrentWorkFrame is TFrameTsSkinManager then
    TFrameTsSkinManager(CurrentWorkFrame).sTrackEdit4.Value := MainForm.sTrackEdit1.Value;
end;


// Update list of available skins in the popup menu
procedure TFormData.sSkinManager1SkinChanging(Sender: TObject; const NewSkinName: string; var AllowChanging: Boolean);
begin
  sSkinManager1.HueOffset := 0;
  sSkinManager1.Saturation := 0;
  sSkinManager1.Brightness := 0;
  if CurrentWorkFrame <> nil then
    TFrameBaseMenu(CurrentWorkFrame).AfterSkinChanging;
end;


procedure TFormData.sSkinManager1SkinListChanged(Sender: TObject);
begin
  Builtinskins1.Clear; // Menus will be update before opening
  Externalskins1.Clear;
end;


const
  Groups: TGroupsArray = (
    (Caption: 'Invisible';    ImgIndex: 6),
    (Caption: 'Standard';     ImgIndex: 1),
    (Caption: 'Additional';   ImgIndex: 4),
    (Caption: 'Arc controls'; ImgIndex: 7)
  );

  Cmps: TCmpsArray = (
    // Invisible
    (Caption: 'TsSkinManager';
     Hint: '';
     GroupIndex: 0;
     FrameType: TFrameTsSkinManager),

    (Caption: 'TsSkinProvider';
     Hint: '';
     ImgIndex: 1;
     GroupIndex: 0;
     FrameType: TFrameTsSkinProvider),

    (Caption: 'TsFrameAdapter';
     Hint: '';
     ImgIndex: 2;
     GroupIndex: 0;
     FrameType: TFrameTsFrameAdapter),

    (Caption: 'TsMagnifier';
     Hint: '';
     ImgIndex: 4;
     GroupIndex: 0;
     FrameType: TFrameTsMagnifier),

    (Caption: 'TsColorDialog';
     Hint: '';
     ImgIndex: 5;
     GroupIndex: 0;
     FrameType: TFrameTsColorDialog),

    (Caption: 'TsAlphaImageList';
     Hint: '';
     ImgIndex: 6;
     GroupIndex: 0;
     FrameType: TFrameTsAlphaImageList),

    (Caption: 'TsVirtualImageList';
     Hint: '';
     ImgIndex: 7;
     GroupIndex: 0;
     FrameType: TFrameTsVirtualImageList),

    (Caption: 'TsCharImageList';
     Hint: '';
     ImgIndex: 8;
     GroupIndex: 0;
     FrameType: TFrameTsCharImageList),

    (Caption: 'TsAlphaHints';
     Hint: '';
     ImgIndex: 9;
     GroupIndex: 0;
     FrameType: TFrameTsAlphaHints),

    (Caption: 'TsTitleBar';
     Hint: '';
     ImgIndex: 10;
     GroupIndex: 0;
     FrameType: TFrameTsTitleBar),

    (Caption: 'TsFloatButtons';
     Hint: '';
     ImgIndex: 11;
     GroupIndex: 0;
     FrameType: TFrameTsFloatButtons),

    (Caption: 'TsFontStore';
     Hint: '';
     ImgIndex: 12;
     GroupIndex: 0;
     FrameType: TFrameTsFontStore),

    (Caption: '';
     Hint: 'TsPathDialog, TsOpenDialog, TsSaveDialog, TsOpenPictureDialog, TsSavePictureDialog';
     ImgIndex: 0;
     GroupIndex: 0;
     ImgListIndex: 3;
     FrameType: TFrameTsOthers5),

    (Caption: 'Buttons Animation';
     Hint: '';
     ImgIndex: 22;
     GroupIndex: 0;
     ImgListIndex: -1;
     FrameType: TFrameAnimation),  // 13

    // Std

    (Caption: 'TsComboBox';
     Hint: '';
     ImgIndex: 16;
     GroupIndex: 1;
     FrameType: TFrameTsComboBox),

    (Caption: 'TsSpeedButton';
     Hint: '';
     ImgIndex: 25;
     GroupIndex: 1;
     FrameType: TFrameTsSpeedButton),

    (Caption: 'TsButton';
     Hint: '';
     ImgIndex: 14;
     GroupIndex: 1;
     FrameType: TFrameTsButton),

    (Caption: 'TsBitBtn';
     Hint: '';
     ImgIndex: 13;
     GroupIndex: 1;
     FrameType: TFrameTsBitBtn),

    (Caption: 'TsPageControl';
     Hint: '';
     ImgIndex: 21;
     GroupIndex: 1;
     FrameType: TFrameTsPageControl),

    (Caption: 'TsImage';
     Hint: '';
     ImgIndex: 18;
     GroupIndex: 1;
     FrameType: TFrameTsImage),

    (Caption: 'TsEdit';
     Hint: '';
     ImgIndex: 17;
     GroupIndex: 1;
     FrameType: TFrameTsEdit),

    (Caption: 'TsCheckBox';
     Hint: '';
     ImgIndex: 15;
     GroupIndex: 1;
     FrameType: TFrameTsCheckBox),

    (Caption: 'TsRadioButton';
     Hint: '';
     ImgIndex: 23;
     GroupIndex: 1;
     FrameType: TFrameTsRadioButton),

    (Caption: 'TsComboBoxEx';
     Hint: '';
     ImgIndex: 16;
     GroupIndex: 1;
     FrameType: TFrameTsComboBoxEx),

    (Caption: 'TsMemo';
     Hint: '';
     ImgIndex: 20;
     GroupIndex: 1;
     FrameType: TFrameTsMemo),

    (Caption: 'TsPanel';
     Hint: '';
     ImgIndex: 22;
     GroupIndex: 1;
     FrameType: TFrameTsPanel),

    (Caption: 'TsSplitter';
     Hint: '';
     ImgIndex: 27;
     GroupIndex: 1;
     FrameType: TFrameTsSplitter),

    (Caption: 'TsTrackBar';
     Hint: '';
     ImgIndex: 28;
     GroupIndex: 1;
     FrameType: TFrameTsTrackBar),

    (Caption: 'TsTreeView';
     Hint: '';
     ImgIndex: 29;
     GroupIndex: 1;
     FrameType: TFrameTsTreeView),

    (Caption: 'TsListView';
     Hint: '';
     ImgIndex: 19;
     GroupIndex: 1;
     FrameType: TFrameTsListView),

    (Caption: 'TsSpinEdit';
     Hint: '';
     ImgIndex: 26;
     GroupIndex: 1;
     FrameType: TFrameTsSpinEdit),

    (Caption: 'TsScrollBox';
     Hint: '';
     ImgIndex: 24;
     GroupIndex: 1;
     FrameType: TFrameTsScrollBox),

    (Caption: 'ListBoxes';
     Hint: '';
     ImgIndex: 0;
     GroupIndex: 1;
     ImgListIndex: 1;
     FrameType: TFrameTsListBoxes),

    (Caption: 'Boxes';
     Hint: '';
     ImgIndex: 0;
     GroupIndex: 1;
     ImgListIndex: 2;
     FrameType: TFrameTsBoxes),

    (Caption: '';
     Hint: 'TsTabControl, TsHeaderControl, TsProgressBar, TsGauge, TsToolBar, TsCoolBar';
     ImgIndex: 1;
     GroupIndex: 1;
     ImgListIndex: 4;
     FrameType: TFrameTsOthers1),

    (Caption: '';
     Hint: 'TsLabel, TsScrollBar, TsMaskEdit, TsUpDown, TsRichEdit';
     ImgIndex: 0;
     GroupIndex: 1;
     ImgListIndex: 4;
     FrameType: TFrameTsOthers2), // 35

     // Additional

    (Caption: 'TsSkinSelector';
     Hint: '';
     ImgIndex: 40;
     GroupIndex: 2;
     FrameType: TFrameTsSkinSelector),

    (Caption: 'TsPopupBox';
     Hint: '';
     ImgIndex: 37;
     GroupIndex: 2;
     FrameType: TFrameTsPopupBox),

    (Caption: 'TsSplitView';
     Hint: '';
     ImgIndex: 42;
     GroupIndex: 2;
     FrameType: TFrameTsSplitView),

    (Caption: 'TsPageScroller';
     Hint: '';
     ImgIndex: 36;
     GroupIndex: 2;
     FrameType: TFrameTsPageScroller),

    (Caption: 'TsTreeViewEx';
     Hint: '';
     ImgIndex: 44;
     GroupIndex: 2;
     FrameType: TFrameTsTreeViewEx),

    (Caption: 'TsGradientPanel';
     Hint: '';
     ImgIndex: 32;
     GroupIndex: 2;
     FrameType: TFrameTsGradientPanel),

    (Caption: 'TsTrackEdit';
     Hint: '';
     ImgIndex: 43;
     GroupIndex: 2;
     FrameType: TFrameTsTrackEdit),

    (Caption: 'TsSlider';
     Hint: '';
     ImgIndex: 41;
     GroupIndex: 2;
     FrameType: TFrameTsSlider),

    (Caption: 'TsRollOutPanel';
     Hint: '';
     ImgIndex: 39;
     GroupIndex: 2;
     FrameType: TFrameTsRollOutPanel),

    (Caption: 'TsMonthCalendar';
     Hint: '';
     ImgIndex: 35;
     GroupIndex: 2;
     FrameType: TFrameTsMonthCalendar),

    (Caption: 'TsLabelFX';
     Hint: '';
     ImgIndex: 34;
     GroupIndex: 2;
     FrameType: TFrameTsLabelFX),

    (Caption: 'TsHTMLLabel';
     Hint: '';
     ImgIndex: 33;
     GroupIndex: 2;
     FrameType: TFrameTsHTMLLabel),

    (Caption: 'Labels';
     Hint: '';
     ImgIndex: 1;
     GroupIndex: 2;
     ImgListIndex: 2;
     FrameType: TFrameTsLabels),

    (Caption: 'Ext edits';
     Hint: '';
     ImgIndex: 2;
     GroupIndex: 2;
     ImgListIndex: 2;
     FrameType: TFrameTsExtEdits),

    (Caption: 'Color pickers';
     Hint: '';
     ImgIndex: 3;
     GroupIndex: 2;
     ImgListIndex: 2;
     FrameType: TFrameTsColorPickers),

    (Caption: 'Shell controls';
     Hint: '';
     ImgIndex: 4;
     GroupIndex: 2;
     ImgListIndex: 2;
     FrameType: TFrameTsShellControls),

    (Caption: '';
     Hint: 'TsComboEdit, TsDateEdit, TsCalcEdit, TsDirectoryEdit, TsFileNameEdit';
     ImgIndex: 1;
     GroupIndex: 2;
     ImgListIndex: 3;
     FrameType: TFrameTsOthers3),

    (Caption: '';
     Hint: 'TsDragBar, TsWebBrowser, TsSysButton';
     ImgIndex: 5;
     GroupIndex: 2;
     ImgListIndex: 2;
     FrameType: TFrameTsOthers4), // 53

     // Arc

    (Caption: 'TsMeter';
     Hint: '';
     ImgIndex: 50;
     GroupIndex: 3;
     FrameType: TFrameTsMeter),

    (Caption: 'TsRoundBtn';
     Hint: '';
     ImgIndex: 51;
     GroupIndex: 3;
     FrameType: TFrameTsRoundBtn),

    (Caption: 'TsArcDial';
     Hint: '';
     ImgIndex: 45;
     GroupIndex: 3;
     FrameType: TFrameTsArcDial),

    (Caption: 'TsArcHandle';
     Hint: '';
     ImgIndex: 47;
     GroupIndex: 3;
     FrameType: TFrameTsArcHandle),

    (Caption: 'TsArcGauge';
     Hint: '';
     ImgIndex: 46;
     GroupIndex: 3;
     FrameType: TFrameTsArcGauge),

    (Caption: 'TsArcPreloader';
     Hint: '';
     ImgIndex: 48;
     GroupIndex: 3;
     FrameType: TFrameTsArcPreloader),

    (Caption: 'TsBadgeBtn';
     Hint: '';
     ImgIndex: 49;
     GroupIndex: 3;
     FrameType: TFrameTsBadgeBtn)
  );


function GetGroups: PGroupData;
begin
  Result := @Groups[0];
end;


function GetCmps: PCmpData;
begin
  Result := @Cmps[0];
end;


procedure TFormData.DataModuleCreate(Sender: TObject);
var
  i, j, n: integer;
  MaxStr, CurStr: string;
begin
  Application.HintPause := 100;
  for i := 0 to MaxNdx do begin
    n := 0;
    MaxStr := 'zzzz';
    for j := 0 to MaxNdx do
      if Cmps[j].Caption <> '' then begin
        if (Cmps[j].Caption < MaxStr) and (Cmps[j].Caption > CurStr) then begin
          MaxStr := Cmps[j].Caption;
          n := j;
        end;
      end
      else
        if (Cmps[j].Hint < MaxStr) and (Cmps[j].Hint > CurStr) then begin
          MaxStr := Cmps[j].Hint;
          n := j;
        end;

    OrderedIndexes[i] := n;
    CurStr := MaxStr;
  end;
  sSkinManager1.Active := True;
end;


procedure TFormData.OpenCmp(SelectBtn: TsSpeedButton);
var
  OldFrame: TFrame;
  OldBtn: TsSpeedButton;
begin
  if IsValidIndex(SelectBtn.Tag, Length(Cmps)) and (CurrentWorkBtn <> SelectBtn) and (SelectBtn <> nil) then begin
    MainForm.sSplitView2.SideShadow.Mode := ssmInternal;
    OldBtn := CurrentWorkBtn;
    CurrentWorkBtn := SelectBtn;
    if OldBtn <> nil then begin
      OldBtn.SkinData.BeginUpdate;
      OldBtn.SkinData.SkinSection := 'LBTN';
      CurrentWorkBtn.SkinData.SkinSection := 'SELBTN';
      OldBtn.SkinData.EndUpdate(True);
    end
    else
      CurrentWorkBtn.SkinData.SkinSection := 'SELBTN';

    MainForm.sImgLabel1.Caption := SelectBtn.Caption;
    MainForm.sImgLabel1.Images := SelectBtn.Images;
    MainForm.sImgLabel1.ImageIndex := SelectBtn.ImageIndex;

    if not (CurrentWorkFrame is Cmps[SelectBtn.Tag].FrameType) then begin
      OldFrame := CurrentWorkFrame;
      if sSkinManager1.Effects.AllowAnimation and MainForm.IsShown and sSkinManager1.IsActive then
        PrepareForAnimation(MainForm.PanelContainer, atcRunup);

      CurrentWorkFrame := Cmps[SelectBtn.Tag].FrameType.Create(Application);
      TFrameBaseMenu(CurrentWorkFrame).AfterCreation;
      sSkinManager1.UpdateScale(CurrentWorkFrame);
      CurrentWorkFrame.Parent := MainForm.PanelContainer;
      if OldFrame <> nil then begin
        TFrameBaseMenu(OldFrame).BeforeDestroy;
        FreeAndNil(OldFrame);
      end;
      if sSkinManager1.Effects.AllowAnimation and MainForm.IsShown and sSkinManager1.IsActive then
        AnimShowControl(MainForm.PanelContainer, 50, 255, atcRunup);
    end;
  end;
end;

end.
