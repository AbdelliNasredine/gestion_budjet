unit UnitFrameEditCtrls;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ComCtrls,

  sFrameAdapter, sMemo, sComboBoxes, sTooledit, sCurrencyEdit, sComboEdit, sCurrEdit, sCustomComboEdit, sEdit,
  sSpinEdit, sComboBox, sMaskEdit, sListBox, sLabel, sRichEdit, sButton, sDialogs, sCheckListBox, sTreeView,
  sCheckBox, sGroupBox, sFileCtrl, sFontCtrls,

  UnitFrameCustom, Buttons, sBitBtn, ImgList, acAlphaImageList,
  acPopupCtrls;
  

type
  TFrame_EditCtrls = class(TCustomInfoFrame)
    sMemo1: TsMemo;
    sSpinEdit1: TsSpinEdit;
    sEdit1: TsEdit;
    sMaskEdit1: TsMaskEdit;
    sRichEdit1: TsRichEdit;
    sButton1: TsBitBtn;
    sOpenDialog1: TOpenDialog;
    sTreeView1: TsTreeView;
    sTimePicker1: TsTimePicker;
    sDateEdit1: TsDateEdit;
    sCalcEdit1: TsCalcEdit;
    sComboEdit1: TsComboEdit;
    sCurrencyEdit1: TsCurrencyEdit;
    sFilenameEdit1: TsFilenameEdit;
    sDirectoryEdit1: TsDirectoryEdit;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sDecimalSpinEdit1: TsDecimalSpinEdit;
    sTrackEdit1: TsTrackEdit;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    procedure sButton1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sComboEdit1ButtonClick(Sender: TObject);
  public
    procedure SetEditColors(SetCustom: boolean);
    procedure AfterCreation; override;
    procedure AfterSkinChange; override;
  end;


implementation

uses MainUnit,
  sCommonData, sVCLUtils, sConst, sMessages, sSkinManager;

{$R *.DFM}

procedure TFrame_EditCtrls.AfterSkinChange;
begin
  SetEditColors(sCheckBox8.Checked);
end;


procedure TFrame_EditCtrls.sButton1Click(Sender: TObject);
begin
  if sOpenDialog1.Execute then
    sRichedit1.Lines.LoadFromFile(sOpenDialog1.fileName);
end;


procedure TFrame_EditCtrls.sCheckBox1Click(Sender: TObject);
begin
  sSpinEdit1.ShowSpinButtons := sCheckBox1.Checked;
  sTimePicker1.ShowSpinButtons := sCheckBox1.Checked;
  sDecimalSpinEdit1.ShowSpinButtons := sCheckBox1.Checked;
  sCheckBox2.Enabled := sCheckBox1.Checked;
end;


procedure TFrame_EditCtrls.sCheckBox2Click(Sender: TObject);
begin
  sSpinEdit1.FlatSpinButtons := sCheckBox2.Checked;
  sTimePicker1.FlatSpinButtons := sCheckBox2.Checked;
  sDecimalSpinEdit1.FlatSpinButtons := sCheckBox2.Checked;
end;


procedure ChangeVisible(Ctrl: TControl; Data: integer);
begin
  if Ctrl is TsEditLabel then
    Ctrl.Visible := boolean(Data);
end;

procedure TFrame_EditCtrls.sCheckBox3Click(Sender: TObject);
begin
  IterateControls(Self, Integer(sCheckBox3.Checked), ChangeVisible);
end;


procedure ChangeDirectInput(Ctrl: TControl; Data: integer);
begin
  if Ctrl is TsCustomComboEdit then
    TsComboEdit(Ctrl).DirectInput := boolean(Data);
end;

procedure TFrame_EditCtrls.sCheckBox4Click(Sender: TObject);
begin
  IterateControls(Self, Integer(sCheckBox4.Checked), ChangeDirectInput);
end;


procedure GlyphsRepaint(Ctrl: TControl; Data: integer);
begin
  if Ctrl is TsCustomComboEdit then begin
    TsComboEdit(Ctrl).Perform(SM_ALPHACMD, AC_REFRESH_HI, 0);
    TsComboEdit(Ctrl).SkinData.Invalidate;
  end;
end;


procedure TFrame_EditCtrls.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then begin
    sCheckBox9.Checked := False;
    sCheckBox9.OnClick(sCheckBox9);
    sCheckBox9.Enabled := False;
  end
  else
    sCheckBox9.Enabled := True;

  sConst.ac_OldGlyphsMode := sCheckBox5.Checked;
  IterateControls(Self, Integer(sCheckBox5.Checked), GlyphsRepaint);
