unit UnitTsAlphaHints;
{$I sDefs.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,
  {$IFNDEF DELPHI5} Types, {$ENDIF}

  sFrameAdapter, acAlphaImageList, acAlphaHints, sListBox,
  sSpeedButton, sCheckBox, sBitBtn, sLabel, sRadioButton, sGroupBox,
  acImage, ExtCtrls, sEdit;


type
  TFrameTsAlphaHints = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sGroupBox2: TsGroupBox;
    sBitBtn7: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sBitBtn5: TsBitBtn;
    sGroupBox3: TsGroupBox;
    sSpeedButton1: TsSpeedButton;
    sListBox1: TsListBox;
    sGroupBox4: TsGroupBox;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sRadioButton6: TsRadioButton;
    sRadioButton7: TsRadioButton;
    Timer1: TTimer;
    sCharImageList1: TsCharImageList;
    sGroupBox5: TsGroupBox;
    sBitBtn4: TsBitBtn;
    sEdit1: TsEdit;
    procedure sBitBtn5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sRadioButton2Click(Sender: TObject);
    procedure sRadioButton3Click(Sender: TObject);
    procedure sRadioButton4Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sListBox1Click(Sender: TObject);
    procedure sListBox1MouseEnter(Sender: TObject);
    procedure sListBox1MouseLeave(Sender: TObject);
    procedure sListBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure sAlphaHints1Measure(const HintStr: string; const HintInfo: THintInfo; var NewWidth, NewHeight: Integer);
    procedure sAlphaHints1Paint(const HintStr: string; const HintInfo: THintInfo; ARect: TRect; ABmp: TBitmap; var DefaultDraw: Boolean);
    procedure sAlphaHints1ShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo; var Frame: TFrame);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sGroupBox5CheckBoxChanged(Sender: TObject);
  public
    OldPos: TPoint;
    HotItem,
    RotateAngle: Integer;
    procedure AfterCreation; override;
    procedure BeforeDestroy; override;
    procedure UpdateTemplatesList;
  end;

var
  FrameTsAlphaHints: TFrameTsAlphaHints;

implementation

{$R *.dfm}

uses sConst, sCommonData, acntUtils, acPNG, sGraphUtils, sVCLUtils, acAlphaHintsEdit, UnitDataModule,
  UnitTsHintsFrame2, UnitTsHintsFrame3;

const
  iCustomSize = 128;


procedure TFrameTsAlphaHints.AfterCreation;
begin
  RotateAngle := 0;
  // Define some events for customizing of hints
  FormData.sAlphaHints1.OnShowHint := sAlphaHints1ShowHint;
  FormData.sAlphaHints1.OnMeasure := sAlphaHints1Measure;
  FormData.sAlphaHints1.OnPaint := sAlphaHints1Paint;
  UpdateTemplatesList;
  inherited;
end;


procedure TFrameTsAlphaHints.BeforeDestroy;
begin
  // Reset events of hints
  FormData.sAlphaHints1.OnShowHint := nil;
  FormData.sAlphaHints1.OnMeasure := nil;
  FormData.sAlphaHints1.OnPaint := nil;
end;


procedure TFrameTsAlphaHints.sAlphaHints1Measure(const HintStr: string; const HintInfo: THintInfo; var NewWidth, NewHeight: Integer);
begin
  if HintInfo.HintControl = sBitBtn6 then begin // Specify a size of hint window for the OnPaint event when hint shown for sBitBtn6
    NewHeight := MulDiv(iCustomSize, 150, 100);
    NewWidth := NewHeight;
  end;
end;


procedure TFrameTsAlphaHints.sAlphaHints1Paint(const HintStr: string; const HintInfo: THintInfo; ARect: TRect; ABmp: TBitmap; var DefaultDraw: Boolean);
var
  p: TPoint;
  Bmp: TBitmap;
