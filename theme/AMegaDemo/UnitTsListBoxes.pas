unit UnitTsListBoxes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, sListBox,
  sCheckListBox;


type
  TFrameTsListBoxes = class(TFrameBaseMenu)
    sListBox1: TsListBox;
    sGroupBox4: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sColorBox2: TsColorBox;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sGroupBox1: TsGroupBox;
    sGroupBox5: TsGroupBox;
    sCheckBox5: TsCheckBox;
    sTrackBar3: TsTrackBar;
    sGroupBox6: TsGroupBox;
    sStickyLabel3: TsStickyLabel;
    sStickyLabel4: TsStickyLabel;
    sTrackBar4: TsTrackBar;
    sTrackBar5: TsTrackBar;
    sCheckListBox1: TsCheckListBox;
    sTrackEdit1: TsTrackEdit;
    sComboBox1: TsComboBox;
    sCheckBox6: TsCheckBox;
    sTrackEdit2: TsTrackEdit;
    sGroupBox2: TsGroupBox;
    sComboBox2: TsComboBox;
    sCheckBox1: TsCheckBox;
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
    procedure sTrackEdit6CloseUp(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sGroupBox5CheckBoxChanged(Sender: TObject);
    procedure sGroupBox6CheckBoxChanged(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sTrackBar4Change(Sender: TObject);
    procedure sTrackBar5Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
  public
    procedure AfterCreation; override;
  end;

var
  FrameTsListBoxes: TFrameTsListBoxes;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsListBoxes.AfterCreation;

  procedure FillListBox(Ctrl: TListBox);
  var
    i, j: integer;

    procedure AddHeader;
    begin
      if (Ctrl is TsCheckListBox) then begin
        Ctrl.Items.Add('Header item ' + IntToStr(j));
        TsCheckListBox(Ctrl).Header[Ctrl.Items.Count - 1] := True;
        inc(j);
      end;
    end;

  begin
    Ctrl.Items.BeginUpdate;
    j := 0;
    AddHeader;
    for i := 1 to 40 do begin
      Ctrl.Items.Add('Item ' + IntToStr(i));
      if i mod 5 = 0 then
        AddHeader;
    end;
    Ctrl.Items.EndUpdate;
  end;

begin
  FillListBox(sListBox1);
  FillListBox(sCheckListBox1);
end;


procedure TFrameTsListBoxes.sCheckBox1Click(Sender: TObject);
begin
  if sCheckBox1.Checked then begin
    sCheckListBox1.HeaderFont.Color := clRed;
    sCheckListBox1.HeaderFont.Style := [fsBold, fsUnderline];
  end;
  sCheckListBox1.HeaderFontInherite := not sCheckBox1.Checked;
end;


procedure TFrameTsListBoxes.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then begin
    sListBox1.SkinData.OuterEffects.Visibility := ovAlways;
    sCheckListBox1.SkinData.OuterEffects.Visibility := ovAlways;
  end
  else begin
    sListBox1.SkinData.OuterEffects.Visibility := ovNone;
    sCheckListBox1.SkinData.OuterEffects.Visibility := ovNone;
  end;
end;


procedure TFrameTsListBoxes.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then begin
    sListBox1.DisabledKind := sListBox1.DisabledKind + [dkBlended];
    sCheckListBox1.DisabledKind := sListBox1.DisabledKind + [dkBlended];
  end
  else begin
    sListBox1.DisabledKind := sListBox1.DisabledKind - [dkBlended];
    sCheckListBox1.DisabledKind := sListBox1.DisabledKind - [dkBlended];
  end;
end;


procedure TFrameTsListBoxes.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then begin
    sListBox1.DisabledKind := sListBox1.DisabledKind + [dkGrayed];
    sCheckListBox1.DisabledKind := sListBox1.DisabledKind + [dkGrayed];
  end
  else begin
    sListBox1.DisabledKind := sListBox1.DisabledKind - [dkGrayed];
    sCheckListBox1.DisabledKind := sListBox1.DisabledKind - [dkGrayed];
  end;
end;


procedure TFrameTsListBoxes.sCheckBox5Click(Sender: TObject);
begin
  sTrackBar3.Enabled := not sCheckBox5.Checked;
  if sCheckBox5.Checked then
    sListBox1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
  else
    sListBox1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;

  sListBox1.SkinData.HorzScrollData.ButtonsSize := sListBox1.SkinData.VertScrollData.ButtonsSize;
  sCheckListBox1.SkinData.VertScrollData.ButtonsSize := sListBox1.SkinData.VertScrollData.ButtonsSize;
  sCheckListBox1.SkinData.HorzScrollData.ButtonsSize := sListBox1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsListBoxes.sCheckBox6Click(Sender: TObject);
begin
  sListBox1.ShowLines := sCheckBox6.Checked;
  sCheckListBox1.ShowLines := sCheckBox6.Checked;
end;


procedure TFrameTsListBoxes.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sListBox1, clNone, sColorBox2.Selected);
  ChangeControlColors(sCheckListBox1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListBoxes.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  ChangeControlColors(sListBox1, clNone, NewColor);
  ChangeControlColors(sCheckListBox1, clNone, NewColor);
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsListBoxes.sComboBox1Change(Sender: TObject);
begin
  sListBox1.SkinData.SkinSection := sComboBox1.Text;
  sCheckListBox1.SkinData.SkinSection := sComboBox1.Text;
  if sCheckBox2.Checked then begin // Update shadows if exists
    sListBox1.SkinData.OuterEffects.Invalidate;
    sCheckListBox1.SkinData.OuterEffects.Invalidate;
  end;
end;


procedure TFrameTsListBoxes.sComboBox2Change(Sender: TObject);
begin
  sCheckListBox1.HeaderSkin := sComboBox2.Text;
end;


procedure TFrameTsListBoxes.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sListBox1.Enabled := not sGroupBox4.Checked;
  sCheckListBox1.Enabled := not sGroupBox4.Checked;
end;


procedure TFrameTsListBoxes.sGroupBox5CheckBoxChanged(Sender: TObject);
var
  bSize: integer;
begin
  sCheckBox5.Enabled := sGroupBox5.Checked;
  sTrackBar3.Enabled := not sCheckBox5.Checked and sCheckBox5.Enabled;
  if sGroupBox5.Checked then
    if sCheckBox5.Checked then
      bSize := -1 // Default size
    else
      bSize := sTrackBar3.Position
  else
    bSize := 0; // Not visible

  sListBox1.SkinData.VertScrollData.ButtonsSize := bSize; // Not visible
  sListBox1.SkinData.VertScrollData.ButtonsSize := bSize; // Not visible
  sCheckListBox1.SkinData.HorzScrollData.ButtonsSize := bSize;
  sCheckListBox1.SkinData.HorzScrollData.ButtonsSize := bSize;
end;


procedure TFrameTsListBoxes.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox6.Checked then begin
    sListBox1.SkinData.VertScrollData.ScrollWidth := -1; // Default system size will be used
    sListBox1.SkinData.HorzScrollData.ScrollWidth := -1;
    sCheckListBox1.SkinData.VertScrollData.ScrollWidth := -1; // Default system size will be used
    sCheckListBox1.SkinData.HorzScrollData.ScrollWidth := -1;
  end
  else begin
    sListBox1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
    sListBox1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
    sCheckListBox1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
    sCheckListBox1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
  end;
end;


procedure TFrameTsListBoxes.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sListBox1, clNone, clNone);
  ChangeControlColors(sCheckListBox1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsListBoxes.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sListBox1, slEditRedText, slEditRed);
  ChangeControlColors(sCheckListBox1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListBoxes.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sListBox1, slEditGreenText, slEditGreen);
  ChangeControlColors(sCheckListBox1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListBoxes.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sListBox1, slEditYellowText, slEditYellow);
  ChangeControlColors(sCheckListBox1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListBoxes.sTrackBar3Change(Sender: TObject);
begin
  sListBox1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;
  sListBox1.SkinData.HorzScrollData.ButtonsSize := sListBox1.SkinData.VertScrollData.ButtonsSize;
  sCheckListBox1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;
  sCheckListBox1.SkinData.HorzScrollData.ButtonsSize := sListBox1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsListBoxes.sTrackBar4Change(Sender: TObject);
begin
  sListBox1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
  sCheckListBox1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
end;


procedure TFrameTsListBoxes.sTrackBar5Change(Sender: TObject);
begin
  sListBox1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
  sCheckListBox1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
end;


procedure TFrameTsListBoxes.sTrackEdit1Change(Sender: TObject);
begin
  sListBox1.LeftPadding := sTrackEdit1.AsInteger;
  sCheckListBox1.LeftPadding := sTrackEdit1.AsInteger;
end;


procedure TFrameTsListBoxes.sTrackEdit2Change(Sender: TObject);
begin
  sListBox1.ItemHeight := sTrackEdit2.AsInteger;
  sCheckListBox1.ItemHeight := sTrackEdit2.AsInteger;
end;


procedure TFrameTsListBoxes.sTrackEdit6CloseUp(Sender: TObject);
begin
  sListBox1.BoundLabel.FTheLabel.Transparent := True;
  sCheckListBox1.BoundLabel.FTheLabel.Transparent := True;
end;


end.
