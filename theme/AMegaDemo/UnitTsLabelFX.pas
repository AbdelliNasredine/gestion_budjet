unit UnitTsLabelFX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ExtCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  sLabel, sFrameAdapter, sEdit, acPopupCtrls, sGroupBox, sRadioButton,
  sComboBoxes, sCheckBox, sPanel;


type
  TFrameTsLabelFX = class(TFrameBaseMenu)
    sTrackEdit1: TsTrackEdit;
    sGroupBox1: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sColorBox1: TsColorBox;
    sGroupBox2: TsGroupBox;
    sTrackEdit2: TsTrackEdit;
    sGroupBox3: TsGroupBox;
    sColorBox2: TsColorBox;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit4: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sPanel1: TsPanel;
    sLabelFX1: TsLabelFX;
    sRadioGroup1: TsRadioGroup;
    sRadioGroup2: TsRadioGroup;
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
  public
  end;

var
  FrameTsLabelFX: TFrameTsLabelFX;

implementation

{$R *.dfm}


procedure TFrameTsLabelFX.sCheckBox1Click(Sender: TObject);
begin
  sRadioGroup1.Enabled := not sCheckBox1.Checked;
  sRadioGroup2.Enabled := not sCheckBox1.Checked;
  if sCheckBox1.Checked then begin
    sLabelFX1.Left := 0;
    sLabelFX1.Top := 0;
    sLabelFX1.AutoSize := True;
  end
  else begin
    sLabelFX1.AutoSize := False;
    sLabelFX1.Align := alClient;
  end;
end;


procedure TFrameTsLabelFX.sColorBox1Change(Sender: TObject);
begin
  sLabelFX1.Kind.Color := sColorBox1.Selected;
end;


procedure TFrameTsLabelFX.sColorBox2Change(Sender: TObject);
begin
  sLabelFX1.Shadow.Color := sColorBox2.Selected;
end;


procedure TFrameTsLabelFX.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  // Quick update of child controls accessibility <<
  sGroupBox3.Checked := not sGroupBox3.Checked;
  sGroupBox3.Checked := not sGroupBox3.Checked;
  // >>
  if not sGroupBox2.Checked then
    sLabelFX1.Shadow.Mode := smNone
  else
    if not sGroupBox3.Checked then
      sLabelFX1.Shadow.Mode := smCustom
    else
      sLabelFX1.Shadow.Mode := smSkin1;
end;


procedure TFrameTsLabelFX.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  if not sGroupBox3.Checked then
    sLabelFX1.Shadow.Mode := smCustom
  else
    sLabelFX1.Shadow.Mode := smSkin1;
end;


procedure TFrameTsLabelFX.sRadioButton1Click(Sender: TObject);
begin
  sLabelFX1.Kind.KindType := TsKindType(TsRadioButton(Sender).Tag);
  sColorBox1.Enabled := (sLabelFX1.Kind.KindType = ktCustom);
end;


procedure TFrameTsLabelFX.sRadioGroup1Change(Sender: TObject);
begin
  sLabelFX1.Alignment := TAlignment(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsLabelFX.sRadioGroup2Change(Sender: TObject);
begin
  sLabelFX1.Layout := TTextLayout(sRadioGroup2.ItemIndex);
end;


procedure TFrameTsLabelFX.sTrackEdit1Change(Sender: TObject);
begin
  sLabelFX1.Angle := sTrackEdit1.asInteger;
end;


procedure TFrameTsLabelFX.sTrackEdit2Change(Sender: TObject);
begin
  sLabelFX1.Shadow.AlphaValue := sTrackEdit2.asInteger;
end;


procedure TFrameTsLabelFX.sTrackEdit3Change(Sender: TObject);
begin
  sLabelFX1.Shadow.BlurCount := sTrackEdit3.asInteger;
end;


procedure TFrameTsLabelFX.sTrackEdit4Change(Sender: TObject);
begin
  sLabelFX1.Shadow.Distance := sTrackEdit4.asInteger;
end;

end.
