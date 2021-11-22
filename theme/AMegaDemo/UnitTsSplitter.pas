unit UnitTsSplitter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sCheckBox, sSplitter, sPanel, sFrameAdapter, sComboBox,
  ExtCtrls;

type
  TFrameTsSplitter = class(TFrameBaseMenu)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sSplitter1: TsSplitter;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sComboBox1: TsComboBox;
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
  public
  end;

var
  FrameTsSplitter: TFrameTsSplitter;

implementation

{$R *.dfm}

procedure TFrameTsSplitter.sCheckBox1Click(Sender: TObject);
begin
  sSplitter1.SizingByClick := sCheckBox1.Checked;
end;


procedure TFrameTsSplitter.sCheckBox2Click(Sender: TObject);
begin
  sSplitter1.ShowGrip := sCheckBox2.Checked;
end;


procedure TFrameTsSplitter.sComboBox1Change(Sender: TObject);
begin
  sSplitter1.SkinData.SkinSection := sComboBox1.Text;
end;

end.
