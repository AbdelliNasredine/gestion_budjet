unit UnitTsListView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar, sTreeView,
  sListView, sButton, sRadioButton, ComCtrls;


type
  TFrameTsListView = class(TFrameBaseMenu)
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
    sListView1: TsListView;
    sGroupBox10: TsGroupBox;
    sRadioButton21: TsRadioButton;
    sRadioButton22: TsRadioButton;
    sRadioButton23: TsRadioButton;
    sRadioButton24: TsRadioButton;
    sButton1: TsButton;
    sCheckBox1: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit6CloseUp(Sender: TObject);
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
    procedure sRadioButton21Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sListView1CustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure sCheckBox9Click(Sender: TObject);
    procedure sListView1ColumnClick(Sender: TObject; Column: TListColumn);
    procedure sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
  public
    procedure AddNewItems(Count: integer);
    procedure AfterCreation; override;
  end;

var
  FrameTsListView: TFrameTsListView;

implementation

uses CommCtrl, sConst, sVCLUtils, sCommonData, sSkinManager, UnitDataModule;

{$R *.dfm}

procedure TFrameTsListView.AddNewItems(Count: integer);
var
  i, l: integer;
begin
  sListView1.SkinData.BeginUpdate; // Disable an updating of skinned scrolls
  sListView1.Items.BeginUpdate;
  l := sListView1.Items.Count;
  for i := l + 1 to l + Count do
    with sListView1.Items.Add do begin
      Caption := 'Item ' + IntToStr(i);
      if sListView1.SmallImages <> nil then
        ImageIndex := Random(sListView1.SmallImages.Count - 1);

      SubItems.Add('SubItem 1');
      SubItems.Add('SubItem 2');
      if sListView1.SmallImages <> nil then
        SubItemImages[0] := Random(sListView1.SmallImages.Count - 1);
    end;

  sListView1.Items.EndUpdate;
  sListView1.SkinData.EndUpdate;
end;


procedure TFrameTsListView.AfterCreation;
begin
  AddNewItems(20);
end;


procedure TFrameTsListView.sButton1Click(Sender: TObject);
begin
  AddNewItems(1000);
end;


procedure TFrameTsListView.sCheckBox1Click(Sender: TObject);
begin
  if sCheckBox1.Checked then begin
    sListView1.SmallImages := FormData.CharList16;
    sListView1.LargeImages := FormData.CharList16;
  end
  else begin
    sListView1.SmallImages := nil;
    sListView1.LargeImages := nil;
  end;
end;


procedure TFrameTsListView.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.Checked then
    sListView1.SkinData.OuterEffects.Visibility := ovAlways
  else
    sListView1.SkinData.OuterEffects.Visibility := ovNone;
end;


procedure TFrameTsListView.sCheckBox3Click(Sender: TObject);
begin
  sListView1.Checkboxes := sCheckBox3.Checked;
end;


procedure TFrameTsListView.sCheckBox4Click(Sender: TObject);
begin
  sListView1.GridLines := sCheckBox4.Checked;
end;


procedure TFrameTsListView.sCheckBox5Click(Sender: TObject);
begin
  sTrackBar3.Enabled := not sCheckBox5.Checked;
  if sCheckBox5.Checked then
    sListView1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
  else
    sListView1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;

  sListView1.SkinData.HorzScrollData.ButtonsSize := sListView1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsListView.sCheckBox6Click(Sender: TObject);
begin
  sListView1.RowSelect := sCheckBox6.Checked;
end;


procedure TFrameTsListView.sCheckBox7Click(Sender: TObject);
begin
  sListView1.HotTrack := sCheckBox7.Checked;
end;


procedure TFrameTsListView.sCheckBox8Click(Sender: TObject);
begin
  sListView1.Repaint;
end;


const
  HDF_SORTDOWN = $0200;
  HDF_SORTUP   = $0400;

procedure TFrameTsListView.sCheckBox9Click(Sender: TObject);
var
  i: integer;
  Header: HWND;
  Item: THDItem;
  NewFmt: Word;
begin
  Header := ListView_GetHeader(sListView1.Handle);
  ZeroMemory(@Item, SizeOf(Item));
  Item.Mask := HDI_FORMAT;
  if sCheckBox9.Checked then
    NewFmt := HDF_SORTUP
  else
    NewFmt := 0;

  for i := 0 to sListView1.Columns.Count - 1 do begin
    Header_GetItem(Header, i, Item);
    Item.fmt := Item.fmt and not (HDF_SORTUP or HDF_SORTDOWN) or NewFmt;
    Header_SetItem(Header, i, Item);
  end;
end;


procedure TFrameTsListView.sColorBox2Change(Sender: TObject);
begin
  ChangeControlColors(sListView1, clNone, sColorBox2.Selected);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListView.sColorBox2ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  ChangeControlColors(sListView1, clNone, NewColor);
  sSpeedButton1.Enabled := NewColor <> clNone;
