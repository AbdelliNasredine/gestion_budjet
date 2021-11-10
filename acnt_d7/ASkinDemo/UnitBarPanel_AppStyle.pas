unit UnitBarPanel_AppStyle;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, ExtCtrls, StdCtrls,
  sFrameAdapter, sSpeedButton, sGroupBox, acImage;


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
    sImage1: TsImage;
    spdBtn_OuterEffects: TsSpeedButton;
    spdBtn_PopupForms: TsSpeedButton;
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
  end;


implementation

uses UnitFrameCurrentSkin, MainUnit, UnitFrameMenus, UnitFramePreview,
  UnitFrameHints, UnitFrameDialogs, UnitFrameForms, UnitFrameFrames,
  UnitFrameStdVCL, UnitFrameOuterEffects, UnitFrameScrollBars,
  UnitFrameImageLists, UnitFramePopupForms;


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
