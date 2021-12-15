unit uTypeEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, StdCtrls, sGroupBox, Grids, DBGrids, Buttons,
  sBitBtn, sEdit;

type
  TfTypeEmployee = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    DBGrid1: TDBGrid;
    sGroupBox1: TsGroupBox;
    sEdit2: TsEdit;
    sEdit1: TsEdit;
    sBitBtn2: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sBitBtn3: TsBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTypeEmployee: TfTypeEmployee;

implementation

{$R *.dfm}

end.
