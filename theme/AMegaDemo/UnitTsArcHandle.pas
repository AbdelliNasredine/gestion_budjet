unit UnitTsArcHandle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  acntTypes, acPopupCtrls, sEdit, sComboBoxes, sPageControl,
  sGroupBox, sComboBox, sCheckBox, acArcControls, sFrameAdapter,
  acAlphaImageList;


type
  TFrameTsArcHandle = class(TFrameBaseMenu)
    sCheckBox9: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sTrackEdit2: TsTrackEdit;
    sTrackEdit3: TsTrackEdit;
    sTrackEdit5: TsTrackEdit;
    sVirtualImageList1: TsVirtualImageList;
    sGroupBox2: TsGroupBox;
    sCheckBox8: TsCheckBox;
    sCheckBox1: TsCheckBox;
    sArcHandle1: TsArcHandle;
    sComboBox6: TsComboBox;
    sColorBox1: TsColorBox;
    sColorBox2: TsColorBox;
    sColorBox3: TsColorBox;
    sColorBox4: TsColorBox;
    sGroupBox3: TsGroupBox;
    sEdit1: TsEdit;
    sComboBox3: TsComboBox;
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
    procedure sComboBox3Change(Sender: TObject);
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sGroupBox3CheckBoxChanged(Sender: TObject);
  public
  end;

var
  FrameTsArcHandle: TFrameTsArcHandle;

implementation

{$R *.dfm}

uses acntUtils, UnitDataModule;


procedure TFrameTsArcHandle.sCheckBox1Click(Sender: TObject);
begin
  sArcHandle1.GlyphGrayed := sCheckBox1.Checked;
end;


procedure TFrameTsArcHandle.sCheckBox8Click(Sender: TObject);
begin
  sArcHandle1.GlyphReflected := sCheckBox8.Checked;
end;


procedure TFrameTsArcHandle.sCheckBox9Click(Sender: TObject);
begin
  sArcHandle1.Transparent := sCheckBox9.Checked;
end;


procedure TFrameTsArcHandle.sColorBox1Change(Sender: TObject);
begin
  sArcHandle1.PaintOptions.DataNormal.Color1 := sColorBox1.Selected;
end;


procedure TFrameTsArcHandle.sColorBox2Change(Sender: TObject);
begin
  sArcHandle1.PaintOptions.DataNormal.Color2 := sColorBox2.Selected;
end;


procedure TFrameTsArcHandle.sColorBox3Change(Sender: TObject);
begin
  sArcHandle1.PaintOptions.DataNormal.BorderColor := sColorBox3.Selected;
end;


procedure TFrameTsArcHandle.sColorBox4Change(Sender: TObject);
begin
  sArcHandle1.PaintOptions.DataNormal.FontColor := sColorBox4.Selected;
end;


procedure TFrameTsArcHandle.sComboBox3Change(Sender: TObject);
begin
  sArcHandle1.TextContent := TacTextContent(sComboBox3.ItemIndex);
  sEdit1.Enabled := sComboBox3.ItemIndex = 3;
end;


procedure TFrameTsArcHandle.sComboBox6Change(Sender: TObject);
begin
  sArcHandle1.KnobPosition := TacKnobPosition(sComboBox6.ItemIndex);
end;


procedure TFrameTsArcHandle.sEdit1Change(Sender: TObject);
begin
  sArcHandle1.Text := sEdit1.Text;
end;


procedure TFrameTsArcHandle.sGroupBox1CheckBoxChanged(Sender: TObject);
begin
  sArcHandle1.SkinData.CustomColor := sGroupBox1.Checked;
  sArcHandle1.SkinData.CustomFont := sGroupBox1.Checked;
  sGroupBox1.SetFocus;
end;


procedure TFrameTsArcHandle.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sArcHandle1.GlyphIndex := iff(sGroupBox2.Checked, 0, -1);
end;


procedure TFrameTsArcHandle.sGroupBox3CheckBoxChanged(Sender: TObject);
begin
  sArcHandle1.ShowText := sGroupBox3.Checked;
  sComboBox3.Enabled := sGroupBox3.Checked;
end;


procedure TFrameTsArcHandle.sTrackEdit2Change(Sender: TObject);
begin
  sArcHandle1.PaintOptions.BorderWidth := sTrackEdit2.AsInteger;
end;


procedure TFrameTsArcHandle.sTrackEdit3Change(Sender: TObject);
begin
  sArcHandle1.PaintOptions.BevelWidth := sTrackEdit3.AsInteger;
end;


procedure TFrameTsArcHandle.sTrackEdit5Change(Sender: TObject);
begin
  sArcHandle1.KnobSize := sTrackEdit5.AsInteger;
end;

end.
