unit UnitTsRadioButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  acAlphaImageList, sEdit, acPopupCtrls, sGroupBox, sRadioButton,
  sCheckBox, sSpeedButton, sFrameAdapter;

type
  TFrameTsRadioButton = class(TFrameBaseMenu)
    sRadioButton1: TsRadioButton;
    sCheckBox3: TsCheckBox;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sGroupBox4: TsGroupBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sTrackEdit2: TsTrackEdit;
    sRadioButton2: TsRadioButton;
    sTrackEdit1: TsTrackEdit;
    procedure sCheckBox3Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
  public
  end;

var
  FrameTsRadioButton: TFrameTsRadioButton;

implementation

{$R *.dfm}

uses
  sCommonData, sVclUtils, sConst, UnitDataModule;

const
  DefSize: TSize = (cx: 150; cy: 45);

procedure TFrameTsRadioButton.sCheckBox3Click(Sender: TObject);
begin
  sRadioButton1.ShowFocus := sCheckBox3.Checked;
  sRadioButton2.ShowFocus := sCheckBox3.Checked;
end;


procedure TFrameTsRadioButton.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then begin
    sRadioButton1.DisabledKind := sRadioButton1.DisabledKind + [dkBlended];
    sRadioButton2.DisabledKind := sRadioButton2.DisabledKind + [dkBlended];
  end
  else begin
    sRadioButton1.DisabledKind := sRadioButton1.DisabledKind - [dkBlended];
    sRadioButton2.DisabledKind := sRadioButton2.DisabledKind - [dkBlended];
  end;
end;


procedure TFrameTsRadioButton.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then begin
    sRadioButton1.DisabledKind := sRadioButton1.DisabledKind + [dkGrayed];
    sRadioButton2.DisabledKind := sRadioButton2.DisabledKind + [dkGrayed];
  end
  else begin
    sRadioButton1.DisabledKind := sRadioButton1.DisabledKind - [dkGrayed];
    sRadioButton2.DisabledKind := sRadioButton2.DisabledKind - [dkGrayed];
  end;
end;


procedure TFrameTsRadioButton.sCheckBox6Click(Sender: TObject);
begin
  sRadioButton1.ReadOnly := sCheckBox6.Checked;
  sRadioButton2.ReadOnly := sCheckBox6.Checked;
end;


procedure TFrameTsRadioButton.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sRadioButton1.Enabled := not sGroupBox4.Checked;
  sRadioButton2.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsRadioButton.sSpeedButton1Click(Sender: TObject);
begin
  ChangeControlColors(sRadioButton1, clNone, clNone);
  ChangeControlColors(sRadioButton2, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsRadioButton.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sRadioButton1, slEditRedText, slEditRed);
  ChangeControlColors(sRadioButton2, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsRadioButton.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sRadioButton1, slEditGreenText, slEditGreen);
  ChangeControlColors(sRadioButton2, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsRadioButton.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sRadioButton1, slEditYellowText, slEditYellow);
  ChangeControlColors(sRadioButton2, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsRadioButton.sTrackEdit1Change(Sender: TObject);
begin
  if sTrackEdit1.DroppedDown then begin
    sRadioButton1.SkinData.SkinSection := 'GROUPBOX';
    sRadioButton1.Margin := sTrackEdit1.AsInteger;
    sRadioButton1.Width := ScaleInt(DefSize.cx + 2 * sRadioButton1.Margin, sRadioButton1.SkinData);
    sRadioButton1.Height := ScaleInt(DefSize.cy + 2 * sRadioButton1.Margin, sRadioButton1.SkinData);

    sRadioButton2.SkinData.SkinSection := 'GROUPBOX';
    sRadioButton2.Margin := sTrackEdit1.AsInteger;
    sRadioButton2.Width := sRadioButton1.Width;
    sRadioButton2.Height := sRadioButton1.Height;
  end;
end;


procedure TFrameTsRadioButton.sTrackEdit2Change(Sender: TObject);
begin
  sRadioButton1.TextIndent := sTrackEdit2.AsInteger;
  sRadioButton2.TextIndent := sTrackEdit2.AsInteger;
end;

end.
