unit UnitTsOthers4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ExtCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBox, sPanel, sGroupBox, sFrameAdapter, sSpeedButton,
  SHDocVw, acWebBrowser, sMaskEdit, sCustomComboEdit, sComboEdit,
  OleCtrls, Mask;

type
  TFrameTsOthers4 = class(TFrameBaseMenu)
    sGroupBox1: TsGroupBox;
    sDragBar1: TsDragBar;
    sComboBox1: TsComboBox;
    TsSysButton: TsGroupBox;
    sSysButton1: TsSysButton;
    sComboBox2: TsComboBox;
    sGroupBox2: TsGroupBox;
    sComboEdit1: TsComboEdit;
    sWebBrowser1: TsWebBrowser;
    procedure sComboBox1Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sComboEdit1ButtonClick(Sender: TObject);
    procedure sComboEdit1KeyPress(Sender: TObject; var Key: Char);
  public
    procedure AfterCreation; override;
  end;

var
  FrameTsOthers4: TFrameTsOthers4;

implementation

{$R *.dfm}

uses UnitMain, UnitDataModule;

procedure TFrameTsOthers4.AfterCreation;
begin
  sDragBar1.DraggedControl := MainForm;
  sComboEdit1ButtonClick(sComboEdit1);
end;


procedure TFrameTsOthers4.sComboBox1Change(Sender: TObject);
begin
  case sComboBox1.ItemIndex of
    0: sDragBar1.DraggedControl := MainForm;
    1: sDragBar1.DraggedControl := sGroupBox1;
    2: sDragBar1.DraggedControl := sDragBar1;
  end;
end;


procedure TFrameTsOthers4.sComboBox2Change(Sender: TObject);
begin
  sSysButton1.SysCommand := TacSysCommand(sComboBox2.ItemIndex);
end;


procedure TFrameTsOthers4.sComboEdit1ButtonClick(Sender: TObject);
begin
  sWebBrowser1.Navigate(sComboEdit1.Text);
end;


procedure TFrameTsOthers4.sComboEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #$D then
    sWebBrowser1.Navigate(sComboEdit1.Text);
end;

end.
