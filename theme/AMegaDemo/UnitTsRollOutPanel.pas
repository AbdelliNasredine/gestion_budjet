unit UnitTsRollOutPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, 
  sPanel, ExtCtrls, ComCtrls, sButton;


type
  TFrameTsRollOutPanel = class(TFrameBaseMenu)
    sPanel2: TsPanel;
    sComboBox1: TsComboBox;
    sGroupBox1: TsGroupBox;
    sSpeedButton2: TsSpeedButton;
    sColorBox2: TsColorBox;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sRollOutPanel1: TsRollOutPanel;
    sTrackEdit1: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sComboBox2: TsComboBox;
    sRadioGroup1: TsRadioGroup;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sRadioGroup2: TsRadioGroup;
    sEdit1: TsEdit;
    sButton1: TsButton;
    sEdit2: TsEdit;
    sButton2: TsButton;
    sMemo1: TsMemo;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
  public
  end;

var
  FrameTsRollOutPanel: TFrameTsRollOutPanel;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsRollOutPanel.sCheckBox1Click(Sender: TObject);
begin
  sRollOutPanel1.Collapsed := sCheckBox1.Checked;
end;


procedure TFrameTsRollOutPanel.sCheckBox2Click(Sender: TObject);
begin
  sRollOutPanel1.ShowArrow := sCheckBox2.Checked;
end;


procedure TFrameTsRollOutPanel.sCheckBox3Click(Sender: TObject);
begin
  sRollOutPanel1.DirectionArrow := sCheckBox3.Checked;
end;


procedure TFrameTsRollOutPanel.sCheckBox4Click(Sender: TObject);
begin
  sRollOutPanel1.AutoHide := sCheckBox4.Checked;
end;


procedure TFrameTsRollOutPanel.sCheckBox5Click(Sender: TObject);
begin
  sRollOutPanel1.AutoShow := sCheckBox5.Checked;
end;


procedure TFrameTsRollOutPanel.sCheckBox6Click(Sender: TObject);
begin
  if sCheckBox6.Checked then  
    sRollOutPanel1.Images := FormData.CharList16
  else
    sRollOutPanel1.Images := nil;
end;


procedure TFrameTsRollOutPanel.sCheckBox7Click(Sender: TObject);
begin
  sRollOutPanel1.Animated := sCheckBox7.Checked;
end;


procedure TFrameTsRollOutPanel.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sRollOutPanel1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsRollOutPanel.sComboBox1Change(Sender: TObject);
begin
  sRollOutPanel1.SkinData.SkinSection := sComboBox1.Text;
end;


procedure TFrameTsRollOutPanel.sComboBox2Change(Sender: TObject);
begin
  sRollOutPanel1.TitleSkin := sComboBox2.Text;
end;


procedure TFrameTsRollOutPanel.sRadioGroup1Change(Sender: TObject);
begin
  sRollOutPanel1.Placement := TacSide(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsRollOutPanel.sRadioGroup2Change(Sender: TObject);
const
  Size = 250;
begin
  sRollOutPanel1.Align := TAlign(sRadioGroup2.ItemIndex);
  if sRollOutPanel1.Align = alNone then
    sRollOutPanel1.SetBounds((sPanel2.Width - Size) div 2, (sPanel2.Height - Size) div 2, Size, Size)
  else
    sRollOutPanel1.SetBounds(sRollOutPanel1.Left, sRollOutPanel1.Top, Size, Size);
end;


procedure TFrameTsRollOutPanel.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sRollOutPanel1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsRollOutPanel.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sRollOutPanel1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsRollOutPanel.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sRollOutPanel1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsRollOutPanel.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sRollOutPanel1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsRollOutPanel.sTrackEdit1Change(Sender: TObject);
begin
  sRollOutPanel1.ButtonHeight := sTrackEdit1.AsInteger;
end;

end.
