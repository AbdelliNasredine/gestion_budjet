unit UnitBarPanel_AppStyle;
{$I sDefs.inc}

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, ExtCtrls, StdCtrls,
  {$IFNDEF DELPHI5} Types, {$ENDIF}
  {$IFDEF DELPHI_XE2} UITypes, {$ENDIF}
  sFrameAdapter, sSpeedButton, sGroupBox, acImage, sLabel;


type
  TBarPanel_AppStyle = class(TFrame)
    sFrameAdapter1: TsFrameAdapter;
    spdBtn_Preview: TsSpeedButton;
    spdBtn_Menus: TsSpeedButton;
    spdBtn_CurrSkin: TsSpeedButton;
    spdBtn_Hints: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sBitBtn1: TsSpeedButton;
    sBitBtn3: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    spdBtn_ScrollBars: TsSpeedButton;
    spdBtn_ImageLists: TsSpeedButton;
    spdBtn_OuterEffects: TsSpeedButton;
    spdBtn_PopupForms: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    procedure spdBtn_CurrSkinClick(Sender: TObject);
    procedure spdBtn_MenusClick(Sender: TObject);
    procedure spdBtn_PreviewClick(Sender: TObject);
    procedure spdBtn_HintsClick(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure spdBtn_OuterEffectsClick(Sender: TObject);
    procedure spdBtn_ScrollBarsClick(Sender: TObject);
    procedure spdBtn_ImageListsClick(Sender: TObject);
    procedure spdBtn_PopupFormsClick(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
  end;


implementation

uses
  ShellApi,

  sSkinManager, acAnimation,

  UnitFrameCurrentSkin, MainUnit, UnitFrameMenus, UnitFramePreview,
  UnitFrameHints, UnitFrameDialogs, UnitFrameForms, UnitFrameFrames,
  UnitFrameStdVCL, UnitFrameOuterEffects, UnitFrameScrollBars,
  UnitFrameImageLists, UnitFramePopupForms, UnitFrameAnim;


{$R *.DFM}

procedure TBarPanel_AppStyle.spdBtn_CurrSkinClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_CurrentSkin, Sender);
end;


procedure TBarPanel_AppStyle.spdBtn_MenusClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_Menus, Sender);
end;


procedure TBarPanel_AppStyle.spdBtn_PopupFormsClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_PopupForms, Sender);
end;


procedure TBarPanel_AppStyle.spdBtn_PreviewClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_Preview, Sender);
end;


procedure TBarPanel_AppStyle.spdBtn_HintsClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_Hints, Sender);
end;


procedure TBarPanel_AppStyle.sSpeedButton1Click(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_Anim, Sender);
  if Sender = sSpeedButton1 then
    StopAttention(sSpeedButton1);
end;


procedure TBarPanel_AppStyle.sSpeedButton2Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', PChar('http://www.alphaskins.com?d=' + MainForm.sSkinManager1.Version), nil, nil, SW_SHOWNORMAL);
end;


procedure TBarPanel_AppStyle.sSpeedButton3Click(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_Dialogs, Sender);
end;


procedure TBarPanel_AppStyle.sBitBtn1Click(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_Forms, Sender);
end;


procedure TBarPanel_AppStyle.sBitBtn3Click(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_Frames, Sender);
end;


procedure TBarPanel_AppStyle.sSpeedButton6Click(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_StdVCL, Sender);
end;


procedure TBarPanel_AppStyle.spdBtn_OuterEffectsClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_OuterEffects, Sender);
end;


procedure TBarPanel_AppStyle.spdBtn_ScrollBarsClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_ScrollBars, Sender);
end;


procedure TBarPanel_AppStyle.spdBtn_ImageListsClick(Sender: TObject);
begin
  MainForm.CreateNewFrame(TFrame_ImageLists, Sender);
end;

end.
