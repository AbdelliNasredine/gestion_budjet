unit UnitTsMagnifier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  acMagn, sComboBoxes, sTrackBar, sCheckBox, sGroupBox,
  sSpeedButton, sLabel, sFrameAdapter, sEdit, acPopupCtrls, ComCtrls;


type
  TFrameTsMagnifier = class(TFrameBaseMenu)
    sSpeedButton1: TsSpeedButton;
    sRadioGroup2: TsRadioGroup;
    sCheckBox1: TsCheckBox;
    sColorBox1: TsColorBox;
    sCheckBox3: TsCheckBox;
    sRadioGroup1: TsRadioGroup;
    sCheckBox2: TsCheckBox;
    sTrackEdit1: TsTrackEdit;
    sMagnifier1: TsMagnifier;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit1SetTextFromValue(Sender: TObject; var AText: string);
    procedure sMagnifier1GetSourceCoords(var ATopLeft: TPoint);
    procedure sMagnifier1DblClick(Sender: TObject);
  public
    CustomMagnifierSource: boolean;
  end;

var
  FrameTsMagnifier: TFrameTsMagnifier;

implementation

{$R *.dfm}

uses sVclUtils, sConst, UnitDataModule;


procedure TFrameTsMagnifier.sCheckBox1Click(Sender: TObject);
begin
  sMagnifier1.ShowPopupMenu := sCheckBox1.Checked;
end;


procedure TFrameTsMagnifier.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sMagnifier1.OnGetSourceCoords := sMagnifier1GetSourceCoords
  else
    sMagnifier1.OnGetSourceCoords := nil;
{

  CustomMagnifierSource := sCheckBox2.Checked;}
  sMagnifier1.Refresh(False);
end;


procedure TFrameTsMagnifier.sCheckBox3Click(Sender: TObject);
begin
  sMagnifier1.SizingMode := TacSizingMode(integer(sCheckBox3.Checked));
end;


procedure TFrameTsMagnifier.sColorBox1Change(Sender: TObject);
begin
  if sMagnifier1.BorderColor <> sColorBox1.Selected then begin
    sMagnifier1.BorderColor := sColorBox1.Selected;
    sMagnifier1.Refresh(True);
  end;
end;


procedure TFrameTsMagnifier.sMagnifier1DblClick(Sender: TObject);
begin
  sMagnifier1.Hide;
end;


procedure TFrameTsMagnifier.sMagnifier1GetSourceCoords(var ATopLeft: TPoint);
begin
//  if CustomMagnifierSource then begin
    ATopLeft := acMousePos; // Current coords of mouse cursor
    if Assigned(acMagnForm) then begin // If magnifier window is created
      dec(ATopLeft.X, acMagnForm.Width  div (sMagnifier1.Scaling * 2)); // Offset a position for showing in the magnifier center
      dec(ATopLeft.Y, acMagnForm.Height div (sMagnifier1.Scaling * 2));
    end;
//  end;
end;

procedure TFrameTsMagnifier.sRadioGroup1Change(Sender: TObject);
begin
  sColorBox1.Enabled := sRadioGroup1.ItemIndex = ord(bsFlat);
  if sMagnifier1.BorderStyle <> TacBorderStyle(sRadioGroup1.ItemIndex) then begin
    sMagnifier1.BorderStyle := TacBorderStyle(sRadioGroup1.ItemIndex);
    sMagnifier1.Refresh(True);
  end;
end;


procedure TFrameTsMagnifier.sRadioGroup2Change(Sender: TObject);
begin
  if sMagnifier1.Style <> TacMagnStyle(sRadioGroup2.ItemIndex) then begin
    sMagnifier1.Style := TacMagnStyle(sRadioGroup2.ItemIndex);
    sMagnifier1.Refresh(True);
  end;
end;


procedure TFrameTsMagnifier.sSpeedButton1Click(Sender: TObject);
begin
  sMagnifier1.Execute;
end;


procedure TFrameTsMagnifier.sTrackEdit1Change(Sender: TObject);
begin
  sMagnifier1.Scaling := sTrackEdit1.AsInteger;
end;


procedure TFrameTsMagnifier.sTrackEdit1SetTextFromValue(Sender: TObject; var AText: string);
begin
  AText := IntToStr(sTrackEdit1.AsInteger) + 'x';
end;

end.
