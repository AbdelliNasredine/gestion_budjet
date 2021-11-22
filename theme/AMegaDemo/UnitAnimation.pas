unit UnitAnimation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UnitBaseMenu, sFrameAdapter,
  ImgList, acAlphaImageList, StdCtrls, sComboBox, sEdit, acPopupCtrls, ComCtrls, sComboBoxes, sTrackBar, ExtCtrls,
  sPanel, acSlider, sButton, sRadioButton, sCheckBox, Buttons, sBitBtn, sSpeedButton, sGroupBox, sSkinManager;

type
  TFrameAnimation = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sSpeedButton1: TsSpeedButton;
    sBitBtn1: TsBitBtn;
    sCheckBox1: TsCheckBox;
    sRadioButton1: TsRadioButton;
    sButton1: TsButton;
    sRadioButton2: TsRadioButton;
    sSlider1: TsSlider;
    sGroupBox2: TsGroupBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sGroupBox3: TsGroupBox;
    sColorBox1: TsColorBox;
    sTrackEdit1: TsTrackEdit;
    sComboBox2: TsComboBox;
    sCheckBox3: TsCheckBox;
    sCharImageList1: TsCharImageList;
    sGroupBox4: TsGroupBox;
    sCheckBox4: TsCheckBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sCheckBox13: TsCheckBox;
    sCheckBox14: TsCheckBox;
    sCheckBox16: TsCheckBox;
    sCheckBox17: TsCheckBox;
    sCheckBox10: TsCheckBox;
    sSlider2: TsSlider;
    sGroupBox5: TsGroupBox;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    procedure sCheckBox3Click(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox16Click(Sender: TObject);
    procedure sCheckBox17Click(Sender: TObject);
    procedure sBitBtn1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sRadioButton3Click(Sender: TObject);
    procedure sRadioButton4Click(Sender: TObject);
  public
    EffectColor: TColor;
    DataChanging: boolean;
    procedure AfterCreation; override;
  end;

var
  FrameAnimation: TFrameAnimation;

implementation

uses TypInfo, acntUtils, UnitDataModule, sVclUtils, acAnimation, sConst;

{$R *.dfm}

const
  sPropName = 'AnimatEvents';

procedure TFrameAnimation.AfterCreation;
begin
  inherited;
  DataChanging := True;
  EffectColor := sColorBox1.Selected;
  sCheckBox3.Checked := FormData.sSkinManager1.Effects.AllowAnimation;

  SetControlsEnabled(sGroupBox4, sCheckBox3.Checked and sCheckBox17.Checked);
  sGroupBox4.Enabled := sCheckBox3.Checked and sCheckBox17.Checked;

  SetControlsEnabled(sGroupBox2, sCheckBox3.Checked);
  sGroupBox2.Enabled := sCheckBox3.Checked;

  // Init checkboxes values from sSkinManager1
  sCheckBox16.Checked := beLighting in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox4.Checked := beClick in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox11.Checked := beMouseEnter in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox12.Checked := beMouseLeave in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox13.Checked := beMouseDown in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox14.Checked := beMouseUp in FormData.sSkinManager1.AnimEffects.Buttons.Events;
  DataChanging := False;
end;


procedure TFrameAnimation.sBitBtn1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StopAttention(TControl(Sender));
end;


procedure TFrameAnimation.sCheckBox16Click(Sender: TObject);
begin
  // Change global options
  // TsCheckBox(Sender).Tag contains a value of the property (beMouseEnter = 1, beMouseLeave = 2, beMouseLeave = 4, etc)
  if TsCheckBox(Sender).Checked then
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events + [TacBtnEvent(TsCheckBox(Sender).Tag)]
  else
    FormData.sSkinManager1.AnimEffects.Buttons.Events := FormData.sSkinManager1.AnimEffects.Buttons.Events - [TacBtnEvent(TsCheckBox(Sender).Tag)];
end;


procedure TFrameAnimation.sCheckBox17Click(Sender: TObject);
begin
  sCheckBox2Click(sCheckBox17);
  SetControlsEnabled(sGroupBox2, not sCheckBox17.Checked);
  sCheckBox17.Enabled := True;
  sGroupBox4.Enabled := sCheckBox17.Checked;
  SetControlsEnabled(sGroupBox4, sCheckBox3.Checked and sCheckBox17.Checked);
end;


procedure SetValue(Ctrl: TControl; Data: integer);
var
  Val: integer;
begin
  if HasProperty(Ctrl, sPropName) then begin
    // Set value in the property
    Val := GetOrdProp(Ctrl, sPropName);
    Val := Val or Data;
    SetOrdProp(Ctrl, sPropName, Val);
  end;
end;


procedure DelValue(Ctrl: TControl; Data: integer);
var
  Val: integer;
begin
  if HasProperty(Ctrl, sPropName) then begin
    // Delete value in the property
    Val := GetOrdProp(Ctrl, sPropName);
    Val := Val and not Data;
    SetOrdProp(Ctrl, sPropName, Val);
  end;
end;


procedure TFrameAnimation.sCheckBox2Click(Sender: TObject);
begin
  // Change all controls placed on the sGroupBox1
  // TsCheckBox(Sender).Tag contains a value of the property (aeMouseEnter = 1, acMouseLeave = 2, acMouseLeave = 4, etc)
  if TsCheckBox(Sender).Checked then
    IterateControls(sGroupBox1, TsCheckBox(Sender).Tag, SetValue)
  else
    IterateControls(sGroupBox1, TsCheckBox(Sender).Tag, DelValue);
end;


procedure TFrameAnimation.sCheckBox3Click(Sender: TObject);
begin
  if not DataChanging then begin
    FormData.sSkinManager1.Effects.AllowAnimation := not FormData.sSkinManager1.Effects.AllowAnimation;
    AfterCreation;
  end;
end;


procedure TFrameAnimation.sColorBox1Change(Sender: TObject);
begin
  EffectColor := sColorBox1.Selected;
  sGroupBox3CheckBoxChanged(sGroupBox3);
end;


procedure TFrameAnimation.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  EffectColor := NewColor;
  sGroupBox3CheckBoxChanged(sGroupBox3);
end;


procedure StartAtt(Ctrl: TControl; Data: integer);
begin
  StartAttention(Ctrl, PacAttentionData(Data)^);
end;


procedure StopAtt(Ctrl: TControl; Data: integer);
begin
  StopAttention(Ctrl);
end;


procedure TFrameAnimation.sComboBox2Change(Sender: TObject);
begin
  // Stop previous animation
  IterateControls(sGroupBox1, 0, StopAtt);
  DataChanging := True;
  case TacAttentionMode(sComboBox2.ItemIndex) of
    amColor: begin
      sTrackEdit1.MinValue := 0;
      sTrackEdit1.MaxValue := 200;
      sTrackEdit1.Value := 50;
      sColorBox1.Enabled := True;
      sTrackEdit1.Enabled := True;
    end;

    amWavering: begin
      sTrackEdit1.MinValue := 1500;
      sTrackEdit1.MaxValue := 5000;
      sTrackEdit1.Value := 1500;
      sColorBox1.Enabled := False;
      sTrackEdit1.Enabled := True;
    end

    else begin
      sTrackEdit1.MinValue := 1000;
      sTrackEdit1.MaxValue := 5000;
      sTrackEdit1.Value := 1000;
      sColorBox1.Enabled := False;
      sTrackEdit1.Enabled := False;
    end
  end;
  DataChanging := False;
  sGroupBox3CheckBoxChanged(sGroupBox3);
end;


procedure TFrameAnimation.sGroupBox3CheckBoxChanged(Sender: TObject);
var
  Data: TacAttentionData;
begin
  if not DataChanging then
    if not sGroupBox3.Checked then
      IterateControls(sGroupBox1, 0, StopAtt)
    else begin
      Data.Mode := TacAttentionMode(sComboBox2.ItemIndex);
      Data.Color := EffectColor;
      Data.Interval := sTrackEdit1.AsInteger;
      IterateControls(sGroupBox1, integer(@Data), StartAtt);
    end;
end;


procedure TFrameAnimation.sRadioButton3Click(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.Buttons.LightingMode := TacLightingMode(TsRadioButton(Sender).Tag);
end;


procedure TFrameAnimation.sRadioButton4Click(Sender: TObject);
begin
  FormData.sSkinManager1.AnimEffects.Buttons.LightingMode := TacLightingMode(TsRadioButton(Sender).Tag);
end;


procedure TFrameAnimation.sTrackEdit1Change(Sender: TObject);
begin
  sGroupBox3CheckBoxChanged(sGroupBox3);
end;

end.
