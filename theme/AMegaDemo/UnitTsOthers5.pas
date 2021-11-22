unit UnitTsOthers5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sFrameAdapter, sCheckBox, sDialogs, acPathDialog, sBitBtn,
  sGroupBox, sEdit, sComboBox, sRadioButton, ExtDlgs;


type
  TFrameTsOthers5 = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sBitBtn1: TsBitBtn;
    sPathDialog1: TsPathDialog;
    sOpenDialog1: TsOpenDialog;
    sSaveDialog1: TsSaveDialog;
    sOpenPictureDialog1: TsOpenPictureDialog;
    sSavePictureDialog1: TsSavePictureDialog;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sEdit1: TsEdit;
    sComboBox1: TsComboBox;
    sCheckBox4: TsCheckBox;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sGroupBox4: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
  public
  end;

var
  FrameTsOthers5: TFrameTsOthers5;

implementation

{$R *.dfm}

{$WARNINGS OFF}
uses FileCtrl, acShellCtrls, TypInfo, UnitDataModule;


procedure TFrameTsOthers5.sBitBtn1Click(Sender: TObject);
begin
  sPathDialog1.Path := sEdit1.Text;
  if sPathDialog1.Execute then begin
    sEdit1.Text := sPathDialog1.Path;
  end;
end;


procedure TFrameTsOthers5.sBitBtn2Click(Sender: TObject);
begin
  sOpenDialog1.Execute;
end;


procedure TFrameTsOthers5.sBitBtn3Click(Sender: TObject);
begin
  sSaveDialog1.Execute;
end;


procedure TFrameTsOthers5.sBitBtn4Click(Sender: TObject);
begin
  sSavePictureDialog1.Execute;
end;


procedure TFrameTsOthers5.sBitBtn5Click(Sender: TObject);
begin
  sOpenPictureDialog1.Execute;
end;


procedure TFrameTsOthers5.sCheckBox1Click(Sender: TObject);
begin
  if sCheckBox1.Checked then
    sPathDialog1.DialogOptions := sPathDialog1.DialogOptions + [sdAllowCreate]
  else
    sPathDialog1.DialogOptions := sPathDialog1.DialogOptions - [sdAllowCreate];
end;


procedure TFrameTsOthers5.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox1.Checked then
    sPathDialog1.DialogOptions := sPathDialog1.DialogOptions + [sdPerformCreate]
  else
    sPathDialog1.DialogOptions := sPathDialog1.DialogOptions - [sdPerformCreate];
end;


procedure TFrameTsOthers5.sCheckBox3Click(Sender: TObject);
begin
  if sCheckBox1.Checked then
    sPathDialog1.DialogOptions := sPathDialog1.DialogOptions + [sdPrompt]
  else
    sPathDialog1.DialogOptions := sPathDialog1.DialogOptions - [sdPrompt];
end;


procedure TFrameTsOthers5.sCheckBox4Click(Sender: TObject);
begin
  sPathDialog1.ShowRootBtns := sCheckBox4.Checked;
end;


procedure TFrameTsOthers5.sComboBox1Change(Sender: TObject);
begin
  sPathDialog1.Root := GetEnumName(TypeInfo(TacRootFolder), sComboBox1.ITemIndex);
end;


procedure TFrameTsOthers5.sRadioButton1Click(Sender: TObject);
begin
  sOpenDialog1.ZipShowing := TsZipShowing(TsRadioButton(Sender).Tag);
end;

end.