begin
  if HintInfo.HintControl = sBitBtn6 then begin // Draw user image on the hint window when hint shown for sBitBtn6
    Bmp := CreateBmp32(iCustomSize, iCustomSize);
    sCharImageList1.GetBitmap32(0, Bmp);
    p.X := ARect.Left + (WidthOf(ARect) - iCustomSize) div 2;
    p.Y := ARect.Top + (HeightOf(ARect) - iCustomSize) div 2;
    PaintBmpRect32(ABmp, Bmp, MkRect(Bmp), p);
    Bmp.Free;
    DefaultDraw := False;
  end;
end;


var
  iNum: Integer = 1;


procedure TFrameTsAlphaHints.sAlphaHints1ShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo; var Frame: TFrame);
begin
  if FormData.sAlphaHints1.Active and (HintStr <> '') then // Prepare hints for controls where hint is defined
    if HintInfo.HintControl = sBitBtn7 then begin // Hint with custom layout of controls
      if Frame = nil then
        Frame := TFrameTsHints2.Create(Self);
    end
    else
      if FormData.sAlphaHints1.HTMLMode and (HintInfo.HintControl is TsBitBtn) then begin
        HintStr := HintStr + '<br>'; // Break line
        HintStr := HintStr + '<b>Additional lines were added for a testing of <u>hypertext</u></b><br>';
        HintStr := HintStr + '<font color=red>Look <i><b>sAlphaHints1.OnShowHint</i></b> event.<font>';
      end;
end;


procedure TFrameTsAlphaHints.sBitBtn5Click(Sender: TObject);
var
  ShowHintData: TacShowHintData;
begin
  ShowHintData.Caption := 'Custom <b>html</b> text';
  ShowHintData.Position := sBitBtn5.ClientToScreen(Point(sBitBtn5.Width - 16, sBitBtn5.Height - 4)); // Manual positioning of the hint window (if AutoAlign is not active)
  ShowHintData.Control := sBitBtn5; // Used for AutoAlign
  ShowHintData.Width := ScaleInt(140, sBitBtn5.SkinData);
  ShowHintData.Height := ScaleInt(60, sBitBtn5.SkinData);
  ShowHintData.Image := FormData.sCharImageList1.CreateBitmap32(0, FormData.sCharImageList1.Width, FormData.sCharImageList1.Height);
//  ShowHintData.Image := sCharImageList1.CreateBitmap32(0, iCustomSize div 2, iCustomSize div 2);
  ShowHintData.ImageAlignment := asTop;
  FormData.sAlphaHints1.ShowHint(ShowHintData);
end;


procedure TFrameTsAlphaHints.sCheckBox1Click(Sender: TObject);
begin
  FormData.sAlphaHints1.HTMLMode := sCheckBox1.Checked;
end;


procedure TFrameTsAlphaHints.sCheckBox2Click(Sender: TObject);
begin
  FormData.sAlphaHints1.Animated := sCheckBox2.Checked;
end;


procedure TFrameTsAlphaHints.sCheckBox3Click(Sender: TObject);
begin
  FormData.sAlphaHints1.AutoAlignment := sCheckBox3.Checked;
end;


procedure TFrameTsAlphaHints.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  FormData.sAlphaHints1.HandleDisabledCtrls := sGroupBox5.Checked;
end;


procedure TFrameTsAlphaHints.sListBox1Click(Sender: TObject);
begin
  FormData.sAlphaHints1.TemplateName := sListBox1.Items[sListBox1.ItemIndex];
  sGroupBox4.Checked := not FormData.sAlphaHints1.Templates[sListBox1.ItemIndex].SingleImageUsed { Additional images are defined };
end;


procedure TFrameTsAlphaHints.sListBox1MouseEnter(Sender: TObject);
begin
  OldPos := sListBox1.ScreenToClient(acMousePos);
end;


procedure TFrameTsAlphaHints.sListBox1MouseLeave(Sender: TObject);
begin
  HotItem := -1;
  Manager.FHintLocation := Point(0, 0);
  if (Manager <> nil) and (Manager.HintWindow <> nil) then
    FreeAndNil(Manager.HintWindow); // Kill a hint window if exists

  if sListBox1.ItemIndex >= 0 then
    FormData.sAlphaHints1.TemplateName := sListBox1.Items[sListBox1.ItemIndex];