end;


procedure ChangeShowButton(Ctrl: TControl; Data: integer);
begin
  if (Ctrl is TsCustomComboEdit) and not (Ctrl is TsCurrencyEdit) then
    TsComboEdit(Ctrl).ShowButton := boolean(Data);
end;


procedure TFrame_EditCtrls.sCheckBox6Click(Sender: TObject);
begin
  IterateControls(Self, Integer(sCheckBox6.Checked), ChangeShowButton);
end;


procedure TFrame_EditCtrls.AfterCreation;
var
  i: integer;
begin
  sCheckBox8Click(sCheckBox8);
  sTreeView1.Items.BeginUpdate;
  for i := 1 to 100 do
    with sTreeView1.Items.Add(nil, 'Item ' + IntToStr(i)) do
      ImageIndex := Random(20);

  sTreeView1.Items.EndUpdate;
end;


procedure TFrame_EditCtrls.sCheckBox7Click(Sender: TObject);
var
  i: integer;
  BoundLabel: TsBoundLabel;
begin
  for i := 0 to ControlCount - 1 do begin
    if Controls[i] is TsCustomComboEdit then
      BoundLabel := TsCustomComboEdit(Controls[i]).BoundLabel
    else
      if Controls[i] is TsMaskEdit then
        BoundLabel := TsMaskEdit(Controls[i]).BoundLabel
      else
        if Controls[i] is TsBaseSpinEdit then
          BoundLabel := TsBaseSpinEdit(Controls[i]).BoundLabel
        else
          if Controls[i] is TsEdit then
            BoundLabel := TsEdit(Controls[i]).BoundLabel
          else
            BoundLabel := nil;

      if (BoundLabel <> nil) then
        if sCheckBox7.Checked then
          BoundLabel.Layout := sclLeftLeft
        else
          BoundLabel.Layout := sclLeft;
  end;
end;


procedure TFrame_EditCtrls.sCheckBox8Click(Sender: TObject);
begin
  SetEditColors(sCheckBox8.Checked);
end;


procedure TFrame_EditCtrls.sCheckBox9Click(Sender: TObject);
begin
  if sCheckBox9.Checked then begin
    sComboEdit1.GlyphMode.ColorTone     := $00FF8000;
    sDateEdit1.GlyphMode.ColorTone      := $00004DEC;
    sCalcEdit1.GlyphMode.ColorTone      := $000E87A5;
    sFilenameEdit1.GlyphMode.ColorTone  := $002F8A5A;
    sDirectoryEdit1.GlyphMode.ColorTone := $00149E1F;
  end
  else begin
    sComboEdit1.GlyphMode.ColorTone     := clNone;
    sDateEdit1.GlyphMode.ColorTone      := clNone;
    sCalcEdit1.GlyphMode.ColorTone      := clNone;
    sFilenameEdit1.GlyphMode.ColorTone  := clNone;
    sDirectoryEdit1.GlyphMode.ColorTone := clNone;
  end;
end;


procedure TFrame_EditCtrls.sComboEdit1ButtonClick(Sender: TObject);
var
  cd: TsColorDialog;
begin
  cd := TsColorDialog.Create(Self);
  cd.Color := sComboEdit1.AddedGlyph.ColorTone;
  if cd.Execute then
    sComboEdit1.AddedGlyph.ColorTone := cd.Color;

  cd.Free;
end;


procedure TFrame_EditCtrls.SetEditColors(SetCustom: boolean);
begin
  if SetCustom then begin
    ChangeControlColors(sEdit1,         acColorToRGB(slEditGreenText),  acColorToRGB(slEditGreen));
    ChangeControlColors(sMaskEdit1,     acColorToRGB(slEditYellowText), acColorToRGB(slEditYellow));
    ChangeControlColors(sCurrencyEdit1, acColorToRGB(slEditRedText),    acColorToRGB(slEditRed));
  end
  else begin
    ChangeControlColors(sEdit1,         acColorToRGB(clWindowText), acColorToRGB(clWindow));
    ChangeControlColors(sMaskEdit1,     acColorToRGB(clWindowText), acColorToRGB(clWindow));
    ChangeControlColors(sCurrencyEdit1, acColorToRGB(clWindowText), acColorToRGB(clWindow));
  end;
end;

end.
