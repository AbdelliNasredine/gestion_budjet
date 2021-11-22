unit UnitTsTrackBar;
{$I sDefs.inc}

interface

uses
  {$IFNDEF DELPHI5} Types, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  acAlphaImageList, ComCtrls, sTrackBar, sCheckBox, sFrameAdapter,
  sComboBox, sGroupBox, sEdit, sRadioButton;


type
  TFrameTsTrackBar = class(TFrameBaseMenu)
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sTrackBar2: TsTrackBar;
    sTrackBar1: TsTrackBar;
    sAlphaImageList1: TsAlphaImageList;
    sGroupBox1: TsGroupBox;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sComboBox4: TsComboBox;
    sCheckBox7: TsCheckBox;
    sGroupBox2: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sEdit1: TsEdit;
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sTrackBar2SkinPaint(Sender: TObject; Canvas: TCanvas);
    procedure sComboBox4Change(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sTrackBar1GetToolTipInfo(Sender: TObject;
      var ToolTipInfo: TacToolTipInfo);
  public
  end;

var
  FrameTsTrackBar: TFrameTsTrackBar;

implementation

{$R *.dfm}

uses math, acntUtils, UnitMain, sSkinManager, sGraphUtils, sConst, acgpUtils, sVCLUtils;

procedure TFrameTsTrackBar.sCheckBox1Click(Sender: TObject);
begin
  if sCheckBox3.Checked then begin
    sTrackBar1.DisabledKind := sTrackBar1.DisabledKind + [dkBlended];
    sTrackBar2.DisabledKind := sTrackBar2.DisabledKind + [dkBlended];
  end
  else begin
    sTrackBar1.DisabledKind := sTrackBar1.DisabledKind - [dkBlended];
    sTrackBar2.DisabledKind := sTrackBar2.DisabledKind - [dkBlended];
  end;
end;


procedure TFrameTsTrackBar.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then begin
    sTrackBar1.DisabledKind := sTrackBar1.DisabledKind + [dkGrayed];
    sTrackBar2.DisabledKind := sTrackBar2.DisabledKind + [dkGrayed];
  end
  else begin
    sTrackBar1.DisabledKind := sTrackBar1.DisabledKind - [dkGrayed];
    sTrackBar2.DisabledKind := sTrackBar2.DisabledKind - [dkGrayed];
  end;
end;


procedure TFrameTsTrackBar.sCheckBox3Click(Sender: TObject);
const
  ImgIndex = 0;
begin
  if sCheckBox3.Checked then begin
    // Load an image from sCharImageList1
    sTrackBar2.ThumbGlyph.Width := 28;
    sTrackBar2.ThumbGlyph.Height := 28;
    sAlphaImageList1.GetBitmap32(ImgIndex, sTrackBar2.ThumbGlyph);
  end
  else
    sTrackBar2.ThumbGlyph.Assign(nil);

  sTrackBar2.Repaint;
end;


procedure TFrameTsTrackBar.sCheckBox4Click(Sender: TObject);
begin
  sTrackBar2.ShowProgress := sCheckBox4.Checked;
end;


procedure TFrameTsTrackBar.sCheckBox5Click(Sender: TObject);
begin
  sTrackBar2.Reversed := sCheckBox5.Checked;
end;


procedure TFrameTsTrackBar.sCheckBox6Click(Sender: TObject);
const
  TickStyles: array [boolean] of TTickStyle = (tsAuto, tsNone);
begin
  sTrackBar2.TickStyle := TickStyles[sCheckBox6.Checked];
end;


procedure TFrameTsTrackBar.sCheckBox7Click(Sender: TObject);
begin
  sTrackBar1.PosByClick := sCheckBox7.Checked;
  sTrackBar2.PosByClick := sCheckBox7.Checked;
end;


procedure TFrameTsTrackBar.sComboBox4Change(Sender: TObject);
begin
  sTrackBar1.SkinData.SkinSection := sComboBox4.Text;
end;


procedure TFrameTsTrackBar.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sTrackBar1.Enabled := not sGroupBox1.Checked;
  sTrackBar2.Enabled := not sGroupBox1.Checked;
end;


procedure TFrameTsTrackBar.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox2.Checked then begin
    sRadioButton1.Checked := True;
    sRadioButton1.OnClick(sRadioButton1);
  end
  else begin
    sTrackBar1.PositionToolTip := ptNone;
    sTrackBar2.PositionToolTip := ptNone;
  end;
end;


procedure TFrameTsTrackBar.sRadioButton1Click(Sender: TObject);
begin
  sTrackBar1.PositionToolTip := TPositionToolTip(TsRadioButton(Sender).Tag);
  sTrackBar2.PositionToolTip := TPositionToolTip(TsRadioButton(Sender).Tag);
end;


procedure DrawAntialisedLine(Canvas: TCanvas; const AX1, AY1, AX2, AY2: real; const LineColor: TColor);
var
  swapped: boolean;

  procedure plot(const x, y, c: real);
  var
    resclr: TColor;
  begin
    if swapped then
      resclr := Canvas.Pixels[round(y), round(x)]
    else
      resclr := Canvas.Pixels[round(x), round(y)];

    resclr := RGB(round(GetRValue(resclr) * (1-c) + GetRValue(LineColor) * c),
                  round(GetGValue(resclr) * (1-c) + GetGValue(LineColor) * c),
                  round(GetBValue(resclr) * (1-c) + GetBValue(LineColor) * c));

    if swapped then
      Canvas.Pixels[round(y), round(x)] := resclr
    else
      Canvas.Pixels[round(x), round(y)] := resclr;
  end;

  function rfrac(const x: real): real;
  begin
    rfrac := 1 - frac(x);
  end;

  procedure swap(var a, b: real);
  var
    tmp: real;
  begin
    tmp := a;
    a := b;
    b := tmp;
  end;

var
  x1, x2, y1, y2, dx, dy, gradient, xend, yend, xgap, xpxl1, ypxl1, xpxl2, ypxl2, intery: real;
  x: integer;
begin
  x1 := AX1;
  x2 := AX2;
  y1 := AY1;
  y2 := AY2;

  dx := x2 - x1;
  dy := y2 - y1;
  swapped := abs(dx) < abs(dy);
  if swapped then begin
    swap(x1, y1);
    swap(x2, y2);
    swap(dx, dy);
  end;
  if x2 < x1 then begin
    swap(x1, x2);
    swap(y1, y2);
  end;

  gradient := dy / dx;

  xend := round(x1);
  yend := y1 + gradient * (xend - x1);
  xgap := rfrac(x1 + 0.5);
  xpxl1 := xend;
  ypxl1 := floor(yend);
  plot(xpxl1, ypxl1, rfrac(yend) * xgap);
  plot(xpxl1, ypxl1 + 1, frac(yend) * xgap);
  intery := yend + gradient;

  xend := round(x2);
  yend := y2 + gradient * (xend - x2);
  xgap := frac(x2 + 0.5);
  xpxl2 := xend;
  ypxl2 := floor(yend);
  plot(xpxl2, ypxl2, rfrac(yend) * xgap);
  plot(xpxl2, ypxl2 + 1, frac(yend) * xgap);

  for x := round(xpxl1) + 1 to round(xpxl2) - 1 do begin
    plot(x, floor(intery), rfrac(intery));
    plot(x, floor(intery) + 1, frac(intery));
    intery := intery + gradient;
  end;
end;


procedure TFrameTsTrackBar.sTrackBar1GetToolTipInfo(Sender: TObject; var ToolTipInfo: TacToolTipInfo);
begin
  ToolTipInfo.Text := ToolTipInfo.Text + sEdit1.Text;
end;


procedure TFrameTsTrackBar.sTrackBar2SkinPaint(Sender: TObject; Canvas: TCanvas);
var
  Points: array [0 .. 2] of TPoint;
  C: TColor;
  R: TRect;
begin
  if sCheckBox6.Checked then begin
    R := sTrackBar2.ChannelRect;
    OffsetRect(R, WidthOf(R), 0);
    InflateRect(R, 0, -HeightOf(sTrackBar2.ThumbRect) div 2);
    Points[0] := R.TopLeft;
    Points[1] := Point(R.Left, R.Bottom);
    if sTrackBar2.Reversed then
      Points[2] := Point(R.Right, R.Top)
    else
      Points[2] := Point(R.Right, R.Bottom);
{
    if DefaultManager.SkinCommonInfo.Active then
      C := DefaultManager.Palette[pcLabelText]//BlendColors(DefaultManager.Palette[pcMainColor], DefaultManager.Palette[pcLabelText], 205)
    else
      C := ColorToRGB(clBtnShadow);
}
    C := acColorToRGB(clBtnText);

    acgpFillPolygon(Canvas.Handle, TColor($44000000 or Cardinal(C)), PPoint(@Points[0]), 3);
  end;
end;

end.
