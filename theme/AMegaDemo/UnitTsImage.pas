unit UnitTsImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, ExtCtrls, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, ComCtrls,

  UnitBaseMenu,

  sEdit, acPopupCtrls, acAlphaImageList, acImage, sFrameAdapter, sCheckBox,
  sComboBox, sMaskEdit, sCustomComboEdit;

type
  TFrameTsImage = class(TFrameBaseMenu)
    sImage1: TsImage;
    PngContainer: TsAlphaImageList;
    sTrackEdit1: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sComboBox4: TsComboBox;
    sCheckBox5: TsCheckBox;
    sCharImageList1: TsCharImageList;
    sCheckBox6: TsCheckBox;
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
  public
  end;

var
  FrameTsImage: TFrameTsImage;

implementation

{$R *.dfm}

procedure TFrameTsImage.sCheckBox1Click(Sender: TObject);
begin
  sImage1.Center := sCheckBox1.Checked;
  sCheckBox5.Enabled := sImage1.Center and sImage1.Reflected and not sImage1.Stretch;
end;


procedure TFrameTsImage.sCheckBox2Click(Sender: TObject);
begin
  sImage1.Grayed := sCheckBox2.Checked;
end;


procedure TFrameTsImage.sCheckBox3Click(Sender: TObject);
begin
  sImage1.Reflected := sCheckBox3.Checked;
  sCheckBox5.Enabled := sImage1.Center and sImage1.Reflected and not sImage1.Stretch;
end;


procedure TFrameTsImage.sCheckBox4Click(Sender: TObject);
begin
  sImage1.Stretch := sCheckBox4.Checked;
  sCheckBox5.Enabled := sImage1.Center and sImage1.Reflected and not sImage1.Stretch;
end;


procedure TFrameTsImage.sCheckBox5Click(Sender: TObject);
begin
  sImage1.UseFullSize := sCheckBox5.Checked;
end;


procedure TFrameTsImage.sCheckBox6Click(Sender: TObject);
var
  iRadius: integer;
begin
  if sCheckBox6.Checked then begin
    iRadius := sImage1.Width + 100; // Any big value will define a circle (auto calculated)
    sCheckBox4.Checked := True; // Make stretched
    sCheckBox3.Checked := False; // Hide reflection
  end
  else
    iRadius := 0;

  sImage1.SkinData.BeginUpdate;
  sImage1.SkinData.CustomBorder.RadiusTopLeft := iRadius;
  sImage1.SkinData.CustomBorder.RadiusTopRight := iRadius;
  sImage1.SkinData.CustomBorder.RadiusBottomLeft := iRadius;
  sImage1.SkinData.CustomBorder.RadiusBottomRight := iRadius;
  sImage1.SkinData.EndUpdate(True);
end;

procedure TFrameTsImage.sComboBox4Change(Sender: TObject);
begin
  sImage1.SkinData.SkinSection := sComboBox4.Text;
end;


procedure TFrameTsImage.sTrackEdit1Change(Sender: TObject);
begin
  sImage1.Blend := sTrackEdit1.AsInteger;
end;

end.
