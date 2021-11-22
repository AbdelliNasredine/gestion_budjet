unit UnitBaseMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, 

  sSpeedButton, sFrameAdapter;

type
  TFrameBaseMenu = class(TFrame)
    sFrameAdapter1: TsFrameAdapter;
  public
    FrameCreated: boolean;
    CurrentBtn: TsSpeedButton;
    procedure AfterCreation;     virtual; // Called after creation of the frame
    procedure AfterShowing;      virtual; // Called after showing of the frame
    procedure AfterSkinChanging; virtual; // Called after changing of skin in app
    procedure BeforeDestroy;     virtual; // Called before destroying of the frame
  end;

implementation

{$R *.dfm}

uses UnitDataModule;

procedure TFrameBaseMenu.AfterCreation;
begin
  CurrentBtn := nil;
  FrameCreated := True;
end;


procedure TFrameBaseMenu.AfterShowing;
begin
end;

procedure TFrameBaseMenu.AfterSkinChanging;
begin
end;

procedure TFrameBaseMenu.BeforeDestroy;
begin
  if FormData.CurrentWorkBtn = CurrentBtn then
    FormData.CurrentWorkBtn := nil;
end;

end.
