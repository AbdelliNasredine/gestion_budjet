unit UnitFrameStdVCL;

interface

uses
  StdCtrls, ComCtrls, Buttons, ExtCtrls, CheckLst, Mask, Controls, Grids, Classes, SysUtils,

  sCheckBox, sButton, sLabel, sCheckListBox, sFrameAdapter,

  UnitFrameCustom;


type
  TFrame_StdVCL = class(TCustomInfoFrame)
    Edit1: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    ListBox1: TListBox;
    StringGrid1: TStringGrid;
    MaskEdit1: TMaskEdit;
    DrawGrid1: TDrawGrid;
    CheckListBox1: TCheckListBox;
    RichEdit1: TRichEdit;
    TreeView1: TTreeView;
    ListView1: TListView;
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ScrollBar1: TScrollBar;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    StaticText2: TStaticText;
    Button2: TButton;
  public
    procedure AfterCreation; override;
  end;


implementation

uses MainUnit;

{$R *.DFM}


procedure TFrame_StdVCL.AfterCreation;
var
  x, y: integer;
begin
  for x := 0 to StringGrid1.ColCount - 1 do
    for y := 0 to StringGrid1.RowCount - 1 do
      StringGrid1.Cells[x, y] := 'Cell ' + IntToStr(x) + ':' + IntToStr(y);
end;


end.
