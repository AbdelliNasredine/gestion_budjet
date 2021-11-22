unit UnitTsFloatButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sComboBoxes, sEdit, sComboBox, sCheckBox,
  sRadioButton, sTrackBar, sLabel, sGroupBox, acPopupCtrls, 
  sPanel, acSlider, acFloatCtrls, sPageControl, ComCtrls, ExtCtrls, Mask,
  sMaskEdit, sCustomComboEdit;


type
  TFrameTsFloatButtons = class(TFrameBaseMenu)
    sGroupBox5: TsGroupBox;
    sCheckBox7: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sGroupBox6: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sGroupBox7: TsGroupBox;
    sComboBox2: TsComboBox;
    sGroupBox8: TsGroupBox;
    sEdit1: TsEdit;
    sComboBox1: TsComboBox;
    sCheckBox4: TsCheckBox;
    sSlider1: TsSlider;
    sGroupBox2: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sGroupBox3: TsGroupBox;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sRadioButton6: TsRadioButton;
    sRadioButton7: TsRadioButton;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sSlider2: TsSlider;
    sGroupBox1: TsGroupBox;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sGroupBox4: TsGroupBox;
    sPageControl2: TsPageControl;
    sTabSheet5: TsTabSheet;
    sColorBox1: TsColorBox;
    sColorBox2: TsColorBox;
    sColorBox3: TsColorBox;
    sColorBox4: TsColorBox;
    sTabSheet6: TsTabSheet;
    sColorBox5: TsColorBox;
    sColorBox6: TsColorBox;
    sColorBox7: TsColorBox;
    sColorBox8: TsColorBox;
    sTabSheet7: TsTabSheet;
    sColorBox9: TsColorBox;
    sColorBox10: TsColorBox;
    sColorBox11: TsColorBox;
    sColorBox12: TsColorBox;
    procedure sSlider2SliderChange(Sender: TObject);
    procedure sSlider1SliderChange(Sender: TObject);
    procedure sGroupBox5CheckBoxChanged(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sGroupBox7CheckBoxChanged(Sender: TObject);
    procedure sRadioButton4Click(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sGroupBox8CheckBoxChanged(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sColorBox3Change(Sender: TObject);
    procedure sColorBox4Change(Sender: TObject);
    procedure sColorBox5Change(Sender: TObject);
    procedure sColorBox6Change(Sender: TObject);
    procedure sColorBox7Change(Sender: TObject);
    procedure sColorBox8Change(Sender: TObject);
    procedure sColorBox9Change(Sender: TObject);
    procedure sColorBox10Change(Sender: TObject);
    procedure sColorBox11Change(Sender: TObject);
    procedure sColorBox12Change(Sender: TObject);
  public
    TestBtn: TacFloatBtn;
    SavedUWP: boolean;
    procedure AfterCreation; override;
    procedure UpdateCtrlsAccess;
  end;

var
  FrameTsFloatButtons: TFrameTsFloatButtons;

implementation

{$R *.dfm}

uses acntUtils, sCommonData, UnitMain, UnitDataModule;


procedure TFrameTsFloatButtons.AfterCreation;
begin
  SavedUWP := MainForm.sSkinProvider1.UWPMode;
  TestBtn := MainForm.sFloatButtons1.Items[0];
  sTrackEdit1.MaxValue := ScaleInt(200, sGroupBox6.SkinData);
  sTrackEdit2.MaxValue := ScaleInt(48, sGroupBox6.SkinData);
  sTrackEdit1.Value := TestBtn.Width;
  sTrackEdit2.Value := TestBtn.Height;
  inherited;
end;


procedure TFrameTsFloatButtons.sColorBox10Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataPressed.Color2 := sColorBox10.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox11Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataPressed.BorderColor := sColorBox11.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox12Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataPressed.FontColor := sColorBox12.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox1Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataNormal.Color1 := sColorBox1.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox2Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataNormal.Color2 := sColorBox2.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox3Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataNormal.BorderColor := sColorBox3.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox4Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataNormal.FontColor := sColorBox4.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox5Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataActive.Color1 := sColorBox5.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox6Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataActive.Color2 := sColorBox6.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox7Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataActive.BorderColor := sColorBox7.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox8Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataActive.FontColor := sColorBox8.Selected;
end;


procedure TFrameTsFloatButtons.sColorBox9Change(Sender: TObject);
begin
  TestBtn.PaintOptions.DataPressed.Color1 := sColorBox9.Selected;
end;


procedure TFrameTsFloatButtons.sComboBox1Change(Sender: TObject);
begin
  TestBtn.Style := TacFloatBtnStyle(sComboBox1.ItemIndex);
  UpdateCtrlsAccess;
end;


procedure TFrameTsFloatButtons.sComboBox2Change(Sender: TObject);
begin
  TestBtn.Layout := TButtonLayout(sComboBox2.ItemIndex);
end;


procedure TFrameTsFloatButtons.sEdit1Change(Sender: TObject);
begin
  TestBtn.Caption := sEdit1.Text;
end;


procedure TFrameTsFloatButtons.sGroupBox4CheckBoxChanged(Sender: TObject);

  procedure ExecOnChange(th: TsTabSheet);
  var
    i: integer;
  begin
    for i := 0 to th.ControlCount - 1 do
      if th.Controls[i] is TsColorBox then
        TsColorBox(th.Controls[i]).OnChange(th.Controls[i]);
  end;

begin
  if sGroupBox1.Checked then begin
    ExecOnChange(sTabSheet5);
    ExecOnChange(sTabSheet6);
    ExecOnChange(sTabSheet7);
  end;
  TestBtn.CustomColors := sGroupBox4.Checked;
  TestBtn.CustomFont := sGroupBox4.Checked;
end;


procedure TFrameTsFloatButtons.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  FormData.EnableDisableSysBlur(not sGroupBox5.Checked);
//  MainForm.sSkinProvider1.UWPMode := not sGroupBox1.Checked;

  MainForm.sSysButton1.Visible := not sGroupBox5.Checked;
  MainForm.sSysButton2.Visible := not sGroupBox5.Checked;
  MainForm.sSysButton3.Visible := not sGroupBox5.Checked;

  if sGroupBox5.Checked then begin
    MainForm.sSkinProvider1.TitleBar := nil;
    MainForm.sSkinProvider1.UWPMode := False;
  end
  else
    MainForm.sSkinProvider1.UWPMode := SavedUWP;

  TestBtn.Visible := sGroupBox5.Checked;
  UpdateCtrlsAccess;
end;


procedure TFrameTsFloatButtons.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  TestBtn.AutoSize := sGroupBox6.Checked;
end;


procedure TFrameTsFloatButtons.sGroupBox7CheckBoxChanged(Sender: TObject);
begin
  TestBtn.ImageIndex := iff(sGroupBox7.Checked, 0, -1);
end;


procedure TFrameTsFloatButtons.sGroupBox8CheckBoxChanged(Sender: TObject);
begin
  TestBtn.ShowCaption := sGroupBox8.Checked;
end;


procedure TFrameTsFloatButtons.sRadioButton1Click(Sender: TObject);
begin
  sTrackEdit4.Value := 0;
  TestBtn.AlignHorz := TAlignment(TsRadioButton(Sender).Tag);
  TestBtn.UpdatePosition;
end;


procedure TFrameTsFloatButtons.sRadioButton4Click(Sender: TObject);
begin
  sTrackEdit5.Value := 0;
  TestBtn.AlignVert := TVertAlignment(TsRadioButton(Sender).Tag);
  TestBtn.UpdatePosition;
end;


procedure TFrameTsFloatButtons.sSlider1SliderChange(Sender: TObject);
begin
  MainForm.sFloatButtons2.Items[0].Visible := sSlider1.SliderOn;
  MainForm.sFloatButtons2.Items[1].Visible := sSlider1.SliderOn;
  MainForm.sFloatButtons2.Items[2].Visible := sSlider1.SliderOn;
end;


procedure TFrameTsFloatButtons.sSlider2SliderChange(Sender: TObject);
begin
  MainForm.sFloatSample.Items[0].Visible := sSlider2.SliderOn;
end;


procedure TFrameTsFloatButtons.sTrackEdit1Change(Sender: TObject);
begin
  if FrameCreated then
    TestBtn.Width := sTrackEdit1.AsInteger;
end;


procedure TFrameTsFloatButtons.sTrackEdit2Change(Sender: TObject);
begin
  if FrameCreated then
    TestBtn.Height := sTrackEdit2.AsInteger;
end;


procedure TFrameTsFloatButtons.sTrackEdit3Change(Sender: TObject);
begin
  if FrameCreated then
    TestBtn.PaintOptions.BevelWidth := sTrackEdit3.AsInteger;
end;


procedure TFrameTsFloatButtons.sTrackEdit4Change(Sender: TObject);
begin
  if FrameCreated then
    TestBtn.OffsetX := sTrackEdit4.AsInteger;
end;


procedure TFrameTsFloatButtons.sTrackEdit5Change(Sender: TObject);
begin
  if FrameCreated then
    TestBtn.OffsetY := sTrackEdit5.AsInteger;
end;


procedure TFrameTsFloatButtons.sTrackEdit6Change(Sender: TObject);
begin
  if FrameCreated then
    TestBtn.PaintOptions.BorderWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsFloatButtons.UpdateCtrlsAccess;
begin
  if sGroupBox5.Checked then begin
    sTrackEdit1.Enabled := not sGroupBox6.Checked;
    sTrackEdit2.Enabled := not sGroupBox6.Checked;
    sComboBox2.Enabled := sGroupBox7.Checked;
    sEdit1.Enabled := sGroupBox8.Checked;
    sGroupBox1.Checked := TestBtn.Style = fbsRound;
    sGroupBox1.Enabled := TestBtn.Style = fbsRound;
    sGroupBox4.Checked := sGroupBox4.Checked; // Update accessibility of controls
  end;
end;

end.
