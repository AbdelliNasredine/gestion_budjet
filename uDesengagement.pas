unit uDesengagement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sGroupBox, ExtCtrls, sPanel, sMemo,
  sEdit;

type
  TfDesengagement = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    sPanel2: TsPanel;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sEdit1: TsEdit;
    sMemo1: TsMemo;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDesengagement: TfDesengagement;

implementation

uses uDataModule;

{$R *.dfm}

procedure TfDesengagement.sBitBtn1Click(Sender: TObject);
begin
  if sMemo1.Text <> '' then
    with dm.Query do
    begin
      sql.Clear;
      sql.Add('INSERT INTO desengagements (code_eng, date_de, motif_de) VALUES (');
      sql.Add(QuotedStr(sEdit1.Text)+',');
      sql.Add('GETDATE(),');
      sql.Add(QuotedStr(sMemo1.Text)+')');
      ExecSQL;
      sql.Clear;
      self.Close;
    end
  else
    MessageDlg('—Ã«¡« √œŒ· ”»» «·”Õ»', mtWarning, [mbOk], 0);
end;

procedure TfDesengagement.sBitBtn2Click(Sender: TObject);
begin
  sMemo1.Text := '';
  self.Close;
end;

end.
