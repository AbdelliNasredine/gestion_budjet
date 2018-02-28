unit UnitFrameTest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, StdCtrls,

  sFrameAdapter, sPanel, sEdit, sButton, sCheckBox, sComboBox;

type
  TFrameTest = class(TFrame)
    sFrameAdapter1: TsFrameAdapter;
    sComboBox1: TsComboBox;
    procedure sComboBox1Change(Sender: TObject);
  end;

implementation

{$R *.DFM}

procedure TFrameTest.sComboBox1Change(Sender: TObject);
begin
  sFrameAdapter1.SkinData.SkinSection := sComboBox1.Text;
end;

end.
