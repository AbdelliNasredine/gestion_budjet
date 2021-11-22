unit UnitTsAlphaImageList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sCheckBox, sBitBtn, sTrackBar, sGroupBox,
  sSpeedButton, sLabel, acAlphaImageList, sEdit, acPopupCtrls, sComboBoxes,
  ComCtrls;


type
  TFrameTsAlphaImageList = class(TFrameBaseMenu)
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
    sBitBtn1: TsBitBtn;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sTrackEdit1: TsTrackEdit;
    sSpeedButton3: TsSpeedButton;
    sColorBox2: TsColorBox;
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
  end;

var
  FrameTsAlphaImageList: TFrameTsAlphaImageList;

implementation

{$R *.dfm}

uses sImgListEditor, UnitDataModule;

var
  PrevValue1: integer = 64;
  PrevValue: integer = 64;


procedure TFrameTsAlphaImageList.sBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImgListEditor, FormImgListEditor);
  FormImgListEditor.InitFromImgList(sAlphaImageList1);
  FormImgListEditor.ShowModal;
  FreeAndNil(FormImgListEditor);
end;


procedure TFrameTsAlphaImageList.sCheckBox1Click(Sender: TObject);
begin
  sSpeedButton1.Reflected := sCheckBox1.Checked;
  sSpeedButton2.Reflected := sCheckBox1.Checked;
end;


procedure TFrameTsAlphaImageList.sCheckBox3Click(Sender: TObject);
begin
  sSpeedButton1.Grayed := sCheckBox3.Checked;
  sSpeedButton2.Grayed := sCheckBox3.Checked;
end;


procedure TFrameTsAlphaImageList.sColorBox2Change(Sender: TObject);
begin
  sSpeedButton1.GlyphColorTone := sColorBox2.Selected;
  sSpeedButton2.GlyphColorTone := sColorBox2.Selected;
  sSpeedButton3.Enabled := True;
end;


procedure TFrameTsAlphaImageList.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSpeedButton1.GlyphColorTone := NewColor;
  sSpeedButton2.GlyphColorTone := NewColor;
  sSpeedButton3.Enabled := (OriginColor <> NewColor) {not cancelled};;
end;


procedure TFrameTsAlphaImageList.sSpeedButton3Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  sSpeedButton1.GlyphColorTone := clNone;
  sSpeedButton2.GlyphColorTone := clNone;
  sSpeedButton3.Enabled := False;
end;


procedure TFrameTsAlphaImageList.sTrackBar1Change(Sender: TObject);
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


procedure TFrameTsAlphaImageList.sTrackBar2Change(Sender: TObject);
begin
  sAlphaImageList1.Width := sTrackBar2.Position;
end;


procedure TFrameTsAlphaImageList.sTrackBar3Change(Sender: TObject);
begin
  sAlphaImageList1.Height := sTrackBar3.Position;
end;


procedure TFrameTsAlphaImageList.sTrackEdit1Change(Sender: TObject);
begin
  sSpeedButton1.Blend := sTrackEdit1.AsInteger;
  sSpeedButton2.Blend := sTrackEdit1.AsInteger;
end;

end.
