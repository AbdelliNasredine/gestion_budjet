unit UnitTsTreeView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, sTreeView,
  ComCtrls;


type
  TFrameTsTreeView = class(TFrameBaseMenu)
    sTreeView1: TsTreeView;
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
    sCheckBox3: TsCheckBox;
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
    procedure sCheckBox3Click(Sender: TObject);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
  public
    procedure AfterCreation; override;
  end;

var
  FrameTsTreeView: TFrameTsTreeView;

implementation

uses sConst, sVCLUtils, sCommonData, UnitDataModule;

{$R *.dfm}

procedure TFrameTsTreeView.AfterCreation;
var
  i, j: integer;
  tn: TTreeNode;
begin
  sTreeView1.SkinData.BeginUpdate;
  sTreeView1.Items.BeginUpdate;
  for i := 1 to 10 do begin
    tn := sTreeView1.Items.Add(nil, 'Item ' + IntToStr(i));
    with tn do begin
      ImageIndex := Random(FormData.CharList16.Count);
      SelectedIndex := ImageIndex;
      for j := 0 to 5 do
        with sTreeView1.Items.AddChild(tn, 'SubItem ' + IntToStr(j)) do begin
          ImageIndex := Random(FormData.CharList16.Count);
          SelectedIndex := ImageIndex;
        end;
    end;
  end;
  sTreeView1.Items.EndUpdate;
  sTreeView1.SkinData.EndUpdate;
end;


procedure TFrameTsTreeView.sCheckBox1Click(Sender: TObject);
begin
  sTreeView1.BoundLabel.UseHTML := sCheckBox1.Checked;
end;


procedure TFrameTsTreeView.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sTreeView1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sTreeView1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsTreeView.sCheckBox3Click(Sender: TObject);
begin
  sTreeView1.ShowButtons := sCheckBox3.Checked;
end;


procedure TFrameTsTreeView.sCheckBox5Click(Sender: TObject);
begin
  sTrackBar3.Enabled := not sCheckBox5.Checked;
  if sCheckBox5.Checked then
    sTreeView1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
  else
    sTreeView1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;

  sTreeView1.SkinData.HorzScrollData.ButtonsSize := sTreeView1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsTreeView.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sTreeView1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeView.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  ChangeControlColors(sTreeView1, clNone, NewColor);
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsTreeView.sComboBox1Change(Sender: TObject);
begin
  sTreeView1.BoundLabel.Layout := sConst.TsCaptionLayout(sComboBox1.ItemIndex);
end;


procedure TFrameTsTreeView.sGroupBox2CheckBoxChanged(Sender: TObject);
begin
  sTreeView1.BoundLabel.Active := sGroupBox2.Checked;
end;


procedure TFrameTsTreeView.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  sCheckBox5.Enabled := sGroupBox5.Checked;
  sTrackBar3.Enabled := not sCheckBox5.Checked and sCheckBox5.Enabled;
  if sGroupBox5.Checked then
    if sCheckBox5.Checked then
      sTreeView1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
    else
      sTreeView1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position
  else
    sTreeView1.SkinData.VertScrollData.ButtonsSize := 0; // Not visible

  sTreeView1.SkinData.HorzScrollData.ButtonsSize := sTreeView1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsTreeView.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox6.Checked then begin
    sTreeView1.SkinData.VertScrollData.ScrollWidth := -1; // Default system size will be used
    sTreeView1.SkinData.HorzScrollData.ScrollWidth := -1;
  end
  else begin
    sTreeView1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
    sTreeView1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
  end;
end;


procedure TFrameTsTreeView.sMemo1Change(Sender: TObject);
begin
  sTreeView1.BoundLabel.Caption := sMemo1.Text;
end;


procedure TFrameTsTreeView.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sTreeView1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsTreeView.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sTreeView1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeView.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sTreeView1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeView.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sTreeView1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsTreeView.sTrackBar3Change(Sender: TObject);
begin
  sTreeView1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;
  sTreeView1.SkinData.HorzScrollData.ButtonsSize := sTreeView1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsTreeView.sTrackBar4Change(Sender: TObject);
begin
  sTreeView1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
end;


procedure TFrameTsTreeView.sTrackBar5Change(Sender: TObject);
begin
  sTreeView1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
end;


procedure TFrameTsTreeView.sTrackEdit5Change(Sender: TObject);
begin
  sTreeView1.BoundLabel.Indent := sTrackEdit5.AsInteger;
end;


procedure TFrameTsTreeView.sTrackEdit6Change(Sender: TObject);
begin
  if sTrackEdit6.DroppedDown then begin
    sTreeView1.BoundLabel.FTheLabel.Transparent := False;
    sTreeView1.BoundLabel.FTheLabel.Color := clYellow;
  end;
  sTreeView1.BoundLabel.MaxWidth := sTrackEdit6.AsInteger;
end;


procedure TFrameTsTreeView.sTrackEdit6CloseUp(Sender: TObject);
begin
  sTreeView1.BoundLabel.FTheLabel.Transparent := True;
end;


procedure TFrameTsTreeView.sTrackEdit7Change(Sender: TObject);
begin
  sTreeView1.BoundLabel.Offset := sTrackEdit7.AsInteger;
end;

end.
