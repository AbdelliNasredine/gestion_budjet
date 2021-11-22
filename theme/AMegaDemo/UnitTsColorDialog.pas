unit UnitTsColorDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ExtCtrls,

  sFrameAdapter, sBitBtn, sDialogs, sPanel, sLabel, sCheckBox, sGroupBox;


type
  TFrameTsColorDialog = class(TFrameBaseMenu)
    sColorDialog1: TsColorDialog;
    sBitBtn1: TsBitBtn;
    sColorsPanel1: TsColorsPanel;
    sColorsPanel2: TsColorsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sPanel1: TsPanel;
    sLabel3: TsLabel;
    sCheckBox1: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sPanel1Paint(Sender: TObject; Canvas: TCanvas);
    procedure sColorDialog1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sColorsPanel1Change(Sender: TObject);
    procedure sColorsPanel2Change(Sender: TObject);
  public
  end;

var
  FrameTsColorDialog: TFrameTsColorDialog;

implementation

{$R *.dfm}

uses sConst, sAlphaGraph, acntUtils, sGraphUtils, UnitDataModule;


procedure TFrameTsColorDialog.sBitBtn1Click(Sender: TObject);
begin
  sColorDialog1.Color := sPanel1.Color;
  sColorDialog1.MainColors.Assign(sColorsPanel1.Colors);
  if sColorDialog1.Execute then begin
    sPanel1.Color := sColorDialog1.Color;
    sColorsPanel2.Colors.Assign(sColorDialog1.CustomColors);
    sColorsPanel2.GenerateColors;
    sColorsPanel2.Repaint;
  end;
end;


procedure TFrameTsColorDialog.sCheckBox1Click(Sender: TObject);
begin
  sColorDialog1.UseAlpha := sCheckBox1.Checked;
  sColorsPanel1.UseAlpha := sCheckBox1.Checked;
  sColorsPanel2.UseAlpha := sCheckBox1.Checked;
  sCheckBox7.Enabled := not sCheckBox1.Checked;
  sPanel1.SkinData.Invalidate;
end;


procedure TFrameTsColorDialog.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sColorDialog1.Options := sColorDialog1.Options + [cdFullOpen]
  else
    sColorDialog1.Options := sColorDialog1.Options - [cdFullOpen];
end;


procedure TFrameTsColorDialog.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sColorDialog1.Options := sColorDialog1.Options + [cdPreventFullOpen]
  else
    sColorDialog1.Options := sColorDialog1.Options - [cdPreventFullOpen];
end;


procedure TFrameTsColorDialog.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sColorDialog1.Options := sColorDialog1.Options + [cdShowHelp]
  else
    sColorDialog1.Options := sColorDialog1.Options - [cdShowHelp];
end;


procedure TFrameTsColorDialog.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then
    sColorDialog1.Options := sColorDialog1.Options + [cdSolidColor]
  else
    sColorDialog1.Options := sColorDialog1.Options - [cdSolidColor];
end;


procedure TFrameTsColorDialog.sCheckBox6Click(Sender: TObject);
begin
  if sCheckBox6.Checked then
    sColorDialog1.Options := sColorDialog1.Options + [cdAnyColor]
  else
    sColorDialog1.Options := sColorDialog1.Options - [cdAnyColor];
end;


procedure TFrameTsColorDialog.sCheckBox7Click(Sender: TObject);
begin
  sColorDialog1.StandardDlg := sCheckBox7.Checked;
  sCheckBox1.Enabled := not sCheckBox7.Checked;
end;


procedure TFrameTsColorDialog.sColorDialog1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  if sCheckBox8.Checked then begin
    sPanel1.Color := NewColor;
    sPanel1.SkinData.Invalidate;
  end;
end;


procedure TFrameTsColorDialog.sColorsPanel1Change(Sender: TObject);
begin
  sPanel1.Color := sColorsPanel1.ColorValue;
end;


procedure TFrameTsColorDialog.sColorsPanel2Change(Sender: TObject);
begin
  sPanel1.Color := sColorsPanel2.ColorValue;
end;


procedure TFrameTsColorDialog.sPanel1Paint(Sender: TObject; Canvas: TCanvas);
var
  Bmp: TBitmap;
begin
  if sColorDialog1.UseAlpha then begin
    Bmp := CreateBmp32(sPanel1);
    PaintTransBG(Bmp, MkRect(Bmp), clWhite, clSilver, sPanel1.SkinData.CommonSkinData.ArrowSize * 2);
{$WARNINGS OFF}
    BlendColorRect(Bmp, MkRect(Bmp), MaxByte - TsColor(sPanel1.Color).A, Cardinal(sPanel1.Color) and clWhite);
    BitBlt(Canvas.Handle, 0, 0, Bmp.Width, Bmp.Height, Bmp.Canvas.Handle, 0, 0, SRCCOPY);
    Bmp.Free;
  end
  else
    FillDC(Canvas.Handle, MkRect(sPanel1), TColor(sPanel1.Color and $FFFFFF));
end;

end.
