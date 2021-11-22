unit UnitFrameAnim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  sFrameAdapter, sButton,
{$IFDEF LOGGED} sDebugMsgs, {$ENDIF}
  UnitFrameCustom, sMemo, sGroupBox, sSpeedButton, sBitBtn,
  sCheckBox, sComboBoxes, sEdit, acPopupCtrls, sRadioButton,
  sComboBox, sTrackBar, acAlphaImageList, sSpinEdit, sMaskEdit, sPanel, acSlider,
  ImgList, ComCtrls, ExtCtrls, Buttons, sLabel, 
  sCustomComboEdit;


type
  TFrame_Anim = class(TCustomInfoFrame)
    sGroupBox1: TsGroupBox;
    sBitBtn1: TsBitBtn;
    sSpeedButton1: TsSpeedButton;
    sCheckBox1: TsCheckBox;
    sGroupBox3: TsGroupBox;
    sColorBox1: TsColorBox;
    sTrackEdit1: TsTrackEdit;
    sRadioButton1: TsRadioButton;
    sVirtualImageList1: TsVirtualImageList;
    sButton1: TsButton;
    sRadioButton2: TsRadioButton;
    sSlider1: TsSlider;
    sComboBox2: TsComboBox;
    sCheckBox3: TsCheckBox;
    sGroupBox2: TsGroupBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox17: TsCheckBox;
    sGroupBox4: TsGroupBox;
    sCheckBox4: TsCheckBox;
    sCheckBox11: TsCheckBox;
    sCheckBox12: TsCheckBox;
    sCheckBox13: TsCheckBox;
    sCheckBox14: TsCheckBox;
    sCheckBox16: TsCheckBox;
    sSlider2: TsSlider;
    sCheckBox10: TsCheckBox;
    sGroupBox5: TsGroupBox;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox17Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox16Click(Sender: TObject);
    procedure sBitBtn1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sRadioButton3Click(Sender: TObject);
  public
    EffectColor: TColor;
    DataChanging: boolean;
    procedure AfterCreation; override;
  end;

implementation

uses TypInfo, MainUnit,
  sSkinManager, sConst, sVCLUtils, acAnimation, acntTypes, acntUtils;

{$R *.DFM}

const
  sPropName = 'AnimatEvents';


procedure SetValue(Ctrl: TControl; Data: Integer);
var
  Val: Integer;
begin
  if HasProperty(Ctrl, sPropName) then begin
    // Set value in the property
    Val := GetOrdProp(Ctrl, sPropName);
    Val := Val or Data;
    SetOrdProp(Ctrl, sPropName, Val);
  end;
end;


procedure DelValue(Ctrl: TControl; Data: Integer);
var
  Val: Integer;
begin
  if HasProperty(Ctrl, sPropName) then begin
    // Delete value in the property
    Val := GetOrdProp(Ctrl, sPropName);
    Val := Val and not Data;
    SetOrdProp(Ctrl, sPropName, Val);
  end;
end;


procedure TFrame_Anim.AfterCreation;
begin
  inherited;
  DataChanging := True;
  EffectColor := sColorBox1.Selected;
  sCheckBox3.Checked := MainForm.sSkinManager1.Effects.AllowAnimation;

  SetControlsEnabled(sGroupBox4, sCheckBox3.Checked);
  sGroupBox4.Enabled := sCheckBox3.Checked;

  SetControlsEnabled(sGroupBox2, sCheckBox3.Checked);
  sGroupBox2.Enabled := sCheckBox3.Checked;

  // Init checkboxes values from sSkinManager1
  sCheckBox16.Checked := beLighting in MainForm.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox4.Checked := beClick in MainForm.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox11.Checked := beMouseEnter in MainForm.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox12.Checked := beMouseLeave in MainForm.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox13.Checked := beMouseDown in MainForm.sSkinManager1.AnimEffects.Buttons.Events;
  sCheckBox14.Checked := beMouseUp in MainForm.sSkinManager1.AnimEffects.Buttons.Events;
  DataChanging := False;
end;


procedure TFrame_Anim.sCheckBox16Click(Sender: TObject);
begin
  // Change global options
  // TsCheckBox(Sender).Tag contains a value of the property (beMouseEnter = 1, beMouseLeave = 2, beMouseLeave = 4, etc)
  if TsCheckBox(Sender).Checked then
    MainForm.sSkinManager1.AnimEffects.Buttons.Events := MainForm.sSkinManager1.AnimEffects.Buttons.Events + [TacBtnEvent(TsCheckBox(Sender).Tag)]
  else
    MainForm.sSkinManager1.AnimEffects.Buttons.Events := MainForm.sSkinManager1.AnimEffects.Buttons.Events - [TacBtnEvent(TsCheckBox(Sender).Tag)];
end;


procedure TFrame_Anim.sCheckBox17Click(Sender: TObject);
begin
  sCheckBox2Click(sCheckBox17);
  SetControlsEnabled(sGroupBox2, not sCheckBox17.Checked);
  sCheckBox17.Enabled := True;
end;


procedure TFrame_Anim.sCheckBox2Click(Sender: TObject);
begin
  // Change all controls placed on the sGroupBox1
  // TsCheckBox(Sender).Tag contains a value of the property (aeMouseEnter = 1, acMouseLeave = 2, acMouseLeave = 4, etc)
  if TsCheckBox(Sender).Checked then
    IterateControls(sGroupBox1, TsCheckBox(Sender).Tag, SetValue)
  else
    IterateControls(sGroupBox1, TsCheckBox(Sender).Tag, DelValue);
end;


procedure TFrame_Anim.sCheckBox3Click(Sender: TObject);
begin
  if not DataChanging then
    MainForm.ActionAnimation.Execute;
end;


procedure TFrame_Anim.sColorBox1Change(Sender: TObject);
begin
  EffectColor := sColorBox1.Selected;
  sGroupBox3CheckBoxChanged(sGroupBox3);
end;


procedure TFrame_Anim.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  EffectColor := NewColor;
  sGroupBox3CheckBoxChanged(sGroupBox3);
end;


procedure StartAtt(Ctrl: TControl; Data: Integer);
begin
  StartAttention(Ctrl, PacAttentionData(Data)^);
end;


procedure StopAtt(Ctrl: TControl; Data: Integer);
begin
  StopAttention(Ctrl);
end;


procedure TFrame_Anim.sGroupBox3CheckBoxChanged(Sender: TObject);
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
      IterateControls(sGroupBox1, Integer(@Data), StartAtt);
    end;
end;


procedure TFrame_Anim.sRadioButton3Click(Sender: TObject);
begin
  MainForm.sSkinManager1.AnimEffects.Buttons.LightingMode := TacLightingMode(TsRadioButton(Sender).Tag);
end;


procedure TFrame_Anim.sComboBox2Change(Sender: TObject);
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
      sTrackEdit1.MinValue := 1000;
      sTrackEdit1.MaxValue := 5000;
      sTrackEdit1.Value := 1000;
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


procedure TFrame_Anim.sBitBtn1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StopAttention(TControl(Sender));
end;

end.
