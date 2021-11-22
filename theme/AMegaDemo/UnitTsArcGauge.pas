unit UnitTsArcGauge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  acntTypes, acPopupCtrls, sEdit, sComboBoxes, sPageControl,
  sGroupBox, sComboBox, sCheckBox, acArcControls, sFrameAdapter,
  acAlphaImageList, ExtCtrls;


type
  TFrameTsArcGauge = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sVirtualImageList1: TsVirtualImageList;
    sGroupBox2: TsGroupBox;
    sCheckBox8: TsCheckBox;
    sCheckBox1: TsCheckBox;
    sColorBox1: TsColorBox;
    sColorBox2: TsColorBox;
    sArcGauge1: TsArcGauge;
    sGroupBox3: TsGroupBox;
    sCheckBox9: TsCheckBox;
    sEdit1: TsEdit;
    Timer1: TTimer;
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  public
  end;

var
  FrameTsArcGauge: TFrameTsArcGauge;

implementation

{$R *.dfm}

uses acntUtils, math, UnitDataModule;


procedure TFrameTsArcGauge.sCheckBox1Click(Sender: TObject);
begin
  sArcGauge1.GlyphGrayed := sCheckBox1.Checked;
end;


procedure TFrameTsArcGauge.sCheckBox8Click(Sender: TObject);
begin
  sArcGauge1.GlyphReflected := sCheckBox8.Checked;
end;


procedure TFrameTsArcGauge.sCheckBox9Click(Sender: TObject);
begin
  sArcGauge1.ShowTextValue := sCheckBox9.Checked;
  sEdit1.Enabled := not sCheckBox9.Checked;
end;


procedure TFrameTsArcGauge.sColorBox1Change(Sender: TObject);
begin
  sArcGauge1.BaseColor := sColorBox1.Selected;
end;


procedure TFrameTsArcGauge.sColorBox2Change(Sender: TObject);
begin
  sArcGauge1.ProgressColor := sColorBox2.Selected;
end;


procedure TFrameTsArcGauge.sEdit1Change(Sender: TObject);
begin
  sArcGauge1.Text := sEdit1.Text;
end;


procedure TFrameTsArcGauge.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sArcGauge1.SkinData.CustomColor := sGroupBox1.Checked;
  sArcGauge1.SkinData.CustomFont := sGroupBox1.Checked;
  sGroupBox1.SetFocus;
end;


procedure TFrameTsArcGauge.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sArcGauge1.GlyphIndex := iff(sGroupBox2.Checked, 0, -1);
end;


procedure TFrameTsArcGauge.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sArcGauge1.ShowText := sGroupBox3.Checked;
  sEdit1.Enabled := sCheckBox9.Enabled and not sCheckBox9.Checked;
end;


procedure TFrameTsArcGauge.sTrackEdit2Change(Sender: TObject);
begin
  sArcGauge1.LineWidth := sTrackEdit2.AsInteger;
end;


procedure TFrameTsArcGauge.sTrackEdit3Change(Sender: TObject);
begin
  sArcGauge1.Progress := sTrackEdit3.AsInteger;
end;


procedure TFrameTsArcGauge.sTrackEdit5Change(Sender: TObject);
begin
  sArcGauge1.BaseBlend := sTrackEdit5.AsInteger;
end;


procedure TFrameTsArcGauge.Timer1Timer(Sender: TObject);
const
  iTarget = 47;
begin
  if sArcGauge1.Progress >= iTarget then begin
    Timer1.Enabled := False;
    sTrackEdit3.Value := sArcGauge1.Progress;
  end
  else
    sArcGauge1.Progress := sArcGauge1.Progress + max(1, (iTarget - sArcGauge1.Progress) div 4);
end;

end.
