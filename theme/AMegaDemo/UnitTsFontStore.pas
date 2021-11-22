unit UnitTsFontStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sMemo, acFontStore, sFrameAdapter, sLabel, sComboBox, sBitBtn;

type
  TFrameTsFontStore = class(TFrameBaseMenu)
    sFontStore1: TsFontStore;
    sHTMLLabel1: TsHTMLLabel;
    sComboBox1: TsComboBox;
    sBitBtn1: TsBitBtn;
    procedure sComboBox1Change(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  public
    procedure AfterCreation; override;
    procedure UpdateFontList;
  end;

var
  FrameTsFontStore: TFrameTsFontStore;

implementation

{$R *.dfm}

uses acFontStoreEditor, UnitDataModule;

var
  FormFontStore: TFormFontStore;

procedure TFrameTsFontStore.AfterCreation;
begin
  UpdateFontList;
end;


procedure TFrameTsFontStore.sBitBtn1Click(Sender: TObject);
begin
  FormFontStore := TFormFontStore.Create(Self);
  FormFontStore.InitEditor(sFontStore1);
  if FormFontStore.ShowModal = mrOk then begin
    sFontStore1.Assign(FormFontStore.sFontStore1);
    sFontStore1.LoadFonts;
    UpdateFontList;
  end;
  FormFontStore.Free;
end;


procedure TFrameTsFontStore.sComboBox1Change(Sender: TObject);
begin
  sHTMLLabel1.Font.Name := sComboBox1.Text;
end;


procedure TFrameTsFontStore.UpdateFontList;
var
  i{, n}: integer;
begin
  sComboBox1.Clear;
//  n := -1;
  for i := 0 to sFontStore1.Fonts.Count - 1 do begin
    sComboBox1.Items.Add(sFontStore1.Fonts[i].FontName);
    if sFontStore1.Fonts[i].FontName = sHTMLLabel1.Font.Name then
//      n := i;
  end;
{
  if n >= 0 then
    sComboBox1.ItemIndex := n
  else
    sComboBox1.ItemIndex := 0;
}
  sComboBox1.ItemIndex := -1;
  if sComboBox1.ItemIndex >= 0 then
    sHTMLLabel1.Font.Name := sComboBox1.Text
  else
    sHTMLLabel1.Font.Name := 'Tahoma';
end;

end.
