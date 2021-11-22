unit UnitTsOthers1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ToolWin,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls, ExtCtrls,

  acCoolBar, sToolBar, sGauge, acProgressBar, sTabControl, sFrameAdapter,
  sPanel, sEdit, sCheckBox, sComboBox, sRadioButton, Menus, sGroupBox;

type
  TFrameTsOthers1 = class(TFrameBaseMenu)
    sPanel1: TsPanel;
    sCoolBar1: TsCoolBar;
    sToolBar1: TsToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    sTabControl1: TsTabControl;
    sGauge1: TsGauge;
    sGauge2: TsGauge;
    sRadioButton1: TsRadioButton;
    sComboBox1: TsComboBox;
    sComboBox2: TsComboBox;
    sRadioButton2: TsRadioButton;
    sProgressBar2: TsProgressBar;
    sCheckBox1: TsCheckBox;
    sProgressBar1: TsProgressBar;
    sToolBar2: TsToolBar;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    sCheckBox3: TsCheckBox;
    PopupMenu1: TPopupMenu;
    I1: TMenuItem;
    I2: TMenuItem;
    I3: TMenuItem;
    I4: TMenuItem;
    I5: TMenuItem;
    sGroupBox1: TsGroupBox;
    sEdit1: TsEdit;
    procedure sRadioButton1Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
  public
  end;

var
  FrameTsOthers1: TFrameTsOthers1;

implementation

{$R *.dfm}

uses UnitDataModule, sConst;

procedure TFrameTsOthers1.sCheckBox1Click(Sender: TObject);
begin
  sGauge1.Animated := sCheckBox1.Checked;
  sGauge2.Animated := sCheckBox1.Checked;
end;


procedure TFrameTsOthers1.sCheckBox3Click(Sender: TObject);
begin
  sGauge1.Skindata.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox3.Checked));
  sGauge2.Skindata.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox3.Checked));
  sProgressBar1.Skindata.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox3.Checked));
  sProgressBar2.Skindata.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox3.Checked));
  sTabControl1.Skindata.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox3.Checked));
  sCoolBar1.Skindata.OuterEffects.Visibility := TacOuterVisibility(integer(sCheckBox3.Checked));
end;


procedure TFrameTsOthers1.sComboBox1Change(Sender: TObject);
begin
  sGauge1.Skindata.SkinSection := sComboBox1.Text;
  sGauge2.Skindata.SkinSection := sComboBox1.Text;
  sProgressBar1.Skindata.SkinSection := sComboBox1.Text;
  sProgressBar2.Skindata.SkinSection := sComboBox1.Text;
end;


procedure TFrameTsOthers1.sComboBox2Change(Sender: TObject);
begin
  sGauge1.ProgressSkin := sComboBox2.Text;
  sGauge2.ProgressSkin := sComboBox2.Text;
  sProgressBar1.ProgressSkin := sComboBox2.Text;
  sProgressBar2.ProgressSkin := sComboBox2.Text;
end;


procedure TFrameTsOthers1.sEdit1Change(Sender: TObject);
begin
  sGauge1.Suffix := sEdit1.Text;
end;


procedure TFrameTsOthers1.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sGauge1.ShowText := sGroupBox1.Checked;
  sGauge2.ShowText := sGroupBox1.Checked;
end;


procedure TFrameTsOthers1.sRadioButton1Click(Sender: TObject);
begin
  sProgressBar1.Style := TProgressBarStyle(TsRadioButton(Sender).Tag);
end;

end.
