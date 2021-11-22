unit UnitTsOthers2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  sSpeedButton, sComboBoxes, sEdit, sBitBtn, sDialogs, sRichEdit, sUpDown,
  Mask, sMaskEdit, sScrollBar, sLabel, sFrameAdapter;

type
  TFrameTsOthers2 = class(TFrameBaseMenu)
    sLabel1: TsLabel;
    sScrollBar1: TsScrollBar;
    sMaskEdit1: TsMaskEdit;
    sUpDown1: TsUpDown;
    sRichEdit1: TsRichEdit;
    sColorBox1: TsColorBox;
    sSpeedButton3: TsSpeedButton;
    sUpDown2: TsUpDown;
    sBitBtn1: TsBitBtn;
    sOpenDialog1: TsOpenDialog;
    procedure sColorBox1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sColorBox1ColorPreview(Sender: TObject; OriginColor,
      PreviousColor: TColor; var NewColor: TColor);
  public
  end;

var
  FrameTsOthers2: TFrameTsOthers2;

implementation

{$R *.dfm}

procedure TFrameTsOthers2.sBitBtn1Click(Sender: TObject);
begin
  if sOpenDialog1.Execute then
    sRichEdit1.Lines.LoadFromFile(sOpenDialog1.FileName);
end;


procedure TFrameTsOthers2.sColorBox1Change(Sender: TObject);
begin
  sLabel1.Font.Color := sColorBox1.Selected;
  sLabel1.UseSkinColor := False;
  sSpeedButton3.Enabled := True;
end;


procedure TFrameTsOthers2.sColorBox1ColorPreview(Sender: TObject; OriginColor, PreviousColor: TColor; var NewColor: TColor);
begin
  sLabel1.Font.Color := NewColor;
  sLabel1.UseSkinColor := NewColor = clNone;
  sSpeedButton3.Enabled := NewColor <> clNone;
end;


procedure TFrameTsOthers2.sSpeedButton3Click(Sender: TObject);
begin
  sLabel1.Font.Color := clWindowText;
  sLabel1.UseSkinColor := True;
  sSpeedButton3.Enabled := False;
end;

end.