end;


procedure TFrameTsListView.sGroupBox5CheckBoxChanged(Sender: TObject);
begin
  sCheckBox5.Enabled := sGroupBox5.Checked;
  sTrackBar3.Enabled := not sCheckBox5.Checked and sCheckBox5.Enabled;
  if sGroupBox5.Checked then
    if sCheckBox5.Checked then
      sListView1.SkinData.VertScrollData.ButtonsSize := -1 // Default size
    else
      sListView1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position
  else
    sListView1.SkinData.VertScrollData.ButtonsSize := 0; // Not visible

  sListView1.SkinData.HorzScrollData.ButtonsSize := sListView1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsListView.sGroupBox6CheckBoxChanged(Sender: TObject);
begin
  if sGroupBox6.Checked then begin
    sListView1.SkinData.VertScrollData.ScrollWidth := -1; // Default system size will be used
    sListView1.SkinData.HorzScrollData.ScrollWidth := -1;
  end
  else begin
    sListView1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
    sListView1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
  end;
end;


procedure TFrameTsListView.sListView1ColumnClick(Sender: TObject; Column: TListColumn);
var
  Header: HWND;
  Item: THDItem;
begin
  if sCheckBox9.Checked then begin
    Header := ListView_GetHeader(sListView1.Handle);
    ZeroMemory(@Item, SizeOf(Item));
    Item.Mask := HDI_FORMAT;
    Header_GetItem(Header, Column.Index, Item);
    if Item.fmt and HDF_SORTUP <> 0 then
      Item.fmt := Item.fmt and not HDF_SORTUP or HDF_SORTDOWN
    else
      Item.fmt := Item.fmt and not HDF_SORTDOWN or HDF_SORTUP;

    Header_SetItem(Header, Column.Index, Item);
  end;
end;


procedure TFrameTsListView.sListView1CustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
const
  ColorsText: array [2..4] of TacPaletteColors = (pcEditText_Ok, pcEditText_Warning, pcEditText_Alert);
  ColorsBG:   array [2..4] of TacPaletteColors = (pcEditBG_Ok,   pcEditBG_Warning,   pcEditBG_Alert);
begin
  if not sListView1.SkinData.CustomColor then // Not filled by custom color
    if DefaultManager.Active and sCheckBox8.Checked {Colored rows} then
      case Item.Index of
        2, 3, 4: begin // Rows with special colors
          Sender.Canvas.Font.Color  := DefaultManager.Palette[ColorsText[Item.Index]];
          Sender.Canvas.Brush.Color := DefaultManager.Palette[ColorsBg[Item.Index]];
        end

        else begin // Rows with "Odd/Even" colors
          Sender.Canvas.Font.Color  := DefaultManager.Palette[pcEditText];
          if Item.Index mod 2 = 0 then
            Sender.Canvas.Brush.Color := DefaultManager.Palette[sSkinManager.pcEditBG_OddRow]
          else
            Sender.Canvas.Brush.Color := DefaultManager.Palette[sSkinManager.pcEditBG_EvenRow];
        end;
      end;
end;


procedure TFrameTsListView.sRadioButton21Click(Sender: TObject);
begin
  sListView1.ViewStyle := TViewStyle(TControl(Sender).Tag);
end;


procedure TFrameTsListView.sSpeedButton1Click(Sender: TObject);
begin
  sColorBox2.Selected := clNone;
  ChangeControlColors(sListView1, clNone, clNone);
  sSpeedButton1.Enabled := False;
end;


procedure TFrameTsListView.sSpeedButton2Click(Sender: TObject);
begin
  ChangeControlColors(sListView1, slEditRedText, slEditRed);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListView.sSpeedButton4Click(Sender: TObject);
begin
  ChangeControlColors(sListView1, slEditGreenText, slEditGreen);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListView.sSpeedButton5Click(Sender: TObject);
begin
  ChangeControlColors(sListView1, slEditYellowText, slEditYellow);
  sSpeedButton1.Enabled := True;
end;


procedure TFrameTsListView.sTrackBar3Change(Sender: TObject);
begin
  sListView1.SkinData.VertScrollData.ButtonsSize := sTrackBar3.Position;
  sListView1.SkinData.HorzScrollData.ButtonsSize := sListView1.SkinData.VertScrollData.ButtonsSize;
end;


procedure TFrameTsListView.sTrackBar4Change(Sender: TObject);
begin
  sListView1.SkinData.VertScrollData.ScrollWidth := sTrackBar4.Position;
end;


procedure TFrameTsListView.sTrackBar5Change(Sender: TObject);
begin
  sListView1.SkinData.HorzScrollData.ScrollWidth := sTrackBar5.Position;
end;


procedure TFrameTsListView.sTrackEdit6CloseUp(Sender: TObject);
begin
  sListView1.BoundLabel.FTheLabel.Transparent := True;
end;

end.
