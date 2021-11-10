unit UnitFrameImageLists;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls, StdCtrls, Buttons, ImgList, Menus,

  sCheckBox, sBitBtn, sTrackBar, sGroupBox, acAlphaImageList, sSpeedButton, sLabel, sFrameAdapter,

  UnitFrameCustom;


type
  TFrame_ImageLists = class(TCustomInfoFrame)
    sStickyLabel1: TsStickyLabel;
    sAlphaImageList1: TsAlphaImageList;
    sVirtualImageList1: TsVirtualImageList;
    sVirtualImageList2: TsVirtualImageList;
    sVirtualImageList3: TsVirtualImageList;
    sVirtualImageList4: TsVirtualImageList;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sStickyLabel2: TsStickyLabel;
    sStickyLabel3: TsStickyLabel;
    sStickyLabel4: TsStickyLabel;
    sStickyLabel5: TsStickyLabel;
    sGroupBox1: TsGroupBox;
    sTrackBar1: TsTrackBar;
    sTrackBar2: TsTrackBar;
    sTrackBar3: TsTrackBar;
    sStickyLabel8: TsStickyLabel;
    sStickyLabel6: TsStickyLabel;
    sStickyLabel7: TsStickyLabel;
    sBitBtn1: TsBitBtn;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    PopupMenu1: TPopupMenu;
    C1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem3: TMenuItem;
    PopupMenu5: TPopupMenu;
    MenuItem4: TMenuItem;
    sLabel1: TsLabel;
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
  end;


implementation

{$R *.dfm}

uses sImgListEditor, sVCLUtils, acntUtils;

var
  PrevValue1: integer = 64;
  PrevValue: integer = 64;


procedure TFrame_ImageLists.sTrackBar1Change(Sender: TObject);
var
  Delta: integer;
begin
  sAlphaImageList1.AcBeginUpdate;
  Delta := PrevValue - sTrackBar1.Position;
  sTrackBar2.Position := sTrackBar2.Position - Delta;
  sTrackBar3.Position := sTrackBar3.Position - Delta;
  PrevValue := sTrackBar1.Position;
  sAlphaImageList1.AcEndUpdate;
end;


procedure TFrame_ImageLists.sTrackBar2Change(Sender: TObject);
begin
  sAlphaImageList1.Width := sTrackBar2.Position;
end;


procedure TFrame_ImageLists.sTrackBar3Change(Sender: TObject);
begin
  sAlphaImageList1.Height := sTrackBar3.Position;
end;


procedure TFrame_ImageLists.C1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImgListEditor, FormImgListEditor);
  FormImgListEditor.InitFromImgList(sAlphaImageList1);
  FormImgListEditor.ShowModal;
  FreeAndNil(FormImgListEditor);
end;


procedure ChangeReflected(Ctrl: TControl; Data: integer);
begin
  if HasProperty(Ctrl, 'Reflected') then SetIntProp(Ctrl, 'Reflected', Data);
end;


procedure TFrame_ImageLists.sCheckBox1Click(Sender: TObject);
begin
  IterateControls(Self, integer(sCheckBox1.Checked), ChangeReflected);
end;


procedure ChangeBlend(Ctrl: TControl; Data: integer); // TacIterProc
begin
  if HasProperty(Ctrl, 'Blend') then SetIntProp(Ctrl, 'Blend', Data);
end;


procedure TFrame_ImageLists.sCheckBox2Click(Sender: TObject);
begin
  IterateControls(Self, integer(sCheckBox2.Checked) * 50, ChangeBlend);
end;


procedure ChangeGrayed(Ctrl: TControl; Data: integer); // TacIterProc
begin
  if HasProperty(Ctrl, 'Grayed') then SetIntProp(Ctrl, 'Grayed', Data);
end;


procedure TFrame_ImageLists.sCheckBox3Click(Sender: TObject);
begin
  IterateControls(Self, integer(sCheckBox3.Checked), ChangeGrayed);
end;

end.
