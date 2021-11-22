unit UnitTsCheckBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sEdit, acPopupCtrls, acAlphaImageList, sCheckBox, sFrameAdapter,
  sSpeedButton, sGroupBox;

type
  TFrameTsCheckBox = class(TFrameBaseMenu)
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sGroupBox4: TsGroupBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit1: TsTrackEdit;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sCharImageList1: TsCharImageList;
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sTrackEdit1CloseUp(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
  public
  end;

var
  FrameTsCheckBox: TFrameTsCheckBox;

implementation

{$R *.dfm}

uses
  sCommonData, sVclUtils, sConst, UnitDataModule;

const
  DefSize: TSize = (cx: 230; cy: 60);

procedure TFrameTsCheckBox.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sCheckBox1.Images := sCharImageList1
  else
    sCheckBox1.Images := nil;
end;


procedure TFrameTsCheckBox.sCheckBox3Click(Sender: TObject);
begin
  sCheckBox1.ShowFocus := sCheckBox3.Checked;
end;


procedure TFrameTsCheckBox.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sCheckBox1.DisabledKind := sCheckBox1.DisabledKind + [dkBlended]
  else
    sCheckBox1.DisabledKind := sCheckBox1.DisabledKind - [dkBlended];
end;


procedure TFrameTsCheckBox.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then
    sCheckBox1.DisabledKind := sCheckBox1.DisabledKind + [dkGrayed]
  else
    sCheckBox1.DisabledKind := sCheckBox1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsCheckBox.sCheckBox6Click(Sender: TObject);
begin
  sCheckBox1.ReadOnly := sCheckBox6.Checked;
end;


procedure TFrameTsCheckBox.sCheckBox7Click(Sender: TObject);
begin
  sCheckBox1.AllowGrayed := sCheckBox7.Checked;
  if sCheckBox7.Checked then
    sCheckBox1.State := cbGrayed;
end;


procedure TFrameTsCheckBox.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sCheckBox1.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsCheckBox.sSpeedButton1Click(Sender: TObject);
begin
  ChangeControlColors(sCheckBox1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsCheckBox.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sCheckBox1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsCheckBox.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sCheckBox1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsCheckBox.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sCheckBox1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsCheckBox.sTrackEdit1Change(Sender: TObject);
begin
  if sTrackEdit1.DroppedDown then begin
    sCheckBox1.SkinData.SkinSection := 'GROUPBOX';
    sCheckBox1.Margin := sTrackEdit1.AsInteger;
    sCheckBox1.Width := ScaleInt(DefSize.cx + 2 * sCheckBox1.Margin, sCheckBox1.SkinData);
    sCheckBox1.Height := ScaleInt(DefSize.cy + 2 * sCheckBox1.Margin, sCheckBox1.SkinData);
  end;
end;


procedure TFrameTsCheckBox.sTrackEdit1CloseUp(Sender: TObject);
begin
  sCheckBox1.SkinData.SkinSection := '';
end;


procedure TFrameTsCheckBox.sTrackEdit2Change(Sender: TObject);
begin
  sCheckBox1.TextIndent := sTrackEdit2.AsInteger;
end;

end.
