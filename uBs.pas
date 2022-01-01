unit uBs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, ExtCtrls, sPanel, Buttons, sBitBtn, Mask,
  sMaskEdit, sCustomComboEdit, sToolEdit;

type
  TfBS = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    m: TsMaskEdit;
    btn: TsBitBtn;
    sDateEdit1: TsDateEdit;
    procedure btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
      m.Text := '';
      sDateEdit1.Text := '';
      self.Close;
    end
  else
    MessageDlg('—Ã«¡« √œŒ· «·„»·€', mtInformation, [mbOk], 0);
end;

procedure TfBS.FormShow(Sender: TObject);
begin
  // set current date in date field
  sDateEdit1.DefaultToday := true;
end;

end.
