unit UnitFrameImageLists;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls, StdCtrls, Buttons, ImgList, Menus,

  sCheckBox, sBitBtn, sTrackBar, sGroupBox, acAlphaImageList, sSpeedButton, sLabel, sFrameAdapter, sRadioButton, sPanel, acSlider,

  UnitFrameCustom;


type
  TFrame_ImageLists = class(TCustomInfoFrame)
    sStickyLabel1: TsStickyLabel;
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
    sVirtualImageList5: TsVirtualImageList;
    sCheckBox4: TsCheckBox;
    sRadioGroup1: TsRadioGroup;
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
  end;


implementation

{$R *.dfm}

uses sImgListEditor, sVCLUtils, acntUtils, acCharListEditor, MainUnit;

var
  PrevValue1: integer = 64;
  PrevValue: integer = 64;


procedure TFrame_ImageLists.sTrackBar1Change(Sender: TObject);
var
  Delta: integer;
begin
  sVirtualImageList5.AcBeginUpdate;
  Delta := PrevValue - sTrackBar1.Position;
  sTrackBar2.Position := sTrackBar2.Position - Delta;
  sTrackBar3.Position := sTrackBar3.Position - Delta;
  PrevValue := sTrackBar1.Position;
  sVirtualImageList5.AcEndUpdate;
end;


procedure TFrame_ImageLists.sTrackBar2Change(Sender: TObject);
begin
  sVirtualImageList5.Width := sTrackBar2.Position;
end;


procedure TFrame_ImageLists.sTrackBar3Change(Sender: TObject);
begin
  sVirtualImageList5.Height := sTrackBar3.Position;
end;


procedure TFrame_ImageLists.C1Click(Sender: TObject);
begin
  if sRadioGroup1.ItemIndex = 0 then begin
    Application.CreateForm(TFormImgListEditor, FormImgListEditor);
    FormImgListEditor.InitFromImgList(MainForm.ImageList32);
    FormImgListEditor.ShowModal;
    FreeAndNil(FormImgListEditor);
  end
  else begin
    Application.CreateForm(TFormCharListEditor, FormCharListEditor);
    FormCharListEditor.InitFromImgList(MainForm.CharImageList16);
    FormCharListEditor.ShowModal;
    FreeAndNil(FormCharListEditor);
  end;
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


procedure TFrame_ImageLists.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then begin
    sSpeedButton2.GlyphColorTone := $004D9B17;
    sSpeedButton3.GlyphColorTone := $001B7796;
    sSpeedButton4.GlyphColorTone := $001F1CA4;
    sSpeedButton5.GlyphColorTone := $00D57526;
  end
  else begin
    sSpeedButton2.GlyphColorTone := clNone;
    sSpeedButton3.GlyphColorTone := clNone;
    sSpeedButton4.GlyphColorTone := clNone;
    sSpeedButton5.GlyphColorTone := clNone;
  end;
end;


procedure TFrame_ImageLists.sRadioGroup1Change(Sender: TObject);
var
  i: integer;
begin
  if sRadioGroup1.ItemIndex = 1 then begin
    sCheckBox3.Enabled := False;
    sBitBtn1.Caption := 'Call sCharImageList1 editor';
  end
  else begin
    sCheckBox3.Enabled := True;
    sBitBtn1.Caption := 'Call ImageList32 editor';
  end;

  for i := 0 to ComponentCount - 1 do
    if Components[i] is TsVirtualImageList then
      if sRadioGroup1.ItemIndex = 1 then
        TsVirtualImageList(Components[i]).AlphaImageList := MainForm.CharImageList16
      else
        TsVirtualImageList(Components[i]).AlphaImageList := MainForm.ImageList32;

  sTrackBar2.Enabled := sRadioGroup1.ItemIndex = 0;
  sTrackBar3.Enabled := sRadioGroup1.ItemIndex = 0;
end;

end.