end;


procedure TFrameTsAlphaHints.sListBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  NewIndex: Integer;
begin
  NewIndex := sListBox1.ItemAtPos(Point(X, Y), True);
  if NewIndex <> HotItem then begin
    HotItem := NewIndex;
    if NewIndex <> -1 then begin
      FormData.sAlphaHints1.Animated := False;
      FormData.sAlphaHints1.TemplateName := sListBox1.Items[HotItem];
      FormData.sAlphaHints1.ShowHint(Point(acMousePos.X + 16, acMousePos.Y + 4), 'Chosen style: <b>"' + sListBox1.Items[NewIndex] + '"</b>');
      FormData.sAlphaHints1.Animated := sCheckBox2.Checked;
      OldPos := Point(0, 0);
    end;
  end;
  // Move hint window if mouse is moved
  if ((OldPos.X <> X) or (OldPos.Y <> Y)) and (FormData.sAlphaHints1.HintWindow <> nil) then begin
    if (OldPos.X <> 0) and (OldPos.Y <> 0) then begin
      FormData.sAlphaHints1.Animated := False;
      FormData.sAlphaHints1.HintWindow.SetBounds(FormData.sAlphaHints1.HintWindow.Left - OldPos.X + X, FormData.sAlphaHints1.HintWindow.Top - OldPos.Y + Y, FormData.sAlphaHints1.HintWindow.Width, FormData.sAlphaHints1.HintWindow.Height);
      FormData.sAlphaHints1.Animated := sCheckBox2.Checked;
    end;
    OldPos := Point(X, Y);
  end;
end;


procedure TFrameTsAlphaHints.sRadioButton1Click(Sender: TObject);
begin
  FormData.sAlphaHints1.UseSkinData := True;
  FormData.sAlphaHints1.Active := True;
  sGroupBox3.Checked := False;
  sGroupBox4.Checked := False;
end;


procedure TFrameTsAlphaHints.sRadioButton2Click(Sender: TObject);
begin
  FormData.sAlphaHints1.UseSkinData := False;
  FormData.sAlphaHints1.Active := True;
  sGroupBox3.Checked := True;
  sGroupBox4.Checked := True;
end;


procedure TFrameTsAlphaHints.sRadioButton3Click(Sender: TObject);
begin
  FormData.sAlphaHints1.Active := False;
  sGroupBox3.Checked := False;
  sGroupBox4.Checked := False;
end;


procedure TFrameTsAlphaHints.sRadioButton4Click(Sender: TObject);
begin
  FormData.sAlphaHints1.DefaultMousePos := TacMousePosition(TsRadioButton(Sender).Tag);
end;


procedure TFrameTsAlphaHints.sSpeedButton1Click(Sender: TObject);
begin
  EditHints(FormData.sAlphaHints1);
  UpdateTemplatesList;
end;


procedure TFrameTsAlphaHints.Timer1Timer(Sender: TObject);
begin
  if FormData.sAlphaHints1.HintShowing and (FormData.sAlphaHints1.CurrentHintInfo.HintControl = sBitBtn6) then begin
    sCharImageList1.Items[0].Angle := (sCharImageList1.Items[0].Angle + 4) mod 360;
    FormData.sAlphaHints1.RepaintHint;
  end;
end;


procedure TFrameTsAlphaHints.UpdateTemplatesList;
var
  i: Integer;
begin
  HotItem := -1;
  sListBox1.Items.BeginUpdate;
  sListBox1.Items.Clear;
  for i := 0 to FormData.sAlphaHints1.Templates.Count - 1 do
    sListBox1.Items.Add(FormData.sAlphaHints1.Templates[i].Name);

  sListBox1.Items.EndUpdate;
  sListBox1.ItemIndex := sListBox1.Items.IndexOf(FormData.sAlphaHints1.TemplateName)
end;

end.
