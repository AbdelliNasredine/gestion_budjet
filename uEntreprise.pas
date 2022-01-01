unit uEntreprise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, sMaskEdit, sCustomComboEdit, sComboBox, StdCtrls, sEdit,
  Buttons, sBitBtn, sGroupBox, ExtCtrls, sPanel, DB, ADODB;

type
  TfEntreprise = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sGroupBox1: TsGroupBox;
    sBitBtn1: TsBitBtn;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    cbxWilaya: TsComboBox;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    q: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEntreprise: TfEntreprise;

implementation

uses uDataModule, uHelpers;

{$R *.dfm}

procedure TfEntreprise.FormShow(Sender: TObject);
begin
  // load data
  if NbRecord('entreprise') <> 0 then
  begin
    q.SQL.Clear;
    q.SQL.Text := 'SELECT * FROM entreprise';
    q.Open;
    sEdit1.Text := q.FieldValues['nomination_ar'];
    sEdit2.Text := q.FieldValues['nomination_fr'];
    sEdit3.Text := q.FieldValues['code_m'];
    sEdit4.Text := q.FieldValues['service_m'];
    sEdit5.Text := q.FieldValues['compte_tresor_w'];
    cbxWilaya.Text := q.FieldValues['wilaya_ar'];
    q.Close;
  end;
end;

procedure TfEntreprise.sBitBtn1Click(Sender: TObject);
begin
  // save data
  if NbRecord('entreprise') <> 0 then
    begin
      // update
      q.SQL.Clear;
      q.SQL.Text := 'UPDATE entreprise SET '
        + 'nomination_ar = ' + QuotedStr(sEdit1.Text) +','
        + 'nomination_fr = ' + QuotedStr(sEdit2.Text) +','
        + 'code_m = ' + QuotedStr(sEdit3.Text) +','
        + 'service_m = ' + QuotedStr(sEdit4.Text) +','
        + 'compte_tresor_w = ' + QuotedStr(sEdit5.Text) +','
        + 'wilaya_ar = ' + QuotedStr(cbxWilaya.Text);
      q.ExecSQL;
    end
  else
    begin
      q.SQL.Clear;
      q.SQL.Text := 'INSERT INTO entreprise (nomination_ar,nomination_fr,code_m'
        + 'service_m,compte_tresor_w,wilaya_ar) VALUES ('
        + QuotedStr(sEdit1.Text) +','
        + QuotedStr(sEdit2.Text) +','
        + QuotedStr(sEdit3.Text) +','
        + QuotedStr(sEdit4.Text) +','
        + QuotedStr(sEdit5.Text) +','
        + QuotedStr(cbxWilaya.Text) + ')';
      q.ExecSQL;
    end;
end;

end.
