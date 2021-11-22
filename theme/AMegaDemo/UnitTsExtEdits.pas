unit UnitTsExtEdits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  ComCtrls, sMemo, acAlphaImageList, sLabel, sSpinEdit, 
  sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit, Mask;


type
  TFrameTsExtEdits = class(TFrameBaseMenu)
    sCheckBox2: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sGroupBox4: TsGroupBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sTrackEdit9: TsTrackEdit;
    sCheckBox5: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sDecimalSpinEdit1: TsDecimalSpinEdit;
    sGroupBox3: TsGroupBox;
    sTimePicker1: TsTimePicker;
    sGroupBox5: TsGroupBox;
    sCurrencyEdit1: TsCurrencyEdit;
    sCheckBox1: TsCheckBox;
    sDecimalSpinEdit2: TsDecimalSpinEdit;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sSpinEdit1: TsSpinEdit;
    sCheckBox9: TsCheckBox;
    sCheckBox10: TsCheckBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sCheckBox13: TsCheckBox;
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit6CloseUp(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sTrackEdit9Change(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sDecimalSpinEdit2Change(Sender: TObject);
    procedure sSpinEdit1Change(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox10Click(Sender: TObject);
    procedure sCheckBox11Click(Sender: TObject);
    procedure sCheckBox12Click(Sender: TObject);
    procedure sCheckBox13Click(Sender: TObject);
    procedure sCurrencyEdit1Change(Sender: TObject);
  public
  end;

var
  FrameTsExtEdits: TFrameTsExtEdits;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsExtEdits.sCheckBox10Click(Sender: TObject);
begin
  sTimePicker1.Use12Hour := sCheckBox10.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox11Click(Sender: TObject);
begin
  sTimePicker1.AllowNegative := sCheckBox11.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox12Click(Sender: TObject);
begin
  sCurrencyEdit1.AllowCalculator := sCheckBox12.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox13Click(Sender: TObject);
begin
  sCurrencyEdit1.ShowZeroIfEmpty := sCheckBox13.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox1Click(Sender: TObject);
begin
  sDecimalSpinEdit1.HideExcessZeros := sCheckBox1.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox2Click(Sender: TObject);
begin
  sDecimalSpinEdit1.SkinData.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox2.Checked));
  sTimePicker1.SkinData.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox2.Checked));
  sCurrencyEdit1.SkinData.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox2.Checked));
end;


procedure TFrameTsExtEdits.sCheckBox3Click(Sender: TObject);
begin
  sDecimalSpinEdit1.ShowThousandSeparator := sCheckBox3.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox4Click(Sender: TObject);
begin
  sDecimalSpinEdit1.UseSystemDecSeparator := sCheckBox4.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox5Click(Sender: TObject);
begin
  sDecimalSpinEdit1.AllowNegative := sCheckBox5.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox6Click(Sender: TObject);
begin
  sDecimalSpinEdit1.EditorEnabled := sCheckBox6.Checked;
  sTimePicker1.EditorEnabled := sCheckBox6.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox7Click(Sender: TObject);
begin
  sDecimalSpinEdit1.FlatSpinButtons := sCheckBox7.Checked;
  sTimePicker1.FlatSpinButtons := sCheckBox7.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox8Click(Sender: TObject);
begin
  sDecimalSpinEdit1.ShowSpinButtons := sCheckBox8.Checked;
  sTimePicker1.ShowSpinButtons := sCheckBox8.Checked;
end;


procedure TFrameTsExtEdits.sCheckBox9Click(Sender: TObject);
begin
  sTimePicker1.ShowSeconds := sCheckBox9.Checked;
end;


procedure TFrameTsExtEdits.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sDecimalSpinEdit1, clNone, sColorBox2.Selected);
  ChangeControlColors(sTimePicker1, clNone, sColorBox2.Selected);
  ChangeControlColors(sCurrencyEdit1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsExtEdits.sCurrencyEdit1Change(Sender: TObject);
begin
  sCheckBox13.Enabled := (sCurrencyEdit1.Value = 0);
end;


procedure TFrameTsExtEdits.sDecimalSpinEdit2Change(Sender: TObject);
begin
  sDecimalSpinEdit1.Increment := sDecimalSpinEdit2.Value;
end;


procedure TFrameTsExtEdits.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sDecimalSpinEdit1, clNone, clNone);
  ChangeControlColors(sTimePicker1, clNone, clNone);
  ChangeControlColors(sCurrencyEdit1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsExtEdits.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sDecimalSpinEdit1, slEditRedText, slEditRed);
  ChangeControlColors(sTimePicker1, slEditRedText, slEditRed);
  ChangeControlColors(sCurrencyEdit1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsExtEdits.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sDecimalSpinEdit1, slEditGreenText, slEditGreen);
  ChangeControlColors(sTimePicker1, slEditGreenText, slEditGreen);
  ChangeControlColors(sCurrencyEdit1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsExtEdits.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sDecimalSpinEdit1, slEditYellowText, slEditYellow);
  ChangeControlColors(sTimePicker1, slEditYellowText, slEditYellow);
  ChangeControlColors(sCurrencyEdit1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsExtEdits.sSpinEdit1Change(Sender: TObject);
begin
  sDecimalSpinEdit1.DecimalPlaces := sSpinEdit1.Value;
end;


procedure TFrameTsExtEdits.sTrackEdit6CloseUp(Sender: TObject);
begin
  sDecimalSpinEdit1.BoundLabel.FTheLabel.Transparent := True;
  sTimePicker1.BoundLabel.FTheLabel.Transparent := True;
  sCurrencyEdit1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsExtEdits.sTrackEdit9Change(Sender: TObject);
begin
  sDecimalSpinEdit1.ButtonWidth := sTrackEdit9.AsInteger;
  sTimePicker1.ButtonWidth := sTrackEdit9.AsInteger;
end;

end.
