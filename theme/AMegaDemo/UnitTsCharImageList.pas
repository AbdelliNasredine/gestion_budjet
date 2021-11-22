unit UnitTsCharImageList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sCheckBox, sBitBtn, sTrackBar, sGroupBox,
  sSpeedButton, sLabel, acAlphaImageList, sEdit, acPopupCtrls, sComboBoxes,
  ComCtrls;


type
  TFrameTsCharImageList = class(TFrameBaseMenu)
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sBitBtn1: TsBitBtn;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sSpeedButton3: TsSpeedButton;
    sColorBox2: TsColorBox;
    sCharImageList1: TsCharImageList;
    sTrackBar1: TsTrackBar;
    sStickyLabel8: TsStickyLabel;
    sTrackBar2: TsTrackBar;
    sStickyLabel1: TsStickyLabel;
    sStickyLabel2: TsStickyLabel;
    sTrackBar3: TsTrackBar;
    sCheckBox2: TsCheckBox;
    sBitBtn2: TsBitBtn;
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
    procedure sBitBtn2Click(Sender: TObject);
  public
  end;

var
  FrameTsCharImageList: TFrameTsCharImageList;

implementation

{$R *.dfm}

uses acCharListEditor, UnitDataModule, acntUtils;

var
  PrevValue1: integer = 64;
  PrevValue: integer = 64;


procedure TFrameTsCharImageList.sBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCharListEditor, FormCharListEditor);
  FormCharListEditor.InitFromImgList(sCharImageList1);
  FormCharListEditor.ShowModal;
  FreeAndNil(FormCharListEditor);
end;


procedure TFrameTsCharImageList.sBitBtn2Click(Sender: TObject);
var
  r: real;
begin
  sBitBtn2.Enabled := False; // Don't allow click again
  r := 0;
  while (360 - r) > 2 do begin
    r := r + (360 - r) / 10;
    sCharImageList1.Items[sSpeedButton2.ImageIndex].Angle := Round(r);
    Sleep(10);
  end;
  sBitBtn2.Enabled := True;
end;


procedure TFrameTsCharImageList.sCheckBox1Click(Sender: TObject);
begin
  sSpeedButton1.Reflected := sCheckBox1.Checked;
  sSpeedButton2.Reflected := sCheckBox1.Checked;
end;


procedure TFrameTsCharImageList.sCheckBox2Click(Sender: TObject);
begin
  sCharImageList1.Items[0].DrawContour := sCheckBox2.Checked;
  sCharImageList1.Items[1].DrawContour := sCheckBox2.Checked;
end;


procedure TFrameTsCharImageList.sCheckBox3Click(Sender: TObject);
begin
  sSpeedButton1.Grayed := sCheckBox3.Checked;
  sSpeedButton2.Grayed := sCheckBox3.Checked;
end;


procedure TFrameTsCharImageList.sColorBox2Change(Sender: TObject);
begin
  sSpeedButton1.GlyphColorTone := sColorBox2.Selected;
  sSpeedButton2.GlyphColorTone := sColorBox2.Selected;
  sCheckBox3.Enabled := False;
  sSpeedButton3.Enabled := True;
end;


procedure TFrameTsCharImageList.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpeedButton1.GlyphColorTone := NewColor;
  sSpeedButton2.GlyphColorTone := NewColor;

  sSpeedButton3.Enabled := (OriginColor <> NewColor) {not cancelled};
  sCheckBox3.Enabled := not sSpeedButton3.Enabled;
end;


procedure TFrameTsCharImageList.sSpeedButton3Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  sSpeedButton1.GlyphColorTone := clNone;
  sSpeedButton2.GlyphColorTone := clNone;
  sCheckBox3.Enabled := True;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsCharImageList.sTrackBar1Change(Sender: TObject);
begin
  if FrameCreated then begin
    sCharImageList1.AcBeginUpdate;
    sCharImageList1.Height := sTrackBar1.Position;
    sCharImageList1.Width := sTrackBar1.Position;
    sCharImageList1.AcEndUpdate;
  end;
end;


procedure TFrameTsCharImageList.sTrackBar2Change(Sender: TObject);
begin
  if FrameCreated then begin
    sCharImageList1.Items[0].Angle := sTrackBar2.Position;
    sCharImageList1.Items[1].Angle := sTrackBar2.Position;
  end;
end;


procedure TFrameTsCharImageList.sTrackBar3Change(Sender: TObject);
begin
  if FrameCreated then
    sCharImageList1.BlendValue := sTrackBar3.Position;
end;

end.
