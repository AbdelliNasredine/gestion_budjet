unit UnitTsSkinProvider;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sSkinProvider, sCheckBox, sGroupBox, sEdit, sBitBtn,
  sComboBoxes, acPopupCtrls, sComboBox, ComCtrls;

type
  TFrameTsSkinProvider = class(TFrameBaseMenu)
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sCheckBox4: TsCheckBox;
    sGroupBox2: TsGroupBox;
    sCheckBox10: TsCheckBox;
    sEdit1: TsEdit;
    sRadioGroup1: TsRadioGroup;
    sGroupBox3: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sColorBox1: TsColorBox;
    sCheckBox1: TsCheckBox;
    sBitBtn1: TsBitBtn;
    sComboBox1: TsComboBox;
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sCheckBox10Click(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
  public
  end;

var
  FrameTsSkinProvider: TFrameTsSkinProvider;

implementation

{$R *.dfm}

uses acntTypes, UnitMain;

procedure TFrameTsSkinProvider.sBitBtn1Click(Sender: TObject);
begin
  MainForm.Enabled := False;
  ShowMessage('MainForm is disabled');
  MainForm.Enabled := True;
end;


procedure TFrameTsSkinProvider.sCheckBox10Click(Sender: TObject);
begin
  MainForm.sSkinProvider1.AddedTitle.ShowMainCaption := sCheckBox10.Checked;
end;


procedure TFrameTsSkinProvider.sCheckBox1Click(Sender: TObject);
begin
  MainForm.sSkinProvider1.DisabledBlured := sCheckBox1.Checked;
end;


procedure TFrameTsSkinProvider.sCheckBox2Click(Sender: TObject);
begin
  MainForm.sSkinProvider1.AllowExtBorders := sCheckBox2.Checked;
  sComboBox1.Enabled := not sCheckBox2.Checked and sGroupBox1.Checked;
end;


procedure TFrameTsSkinProvider.sCheckBox3Click(Sender: TObject);
begin
  MainForm.sSkinProvider1.DrawNonClientArea := sCheckBox3.Checked;
  sCheckBox2.Enabled := sCheckBox3.Checked;
  sCheckBox6.Enabled := sCheckBox3.Checked;
end;


procedure TFrameTsSkinProvider.sCheckBox4Click(Sender: TObject);
begin
  MainForm.sSkinProvider1.ShowAppIcon := sCheckBox4.Checked;
end;


procedure TFrameTsSkinProvider.sCheckBox6Click(Sender: TObject);
begin
  MainForm.sSkinProvider1.AllowAnimation := sCheckBox6.Checked;
end;


procedure TFrameTsSkinProvider.sCheckBox8Click(Sender: TObject);
begin
  MainForm.sSkinProvider1.ScreenSnap := sCheckBox8.Checked;
end;


procedure TFrameTsSkinProvider.sColorBox1Change(Sender: TObject);
begin
  MainForm.sSkinProvider1.DisabledBlendColor := sColorBox1.Selected;
end;


procedure TFrameTsSkinProvider.sComboBox1Change(Sender: TObject);
begin
  MainForm.sSkinProvider1.TitleSkin := sComboBox1.Text;
end;


procedure TFrameTsSkinProvider.sEdit1Change(Sender: TObject);
begin
  MainForm.sSkinProvider1.AddedTitle.Text := sEdit1.Text;
end;


procedure TFrameTsSkinProvider.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  MainForm.sSkinProvider1.UWPMode := sGroupBox1.Checked;
  if not sGroupBox1.Checked then
    MainForm.PanelMain.SkinData.OpaqueMode := omAuto;

  MainForm.sSysButton1.Visible := sGroupBox1.Checked;
  MainForm.sSysButton2.Visible := sGroupBox1.Checked;
  MainForm.sSysButton3.Visible := sGroupBox1.Checked;
  sComboBox1.Enabled := not sCheckBox2.Checked and sGroupBox1.Checked;
  sCheckBox3.Enabled := not sGroupBox1.Checked;
end;


procedure TFrameTsSkinProvider.sRadioGroup1Change(Sender: TObject);
begin
  MainForm.sSkinProvider1.CaptionAlignment := TAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsSkinProvider.sTrackEdit1Change(Sender: TObject);
begin
  MainForm.sSkinProvider1.DisabledBlendValue := sTrackEdit1.AsInteger;
  sColorBox1.Enabled := sTrackEdit1.AsInteger <> MaxByte;
end;


end.
