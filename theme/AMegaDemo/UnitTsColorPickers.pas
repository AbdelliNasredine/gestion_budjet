unit UnitTsColorPickers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sGroupBox, sCheckBox, sComboBoxes, sEdit,
  acPopupCtrls, sPanel, sSpeedButton, sColorSelect, ExtCtrls,
  ComCtrls;


type
  TFrameTsColorPickers = class(TFrameBaseMenu)
    sGroupBox10: TsGroupBox;
    sColorBox1: TsColorBox;
    sCheckBox6: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sCheckBox1: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sCheckBox10: TsCheckBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sCheckBox13: TsCheckBox;
    sCheckBox14: TsCheckBox;
    sCheckBox15: TsCheckBox;
    sCheckBox16: TsCheckBox;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sRadioGroup1: TsRadioGroup;
    sGroupBox2: TsGroupBox;
    sColorSelect1: TsColorSelect;
    TsColorsPanel: TsGroupBox;
    sColorsPanel1: TsColorsPanel;
    sCheckBox2: TsCheckBox;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sCheckBox3: TsCheckBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sTrackEdit7: TsTrackEdit;
    sTrackEdit8: TsTrackEdit;
    sTrackEdit9: TsTrackEdit;
    procedure sCheckBox15Click(Sender: TObject);
    procedure sCheckBox16Click(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sTrackEdit8Change(Sender: TObject);
    procedure sTrackEdit9Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
  public
  end;

var
  FrameTsColorPickers: TFrameTsColorPickers;

implementation

{$R *.dfm}

uses sConst;

procedure TFrameTsColorPickers.sCheckBox15Click(Sender: TObject);
begin
  sColorBox1.ShowColorName := sCheckBox15.Checked;
end;


procedure TFrameTsColorPickers.sCheckBox16Click(Sender: TObject);
begin
  sColorBox1.UseAlpha := sCheckBox16.Checked;
end;


procedure TFrameTsColorPickers.sCheckBox1Click(Sender: TObject);
begin
  if TsCheckBox(Sender).Checked then
    sColorBox1.Style := sColorBox1.Style + [TsColorBoxStyles(TsCheckBox(Sender).Tag)]
  else
    sColorBox1.Style := sColorBox1.Style - [TsColorBoxStyles(TsCheckBox(Sender).Tag)];
end;


procedure TFrameTsColorPickers.sCheckBox2Click(Sender: TObject);
begin
  sColorBox1.SkinData.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox2.Checked));
  sColorSelect1.SkinData.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox2.Checked));
  sColorsPanel1.SkinData.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox2.Checked));
end;


procedure TFrameTsColorPickers.sCheckBox3Click(Sender: TObject);
begin
  sColorSelect1.StandardDlg := sCheckBox3.Checked;
end;


procedure TFrameTsColorPickers.sCheckBox6Click(Sender: TObject);
begin
  sColorBox1.ReadOnly := sCheckBox6.Checked;
end;


procedure TFrameTsColorPickers.sRadioGroup1Change(Sender: TObject);
begin
  sColorBox1.PopupMode := TacColorPopupMode(sRadioGroup1.ItemIndex);
  sGroupBox1.Checked := not boolean(sRadioGroup1.ItemIndex);
  sGroupBox1.Enabled := not boolean(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsColorPickers.sTrackEdit1Change(Sender: TObject);
begin
  sColorsPanel1.ItemWidth := sTrackEdit1.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit2Change(Sender: TObject);
begin
  sColorBox1.ColorRectHeight := sTrackEdit2.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit3Change(Sender: TObject);
begin
  sColorBox1.ColorRectWidth := sTrackEdit3.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit4Change(Sender: TObject);
begin
  sColorSelect1.ImgHeight := sTrackEdit4.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit5Change(Sender: TObject);
begin
  sColorSelect1.ImgWidth := sTrackEdit5.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit6Change(Sender: TObject);
begin
  sColorsPanel1.ItemHeight := sTrackEdit6.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit7Change(Sender: TObject);
begin
  sColorsPanel1.ItemMargin := sTrackEdit7.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit8Change(Sender: TObject);
begin
  sColorsPanel1.ColCount := sTrackEdit8.AsInteger;
end;


procedure TFrameTsColorPickers.sTrackEdit9Change(Sender: TObject);
begin
  sColorsPanel1.RowCount := sTrackEdit9.AsInteger;
end;

end.
