unit UnitTsTitleBar;
{$I sDefs.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,
{$IFDEF DELPHI_XE2}UITypes, {$ENDIF}
  acTitleBar, sCheckBox, sFrameAdapter, sGroupBox, sEdit, acPopupCtrls, sComboBox,
  sComboBoxes, sSpeedButton, sRadioButton, ComCtrls;


type
  TFrameTsTitleBar = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sGroupBox3: TsGroupBox;
    sComboBox1: TsComboBox;
    sComboBox2: TsComboBox;
    sEdit1: TsEdit;
    sCheckBox2: TsCheckBox;
    sSpeedButton1: TsSpeedButton;
    sColorBox2: TsColorBox;
    sGroupBox4: TsGroupBox;
    sComboBox3: TsComboBox;
    sGroupBox5: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sGroupBox6: TsGroupBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sComboBox4: TsComboBox;
    sGroupBox7: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sGroupBox5CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
  public
    CustomItem1: TacTitleBarItem;
    CustomItem2: TacTitleBarItem;
    AccessUpdating: boolean;
    procedure AfterCreation; override;
    procedure UpdateCtrlsAccess;
  end;

var
  FrameTsTitleBar: TFrameTsTitleBar;

implementation

{$R *.dfm}

uses sVCLUtils, acntUtils, sConst, sCommonData, UnitMain, UnitDataModule;


procedure EnableDisable(Ctrl: TControl; Data: integer);
var
  b: boolean;
begin
  b := boolean(Data);
  Ctrl.Enabled := b;
end;


procedure TFrameTsTitleBar.AfterCreation;
begin
  AccessUpdating := False;
  CustomItem1 := MainForm.sTitleBar1.Items[6];
  CustomItem2 := MainForm.sTitleBar1.Items[7];
  sGroupBox1.Checked := not MainForm.sSkinProvider1.UWPMode;
  sGroupBox2.Checked := MainForm.sSkinProvider1.TitleBar <> nil;
  inherited;
end;


procedure TFrameTsTitleBar.sCheckBox1Click(Sender: TObject);
begin
  MainForm.sTitleBar1.ShowCaption := sCheckBox1.Checked;
end;


procedure TFrameTsTitleBar.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    CustomItem1.DropDownMenu := FormData.PopupMenu1
  else
    CustomItem1.DropDownMenu := nil;

  MainForm.sTitleBar1.UpdateSizes;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sCheckBox3Click(Sender: TObject);
begin
  CustomItem1.Enabled := sCheckBox3.Checked;
end;


procedure TFrameTsTitleBar.sCheckBox4Click(Sender: TObject);
begin
  CustomItem1.StretchImage := sCheckBox4.Checked;
end;


procedure TFrameTsTitleBar.sCheckBox5Click(Sender: TObject);
begin
  CustomItem1.ShowHint := sCheckBox5.Checked;
end;


procedure TFrameTsTitleBar.sCheckBox6Click(Sender: TObject);
begin
  if sCheckBox6.Checked then
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style + [fsBold]
  else
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style - [fsBold];

  MainForm.sTitleBar1.UpdateSizes;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sCheckBox7Click(Sender: TObject);
begin
  if sCheckBox7.Checked then
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style + [fsItalic]
  else
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style - [fsItalic];

  MainForm.sTitleBar1.UpdateSizes;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sCheckBox8Click(Sender: TObject);
begin
  if sCheckBox8.Checked then
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style + [fsUnderline]
  else
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style - [fsUnderline];

  MainForm.sTitleBar1.UpdateSizes;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sCheckBox9Click(Sender: TObject);
begin
  if sCheckBox9.Checked then
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style + [fsStrikeOut]
  else
    CustomItem1.FontData.Font.Style := CustomItem1.FontData.Font.Style - [fsStrikeOut];

  MainForm.sTitleBar1.UpdateSizes;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sColorBox2Change(Sender: TObject);
begin
  CustomItem1.FontData.Font.Color := sColorBox2.Selected;
  CustomItem1.FontData.UseSysColor := False;
  MainForm.sTitleBar1.Invalidate;
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTitleBar.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  CustomItem1.FontData.Font.Color := NewColor;
  MainForm.sTitleBar1.Invalidate;
  CustomItem1.FontData.UseSysColor := OriginColor = NewColor;
  sSpeedButton1.Enabled := OriginColor <> NewColor;
end;


procedure TFrameTsTitleBar.sComboBox1Change(Sender: TObject);
begin
  CustomItem1.Align := TacItemAlign(sComboBox1.ItemIndex);
  CustomItem2.Align := TacItemAlign(sComboBox1.ItemIndex);
end;


procedure TFrameTsTitleBar.sComboBox2Change(Sender: TObject);
begin
  CustomItem1.Alignment := TAlignment(sComboBox2.ItemIndex);
end;


procedure TFrameTsTitleBar.sComboBox3Change(Sender: TObject);
begin
  CustomItem1.Cursor := -sComboBox3.ItemIndex;
end;


procedure TFrameTsTitleBar.sComboBox4Change(Sender: TObject);
begin
  CustomItem1.SkinSection := sComboBox4.Text;
end;


procedure TFrameTsTitleBar.sEdit1Change(Sender: TObject);
begin
  CustomItem1.Caption := sEdit1.Text;
end;


procedure TFrameTsTitleBar.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  FormData.EnableDisableSysBlur(not sGroupBox1.Checked);
  MainForm.sSkinProvider1.UWPMode := not sGroupBox1.Checked;

  MainForm.sSysButton1.Visible := not sGroupBox1.Checked;
  MainForm.sSysButton2.Visible := not sGroupBox1.Checked;
  MainForm.sSysButton3.Visible := not sGroupBox1.Checked;

  if sGroupBox1.Checked then begin
    sGroupBox2.Enabled := True;
    sGroupBox2CheckBoxChanged(sGroupBox2);
    sGroupBox3CheckBoxChanged(sGroupBox3);
  end
  else
    IterateControls(sGroupBox1, 0, EnableDisable);
end;


procedure TFrameTsTitleBar.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox2.Checked then begin
    MainForm.sSkinProvider1.TitleBar := MainForm.sTitleBar1;
    sTrackEdit1.Enabled := True;
    sTrackEdit3.Enabled := True;
    sCheckBox1.Enabled := True;
    if sGroupBox3.Checked then
      IterateControls(sGroupBox3, 1, EnableDisable);

    sGroupBox3CheckBoxChanged(sGroupBox3);
  end
  else begin
    MainForm.sSkinProvider1.TitleBar := nil;
    IterateControls(sGroupBox2, 0, EnableDisable);
  end;
end;


procedure TFrameTsTitleBar.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  CustomItem1.Visible := sGroupBox3.Checked;
  CustomItem2.Visible := sGroupBox3.Checked;
  UpdateCtrlsAccess;
end;


procedure TFrameTsTitleBar.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  CustomItem1.FontData.UseSysStyle := not sGroupBox4.Checked;
  MainForm.sTitleBar1.UpdateSizes;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  if not sGroupBox5.Checked then begin
    sComboBox4.ItemIndex := 1;
    sComboBox4.OnChange(sComboBox4);
    sComboBox4.BoundLabel.Active := True;
    CustomItem1.AutoSize := False;
    sTrackEdit4.MaxValue := ScaleInt(400, sTrackEdit4.SkinData);
    sTrackEdit4.Value := Round(sTrackEdit4.MaxValue / 2);
    sTrackEdit5.MaxValue := ScaleInt(52, sTrackEdit4.SkinData);
    sTrackEdit5.Value := Round(sTrackEdit5.MaxValue / 2);
  end
  else
    CustomItem1.AutoSize := True;
end;


procedure TFrameTsTitleBar.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  CustomItem1.ImageIndex := iff(sGroupBox6.Checked, 0, -1);
end;


procedure TFrameTsTitleBar.sRadioButton1Click(Sender: TObject);
begin
  CustomItem1.Style := TacBtnStyle(TsRadioButton(Sender).Tag);
  CustomItem1.Down := False;
  sComboBox3.Enabled := CustomItem1.Style in [bsButton, bsMenu, bsTab];
  sCheckBox2.Enabled := CustomItem1.Style in [bsButton, bsMenu];
  sCheckBox5.Enabled := CustomItem1.Style in [bsButton, bsMenu, bsTab];
  sCheckBox5.Checked := sCheckBox5.Checked and (CustomItem1.Style in [bsButton, bsMenu, bsTab]);
end;


procedure TFrameTsTitleBar.sSpeedButton1Click(Sender: TObject);
begin
  CustomItem1.FontData.UseSysColor := True;
  sColorBox2.Selected := clNone;
  MainForm.sTitleBar1.Invalidate;
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsTitleBar.sTrackEdit1Change(Sender: TObject);
begin
  MainForm.sTitleBar1.ItemsMargin := sTrackEdit1.AsInteger;
  MainForm.sTitleBar1.UpdateSizes;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sTrackEdit2Change(Sender: TObject);
begin
  if FrameCreated then
    CustomItem1.Spacing := sTrackEdit2.AsInteger;
end;


procedure TFrameTsTitleBar.sTrackEdit3Change(Sender: TObject);
begin
  MainForm.sTitleBar1.RightSpacing := sTrackEdit3.AsInteger;
  MainForm.sTitleBar1.Invalidate;
end;


procedure TFrameTsTitleBar.sTrackEdit4Change(Sender: TObject);
begin
  if FrameCreated then begin
    CustomItem1.Width := sTrackEdit4.AsInteger;
    MainForm.sTitleBar1.UpdateSizes;
    MainForm.sTitleBar1.Invalidate;
  end;
end;


procedure TFrameTsTitleBar.sTrackEdit5Change(Sender: TObject);
begin
  if FrameCreated then
    CustomItem1.Height := sTrackEdit5.AsInteger;
end;


procedure TFrameTsTitleBar.UpdateCtrlsAccess;
begin
  sGroupBox3.Enabled := sGroupBox2.Enabled and sGroupBox2.Checked;
  if sGroupBox3.Enabled and sGroupBox3.Checked and not AccessUpdating then begin
    AccessUpdating := True;

    sCheckBox2.Enabled := CustomItem1.Style in [bsButton, bsMenu];
    sCheckBox5.Enabled := CustomItem1.Style in [bsButton, bsMenu, bsTab];
    sCheckBox5.Checked := sCheckBox5.Checked and (CustomItem1.Style in [bsButton, bsMenu, bsTab]);

    sTrackEdit4.Enabled := not sGroupBox5.Checked;
    sTrackEdit5.Enabled := not sGroupBox5.Checked;

    sTrackEdit2.Enabled := sGroupBox6.Checked;
    sCheckBox4.Enabled := False;

    sSpeedButton1.Enabled := not CustomItem1.FontData.UseSysColor;

    sCheckBox6.Enabled := sGroupBox4.Checked;
    sCheckBox7.Enabled := sGroupBox4.Checked;
    sCheckBox8.Enabled := sGroupBox4.Checked;
    sCheckBox9.Enabled := sGroupBox4.Checked;

    sGroupBox4.Checked := sGroupBox4.Checked;

    if MainForm.sSkinProvider1.TitleBar = nil then
      sGroupBox2.Checked := False;

    sGroupBox3.Enabled := sGroupBox2.Checked;
    AccessUpdating := False;
  end;
end;

end.
