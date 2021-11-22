unit UnitTsSkinSelector;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel;


type
  TFrameTsSkinSelector = class(TFrameBaseMenu)
    sGroupBox2: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sTrackEdit7: TsTrackEdit;
    sComboBox1: TsComboBox;
    sGroupBox4: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sMemo1: TsMemo;
    sCheckBox2: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSkinSelector1: TsSkinSelector;
    sGroupBox1: TsGroupBox;
    sCheckBox5: TsCheckBox;
    sComboBox2: TsComboBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit6CloseUp(Sender: TObject);
    procedure sMemo1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
  end;

var
  FrameTsSkinSelector: TFrameTsSkinSelector;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsSkinSelector.sCheckBox2Click(Sender: TObject);
begin
  sSkinSelector1.SkinData.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox2.Checked));
end;


procedure TFrameTsSkinSelector.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sSkinSelector1.DisabledKind := sSkinSelector1.DisabledKind + [dkBlended]
  else
    sSkinSelector1.DisabledKind := sSkinSelector1.DisabledKind - [dkBlended];
end;


procedure TFrameTsSkinSelector.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sSkinSelector1.DisabledKind := sSkinSelector1.DisabledKind + [dkGrayed]
  else
    sSkinSelector1.DisabledKind := sSkinSelector1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsSkinSelector.sCheckBox5Click(Sender: TObject);
begin
  sSkinSelector1.ShowNoSkin := sCheckBox5.Checked;
end;


procedure TFrameTsSkinSelector.sColorBox2Change(Sender: TObject);
begin
  sSkinSelector1.Color := sColorBox2.Selected;
  sSkinSelector1.SkinData.CustomColor := True;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSkinSelector.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sSkinSelector1.Color := NewColor;
  sSkinSelector1.SkinData.CustomColor := NewColor <> clNone;
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsSkinSelector.sComboBox1Change(Sender: TObject);
begin
  sSkinSelector1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsSkinSelector.sComboBox2Change(Sender: TObject);
begin
  sSkinSelector1.ThumbSize := TacThumbSize(sComboBox2.ItemIndex);
  case sSkinSelector1.ThumbSize of
    tsSmall: begin
      sTrackEdit1.Value := 1; // ColCount
      sTrackEdit2.Value := 16; // RowCount
      sTrackEdit1.Enabled := False;
    end
    else begin
      sTrackEdit1.Value := 3;
      sTrackEdit2.Value := 5;
      sTrackEdit1.Enabled := True;
    end;
  end;
//  sSkinSelector1.ColCount := 1;
//  sSkinSelector1.RowCount := 16;
end;


procedure TFrameTsSkinSelector.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sSkinSelector1.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsSkinSelector.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sSkinSelector1.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsSkinSelector.sMemo1Change(Sender: TObject);
begin
  sSkinSelector1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsSkinSelector.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sSkinSelector1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsSkinSelector.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sSkinSelector1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSkinSelector.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sSkinSelector1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSkinSelector.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sSkinSelector1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsSkinSelector.sTrackEdit1Change(Sender: TObject);
begin
  sSkinSelector1.ColCount := sTrackEdit1.AsInteger;
end;


procedure TFrameTsSkinSelector.sTrackEdit2Change(Sender: TObject);
begin
  sSkinSelector1.RowCount := sTrackEdit2.AsInteger;
end;


procedure TFrameTsSkinSelector.sTrackEdit5Change(Sender: TObject);
begin
  sSkinSelector1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsSkinSelector.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sSkinSelector1.BoundLabel.FTheLabel.Transparent := False;
    sSkinSelector1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sSkinSelector1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsSkinSelector.sTrackEdit6CloseUp(Sender: TObject);
begin
  sSkinSelector1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsSkinSelector.sTrackEdit7Change(Sender: TObject);
begin
  sSkinSelector1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;


end.
