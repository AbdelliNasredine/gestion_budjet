unit UnitTsArcDial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  acntTypes, acPopupCtrls, sEdit, sComboBoxes, sPageControl,
  sGroupBox, sComboBox, sCheckBox, acArcControls, sFrameAdapter,
  acAlphaImageList;


type
  TFrameTsArcDial = class(TFrameBaseMenu)
    sCheckBox9: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sVirtualImageList1: TsVirtualImageList;
    sGroupBox2: TsGroupBox;
    sCheckBox8: TsCheckBox;
    sCheckBox1: TsCheckBox;
    sArcDial1: TsArcDial;
    sComboBox6: TsComboBox;
    sColorBox1: TsColorBox;
    sColorBox2: TsColorBox;
    sColorBox3: TsColorBox;
    sColorBox4: TsColorBox;
    sGroupBox3: TsGroupBox;
    sEdit1: TsEdit;
    procedure sTrackEdit2Change(Sender: TObject);
    procedure sTrackEdit3Change(Sender: TObject);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sColorBox3Change(Sender: TObject);
    procedure sColorBox4Change(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sGroupBox1CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sComboBox6Change(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
  public
  end;

var
  FrameTsArcDial: TFrameTsArcDial;

implementation

{$R *.dfm}

uses acntUtils, UnitDataModule;


procedure TFrameTsArcDial.sCheckBox1Click(Sender: TObject);
begin
  sArcDial1.GlyphGrayed := sCheckBox1.Checked;
end;


procedure TFrameTsArcDial.sCheckBox8Click(Sender: TObject);
begin
  sArcDial1.GlyphReflected := sCheckBox8.Checked;
end;


procedure TFrameTsArcDial.sCheckBox9Click(Sender: TObject);
begin
  sArcDial1.Transparent := sCheckBox9.Checked;
end;


procedure TFrameTsArcDial.sColorBox1Change(Sender: TObject);
begin
  sArcDial1.PaintOptions.DataNormal.Color1 := sColorBox1.Selected;
end;


procedure TFrameTsArcDial.sColorBox2Change(Sender: TObject);
begin
  sArcDial1.PaintOptions.DataNormal.Color2 := sColorBox2.Selected;
end;


procedure TFrameTsArcDial.sColorBox3Change(Sender: TObject);
begin
  sArcDial1.PaintOptions.DataNormal.BorderColor := sColorBox3.Selected;
end;


procedure TFrameTsArcDial.sColorBox4Change(Sender: TObject);
begin
  sArcDial1.PaintOptions.DataNormal.FontColor := sColorBox4.Selected;
end;


procedure TFrameTsArcDial.sComboBox6Change(Sender: TObject);
begin
  sArcDial1.KnobPosition := TacKnobPosition(sComboBox6.ItemIndex);
end;


procedure TFrameTsArcDial.sEdit1Change(Sender: TObject);
begin
  sArcDial1.Text := sEdit1.Text;
end;


procedure TFrameTsArcDial.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sArcDial1.SkinData.CustomColor := sGroupBox1.Checked;
  sArcDial1.SkinData.CustomFont := sGroupBox1.Checked;
  sGroupBox1.SetFocus;
end;


procedure TFrameTsArcDial.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sArcDial1.GlyphIndex := iff(sGroupBox2.Checked, 0, -1);
end;


procedure TFrameTsArcDial.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sArcDial1.ShowText := sGroupBox3.Checked;
end;


procedure TFrameTsArcDial.sTrackEdit2Change(Sender: TObject);
begin
  sArcDial1.PaintOptions.BorderWidth := sTrackEdit2.AsInteger;
end;


procedure TFrameTsArcDial.sTrackEdit3Change(Sender: TObject);
begin
  sArcDial1.PaintOptions.BevelWidth := sTrackEdit3.AsInteger;
end;


procedure TFrameTsArcDial.sTrackEdit5Change(Sender: TObject);
begin
  sArcDial1.KnobSize := sTrackEdit5.AsInteger;
end;

end.
