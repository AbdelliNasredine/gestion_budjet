unit UnitTsVirtualImageList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sCheckBox, sBitBtn, sTrackBar, sGroupBox,
  sSpeedButton, sLabel, acAlphaImageList, sEdit, acPopupCtrls, sComboBoxes,
  sComboBox, ComCtrls;


type
  TFrameTsVirtualImageList = class(TFrameBaseMenu)
    sAlphaImageList1: TsAlphaImageList;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sGroupBox1: TsGroupBox;
    sStickyLabel8: TsStickyLabel;
    sStickyLabel6: TsStickyLabel;
    sStickyLabel7: TsStickyLabel;
    sTrackBar1: TsTrackBar;
    sTrackBar2: TsTrackBar;
    sTrackBar3: TsTrackBar;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sTrackEdit1: TsTrackEdit;
    sSpeedButton3: TsSpeedButton;
    sColorBox2: TsColorBox;
    sVirtualImageList1: TsVirtualImageList;
    sComboBox1: TsComboBox;
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
  end;

var
  FrameTsVirtualImageList: TFrameTsVirtualImageList;

implementation

{$R *.dfm}

uses sImgListEditor, UnitDataModule;

var
  PrevValue1: integer = 48;
  PrevValue: integer = 48;


procedure TFrameTsVirtualImageList.sCheckBox1Click(Sender: TObject);
begin
  sSpeedButton1.Reflected := sCheckBox1.Checked;
  sSpeedButton2.Reflected := sCheckBox1.Checked;
end;


procedure TFrameTsVirtualImageList.sCheckBox3Click(Sender: TObject);
begin
  sSpeedButton1.Grayed := sCheckBox3.Checked;
  sSpeedButton2.Grayed := sCheckBox3.Checked;
end;


procedure TFrameTsVirtualImageList.sColorBox2Change(Sender: TObject);
begin
  sSpeedButton1.GlyphColorTone := sColorBox2.Selected;
  sSpeedButton2.GlyphColorTone := sColorBox2.Selected;
  sSpeedButton3.Enabled := True;
end;


procedure TFrameTsVirtualImageList.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpeedButton1.GlyphColorTone := NewColor;
  sSpeedButton2.GlyphColorTone := NewColor;
  sSpeedButton3.Enabled := (OriginColor <> NewColor) {not cancelled};;
end;


procedure TFrameTsVirtualImageList.sComboBox1Change(Sender: TObject);
begin
  case sComboBox1.ItemIndex of
    0: sVirtualImageList1.AlphaImageList := sAlphaImageList1;
    1: sVirtualImageList1.AlphaImageList := FormData.CharList16;
    2: sVirtualImageList1.AlphaImageList := FormData.sCharImageList1;
  end;
end;


procedure TFrameTsVirtualImageList.sSpeedButton3Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  sSpeedButton1.GlyphColorTone := clNone;
  sSpeedButton2.GlyphColorTone := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsVirtualImageList.sTrackBar1Change(Sender: TObject);
var
  Delta: integer;
begin
  sVirtualImageList1.AcBeginUpdate;
  Delta := PrevValue - sTrackBar1.Position;
  sTrackBar2.Position := sTrackBar2.Position - Delta;
  sTrackBar3.Position := sTrackBar3.Position - Delta;
  PrevValue := sTrackBar1.Position;
  sVirtualImageList1.AcEndUpdate;
end;


procedure TFrameTsVirtualImageList.sTrackBar2Change(Sender: TObject);
begin
  sVirtualImageList1.AcBeginUpdate;
  sVirtualImageList1.Width := sTrackBar2.Position;
  sVirtualImageList1.AcEndUpdate;
end;


procedure TFrameTsVirtualImageList.sTrackBar3Change(Sender: TObject);
begin
  sVirtualImageList1.AcBeginUpdate;
  sVirtualImageList1.Height := sTrackBar3.Position;
  sVirtualImageList1.AcEndUpdate;
end;


procedure TFrameTsVirtualImageList.sTrackEdit1Change(Sender: TObject);
begin
  sSpeedButton1.Blend := sTrackEdit1.AsInteger;
  sSpeedButton2.Blend := sTrackEdit1.AsInteger;
end;

end.
