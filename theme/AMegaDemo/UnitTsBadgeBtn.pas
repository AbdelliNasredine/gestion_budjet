unit UnitTsBadgeBtn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  acntTypes, acPopupCtrls, sEdit, sComboBoxes, sPageControl,
  sGroupBox, sComboBox, sCheckBox, acArcControls, sFrameAdapter,
  acAlphaImageList, sBitBtn, sPanel, ExtCtrls;


type
  TFrameTsBadgeBtn = class(TFrameBaseMenu)
    sCheckBox9: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sPageControl2: TsPageControl;
    sTabSheet5: TsTabSheet;
    sColorBox1: TsColorBox;
    sColorBox2: TsColorBox;
    sColorBox3: TsColorBox;
    sColorBox4: TsColorBox;
    sTabSheet6: TsTabSheet;
    sColorBox5: TsColorBox;
    sColorBox6: TsColorBox;
    sColorBox7: TsColorBox;
    sColorBox8: TsColorBox;
    sTabSheet7: TsTabSheet;
    sColorBox9: TsColorBox;
    sColorBox10: TsColorBox;
    sColorBox11: TsColorBox;
    sColorBox12: TsColorBox;
    sTrackEdit1: TsTrackEdit;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sVirtualImageList1: TsVirtualImageList;
    sGroupBox2: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sEdit2: TsEdit;
    sBitBtn1: TsBitBtn;
    sBadgeBtn1: TsBadgeBtn;
    sRadioGroup1: TsRadioGroup;
    sRadioGroup2: TsRadioGroup;
    sTrackEdit4: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sDragBar1: TsDragBar;
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sColorBox3Change(Sender: TObject);
    procedure sColorBox4Change(Sender: TObject);
    procedure sColorBox5Change(Sender: TObject);
    procedure sColorBox6Change(Sender: TObject);
    procedure sColorBox7Change(Sender: TObject);
    procedure sColorBox8Change(Sender: TObject);
    procedure sColorBox9Change(Sender: TObject);
    procedure sColorBox10Change(Sender: TObject);
    procedure sColorBox11Change(Sender: TObject);
    procedure sColorBox12Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sTrackEdit4Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
  public
  end;

var
  FrameTsBadgeBtn: TFrameTsBadgeBtn;

implementation

{$R *.dfm}

uses acntUtils, UnitDataModule;


procedure TFrameTsBadgeBtn.sCheckBox9Click(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.Transparent := sCheckBox9.Checked;
end;


procedure TFrameTsBadgeBtn.sColorBox10Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataPressed.Color2 := sColorBox10.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox11Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataPressed.BorderColor := sColorBox11.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox12Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataPressed.FontColor := sColorBox12.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox1Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataNormal.Color1 := sColorBox1.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox2Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataNormal.Color2 := sColorBox2.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox3Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataNormal.BorderColor := sColorBox3.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox4Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataNormal.FontColor := sColorBox4.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox5Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataActive.Color1 := sColorBox5.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox6Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataActive.Color2 := sColorBox6.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox7Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataActive.BorderColor := sColorBox7.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox8Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataActive.FontColor := sColorBox8.Selected;
end;


procedure TFrameTsBadgeBtn.sColorBox9Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.DataPressed.Color1 := sColorBox9.Selected;
end;


procedure TFrameTsBadgeBtn.sGroupBox1CheckBoxChanged(Sender: TObject);

  procedure ExecOnChange(th: TsTabSheet);
  var
    i: integer;
  begin
    for i := 0 to th.ControlCount - 1 do
      if th.Controls[i] is TsColorBox then
        TsColorBox(th.Controls[i]).OnChange(th.Controls[i]);
  end;

begin
  if not FrameCreated then Exit;
  if sGroupBox1.Checked then begin
    ExecOnChange(sTabSheet5);
    ExecOnChange(sTabSheet6);
    ExecOnChange(sTabSheet7);
  end;
  sBadgeBtn1.SkinData.CustomColor := sGroupBox1.Checked;
  sBadgeBtn1.SkinData.CustomFont := sGroupBox1.Checked;
  sGroupBox1.SetFocus;
end;


procedure TFrameTsBadgeBtn.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.ImageIndex := iff(sGroupBox2.Checked, 5, -1);
  sBadgeBtn1.ShowCaption := not sGroupBox2.Checked;
end;


procedure TFrameTsBadgeBtn.sRadioGroup1Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  case sRadioGroup1.ItemIndex of
    0: sBadgeBtn1.AttachTo := sEdit2;
    1: sBadgeBtn1.AttachTo := sBitBtn1;
    2: sBadgeBtn1.AttachTo := sRadioGroup1;
    3: sBadgeBtn1.AttachTo := sDragBar1;
  end;
end;

procedure TFrameTsBadgeBtn.sRadioGroup2Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.AlignTo := TacBadgeAlignTo(sRadioGroup2.ItemIndex);
end;


procedure TFrameTsBadgeBtn.sTrackEdit1Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.SetBounds(sBadgeBtn1.Left, sBadgeBtn1.Top, sTrackEdit1.AsInteger, sTrackEdit1.AsInteger);
end;


procedure TFrameTsBadgeBtn.sTrackEdit2Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.BorderWidth := sTrackEdit2.AsInteger;
end;


procedure TFrameTsBadgeBtn.sTrackEdit3Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.PaintOptions.BevelWidth := sTrackEdit3.AsInteger;
end;


procedure TFrameTsBadgeBtn.sTrackEdit4Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.OffsetX := sTrackEdit4.AsInteger;
end;


procedure TFrameTsBadgeBtn.sTrackEdit5Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.GlyphBlend := sTrackEdit5.AsInteger;
end;


procedure TFrameTsBadgeBtn.sTrackEdit6Change(Sender: TObject);
begin
  if not FrameCreated then Exit;
  sBadgeBtn1.OffsetY := sTrackEdit6.AsInteger;
end;

end.
