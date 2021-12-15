unit uBanques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, Buttons, sBitBtn,
  sEdit, sGroupBox;

type
  TfBanque = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    DBGrid1: TDBGrid;
    sGroupBox1: TsGroupBox;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBanque: TfBanque;

implementation

uses Main, uDataModule;

{$R *.dfm}

end.
