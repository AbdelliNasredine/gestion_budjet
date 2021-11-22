unit UnitTsButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, ExtCtrls, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, ComCtrls,

  UnitBaseMenu,

  acAlphaImageList, sButton, sComboBox, sComboBoxes,
  sCheckBox, sGroupBox, sEdit, acPopupCtrls, sSpeedButton, sFrameAdapter, sLabel;


type
  TFrameTsButton = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sGroupBox3: TsGroupBox;
    sSpeedButton3: TsSpeedButton;
    sComboBox4: TsComboBox;
    sColorBox1: TsColorBox;
    sCheckBox9: TsCheckBox;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sVirtualImageList1: TsVirtualImageList;
    sCheckBox2: TsCheckBox;
    sButton1: TsButton;
    sCheckBox1: TsCheckBox;
    sLabel1: TsLabel;
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
    procedure AfterCreation; override;
//    procedure CheckDisableGroup;
  end;

var
  FrameTsButton: TFrameTsButton;

implementation

{$R *.dfm}

uses sVCLUtils, sConst, UnitDataModule, UnitMain;


const
  AlignmentArray:     array [0..2] of TAlignment         = (taLeftJustify, taRightJustify, taCenter);
  VertAlignmentArray: array [0..2] of TVerticalAlignment = (taAlignTop,    taAlignBottom,  taVerticalCenter);
  LayoutArray:        array [0..3] of TButtonLayout      = (blGlyphLeft,   blGlyphRight,   blGlyphTop,   blGlyphBottom);


procedure EnabledControls(Ctrl: TControl; Data: integer);
begin
  Ctrl.Enabled := not boolean(Data);
end;

{
procedure TFrameTsButton.CheckDisableGroup;
begin
  IterateControls(sGroupBox1, integer(sButton1.Enabled), EnabledControls);
  sCheckBox3.Enabled := not sButton1.Enabled;
  sCheckBox4.Enabled := not sButton1.Enabled;
end;
}

procedure TFrameTsButton.AfterCreation;
begin
  sCheckBox1.Enabled := not FormData.sSkinManager1.Active or FormData.sSkinManager1.ButtonsOptions.ShowFocusRect;
end;


procedure TFrameTsButton.sCheckBox1Click(Sender: TObject);
begin
  sButton1.ShowFocus := sCheckBox1.Checked;
end;


procedure TFrameTsButton.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sButton1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sButton1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsButton.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox3.Checked then
    sButton1.DisabledKind := sButton1.DisabledKind + [dkBlended]
  else
    sButton1.DisabledKind := sButton1.DisabledKind - [dkBlended];
end;


procedure TFrameTsButton.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sButton1.DisabledKind := sButton1.DisabledKind + [dkGrayed]
  else
    sButton1.DisabledKind := sButton1.DisabledKind - [dkGrayed];
end;


procedure TFrameTsButton.sCheckBox9Click(Sender: TObject);
begin
  sButton1.Reflected := sCheckBox9.Checked;
end;


procedure TFrameTsButton.sColorBox1Change(Sender: TObject);
begin
  sTrackEdit5.Value := 0;
  sTrackEdit5.OnChange(sTrackEdit5);
  sButton1.SkinData.ColorTone := sColorBox1.Selected;
  sTrackEdit5.Enabled := sColorBox1.Selected = clNone;
  sSpeedButton3.Enabled := sColorBox1.Selected <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsButton.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sTrackEdit5.Value := 0;
  sTrackEdit5.OnChange(sTrackEdit5);
  sButton1.SkinData.ColorTone := NewColor;
  sTrackEdit5.Enabled := NewColor = clNone;
  sSpeedButton3.Enabled := NewColor <> sColorBox1.NoneColorColor;
end;


procedure TFrameTsButton.sComboBox4Change(Sender: TObject);
begin
  sButton1.SkinData.SkinSection := sComboBox4.Text;
  if sCheckBox2.Checked then
    sButton1.SkinData.OuterEffects.Invalidate; // Update shadow if exists
end;


procedure TFrameTsButton.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sButton1.Enabled := not sGroupBox1.Checked;
end;


procedure TFrameTsButton.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox3.Checked then
    sButton1.Images := FormData.sCharImageList1
  else
    sButton1.Images := nil;
end;


procedure TFrameTsButton.sSpeedButton3Click(Sender: TObject);
begin
  sColorBox1.Selected := clNone;
  sSpeedButton3.Enabled := False;
  sColorBox1.OnChange(sColorBox1);
end;


procedure TFrameTsButton.sTrackEdit4Change(Sender: TObject);
begin
  sVirtualImageList1.AcBeginUpdate;
  sVirtualImageList1.Height := sTrackEdit4.AsInteger;
  sVirtualImageList1.Width := sTrackEdit4.AsInteger;
  sVirtualImageList1.AcEndUpdate;
end;


procedure TFrameTsButton.sTrackEdit5Change(Sender: TObject);
begin
  sButton1.SkinData.HUEOffset := sTrackEdit5.AsInteger;
end;

end.
