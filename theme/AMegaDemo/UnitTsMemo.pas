unit UnitTsMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, ComCtrls;


type
  TFrameTsMemo = class(TFrameBaseMenu)
    sMemo2: TsMemo;
    sGroupBox2: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sTrackEdit7: TsTrackEdit;
    sComboBox1: TsComboBox;
    sMemo1: TsMemo;
    sCheckBox2: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sGroupBox1: TsGroupBox;
    sGroupBox5: TsGroupBox;
    sCheckBox5: TsCheckBox;
    sTrackBar3: TsTrackBar;
    sGroupBox6: TsGroupBox;
    sStickyLabel3: TsStickyLabel;
    sStickyLabel4: TsStickyLabel;
    sTrackBar4: TsTrackBar;
    sTrackBar5: TsTrackBar;
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sTrackEdit6CloseUp(Sender: TObject);
    procedure sMemo1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sGroupBox5CheckBoxChanged(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sTrackBar4Change(Sender: TObject);
    procedure sTrackBar5Change(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
  end;

var
  FrameTsMemo: TFrameTsMemo;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsMemo.sCheckBox1Click(Sender: TObject);
begin
  sMemo2.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsMemo.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sMemo2.SkinData.OuterEffects.Visibility := ovAlways
  else
    sMemo2.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsMemo.sCheckBox5Click(Sender: TObject);
begin
  sTrackBar3.Enabled := not sCheckBox5.Checked;
  if sCheckBox5.Checked then
    sMemo2.SkinData.VertScrollData.ButtonsSize := -1 // Default size
  else
    sMemo2.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;

  sMemo2.SkinData.HorzScrollData.ButtonsSize := sMemo2.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsMemo.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sMemo2, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMemo.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  ChangeControlColors(sMemo2, clNone, NewColor);
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsMemo.sComboBox1Change(Sender: TObject);
begin
  sMemo2.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsMemo.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sMemo2.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsMemo.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  sCheckBox5.Enabled := sGroupBox5.Checked;
  sTrackBar3.Enabled := not sCheckBox5.Checked and sCheckBox5.Enabled;
  if sGroupBox5.Checked then
    if sCheckBox5.Checked then
      sMemo2.SkinData.VertScrollData.ButtonsSize := -1 // Default size
    else
      sMemo2.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position
  else
    sMemo2.SkinData.VertScrollData.ButtonsSize := 0; // Not visible

  sMemo2.SkinData.HorzScrollData.ButtonsSize := sMemo2.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsMemo.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox6.Checked then begin
    sMemo2.SkinData.VertScrollData.ScrollWidth := -1; // Default system size will be used
    sMemo2.SkinData.HorzScrollData.ScrollWidth := -1;
  end
  else begin
    sMemo2.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
    sMemo2.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
  end;
end;


procedure TFrameTsMemo.sMemo1Change(Sender: TObject);
begin
  sMemo2.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsMemo.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sMemo2, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsMemo.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sMemo2, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMemo.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sMemo2, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMemo.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sMemo2, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsMemo.sTrackBar3Change(Sender: TObject);
begin
  sMemo2.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;
  sMemo2.SkinData.HorzScrollData.ButtonsSize := sMemo2.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsMemo.sTrackBar4Change(Sender: TObject);
begin
  sMemo2.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
end;


procedure TFrameTsMemo.sTrackBar5Change(Sender: TObject);
begin
  sMemo2.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
end;


procedure TFrameTsMemo.sTrackEdit5Change(Sender: TObject);
begin
  sMemo2.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsMemo.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sMemo2.BoundLabel.FTheLabel.Transparent := False;
    sMemo2.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sMemo2.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
//  sMemo2.BoundLabel.MaxWidth := ScaleInt(sTrackEdit6.AsInteger, sMemo2.SkinData);
end;


procedure TFrameTsMemo.sTrackEdit6CloseUp(Sender: TObject);
begin
  sMemo2.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsMemo.sTrackEdit7Change(Sender: TObject);
begin
  sMemo2.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;

end.
