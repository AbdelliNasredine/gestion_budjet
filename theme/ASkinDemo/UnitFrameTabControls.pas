unit UnitFrameTabControls;
{$I sDefs.inc}

interface           

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  {$IFDEF DELPHI_XE2}UITypes, {$ENDIF}
  sTabControl, sCheckbox, sRadioButton, sPanel, sGroupBox, sPageControl, sFrameAdapter, sTrackBar, sListView, sComboBox, sSpeedButton,
  UnitFrameCustom, sLabel, acAlphaImageList, acArcControls, sButton;


type
  TFrame_TabControls = class(TCustomInfoFrame)
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet5: TsTabSheet;
    sPageControl2: TsPageControl;
    sTabSheet8: TsTabSheet;
    sTabSheet9: TsTabSheet;
    sCheckBox17: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sRadioGroup1: TsRadioGroup;
    sRadioGroup2: TsRadioGroup;
    sRadioGroup3: TsRadioGroup;
    sGroupBox1: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sTabSheet2: TsTabSheet;
    sTabSheet3: TsTabSheet;
    sRadioGroup4: TsRadioGroup;
    sCheckBox1: TsCheckBox;
    sComboBox1: TsComboBox;
    sRadioGroup5: TsRadioGroup;
    sVirtualImageList1: TsVirtualImageList;
    sRoundBtn1: TsRoundBtn;
    sRoundBtn2: TsRoundBtn;
    procedure sComboBox1Change(Sender: TObject);
    procedure sPageControl1CloseBtnClick(Sender: TComponent; TabIndex: Integer; var CanClose: Boolean; var Action: TacCloseAction);
    procedure sCheckBox17Click(Sender: TObject);
    procedure sTabSheet5ClickBtn(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sRadioGroup1Click(Sender: TObject);
    procedure sRadioGroup2Click(Sender: TObject);
    procedure sRadioGroup3Click(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sRadioGroup4CheckBoxChanged(Sender: TObject);
    procedure sRadioGroup4Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sRadioGroup5Change(Sender: TObject);
  public
    procedure AfterCreation; override;
    procedure SkinActiveChanged; override;
    procedure AdjustTabsSize;
  end;


implementation


uses commctrl, sVclUtils, sSkinProps, MainUnit, acntUtils;

{$R *.DFM}

procedure TFrame_TabControls.sComboBox1Change(Sender: TObject);
begin
  sPageControl1.SkinData.SkinSection := sComboBox1.Text;
end;


procedure TFrame_TabControls.AfterCreation;
begin
  sCheckBox5.Enabled := MainForm.sSkinManager1.Active;
end;


procedure TFrame_TabControls.sPageControl1CloseBtnClick(Sender: TComponent; TabIndex: Integer; var CanClose: Boolean; var Action: TacCloseAction);
begin
  if sPageControl1.Pages[TabIndex] = sTabSheet1 then begin
    CanClose := False;
    Alert('Closing of this page is not allowed. Sorry.'#13#10'Look the sPageControl1.OnCloseBtnClick event'#13#10'if you wish to change it.');
  end
  else
    CanClose := MessageDlg('Close ' + sPageControl1.Pages[TabIndex].Caption + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;


procedure TFrame_TabControls.sCheckBox17Click(Sender: TObject);
begin
  if sPageControl2 <> nil then
    sPageControl2.RotateCaptions := sCheckBox17.Checked;

  AdjustTabsSize;
end;


procedure TFrame_TabControls.sCheckBox1Click(Sender: TObject);
begin
  sTabSheet1.UseCloseBtn := sCheckBox1.Checked;
end;


procedure TFrame_TabControls.sTabSheet5ClickBtn(Sender: TObject);
var
  ts: TsTabSheet;
begin
  // Create new page
  ts := TsTabSheet.Create(sPageControl1);
  ts.ImageIndex := Random(sPageControl1.Images.Count - 1);
  ts.Caption := 'sTabSheet' + IntToStr(sPageControl1.PageCount);
  ts.PageControl := sPageControl1;
  // Change index of the page with '+' button
  sTabSheet5.PageIndex := sPageControl1.PageCount - 1;
end;


procedure TFrame_TabControls.AdjustTabsSize;
var
  IsVertical: boolean;
  h, w: integer;
begin
  if sPageControl2 <> nil then begin
    IsVertical := ((sPageControl2.TabPosition in [tpLeft, tpRight]) and not sPageControl2.RotateCaptions) or
                  ((sPageControl2.TabPosition in [tpTop, tpBottom]) and sPageControl2.RotateCaptions);

    if sPageControl2.GlyphLayout = glLeft then
      if IsVertical then begin
        h := 130;
        w := 42;
      end
      else begin
        h := 42;
        w := 130;
      end
    else
      if IsVertical then begin
        h := 96;
        w := 66;
      end
      else begin
        h := 66;
        w := 96;
      end;

    if sPageControl2.TabPosition in [tpLeft, tpRight] then begin
      sPageControl2.TabHeight := w;
      sPageControl2.TabWidth := h;
    end
    else begin
      sPageControl2.TabHeight := h;
      sPageControl2.TabWidth := w;
    end;
  end;
end;


procedure TFrame_TabControls.sCheckBox4Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to sPageControl2.PageCount - 1 do
    TsTabSheet(sPageControl2.Pages[i]).SkinData.CustomFont := sCheckBox4.Checked;
end;


procedure TFrame_TabControls.sCheckBox5Click(Sender: TObject);
begin
  sPageControl2.ActiveTabEnlarged := sCheckBox5.Checked;
end;


procedure TFrame_TabControls.sCheckBox6Click(Sender: TObject);
begin
  sPageControl2.ActiveIsBold := sCheckBox6.Checked;
end;


procedure TFrame_TabControls.sRadioGroup1Click(Sender: TObject);
const
  TabsAlignments: array [0..2] of TAlignment = (taLeftJustify, taRightJustify, taCenter);
begin
  sPageControl2.TabAlignment := TabsAlignments[sRadioGroup1.ItemIndex];
end;


procedure TFrame_TabControls.sRadioGroup2Click(Sender: TObject);
const
  TabsPositions: array [0..3] of TTabPosition = (tpTop, tpBottom, tpLeft, tpRight);
begin
  sPageControl2.TabPosition := TabsPositions[sRadioGroup2.ItemIndex];
  if sPageControl2.TabPosition in [tpTop, tpBottom] then
    sPageControl2.MultiLine := False;

//  sCheckBox8.Enabled    := sPageControl2.TabPosition in [tpTop, tpBottom];
  sRadioGroup3.Enabled := sPageControl2.TabPosition = tpTop;
  if not sRadioGroup3.Enabled then
    sRadioGroup3.ItemIndex := 0;

  AdjustTabsSize;
end;


procedure TFrame_TabControls.sRadioGroup3Click(Sender: TObject);
const
  TabStyles: array [0..2] of TTabStyle = (tsTabs, tsButtons, tsFlatButtons);
begin
  sPageControl2.Style := TabStyles[sRadioGroup3.ItemIndex];
  sComboBox1.ItemIndex := integer(sPageControl2.Style = tsTabs);
  sPageControl2.SkinData.SkinSection := sComboBox1.Text;
end;


procedure TFrame_TabControls.sRadioGroup4Change(Sender: TObject);
begin
  sPageControl1.CloseBtnVisibility := TacCloseBtnVisibility(sRadioGroup4.ItemIndex);
  sPageControl2.CloseBtnVisibility := TacCloseBtnVisibility(sRadioGroup4.ItemIndex);
  AdjustTabsSize;
end;


procedure TFrame_TabControls.sRadioGroup4CheckBoxChanged(Sender: TObject);
begin
  sPageControl1.ShowCloseBtns := sRadioGroup4.Checked;
  sPageControl2.ShowCloseBtns := sRadioGroup4.Checked;
end;


procedure TFrame_TabControls.sRadioGroup5Change(Sender: TObject);
begin
  sPageControl2.GlyphLayout := TacGlyphLayout(sRadioGroup5.ItemIndex);
  AdjustTabsSize;
end;


procedure TFrame_TabControls.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sTabSheet8.Enabled := not sGroupBox1.Checked;
  sCheckBox3.Enabled := sGroupBox1.Checked;
end;


procedure TFrame_TabControls.SkinActiveChanged;
begin
  sCheckBox5.Enabled := MainForm.sSkinManager1.Active;
end;


procedure TFrame_TabControls.sCheckBox3Click(Sender: TObject);
begin
  sPageControl2.AccessibleDisabledPages := sCheckBox3.Checked;
end;

end.
