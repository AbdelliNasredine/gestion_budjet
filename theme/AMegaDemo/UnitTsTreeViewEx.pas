unit UnitTsTreeViewEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, sTreeView,
  ComCtrls;


type
  TFrameTsTreeViewEx = class(TFrameBaseMenu)
    sTreeViewEx1: TsTreeViewEx;
    sGroupBox2: TsGroupBox;
    sTrackEdit5: TsTrackEdit;
    sTrackEdit6: TsTrackEdit;
    sCheckBox1: TsCheckBox;
    sTrackEdit7: TsTrackEdit;
    sComboBox1: TsComboBox;
    sMemo1: TsMemo;
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
    sComboBox2: TsComboBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    procedure sGroupBox2CheckBoxChanged(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit5Change(Sender: TObject);
    procedure sTrackEdit6Change(Sender: TObject);
    procedure sTrackEdit7Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sTrackEdit6CloseUp(Sender: TObject);
    procedure sMemo1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
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
    procedure sComboBox2Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
  public
    procedure AfterCreation; override;
  end;

var
  FrameTsTreeViewEx: TFrameTsTreeViewEx;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsTreeViewEx.AfterCreation;
var
  i, j: integer;
  tn: TTreeNode;
begin
  sTreeViewEx1.Items.BeginUpdate;
  for i := 1 to 40 do begin
    tn := sTreeViewEx1.Items.Add(nil, 'Item ' + IntToStr(i));
    with tn do begin
      ImageIndex := Random(FormData.CharList16.Count);
      SelectedIndex := ImageIndex;
      for j := 0 to 5 do
        with sTreeViewEx1.Items.AddChild(tn, 'SubItem ' + IntToStr(j)) do begin
          ImageIndex := Random(FormData.CharList16.Count);
          SelectedIndex := ImageIndex;
        end;
    end;
  end;
  sTreeViewEx1.Items.EndUpdate;
end;


procedure TFrameTsTreeViewEx.sCheckBox1Click(Sender: TObject);
begin
  sTreeViewEx1.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsTreeViewEx.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sTreeViewEx1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sTreeViewEx1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsTreeViewEx.sCheckBox3Click(Sender: TObject);
begin
  sTreeViewEx1.ShowButtons := sCheckBox3.Checked;
end;


procedure TFrameTsTreeViewEx.sCheckBox4Click(Sender: TObject);
begin
  sTreeViewEx1.Checkboxes := sCheckBox4.Checked;
end;


procedure TFrameTsTreeViewEx.sCheckBox5Click(Sender: TObject);
begin
  sTrackBar3.Enabled := not sCheckBox5.Checked;
  if sCheckBox5.Checked then
    sTreeViewEx1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
  else
    sTreeViewEx1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;

  sTreeViewEx1.SkinData.HorzScrollData.ButtonsSize := sTreeViewEx1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsTreeViewEx.sCheckBox6Click(Sender: TObject);
begin
  if sCheckBox6.Checked then
    sTreeViewEx1.Images := FormData.CharList16
  else
    sTreeViewEx1.Images := nil;
end;


procedure TFrameTsTreeViewEx.sCheckBox7Click(Sender: TObject);
begin
  sTreeViewEx1.RowSelect := sCheckBox7.Checked;
  sTreeViewEx1.Invalidate;
end;


procedure TFrameTsTreeViewEx.sCheckBox8Click(Sender: TObject);
begin
  sCheckBox7.Enabled := not sCheckBox8.Checked;
  sTreeViewEx1.ShowLines := sCheckBox8.Checked;
end;


procedure TFrameTsTreeViewEx.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sTreeViewEx1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeViewEx.sComboBox1Change(Sender: TObject);
begin
  sTreeViewEx1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsTreeViewEx.sComboBox2Change(Sender: TObject);
begin
  sTreeViewEx1.SkinData.SkinSection := sComboBox2.Text;
end;


procedure TFrameTsTreeViewEx.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sTreeViewEx1.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsTreeViewEx.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  sCheckBox5.Enabled := sGroupBox5.Checked;
  sTrackBar3.Enabled := not sCheckBox5.Checked and sCheckBox5.Enabled;
  if sGroupBox5.Checked then
    if sCheckBox5.Checked then
      sTreeViewEx1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
    else
      sTreeViewEx1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position
  else
    sTreeViewEx1.SkinData.VertScrollData.ButtonsSize := 0; // Not visible

  sTreeViewEx1.SkinData.HorzScrollData.ButtonsSize := sTreeViewEx1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsTreeViewEx.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox6.Checked then begin
    sTreeViewEx1.SkinData.VertScrollData.ScrollWidth := -1; // Default system size will be used
    sTreeViewEx1.SkinData.HorzScrollData.ScrollWidth := -1;
  end
  else begin
    sTreeViewEx1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
    sTreeViewEx1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
  end;
end;


procedure TFrameTsTreeViewEx.sMemo1Change(Sender: TObject);
begin
  sTreeViewEx1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsTreeViewEx.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sTreeViewEx1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsTreeViewEx.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sTreeViewEx1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeViewEx.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sTreeViewEx1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeViewEx.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sTreeViewEx1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeViewEx.sTrackBar3Change(Sender: TObject);
begin
  sTreeViewEx1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;
  sTreeViewEx1.SkinData.HorzScrollData.ButtonsSize := sTreeViewEx1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsTreeViewEx.sTrackBar4Change(Sender: TObject);
begin
  sTreeViewEx1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
end;


procedure TFrameTsTreeViewEx.sTrackBar5Change(Sender: TObject);
begin
  sTreeViewEx1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
end;


procedure TFrameTsTreeViewEx.sTrackEdit5Change(Sender: TObject);
begin
  sTreeViewEx1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsTreeViewEx.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sTreeViewEx1.BoundLabel.FTheLabel.Transparent := False;
    sTreeViewEx1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sTreeViewEx1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsTreeViewEx.sTrackEdit6CloseUp(Sender: TObject);
begin
  sTreeViewEx1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsTreeViewEx.sTrackEdit7Change(Sender: TObject);
begin
  sTreeViewEx1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;

end.
