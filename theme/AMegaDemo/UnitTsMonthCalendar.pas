unit UnitTsMonthCalendar;
{$I sDefs.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ExtCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,
  {$IFDEF DELPHI_XE2} UITypes, {$ENDIF}

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, sPanel, sMonthCalendar, sMaskEdit, sCustomComboEdit, sToolEdit, sBitBtn, sButton, Mask;


type
  TFrameTsMonthCalendar = class(TFrameBaseMenu)
    sMonthCalendar1: TsMonthCalendar;
    sCheckBox2: TsCheckBox;
    sComboBox1: TsComboBox;
    sRadioGroup1: TsRadioGroup;
    sGroupBox1: TsGroupBox;
    sSpeedButton2: TsSpeedButton;
    sColorBox2: TsColorBox;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sColorBox1: TsColorBox;
    sTrackEdit1: TsTrackEdit;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sCheckBox10: TsCheckBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sCheckBox13: TsCheckBox;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sTrackEdit2: TsTrackEdit;
    sCheckBox14: TsCheckBox;
    sGroupBox2: TsGroupBox;
    sDateEdit1: TsDateEdit;
    sDateEdit2: TsDateEdit;
    sCheckBox15: TsCheckBox;
    sCheckBox16: TsCheckBox;
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox10Click(Sender: TObject);
    procedure sCheckBox12Click(Sender: TObject);
    procedure sCheckBox13Click(Sender: TObject);
    procedure sCheckBox11Click(Sender: TObject);
    procedure sMonthCalendar1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sCheckBox14Click(Sender: TObject);
    procedure sMonthCalendar1GetCellParams(Sender: TObject; Date: TDateTime; AFont: TFont; var Background: TColor);
    procedure sMonthCalendar1AcceptDate(Sender: TObject; var aDate: TDateTime; var CanAccept: Boolean);
    procedure sCheckBox15Click(Sender: TObject);
    procedure sDateEdit1Change(Sender: TObject);
    procedure sDateEdit2Change(Sender: TObject);
    procedure sCheckBox16Click(Sender: TObject);
  public
  end;

var
  FrameTsMonthCalendar: TFrameTsMonthCalendar;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}


procedure TFrameTsMonthCalendar.sCheckBox10Click(Sender: TObject);
begin
  sMonthCalendar1.ShowYearBtns := sCheckBox10.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox11Click(Sender: TObject);
begin
  sMonthCalendar1.ShowMonthBtns := sCheckBox11.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox12Click(Sender: TObject);
begin
  sMonthCalendar1.TravellingSelection := sCheckBox12.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox13Click(Sender: TObject);
begin
  sMonthCalendar1.UseCurrentDate := sCheckBox13.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox14Click(Sender: TObject);
begin
  RedrawWindow(sMonthCalendar1.Handle, nil, 0, RDWA_ALLCHILDREN);
end;


procedure TFrameTsMonthCalendar.sCheckBox15Click(Sender: TObject);
begin
  sMonthCalendar1.FGrid.UpdateStates;
  sMonthCalendar1.SkinData.Invalidate; // Repaint cells with using of the OnAcceptDate event
  sCheckBox16.Enabled := sCheckBox15.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox16Click(Sender: TObject);
begin
  sMonthCalendar1.DimUnacceptedCells := sCheckBox16.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox1Click(Sender: TObject);
begin
  sMonthCalendar1.Animated := sCheckBox1.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sMonthCalendar1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sMonthCalendar1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsMonthCalendar.sCheckBox3Click(Sender: TObject);
begin
  sMonthCalendar1.ReadOnly := sCheckBox3.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox4Click(Sender: TObject);
begin
  sMonthCalendar1.AllowChangeMonth := sCheckBox4.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox5Click(Sender: TObject);
begin
  sMonthCalendar1.ShowCurrentDate := sCheckBox5.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox6Click(Sender: TObject);
begin
  sMonthCalendar1.ShowSelectAlways := sCheckBox6.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox7Click(Sender: TObject);
