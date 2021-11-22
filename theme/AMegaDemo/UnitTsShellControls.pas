unit UnitTsShellControls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls, ComCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sGroupBox, sCheckBox, sListView, acShellCtrls, sComboBoxes, sTreeView, sFrameAdapter;


type
  TFrameTsShellControls = class(TFrameBaseMenu)
    sShellTreeView1: TsShellTreeView;
    sShellComboBox1: TsShellComboBox;
    sShellListView1: TsShellListView;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sRadioGroup1: TsRadioGroup;
    sRadioGroup2: TsRadioGroup;
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sRadioGroup2Change(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
  public
  end;

var
  FrameTsShellControls: TFrameTsShellControls;

implementation

{$R *.dfm}


procedure TFrameTsShellControls.sCheckBox1Click(Sender: TObject);
begin
  sShellListView1.AutoContextMenus := sCheckBox1.Checked;
end;


procedure TFrameTsShellControls.sCheckBox2Click(Sender: TObject);
begin
  sShellListView1.AutoRefresh := sCheckBox2.Checked;
end;


procedure TFrameTsShellControls.sCheckBox3Click(Sender: TObject);
begin
  sShellListView1.AutoNavigate := sCheckBox3.Checked;
end;


procedure TFrameTsShellControls.sRadioGroup1Change(Sender: TObject);
begin
  sShellListView1.ShowExt := TacShowExtension(sRadioGroup1.ItemIndex);
end;


procedure TFrameTsShellControls.sRadioGroup2Change(Sender: TObject);
begin
  sShellListView1.ViewStyle := TViewStyle(sRadioGroup2.ItemIndex);
end;

end.
