unit UnitTsRoundBtn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  acntTypes, acPopupCtrls, sEdit, sComboBoxes, sPageControl,
  sGroupBox, sComboBox, sCheckBox, acArcControls, sFrameAdapter,
  acAlphaImageList;


type
  TFrameTsRoundBtn = class(TFrameBaseMenu)
    sRoundBtn1: TsRoundBtn;
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
    sCheckBox8: TsCheckBox;
    sCheckBox1: TsCheckBox;
    sGroupBox3: TsGroupBox;
    sEdit1: TsEdit;
    sTrackEdit5: TsTrackEdit;
    sComboBox4: TsComboBox;
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
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
    procedure sCheckBox8Click(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
  public
  end;

var
  FrameTsRoundBtn: TFrameTsRoundBtn;

implementation

{$R *.dfm}

uses acntUtils, sCommonData, UnitDataModule;


procedure TFrameTsRoundBtn.sCheckBox1Click(Sender: TObject);
begin
  sRoundBtn1.GlyphGrayed := sCheckBox1.Checked;
end;


procedure TFrameTsRoundBtn.sCheckBox8Click(Sender: TObject);
begin
  sRoundBtn1.GlyphReflected := sCheckBox8.Checked;
end;


procedure TFrameTsRoundBtn.sCheckBox9Click(Sender: TObject);
begin
  sRoundBtn1.Transparent := sCheckBox9.Checked;
end;


procedure TFrameTsRoundBtn.sColorBox10Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataPressed.Color2 := sColorBox10.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox11Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataPressed.BorderColor := sColorBox11.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox12Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataPressed.FontColor := sColorBox12.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox1Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataNormal.Color1 := sColorBox1.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox2Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataNormal.Color2 := sColorBox2.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox3Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataNormal.BorderColor := sColorBox3.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox4Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataNormal.FontColor := sColorBox4.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox5Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataActive.Color1 := sColorBox5.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox6Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataActive.Color2 := sColorBox6.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox7Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataActive.BorderColor := sColorBox7.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox8Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataActive.FontColor := sColorBox8.Selected;
end;


procedure TFrameTsRoundBtn.sColorBox9Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.DataPressed.Color1 := sColorBox9.Selected;
end;


procedure TFrameTsRoundBtn.sComboBox4Change(Sender: TObject);
begin
  sRoundBtn1.Layout := TButtonLayout(sComboBox4.ItemIndex);
end;


procedure TFrameTsRoundBtn.sEdit1Change(Sender: TObject);
begin
  sRoundBtn1.Caption := sEdit1.Text;
end;


procedure TFrameTsRoundBtn.sGroupBox1CheckBoxChanged(Sender: TObject);

  procedure ExecOnChange(th: TsTabSheet);
  var
    i: integer;
  begin
    for i := 0 to th.ControlCount - 1 do
      if th.Controls[i] is TsColorBox then
        TsColorBox(th.Controls[i]).OnChange(th.Controls[i]);
  end;

begin
  if sGroupBox1.Checked then begin
    ExecOnChange(sTabSheet5);
    ExecOnChange(sTabSheet6);
    ExecOnChange(sTabSheet7);
  end;
  sRoundBtn1.SkinData.CustomColor := sGroupBox1.Checked;
  sRoundBtn1.SkinData.CustomFont := sGroupBox1.Checked;
  sGroupBox1.SetFocus;
end;


procedure TFrameTsRoundBtn.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sRoundBtn1.ImageIndex := iff(sGroupBox2.Checked, 0, -1);
end;


procedure TFrameTsRoundBtn.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sRoundBtn1.ShowCaption := sGroupBox3.Checked;
end;


procedure TFrameTsRoundBtn.sTrackEdit1Change(Sender: TObject);
var
  iScaledSize: integer;
begin
  iScaledSize := ScaleInt(sTrackEdit1.AsInteger, sTrackEdit1.SkinData);
  sRoundBtn1.SetBounds(sRoundBtn1.Left, sRoundBtn1.Top, iScaledSize, iScaledSize);
  sVirtualImageList1.Width := ScaleInt(iScaledSize div 9, sTrackEdit1.SkinData);
  sVirtualImageList1.Height := sVirtualImageList1.Width;
end;


procedure TFrameTsRoundBtn.sTrackEdit2Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.BorderWidth := sTrackEdit2.AsInteger;
end;


procedure TFrameTsRoundBtn.sTrackEdit3Change(Sender: TObject);
begin
  sRoundBtn1.PaintOptions.BevelWidth := sTrackEdit3.AsInteger;
end;


procedure TFrameTsRoundBtn.sTrackEdit5Change(Sender: TObject);
begin
  sRoundBtn1.GlyphBlend := sTrackEdit5.AsInteger;
end;

end.
