unit UnitTsFrameAdapter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sButton, sBitBtn, sComboBox;

type
  TFrameTsFrameAdapter = class(TFrameBaseMenu)
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sComboBox1: TsComboBox;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
  public
    Count: integer;
    c, cx, cy, x, y: integer;
    procedure AfterCreation; override;
  end;

var
  FrameTsFrameAdapter: TFrameTsFrameAdapter;

implementation

{$R *.dfm}

uses sVCLUtils, sLabel, UnitDataModule, UnitMain;


procedure TFrameTsFrameAdapter.AfterCreation;
begin
  x := FormData.sSkinManager1.ScaleInt(260);
  y := FormData.sSkinManager1.ScaleInt(20);
  cx := FormData.sSkinManager1.ScaleInt(500);
  cy := FormData.sSkinManager1.ScaleInt(320);
  c := 1;
  Count := 0;
  inherited;
end;


procedure TFrameTsFrameAdapter.sBitBtn1Click(Sender: TObject);
var
  i: integer;
  NewFrame: TFrame;
begin
  Randomize;
  DisableAlign;
  sFrameAdapter1.SkinData.BeginUpdate;
  for i := 0 to 100 do begin
    NewFrame := TFrame.Create(Self);
    NewFrame.Left := 50 + Random(cx);
    NewFrame.Top := sBitBtn1.BoundsRect.Bottom + y + Random(cy);
    NewFrame.Width := 40 + Random(cx div 2);
    NewFrame.Height := 20 + Random(cy div 2);
    NewFrame.Name := 'TestFrame_' + IntToStr(c);
    with TsLabel.Create(NewFrame) do begin
      Name := 'Frame' + IntToStr(c);
      Align := alClient;
      Parent := NewFrame;
      Alignment := taCenter;
      Layout := tlCenter;
    end;
    NewFrame.Visible := True;
    TsFrameAdapter.Create(NewFrame).SkinData.SkinSection := 'GROUPBOX';
    NewFrame.Parent := Self;
    inc(c);
  end;
  EnableAlign;
  sFrameAdapter1.SkinData.EndUpdate;
  Repaint;
  sBitBtn2.Enabled := True;
  sComboBox1.Enabled := True;
end;


procedure TFrameTsFrameAdapter.sBitBtn2Click(Sender: TObject);
var
  i: integer;
begin
  sFrameAdapter1.SkinData.BeginUpdate;
  for i := ControlCount - 1 downto 0 do
    if Controls[i] is TFrame then
      Controls[i].Free;

  sFrameAdapter1.SkinData.EndUpdate;
  sBitBtn2.Enabled := False;
  sComboBox1.Enabled := False;
  c := 0;
end;


procedure TFrameTsFrameAdapter.sComboBox1Change(Sender: TObject);
var
  i: integer;
begin
  sFrameAdapter1.SkinData.BeginUpdate;
  for i := ControlCount - 1 downto 0 do
    if Controls[i] is TFrame then
      TrySetSkinSection(Controls[i], sComboBox1.Text);

  sFrameAdapter1.SkinData.EndUpdate;
  Repaint;
end;

end.
