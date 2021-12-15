unit uTypeEngagement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, StdCtrls, sGroupBox, Grids, DBGrids, sEdit,
  Buttons, sBitBtn;

type
  TfTypeEngagement = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    DBGrid1: TDBGrid;
    sBitBtn2: TsBitBtn;
    sEdit1: TsEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn3: TsBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTypeEngagement: TfTypeEngagement;

implementation

{$R *.dfm}

end.
