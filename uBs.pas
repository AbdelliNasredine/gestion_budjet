unit uBs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, ExtCtrls, sPanel, Buttons, sBitBtn, Mask,
  sMaskEdit, sCustomComboEdit, sToolEdit, sCurrEdit, sCurrencyEdit;

type
  TfBS = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    btn: TsBitBtn;
    sDateEdit1: TsDateEdit;
    m: TsCurrencyEdit;
    procedure btnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBS: TfBS;

implementation

uses uDataModule, Main;

{$R *.dfm}

procedure TfBS.btnClick(Sender: TObject);
begin
  if m.Text <> '' then
    with dm.Query do
    begin
      sql.Clear;
      sql.Add('INSERT INTO bs (code_bs,code_a,date_bs,montant_bs) VALUES (');
      sql.Add('(SELECT ISNULL(MAX(code_bs)+1,1) FROM bs),');
      sql.Add(QuotedStr(MainForm.sEdit8.Text) + ',');
      sql.Add(QuotedStr(sDateEdit1.Text) + ',');
      sql.Add(m.Text + ')');
      execsql;
      m.clear;
      sDateEdit1.Text := '';
      self.Close;
    end
  else
    MessageDlg('—Ã«¡« √œŒ· «·„»·€', mtInformation, [mbOk], 0);
end;

procedure TfBS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  m.Clear;
  sDateEdit1.Clear;
end;

end.
