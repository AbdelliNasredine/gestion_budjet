unit UnitBarPanel_Visible;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, ComCtrls,  
  sFrameAdapter, sSpeedButton, sScrollBox, sTreeView;

  
type
  TBarPanel_Visible = class(TFrame)
    sTreeView1: TsTreeViewEx;
    sFrameAdapter1: TsFrameAdapter;
    procedure sTreeView1Change(Sender: TObject; Node: TTreeNode);
  public
    procedure FillTreeView;
  end;


implementation

uses
  MainUnit, UnitFramePanels, UnitFrameCheckBoxes, UnitFrameScrolls, UnitFrameScrollBoxes,
  UnitFrameTabControls, UnitFrameEditAdd, UnitFrameFrameBar, UnitFrameOthers, UnitFrameShellCtrls,
  UnitFrameListView, UnitFrameButtons, UnitFrameButtons2, UnitFrameEditCtrls, UnitFrameMeter, UnitFrameSlider;

{$R *.DFM}

type
  TFrameInfo = record
    FrameClass: TFrameClass;
    Caption: string;
  end;


const
  FrameTypesArray: array [0..16] of TFrameInfo = (
    (FrameClass: nil;                    Caption: 'Inherited from VCL'),
      (FrameClass: TFrame_Buttons;       Caption: 'Buttons 1'),
      (FrameClass: TFrame_Buttons2;      Caption: 'Buttons 2'),
      (FrameClass: TFrame_EditCtrls;     Caption: 'Edit controls 1'),
      (FrameClass: TFrame_EditAdd;       Caption: 'Edit controls 2'),
      (FrameClass: TFrame_Scrolls;       Caption: 'Scrolls & progress'),
      (FrameClass: TFrame_CheckBoxes;    Caption: 'Check controls'),
      (FrameClass: TFrame_ScrollBoxes;   Caption: 'Scrollbox'),
      (FrameClass: TFrame_Panels;        Caption: 'Panels'),
      (FrameClass: TFrame_TabControls;   Caption: 'Tabbed controls'),
      (FrameClass: TFrame_ListView;      Caption: 'Listview'),
      (FrameClass: TFrame_ShellControls; Caption: 'Shell controls'),

    (FrameClass: nil;                    Caption: 'Additional components'),
      (FrameClass: TFrame_FrameBar;      Caption: 'Framebar'),
      (FrameClass: TFrame_Meter;         Caption: 'Meter'),
      (FrameClass: TFrame_Slider;        Caption: 'Slider'),
      (FrameClass: TFrame_Others;        Caption: 'Additional ctrls')
  );



procedure TBarPanel_Visible.FillTreeView;
var
  i: integer;
  ParentNode: TTreeNode;
begin
  ParentNode := nil;
  for i := 0 to Length(FrameTypesArray) - 1 do
    if (FrameTypesArray[i].FrameClass = nil) then
      ParentNode := sTreeView1.Items.Add(nil, FrameTypesArray[i].Caption)
    else
      sTreeView1.Items.AddChild(ParentNode, FrameTypesArray[i].Caption);

  sTreeView1.FullExpand;
end;


procedure TBarPanel_Visible.sTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  if (sTreeView1.Selected <> nil) and (FrameTypesArray[sTreeView1.Selected.AbsoluteIndex].FrameClass <> nil) then
    MainForm.CreateNewFrame(FrameTypesArray[sTreeView1.Selected.AbsoluteIndex].FrameClass, sTreeView1.Items[sTreeView1.Selected.AbsoluteIndex]);
end;

end.






