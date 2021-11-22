unit UnitTsSkinManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sCheckBox, sGroupBox, sComboBoxes,
  sPanel, acSlider, sEdit, acPopupCtrls, sSpeedButton,
  sComboBox, sRadioButton, sTrackBar, sBitBtn, sCurrEdit,
  sMaskEdit, sCustomComboEdit, sToolEdit, Mask, ComCtrls, ExtCtrls,
  sPageControl, sLabel, sSpinEdit, sMemo, sComboEdit;

type
  TFrameTsSkinManager = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sSkinSelector1: TsSkinSelector;
    sSpeedButton1: TsSpeedButton;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sGroupBox6: TsGroupBox;
    sComboBox1: TsComboBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sCheckBox13: TsCheckBox;
    sTabSheet3: TsTabSheet;
    sTabSheet4: TsTabSheet;
    sGroupBox4: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sRadioGroup1: TsRadioGroup;
    sGroupBox3: TsGroupBox;
    sComboBox3: TsComboBoxEx;
    sComboBox2: TsComboBoxEx;
    sGroupBox5: TsGroupBox;
    sGroupBox9: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sSpinEdit1: TsSpinEdit;
    sGroupBox10: TsGroupBox;
    sSpinEdit2: TsSpinEdit;
    sGroupBox11: TsGroupBox;
    sSpinEdit3: TsSpinEdit;
    sGroupBox12: TsGroupBox;
    sSpinEdit4: TsSpinEdit;
    sGroupBox13: TsGroupBox;
    sSpinEdit5: TsSpinEdit;
    sComboBox4: TsComboBox;
    sComboBox5: TsComboBox;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sGroupBox14: TsGroupBox;
    sCheckBox20: TsCheckBox;
    sCheckBox21: TsCheckBox;
    sCheckBox22: TsCheckBox;
    sCheckBox23: TsCheckBox;
    sTabSheet5: TsTabSheet;
    sTabSheet6: TsTabSheet;
    sGroupBox15: TsGroupBox;
    sCheckBox24: TsCheckBox;
    sTrackBar2: TsTrackBar;
    sGroupBox16: TsGroupBox;
    sTrackBar1: TsTrackBar;
    sMemo1: TsMemo;
    sCheckBox16: TsCheckBox;
    sCheckBox25: TsCheckBox;
    sCheckBox26: TsCheckBox;
    sSpeedButton3: TsSpeedButton;
    sGroupBox2: TsGroupBox;
    sRadioButton6: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sGroupBox18: TsGroupBox;
    sTrackEdit4: TsTrackEdit;
    sRadioButton7: TsRadioButton;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sGroupBox19: TsGroupBox;
    sLabel4: TsLabel;
    sRadioButton11: TsRadioButton;
    sRadioButton12: TsRadioButton;
    sGroupBox17: TsGroupBox;
    sLabel3: TsLabel;
    sRadioButton8: TsRadioButton;
    sRadioButton9: TsRadioButton;
    sRadioButton10: TsRadioButton;
    sGroupBox7: TsGroupBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sGroupBox20: TsGroupBox;
    sCheckBox10: TsCheckBox;
    sCheckBox14: TsCheckBox;
    sCheckBox15: TsCheckBox;
    sHTMLLabel1: TsHTMLLabel;
    sGroupBox21: TsGroupBox;
    TrackBar_AlphaBlend: TsTrackBar;
    sStickyLabel1: TsStickyLabel;
    sStickyLabel2: TsStickyLabel;
    TrackBar_Margins: TsTrackBar;
    CheckBox_ShowExtraLine: TsCheckBox;
    ComboBox_IcoLineSkin: TsComboBox;
    sSpeedButton2: TsSpeedButton;
    sComboBox6: TsComboBox;
    sGroupBox22: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox17: TsCheckBox;
    sGroupBox8: TsGroupBox;
    sDateEdit1: TsDateEdit;
    sCalcEdit1: TsCalcEdit;
    sDirectoryEdit1: TsDirectoryEdit;
    sFilenameEdit1: TsFilenameEdit;
    CheckBox_SkinnedMenus: TsCheckBox;
    procedure sRadioButton1Click(Sender: TObject);
    procedure sTrackEdit4TrackChanged(Sender: TObject);
    procedure sTrackEdit2TrackChanged(Sender: TObject);
    procedure sTrackEdit3TrackChanged(Sender: TObject);
    procedure sTrackEdit1TrackChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox11Click(Sender: TObject);
    procedure sCheckBox12Click(Sender: TObject);
    procedure sCheckBox13Click(Sender: TObject);
    procedure sComboBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure sComboBox1Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox10Click(Sender: TObject);
    procedure sCheckBox14Click(Sender: TObject);
    procedure sCheckBox15Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sGroupBox8CheckBoxChanged(Sender: TObject);
    procedure sRadioGroup1Click(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sGroupBox9CheckBoxChanged(Sender: TObject);
    procedure sGroupBox10CheckBoxChanged(Sender: TObject);
    procedure sGroupBox11CheckBoxChanged(Sender: TObject);
    procedure sGroupBox12CheckBoxChanged(Sender: TObject);
    procedure sGroupBox13CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sSpinEdit1Change(Sender: TObject);
    procedure sSpinEdit2Change(Sender: TObject);
    procedure sSpinEdit3Change(Sender: TObject);
    procedure sSpinEdit4Change(Sender: TObject);
    procedure sSpinEdit5Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sComboBox5Change(Sender: TObject);
    procedure CheckBox_SkinnedMenusClick(Sender: TObject);
    procedure TrackBar_AlphaBlendChange(Sender: TObject);
    procedure TrackBar_MarginsChange(Sender: TObject);
    procedure CheckBox_ShowExtraLineClick(Sender: TObject);
    procedure ComboBox_IcoLineSkinChange(Sender: TObject);
    procedure sGroupBox15CheckBoxChanged(Sender: TObject);
    procedure sCheckBox24Click(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sGroupBox16CheckBoxChanged(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure sCheckBox16Click(Sender: TObject);
    procedure sCheckBox25Click(Sender: TObject);
    procedure sCheckBox26Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sCheckBox21Click(Sender: TObject);
    procedure sCheckBox20Click(Sender: TObject);
    procedure sCheckBox23Click(Sender: TObject);
    procedure sCheckBox22Click(Sender: TObject);
    procedure sRadioButton8Click(Sender: TObject);
    procedure sGroupBox17CheckBoxChanged(Sender: TObject);
    procedure sGroupBox19CheckBoxChanged(Sender: TObject);
    procedure sRadioButton11Click(Sender: TObject);
    procedure sGroupBox18Click(Sender: TObject);
    procedure sComboBox6Change(Sender: TObject);
  public
    procedure AfterCreation; override;
    procedure AfterSkinChanging; override;
  end;

var
  FrameTsSkinManager: TFrameTsSkinManager;

implementation

{$R *.dfm}

uses sInternalSkins, sConst, acntTypes, acntUtils, sGraphUtils, sStyleSimply, sSkinManager, sVCLUtils, sSkinProvider,
  UnitDataModule, UnitMain;

procedure TFrameTsSkinManager.AfterCreation;
begin
  sTrackEdit4.Value := FormData.sSkinManager1.Options.PixelsPerInch;
  sCheckBox16.Checked := FormData.sSkinManager1.Active;
  sCheckBox1.Checked := sfiInternal in FormData.sSkinManager1.SkinsFilter;
  sCheckBox2.Checked := sfiExternal in FormData.sSkinManager1.SkinsFilter;
  sCheckBox3.Checked := FormData.sSkinManager1.Effects.AllowAnimation;
  sCheckBox4.Checked := FormData.sSkinManager1.Effects.AllowGlowing;
  sCheckBox5.Checked := FormData.sSkinManager1.Effects.AllowOuterEffects;
  sCheckBox6.Checked := FormData.sSkinManager1.Effects.DiscoloredGlyphs;
  sGroupBox8.Checked := FormData.sSkinManager1.ButtonsOptions.OldGlyphsMode;
  sCheckBox8.Checked := FormData.sSkinManager1.ButtonsOptions.ShowFocusRect;
  sCheckBox9.Checked := FormData.sSkinManager1.ButtonsOptions.ShiftContentOnClick;
  sCheckBox11.Checked := FormData.sSkinManager1.Options.ChangeSysColors;
  sCheckBox12.Checked := FormData.sSkinManager1.Options.DrawNonClientArea;
  sCheckBox13.Checked := FormData.sSkinManager1.Options.NoMouseHover;

  sCheckBox10.Checked := bcBackground in FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring;
  sCheckBox14.Checked := bcGlyph in FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring;
  sCheckBox15.Checked := bcText in FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring;

  sGroupBox19.Checked := beLighting in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sGroupBox17.Checked := beClick in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox20.Checked := beMouseEnter in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox21.Checked := beMouseLeave in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox22.Checked := beMouseDown in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox23.Checked := beMouseUp in FormData.sSkinManager1.AnimEffects.Buttons.Events;

  sCheckBox26.Checked := MainForm.sSkinProvider1.SystemBlur.Active;

  sTrackEdit1.Value := FormData.sSkinManager1.Brightness;
  sTrackEdit2.Value := FormData.sSkinManager1.HueOffset;
  sTrackEdit3.Value := FormData.sSkinManager1.Saturation;

  sComboBox1.ItemIndex := ord(FormData.sSkinManager1.Options.ArrowsStyle);
  sTrackEdit4.Enabled := FormData.sSkinManager1.Options.ScaleMode = smCustomPPI;

  // Scrollbars
  sGroupBox15.Checked := FormData.sSkinManager1.ScrollsOptions.ButtonsSize <> 0;
  sCheckBox24.Enabled := sGroupBox15.Checked;
  sCheckBox24.Checked := FormData.sSkinManager1.ScrollsOptions.ButtonsSize = -1;
  sTrackBar2.Enabled := not sCheckBox24.Checked and sGroupBox15.Checked;
  if sTrackBar2.Enabled then
    sTrackBar2.Position := FormData.sSkinManager1.ScrollsOptions.ButtonsSize;

  sGroupBox16.Checked := FormData.sSkinManager1.ScrollsOptions.ScrollSize <> -1;
  sTrackBar1.Enabled := sGroupBox16.Checked;
  if sTrackBar1.Enabled then
    sTrackBar1.Position := FormData.sSkinManager1.ScrollsOptions.ScrollSize;

  inherited;
end;


procedure TFrameTsSkinManager.AfterSkinChanging;
begin
  FrameCreated := False;
  sTrackEdit1.Value := FormData.sSkinManager1.Brightness;
  sTrackEdit2.Value := FormData.sSkinManager1.HueOffset;
  sTrackEdit3.Value := FormData.sSkinManager1.Saturation;
  FrameCreated := True;
end;


procedure TFrameTsSkinManager.CheckBox_ShowExtraLineClick(Sender: TObject);
begin
  if FrameCreated then
    FormData.sSkinManager1.MenuSupport.UseExtraLine := CheckBox_ShowExtraLine.Checked;
end;


procedure TFrameTsSkinManager.CheckBox_SkinnedMenusClick(Sender: TObject);
begin
  if FrameCreated then begin
    FormData.sSkinManager1.SkinnedPopups := CheckBox_SkinnedMenus.Checked;
    FormData.sSkinManager1.SkinableMenus.HookPopupMenu(FormData.PopupMenu2, CheckBox_SkinnedMenus.Checked);
  end;
end;


procedure TFrameTsSkinManager.ComboBox_IcoLineSkinChange(Sender: TObject);
begin
  if FrameCreated then
    FormData.sSkinManager1.MenuSupport.IcoLineSkin := ComboBox_IcoLineSkin.Text;
end;


procedure TFrameTsSkinManager.sCheckBox10Click(Sender: TObject);
begin
  if sCheckBox10.Checked then
    FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring := FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring + [bcBackground]
  else
    FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring := FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring - [bcBackground];

  sBitBtn1.SkinData.Invalidate;
  sBitBtn2.SkinData.Invalidate;
end;


procedure TFrameTsSkinManager.sCheckBox11Click(Sender: TObject);
begin
  if FrameCreated then
    FormData.sSkinManager1.Options.ChangeSysColors := sCheckBox11.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox12Click(Sender: TObject);
begin
  if FrameCreated then
    FormData.sSkinManager1.Options.DrawNonClientArea := sCheckBox12.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox13Click(Sender: TObject);
begin
  if FrameCreated then
    FormData.sSkinManager1.Options.NoMouseHover := sCheckBox13.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox14Click(Sender: TObject);
begin
  if sCheckBox14.Checked then
    FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring := FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring + [bcGlyph]
  else
    FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring := FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring - [bcGlyph];

  sBitBtn1.SkinData.Invalidate;
  sBitBtn2.SkinData.Invalidate;
end;


procedure TFrameTsSkinManager.sCheckBox15Click(Sender: TObject);
begin
  if sCheckBox15.Checked then
    FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring := FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring + [bcText]
  else
    FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring := FormData.sSkinManager1.ButtonsOptions.ModalButtonsColoring - [bcText];

  sBitBtn1.SkinData.Invalidate;
  sBitBtn2.SkinData.Invalidate;
end;


procedure EnableDisable(Ctrl: TControl; Data: integer);
begin
  if Ctrl.Tag = 9 then
    Ctrl.Enabled := boolean(Data);
end;


procedure TFrameTsSkinManager.sCheckBox16Click(Sender: TObject);
begin
  IterateControls(Self, integer(sCheckBox16.Checked), EnableDisable);
  FormData.sSkinManager1.Active := sCheckBox16.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox1Click(Sender: TObject);
begin
  if sCheckBox1.Checked then
    FormData.sSkinManager1.SkinsFilter := FormData.sSkinManager1.SkinsFilter + [sfiInternal]
  else
    FormData.sSkinManager1.SkinsFilter := FormData.sSkinManager1.SkinsFilter - [sfiInternal];
end;


procedure TFrameTsSkinManager.sCheckBox20Click(Sender: TObject);
begin
  if sCheckBox20.Checked then
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events + [beMouseEnter]
  else
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events - [beMouseEnter];
end;


procedure TFrameTsSkinManager.sCheckBox21Click(Sender: TObject);
begin
  if sCheckBox21.Checked then
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events + [beMouseLeave]
  else
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events - [beMouseLeave];
end;


procedure TFrameTsSkinManager.sCheckBox22Click(Sender: TObject);
begin
  if sCheckBox22.Checked then
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events + [beMouseDown]
  else
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events - [beMouseDown];
end;


procedure TFrameTsSkinManager.sCheckBox23Click(Sender: TObject);
begin
  if sCheckBox23.Checked then
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events + [beMouseUp]
  else
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events - [beMouseUp];
end;


procedure TFrameTsSkinManager.sCheckBox24Click(Sender: TObject);
begin
  if FrameCreated then begin
    sTrackBar2.Enabled := not sCheckBox24.Checked;
    if sCheckBox24.Checked then
      FormData.sSkinManager1.ScrollsOptions.ButtonsSize := -1 // Default size
    else
      FormData.sSkinManager1.ScrollsOptions.ButtonsSize := sTrackBar2.Position
  end;
end;


procedure TFrameTsSkinManager.sCheckBox25Click(Sender: TObject);
begin
  FormData.sSkinManager1.ExtendedBorders := sCheckBox25.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox26Click(Sender: TObject);
begin
  FormData.EnableDisableSysBlur(TsCheckBox(Sender).Checked);
  AfterCreation;
end;


procedure TFrameTsSkinManager.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    FormData.sSkinManager1.SkinsFilter := FormData.sSkinManager1.SkinsFilter + [sfiExternal]
  else
    FormData.sSkinManager1.SkinsFilter := FormData.sSkinManager1.SkinsFilter - [sfiExternal]
end;


procedure TFrameTsSkinManager.sCheckBox3Click(Sender: TObject);
begin
  FormData.sSkinManager1.Effects.AllowAnimation := sCheckBox3.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox4Click(Sender: TObject);
begin
  FormData.sSkinManager1.Effects.AllowGlowing := sCheckBox4.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox5Click(Sender: TObject);
begin
  FormData.sSkinManager1.Effects.AllowOuterEffects := TsCheckBox(Sender).Checked;
end;


procedure TFrameTsSkinManager.sCheckBox6Click(Sender: TObject);
var
  i: integer;
begin
  FormData.sSkinManager1.Effects.DiscoloredGlyphs := sCheckBox6.Checked;
  // Changing of glyphs in menu (they are grayed by default)
  for i := 0 to MainForm.PanelMenu.ComponentCount - 1 do
    if MainForm.PanelMenu.Components[i] is TsSpeedButton then
      TsSpeedButton(MainForm.PanelMenu.Components[i]).Grayed := sCheckBox6.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox8Click(Sender: TObject);
begin
  FormData.sSkinManager1.ButtonsOptions.ShowFocusRect := sCheckBox8.Checked;
end;


procedure TFrameTsSkinManager.sCheckBox9Click(Sender: TObject);
begin
  FormData.sSkinManager1.ButtonsOptions.ShiftContentOnClick := sCheckBox9.Checked;
end;


procedure TFrameTsSkinManager.sComboBox1Change(Sender: TObject);
begin
  FormData.sSkinManager1.Options.ArrowsStyle := TacArrowsStyle(sComboBox1.ItemIndex);
end;


procedure TFrameTsSkinManager.sComboBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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


procedure TFrameTsSkinManager.sComboBox2Change(Sender: TObject);
begin
  FormData.sSkinManager1.BeginUpdate;
  if TacFontMode(sComboBox2.ItemIndex) = fmCustom then
    FormData.sSkinManager1.Fonts.MainFont := sComboBox3.Items[sComboBox3.ItemIndex];

  FormData.sSkinManager1.Fonts.MainMode := TacFontMode(sComboBox2.ItemIndex);
  sComboBox3.Enabled := sComboBox2.ItemIndex = ord(fmCustom);

  FormData.sSkinManager1.EndUpdate(True, True);
end;


procedure TFrameTsSkinManager.sComboBox3Change(Sender: TObject);
begin
  FormData.sSkinManager1.BeginUpdate;
  FormData.sSkinManager1.Fonts.MainFont := sComboBox3.Items[sComboBox3.ItemIndex];
  FormData.sSkinManager1.EndUpdate(True, True);
end;


procedure TFrameTsSkinManager.sComboBox4Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.FormShow.Mode := TacAnimType(sComboBox4.ItemIndex);
  FormData.sSkinManager1.AnimEffects.FormHide.Mode := TacAnimType(sComboBox4.ItemIndex);
  FormData.sSkinManager1.AnimEffects.DialogShow.Mode := TacAnimType(sComboBox4.ItemIndex);
  FormData.sSkinManager1.AnimEffects.DialogHide.Mode := TacAnimType(sComboBox4.ItemIndex);
  sSpinEdit5.Enabled := (TacAnimType(sComboBox4.ItemIndex) <> atDropDown);
end;


procedure TFrameTsSkinManager.sComboBox5Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.SkinChanging.Mode := TacAnimType(sComboBox5.ItemIndex);
end;


procedure TFrameTsSkinManager.sComboBox6Change(Sender: TObject);
begin
  with FormData.sSkinManager1.AnimEffects.PageChange do
    case sComboBox6.ItemIndex of
      0:   Mode := atcFade;
      1:   Mode := atcBlur2
      else Mode := atcRunup;
    end;

  sSpinEdit3.Enabled := sComboBox6.ItemIndex = 0; // Time used if atcFade
end;


procedure TFrameTsSkinManager.sGroupBox10CheckBoxChanged(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.Minimizing.Active := sGroupBox10.Checked;
end;


procedure TFrameTsSkinManager.sGroupBox11CheckBoxChanged(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.PageChange.Active := sGroupBox11.Checked;
end;


procedure TFrameTsSkinManager.sGroupBox12CheckBoxChanged(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.SkinChanging.Active := sGroupBox12.Checked;
end;


procedure TFrameTsSkinManager.sGroupBox13CheckBoxChanged(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.FormShow.Active := sGroupBox13.Checked;
  FormData.sSkinManager1.AnimEffects.DialogShow.Active := sGroupBox13.Checked;
  FormData.sSkinManager1.AnimEffects.FormHide.Active := sGroupBox13.Checked;
  FormData.sSkinManager1.AnimEffects.DialogHide.Active := sGroupBox13.Checked;
end;


procedure TFrameTsSkinManager.sGroupBox15CheckBoxChanged(Sender: TObject);
begin
  if FrameCreated then begin
    sCheckBox24.Enabled := sGroupBox15.Checked;
    sTrackBar2.Enabled := not sCheckBox24.Checked and sGroupBox15.Checked;
    if sGroupBox15.Checked then
      if sCheckBox24.Checked then
        FormData.sSkinManager1.ScrollsOptions.ButtonsSize := -1 // Default size
      else
        FormData.sSkinManager1.ScrollsOptions.ButtonsSize := sTrackBar2.Position
    else
      FormData.sSkinManager1.ScrollsOptions.ButtonsSize := 0; // Not visible
  end;
end;


procedure TFrameTsSkinManager.sGroupBox16CheckBoxChanged(Sender: TObject);
var
  NewValue: integer;
begin
  if FrameCreated then begin
    sTrackBar1.Enabled := sGroupBox16.Checked;
    if not sGroupBox16.Checked then
      NewValue := -1 // Default system size will be used
    else
      NewValue := sTrackBar1.Position;

    if FormData.sSkinManager1.ScrollsOptions.ScrollSize <> NewValue then begin
      FormData.sSkinManager1.BeginUpdate;
      FormData.sSkinManager1.ScrollsOptions.ScrollSize := NewValue;
      FormData.sSkinManager1.EndUpdate(True, False);
    end;
  end;
end;


procedure TFrameTsSkinManager.sGroupBox17CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox17.Checked then
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events + [beClick]
  else
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events - [beClick];

  AfterCreation; // Update values of controls
end;


procedure TFrameTsSkinManager.sGroupBox18Click(Sender: TObject);
var
  i: integer;
begin
  if FrameCreated then begin
    sGroupBox18.Checked := True; // Always checked after click
    if sGroupBox18.Checked and sGroupBox18.CanFocus then
      sGroupBox18.SetFocus;

    for i := 0 to sGroupBox2.ControlCount - 1 do
      if sGroupBox2.Controls[i] is TsRadioButton then
        TsRadioButton(sGroupBox2.Controls[i]).Checked := False;

    FormData.sSkinManager1.Options.ScaleMode := smCustomPPI;
  end;
end;


procedure TFrameTsSkinManager.sGroupBox19CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox19.Checked then
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events + [beLighting]
  else
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events - [beLighting];

  AfterCreation; // Update values of controls
end;


procedure TFrameTsSkinManager.sGroupBox8CheckBoxChanged(Sender: TObject);
begin
  FormData.sSkinManager1.ButtonsOptions.OldGlyphsMode := sGroupBox8.Checked;
end;


procedure TFrameTsSkinManager.sGroupBox9CheckBoxChanged(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.BlendOnMoving.Active := sGroupBox9.Checked;
end;


procedure TFrameTsSkinManager.sRadioButton11Click(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.Buttons.LightingMode := TacLightingMode(TsRadioButton(Sender).Tag);
end;


procedure TFrameTsSkinManager.sRadioButton1Click(Sender: TObject);
begin
  if FrameCreated then begin
    sGroupBox18.Checked := False;
    FormData.sSkinManager1.Options.ScaleMode := TacScaleMode(TsRadioButton(Sender).Tag);
    sTrackEdit4.Enabled := FormData.sSkinManager1.Options.ScaleMode = smCustomPPI;
  end;
end;


procedure TFrameTsSkinManager.sRadioButton8Click(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.Buttons.ClickEffect := TacClickEffect(TsRadioButton(Sender).Tag);
end;


procedure TFrameTsSkinManager.sRadioGroup1Click(Sender: TObject);
begin
  FormData.sSkinManager1.Options.GroupBoxStyle := TacGroupBoxStyle(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsSkinManager.sSpeedButton1Click(Sender: TObject);
var
  i: integer;
begin
  Application.CreateForm(TFormInternalSkins, FormInternalSkins);
  FormInternalSkins.ListBox1.Clear;
  FormInternalSkins.SkinManager := FormData.sSkinManager1;

  for i := 0 to FormData.sSkinManager1.InternalSkins.Count - 1 do
    FormInternalSkins.ListBox1.Items.Add(FormData.sSkinManager1.InternalSkins.Items[i].Name);

  FormInternalSkins.ShowModal;
  FreeAndNil(FormInternalSkins);
end;


procedure TFrameTsSkinManager.sSpeedButton3Click(Sender: TObject);
begin
  FormData.sSkinManager1.SkinName := FormData.sSkinManager1.GetRandomSkin;
end;


procedure TFrameTsSkinManager.sSpinEdit1Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.Minimizing.Time := TsSpinEdit(Sender).Value;
end;


procedure TFrameTsSkinManager.sSpinEdit2Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.Minimizing.Time := TsSpinEdit(Sender).Value;
end;


procedure TFrameTsSkinManager.sSpinEdit3Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.PageChange.Time := TsSpinEdit(Sender).Value;
end;


procedure TFrameTsSkinManager.sSpinEdit4Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.SkinChanging.Time := TsSpinEdit(Sender).Value;
end;


procedure TFrameTsSkinManager.sSpinEdit5Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.FormShow.Time := TsSpinEdit(Sender).Value;
  FormData.sSkinManager1.AnimEffects.FormHide.Time := TsSpinEdit(Sender).Value;
  FormData.sSkinManager1.AnimEffects.DialogShow.Time := TsSpinEdit(Sender).Value;
  FormData.sSkinManager1.AnimEffects.DialogHide.Time := TsSpinEdit(Sender).Value;
end;


procedure TFrameTsSkinManager.sTrackBar1Change(Sender: TObject);
begin
  if FrameCreated then
    FormData.sSkinManager1.ScrollsOptions.ScrollSize := sTrackBar1.Position
end;


procedure TFrameTsSkinManager.sTrackBar2Change(Sender: TObject);
begin
  if FrameCreated then
    FormData.sSkinManager1.ScrollsOptions.ButtonsSize := sTrackBar2.Position
end;


procedure TFrameTsSkinManager.sTrackEdit1TrackChanged(Sender: TObject);
begin
  if FrameCreated and not (msSkinChanging in FormData.sSkinManager1.ManagerState) and (FormData.sSkinManager1.Brightness <> sTrackEdit1.AsInteger) then begin // If not in a skin changing
    FormData.sSkinManager1.BeginUpdate;
    FormData.sSkinManager1.Brightness := sTrackEdit1.AsInteger;
    FormData.sSkinManager1.EndUpdate(True, False); // Repaint without animation
  end;
end;


procedure TFrameTsSkinManager.sTrackEdit2TrackChanged(Sender: TObject);
begin
  if FrameCreated and not (msSkinChanging in FormData.sSkinManager1.ManagerState) and (FormData.sSkinManager1.HueOffset <> sTrackEdit2.AsInteger) then begin // If not in a skin changing
    FormData.sSkinManager1.BeginUpdate;
    FormData.sSkinManager1.HueOffset := sTrackEdit2.AsInteger;
    FormData.sSkinManager1.EndUpdate(True, False); // Repaint without animation
  end;
end;


procedure TFrameTsSkinManager.sTrackEdit3TrackChanged(Sender: TObject);
begin
  if FrameCreated and not (msSkinChanging in FormData.sSkinManager1.ManagerState) and (FormData.sSkinManager1.Saturation <> sTrackEdit3.AsInteger) then begin // If not in a skin changing
    FormData.sSkinManager1.BeginUpdate;
    FormData.sSkinManager1.Saturation := sTrackEdit3.AsInteger;
    FormData.sSkinManager1.EndUpdate(True, False); // Repaint without animation
  end;
end;


procedure TFrameTsSkinManager.sTrackEdit4TrackChanged(Sender: TObject);
begin
  sTrackEdit4.SetFocus;
  sTrackEdit4.CloseTrackForm;
  if FormData.sSkinManager1.Effects.AllowAnimation then
    SetPPIAnimated(sTrackEdit4.AsInteger)
  else
    FormData.sSkinManager1.Options.PixelsPerInch := sTrackEdit4.AsInteger;
end;


procedure TFrameTsSkinManager.sTrackEdit5Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.BlendOnMoving.BlendValue := TsTrackEdit(Sender).AsInteger;
end;


procedure TFrameTsSkinManager.sTrackEdit7Change(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.FormShow.Time := TsSpinEdit(Sender).Value;
  FormData.sSkinManager1.AnimEffects.FormHide.Time := TsSpinEdit(Sender).Value;
  FormData.sSkinManager1.AnimEffects.DialogShow.Time := TsSpinEdit(Sender).Value;
  FormData.sSkinManager1.AnimEffects.DialogHide.Time := TsSpinEdit(Sender).Value;
end;


procedure TFrameTsSkinManager.TrackBar_AlphaBlendChange(Sender: TObject);
begin
  FormData.sSkinManager1.MenuSupport.AlphaBlend := TrackBar_AlphaBlend.Position;
end;


procedure TFrameTsSkinManager.TrackBar_MarginsChange(Sender: TObject);
begin
  FormData.sSkinManager1.SkinableMenus.Margin := TrackBar_Margins.Position;
end;

end.