begin
  sMonthCalendar1.ShowTitle := sCheckBox7.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox8Click(Sender: TObject);
begin
  sMonthCalendar1.ShowTodayBtn := sCheckBox8.Checked;
end;


procedure TFrameTsMonthCalendar.sCheckBox9Click(Sender: TObject);
begin
  sMonthCalendar1.ShowWeeks := sCheckBox9.Checked;
end;


procedure TFrameTsMonthCalendar.sColorBox1Change(Sender: TObject);
begin
  sMonthCalendar1.WeekendColor := sColorBox1.Selected;
end;


procedure TFrameTsMonthCalendar.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sMonthCalendar1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMonthCalendar.sComboBox1Change(Sender: TObject);
begin
  sMonthCalendar1.SkinData.SkinSection := sComboBox1.Text;
  if sCheckBox2.Checked then
    sMonthCalendar1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsMonthCalendar.sDateEdit1Change(Sender: TObject);
begin
  sMonthCalendar1.MinDate := sDateEdit1.Date;
  sMonthCalendar1.FGrid.UpdateStates;
  sMonthCalendar1.SkinData.Invalidate; // Repaint cells with using of the OnAcceptDate event
end;


procedure TFrameTsMonthCalendar.sDateEdit2Change(Sender: TObject);
begin
  sMonthCalendar1.MaxDate := sDateEdit2.Date;
  sMonthCalendar1.FGrid.UpdateStates;
  sMonthCalendar1.SkinData.Invalidate; // Repaint cells with using of the OnAcceptDate event
end;


procedure TFrameTsMonthCalendar.sMonthCalendar1AcceptDate(Sender: TObject; var aDate: TDateTime; var CanAccept: Boolean);
begin
  if sCheckBox15.Checked then
    // Set custom date limits
    CanAccept := (DayOfWeek(aDate) <> 6); // Allowed if not friday
end;


procedure TFrameTsMonthCalendar.sMonthCalendar1Change(Sender: TObject);
begin
  sLabel1.Visible := True;
  sLabel2.Caption := DateToStr(sMonthCalendar1.CalendarDate);
end;


procedure TFrameTsMonthCalendar.sMonthCalendar1GetCellParams(Sender: TObject; Date: TDateTime; AFont: TFont; var Background: TColor);
begin
  if sCheckBox14.Checked then
    if Round(Date) mod 13 = 0 then begin
      AFont.Style := AFont.Style + [fsStrikeOut];
      AFont.Color := slEditRedText;
      Background := slEditRed;
    end
    else
      if Round(Date) mod 11 = 0 then begin
        AFont.Style := AFont.Style + [fsBold];
        AFont.Color := slEditGreenText;
        Background := slEditGreen;
      end;
end;

procedure TFrameTsMonthCalendar.sRadioGroup1Change(Sender: TObject);
begin
  sMonthCalendar1.BevelOuter := TBevelCut(sRadioGroup1.ItemIndex);
  sMonthCalendar1.SkinData.SkinSection := '';
  sComboBox1.ItemIndex := -1;
  if sCheckBox2.Checked then
    sMonthCalendar1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsMonthCalendar.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sMonthCalendar1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsMonthCalendar.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sMonthCalendar1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMonthCalendar.sSpeedButton3Click(Sender: TObject);
begin
  sSpeedButton1.OnClick(sSpeedButton1);
  sMonthCalendar1.SkinData.ColorTone := TColor(TsSpeedButton(Sender).Tag);
end;


procedure TFrameTsMonthCalendar.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sMonthCalendar1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMonthCalendar.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sMonthCalendar1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMonthCalendar.sTrackEdit1Change(Sender: TObject);
begin
  sMonthCalendar1.TitleHeight := sTrackEdit1.AsInteger;
end;


procedure TFrameTsMonthCalendar.sTrackEdit2Change(Sender: TObject);
begin
  sMonthCalendar1.TitleBtnsWidth := sTrackEdit2.AsInteger;
end;

end.
