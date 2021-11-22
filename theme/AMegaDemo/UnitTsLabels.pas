unit UnitTsLabels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ExtCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  sLabel, sGroupBox, sFrameAdapter, sEdit, sPanel, acPopupCtrls, sCheckBox;

type
  TFrameTsLabels = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sWebLabel1: TsWebLabel;
    sEdit1: TsEdit;
    sGroupBox2: TsGroupBox;
    sDragBar1: TsDragBar;
    sStickyLabel1: TsStickyLabel;
    sTrackEdit1: TsTrackEdit;
    sRadioGroup1: TsRadioGroup;
    sGroupBox3: TsGroupBox;
    sImgLabel1: TsImgLabel;
    sCheckBox1: TsCheckBox;
    sTrackEdit2: TsTrackEdit;
    procedure sEdit1Change(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sTrackEdit1Change(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sTrackEdit2Change(Sender: TObject);
  public
  end;

var
  FrameTsLabels: TFrameTsLabels;

implementation

{$R *.dfm}

uses UnitDataModule;

procedure TFrameTsLabels.sCheckBox1Click(Sender: TObject);
begin
  if sCheckBox1.Checked then
    sImgLabel1.Images := FormData.CharList16
  else
    sImgLabel1.Images := nil;
end;


procedure TFrameTsLabels.sEdit1Change(Sender: TObject);
begin
  sWebLabel1.URL := sEdit1.Text;
end;


procedure TFrameTsLabels.sRadioGroup1Change(Sender: TObject);
begin
  sStickyLabel1.AlignTo := TAlignTo(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsLabels.sTrackEdit1Change(Sender: TObject);
begin
  sStickyLabel1.Gap := sTrackEdit1.AsInteger;
end;


procedure TFrameTsLabels.sTrackEdit2Change(Sender: TObject);
begin
  sImgLabel1.Spacing := sTrackEdit2.AsInteger;
end;

end.
