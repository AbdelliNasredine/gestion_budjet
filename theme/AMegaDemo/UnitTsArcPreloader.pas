unit UnitTsArcPreloader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  acntTypes, acPopupCtrls, sEdit, sComboBoxes, sPageControl,
  sGroupBox, sComboBox, sCheckBox, acArcControls, sFrameAdapter,
  acAlphaImageList, sPanel, acSlider, sRadioButton, 
  sMaskEdit, sCustomComboEdit, sToolEdit, ExtCtrls, Mask;


type
  TFrameTsArcPreloader = class(TFrameBaseMenu)
    sVirtualImageList1: TsVirtualImageList;
    sArcPreloader1: TsArcPreloader;
    Timer1: TTimer;
    sComboBox1: TsComboBox;
    sTrackEdit3: TsTrackEdit;
    sSlider1: TsSlider;
    sGroupBox3: TsGroupBox;
    sTrackEdit2: TsTrackEdit;
    sGroupBox2: TsGroupBox;
    sCheckBox8: TsCheckBox;
    sCheckBox1: TsCheckBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit1: TsTrackEdit;
    sCheckBox3: TsCheckBox;
    sGroupBox4: TsGroupBox;
    sCheckBox5: TsCheckBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sGroupBox1: TsGroupBox;
    sColorBox1: TsColorBox;
    sColorBox2: TsColorBox;
    sFilenameEdit1: TsFilenameEdit;
    sCheckBox2: TsCheckBox;
    procedure sCheckBox8Click(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sSlider1SliderChange(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sFilenameEdit1Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
  public
  end;

var
  FrameTsArcPreloader: TFrameTsArcPreloader;

implementation

{$R *.dfm}

uses acntUtils, sGraphUtils, UnitDataModule;


procedure TFrameTsArcPreloader.sCheckBox1Click(Sender: TObject);
begin
  sArcPreloader1.GlyphGrayed := sCheckBox1.Checked;
end;


procedure TFrameTsArcPreloader.sCheckBox2Click(Sender: TObject);
var
  i: integer;
begin
  sArcPreloader1.SkinData.BeginUpdate;
  if sCheckBox2.Checked then begin
    i := MaxInt; // Circular, radius is calculated automatically
    sCheckBox5.Checked := sFilenameEdit1.Enabled; // Make stretched
  end
  else
    i := 0;

  sArcPreloader1.SkinData.CustomBorder.RadiusTopLeft := i;
  sArcPreloader1.SkinData.CustomBorder.RadiusTopRight := i;
  sArcPreloader1.SkinData.CustomBorder.RadiusBottomLeft := i;
  sArcPreloader1.SkinData.CustomBorder.RadiusBottomRight := i;
  sArcPreloader1.SkinData.EndUpdate(True);
end;


procedure TFrameTsArcPreloader.sCheckBox3Click(Sender: TObject);
begin
  sArcPreloader1.ShowText := sCheckBox3.Checked;
end;


procedure TFrameTsArcPreloader.sCheckBox5Click(Sender: TObject);
begin
  sArcPreloader1.Stretched := sCheckBox5.Checked;
end;


procedure TFrameTsArcPreloader.sCheckBox8Click(Sender: TObject);
begin
  sArcPreloader1.GlyphReflected := sCheckBox8.Checked;
end;


procedure TFrameTsArcPreloader.sColorBox1Change(Sender: TObject);
begin
  sArcPreloader1.BaseColor := sColorBox1.Selected;
end;


procedure TFrameTsArcPreloader.sColorBox2Change(Sender: TObject);
begin
  sArcPreloader1.LineColor := sColorBox2.Selected;
end;


procedure TFrameTsArcPreloader.sComboBox1Change(Sender: TObject);
begin
  sArcPreloader1.MotionType := TacMotionType(sComboBox1.ItemIndex);
  sTrackEdit3.Enabled := boolean(sComboBox1.ItemIndex);
end;


procedure TFrameTsArcPreloader.sFilenameEdit1Change(Sender: TObject);
begin
  if FileExists(sFilenameEdit1.FileName) then
    LoadBmpFromPngFile(sArcPreloader1.CustomImage, sFilenameEdit1.FileName);
end;


procedure TFrameTsArcPreloader.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sArcPreloader1.SkinData.CustomColor := sGroupBox1.Checked;
  sArcPreloader1.SkinData.CustomFont := sGroupBox1.Checked;
  sColorBox1.Enabled := sArcPreloader1.ImageType = itLine;
end;


procedure TFrameTsArcPreloader.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sArcPreloader1.GlyphIndex := iff(sGroupBox2.Checked, 0, -1);
end;


procedure TFrameTsArcPreloader.sGroupBox3CheckBoxChanged(Sender: TObject);
var
  i: integer;
begin
  if sGroupBox3.Checked then begin
    sArcPreloader1.ImageType := itLine;
    sGroupBox1.Enabled := True;
    sGroupBox1.Checked := sArcPreloader1.SkinData.CustomColor;
    sColorBox1.Enabled := sGroupBox1.Checked;
    sColorBox2.Enabled := sGroupBox1.Checked;
    sCheckBox5.Enabled := False;
    sFilenameEdit1.Enabled := False;
    for i := 0 to sGroupBox4.ControlCount - 1 do
      if sGroupBox4.Controls[i] is TsRadioButton then
        TsRadioButton(sGroupBox4.Controls[i]).Checked := False;
  end
  else
    if sRadioButton1.Checked <> True then begin
      sRadioButton1.Checked := True;
      sRadioButton1.OnClick(sRadioButton1);
    end;
end;


procedure TFrameTsArcPreloader.sRadioButton1Click(Sender: TObject);
begin
  sArcPreloader1.ImageType := TacImageType(TsRadioButton(Sender).Tag);
  sGroupBox1.Enabled := sArcPreloader1.ImageType in [itMask1, itMask2, itCustomMask];
  sFilenameEdit1.Enabled := sArcPreloader1.ImageType in [itCustomMask, itCustomImage];
  sCheckBox5.Checked := sFilenameEdit1.Enabled; // Make stretched
  sGroupBox3.Checked := False;
  sCheckBox5.Enabled := True;
  sColorBox1.Enabled := False;
end;


procedure TFrameTsArcPreloader.sSlider1SliderChange(Sender: TObject);
begin
  Timer1.Enabled := sSlider1.SliderOn;
  sArcPreloader1.Animated := sSlider1.SliderOn;
end;


procedure TFrameTsArcPreloader.sTrackEdit1Change(Sender: TObject);
begin
  sArcPreloader1.LineAngle := sTrackEdit1.AsInteger;
end;


procedure TFrameTsArcPreloader.sTrackEdit2Change(Sender: TObject);
begin
  sArcPreloader1.LineWidth := sTrackEdit2.AsInteger;
end;


procedure TFrameTsArcPreloader.sTrackEdit3Change(Sender: TObject);
begin
  sArcPreloader1.BaseAngle := sTrackEdit3.AsInteger;
end;


procedure TFrameTsArcPreloader.sTrackEdit5Change(Sender: TObject);
begin
  sArcPreloader1.BaseBlend := sTrackEdit5.AsInteger;
end;


procedure TFrameTsArcPreloader.Timer1Timer(Sender: TObject);
begin
  Timer1.Tag := Timer1.Tag + 1;
  sArcPreloader1.Text := IntToStr(Timer1.Tag);
end;

end.
