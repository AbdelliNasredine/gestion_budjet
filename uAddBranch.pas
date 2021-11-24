unit uAddBranch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sLabel, ExtCtrls, sSkinProvider;

type
  TfAddBranch = class(TForm)
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    sLabel1: TsLabel;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sSkinProvider1: TsSkinProvider;
    procedure sBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAddBranch: TfAddBranch;

implementation

{$R *.dfm}

procedure TfAddBranch.sBitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

end.
