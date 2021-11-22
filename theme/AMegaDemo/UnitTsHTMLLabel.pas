unit UnitTsHTMLLabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ExtCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu, ComCtrls,

  sMemo, sLabel, sFrameAdapter, sCheckBox, sRadioButton, sGroupBox;

type
  TFrameTsHTMLLabel = class(TFrameBaseMenu)
    sHTMLLabel1: TsHTMLLabel;
    sMemo1: TsMemo;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sCheckBox2: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sGroupBox2: TsGroupBox;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sRadioButton6: TsRadioButton;
    procedure sMemo1Change(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sRadioButton4Click(Sender: TObject);
  public
  end;

var
  FrameTsHTMLLabel: TFrameTsHTMLLabel;

implementation

{$R *.dfm}

procedure TFrameTsHTMLLabel.sCheckBox2Click(Sender: TObject);
begin
  sHTMLLabel1.UseHTML := sCheckBox2.Checked;
end;


procedure TFrameTsHTMLLabel.sMemo1Change(Sender: TObject);
begin
  sHTMLLabel1.Caption := sMemo1.Text;
  sLabel1.Caption := sHTMLLabel1.PlainCaption;
end;


procedure TFrameTsHTMLLabel.sRadioButton1Click(Sender: TObject);
begin
  sHTMLLabel1.Alignment := TAlignment(TsRadioButton(Sender).Tag);
end;


procedure TFrameTsHTMLLabel.sRadioButton4Click(Sender: TObject);
begin
  sHTMLLabel1.Layout := TTextLayout(TsRadioButton(Sender).Tag);
end;

end.
