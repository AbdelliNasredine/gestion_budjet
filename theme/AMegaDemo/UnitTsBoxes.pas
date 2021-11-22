unit UnitTsBoxes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  sCheckBox, sGroupBox, sEdit, sRadioButton, sComboBox,
  acPopupCtrls, sFrameAdapter, sComboBoxes, sSpeedButton, sConst;

type
  TFrameTsBoxes = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sRadioGroup1: TsRadioGroup;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sEdit1: TsEdit;
    sGroupBox2: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sRadioGroup2: TsRadioGroup;
    sGroupBox6: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sComboBox1: TsComboBox;
    sTrackEdit6: TsTrackEdit;
    sTrackEdit7: TsTrackEdit;
    sComboBox2: TsComboBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sColorBox2: TsColorBox;
    sComboBox3: TsComboBox;
    sTrackEdit8: TsTrackEdit;
    sCheckBox3: TsCheckBox;
    procedure sRadioButton1Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sTrackEdit8Change(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
    procedure sCheckBox3Click(Sender: TObject);
  public
  end;

var
  FrameTsBoxes: TFrameTsBoxes;

implementation

{$R *.dfm}

uses acntUtils, sVCLUtils, sSkinManager, UnitDataModule;

procedure TFrameTsBoxes.sCheckBox3Click(Sender: TObject);
begin
  sGroupBox1.CheckBoxRadio := sCheckBox3.Checked;
end;


procedure TFrameTsBoxes.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then begin
    sGroupBox1.Images := FormData.CharList16;
    sRadioGroup1.Images := FormData.CharList16;
  end
  else begin
    sGroupBox1.Images := nil;
    sRadioGroup1.Images := nil;
  end;
end;


procedure TFrameTsBoxes.sCheckBox6Click(Sender: TObject);
begin
  sGroupBox1.CheckBoxVisible := sCheckBox6.Checked;
  sRadioGroup1.CheckBoxVisible := sCheckBox6.Checked;
end;


procedure TFrameTsBoxes.sColorBox2Change(Sender: TObject);
begin
  sGroupBox1.Color := sColorBox2.Selected;
  sGroupBox1.SkinData.CustomColor := True;
  sRadioGroup1.Color := sColorBox2.Selected;
  sRadioGroup1.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsBoxes.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sGroupBox1.Color := NewColor;
  sRadioGroup1.Color := NewColor;

  if NewColor = OriginColor then begin // If Cancel
    sSpeedButton1.Enabled := False;
    sGroupBox1.SkinData.CustomColor := False;
    sRadioGroup1.SkinData.CustomColor := False;
  end
  else begin // Color is changed without cancel
    sSpeedButton1.Enabled := True;
    sGroupBox1.SkinData.CustomColor := True;
    sRadioGroup1.SkinData.CustomColor := True;
  end;
end;


procedure TFrameTsBoxes.sComboBox1Change(Sender: TObject);
begin
  sGroupBox1.CaptionSkin := sComboBox1.Text;
  sRadioGroup1.CaptionSkin := sComboBox1.Text;
end;


procedure TFrameTsBoxes.sComboBox2Change(Sender: TObject);
begin
  DefaultManager.Options.GroupBoxStyle := TacGroupBoxStyle(sComboBox2.ItemIndex);
end;


procedure TFrameTsBoxes.sComboBox3Change(Sender: TObject);
begin
  sGroupBox6.BoxStyle := TacBoxStyle(sComboBox3.ItemIndex);
end;


procedure TFrameTsBoxes.sRadioButton1Click(Sender: TObject);
var
  i: integer;
begin
  sGroupBox1.AutoChildrenStates := TacChangeState(TControl(Sender).Tag);
  sRadioGroup1.AutoChildrenStates := TacChangeState(TControl(Sender).Tag);
  if TControl(Sender).Tag > 0 then
    for i := 0 to 3 do begin
      sGroupBox1.Checked := not sGroupBox1.Checked;
      sRadioGroup1.Checked := not sRadioGroup1.Checked;
      Delay(200);
    end;
end;


procedure TFrameTsBoxes.sRadioGroup2Change(Sender: TObject);
begin
  sGroupBox1.CaptionLayout := sGroupBox.TsCaptionLayout(sRadioGroup2.ItemIndex);
  sRadioGroup1.CaptionLayout := sGroupBox.TsCaptionLayout(sRadioGroup2.ItemIndex);
end;


procedure TFrameTsBoxes.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sGroupBox1, clNone, clNone);
  ChangeControlColors(sRadioGroup1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsBoxes.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sGroupBox1, slEditRedText, slEditRed);
  ChangeControlColors(sRadioGroup1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsBoxes.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sGroupBox1, slEditGreenText, slEditGreen);
  ChangeControlColors(sRadioGroup1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsBoxes.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sGroupBox1, slEditYellowText, slEditYellow);
  ChangeControlColors(sRadioGroup1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsBoxes.sTrackEdit1Change(Sender: TObject);
begin
  sGroupBox1.CaptionMargin.Left := sTrackEdit1.AsInteger;
  sRadioGroup1.CaptionMargin.Left := sTrackEdit1.AsInteger;
end;


procedure TFrameTsBoxes.sTrackEdit2Change(Sender: TObject);
begin
  sGroupBox1.CaptionMargin.Top := sTrackEdit2.AsInteger;
  sRadioGroup1.CaptionMargin.Top := sTrackEdit2.AsInteger;
end;


procedure TFrameTsBoxes.sTrackEdit3Change(Sender: TObject);
begin
  sGroupBox1.CaptionMargin.Right := sTrackEdit3.AsInteger;
  sRadioGroup1.CaptionMargin.Right := sTrackEdit3.AsInteger;
end;


procedure TFrameTsBoxes.sTrackEdit4Change(Sender: TObject);
begin
  sGroupBox1.CaptionMargin.Bottom := sTrackEdit4.AsInteger;
  sRadioGroup1.CaptionMargin.Bottom := sTrackEdit4.AsInteger;
end;


procedure TFrameTsBoxes.sTrackEdit5Change(Sender: TObject);
begin
  sGroupBox1.CaptionWidth := sTrackEdit5.AsInteger;
  sRadioGroup1.CaptionWidth := sTrackEdit5.AsInteger;
  if sTrackEdit5.DroppedDown and (sTrackEdit5.AsInteger <> 0) and (sGroupBox1.CaptionSkin = '') then begin
    sComboBox1.ItemIndex := 1;
    sComboBox1.OnChange(sComboBox1);
  end;
end;


procedure TFrameTsBoxes.sTrackEdit6Change(Sender: TObject);
begin
  sGroupBox1.CaptionYOffset := sTrackEdit6.AsInteger;
  sRadioGroup1.CaptionYOffset := sTrackEdit6.AsInteger;
end;


procedure TFrameTsBoxes.sTrackEdit7Change(Sender: TObject);
begin
  sRadioGroup1.ContentVOffset := sTrackEdit7.AsInteger;
end;


procedure TFrameTsBoxes.sTrackEdit8Change(Sender: TObject);
begin
  sRadioGroup1.ContentHOffset := sTrackEdit8.AsInteger;
end;

end.
