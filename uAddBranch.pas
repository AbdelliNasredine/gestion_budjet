unit uAddBranch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sLabel, ExtCtrls, sSkinProvider,
  sPanel, ADODB, DB, sEdit, sGroupBox;

type
  TfAddBranch = class(TForm)
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    edtDesigniationFr: TsEdit;
    edtBrancheFr: TsEdit;
    edtCode: TsEdit;
    sGroupBox1: TsGroupBox;
    edtDesigniationAr: TLabeledEdit;
    edtBrancheAr: TLabeledEdit;
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAddBranch: TfAddBranch;

implementation

uses uDataModule, uValidation, uHelpers, Main;

{$R *.dfm}

procedure TfAddBranch.sBitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfAddBranch.sBitBtn1Click(Sender: TObject);
var
  qryInsert: TADOQuery;
begin
  // validation
  validateRequired(edtDesigniationFr.Text, 'Designiation');
  validateRequired(edtBrancheFr.Text, 'Branche');
  validateRequired(edtDesigniationAr.Text, '«· ”„Ì…');
  validateRequired(edtBrancheAr.Text, '«·›—⁄');

  messagedlg(edtBrancheAr.Text, mtCustom, [mbYes], 0);

  // insert qry
  with dm.qryBranche do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO Branches (Code_b, designation_fr, branche_fr, designation_ar, branche_ar)');
    SQL.Add('VALUES (:code, :des, :b, :des_ar, :b_ar)');
    Parameters.ParamByName('code').Value := edtCode.Text;
    Parameters.ParamByName('des').Value := edtDesigniationFr.Text;
    Parameters.ParamByName('b').Value := edtBrancheFr.Text;
    Parameters.ParamByName('des_ar').Value := edtDesigniationAr.Text;
    Parameters.ParamByName('b_ar').Value := edtBrancheAr.Text;
    ExecSQL;
    Close;
  end;

  // empty the fields
  edtDesigniationFr.Text := '';
  edtBrancheFr.Text := '';
  edtDesigniationAr.Text := '';
  edtBrancheAr.Text := '';

  Self.Close;

  // load budjet again
  Main.MainForm.loadBudget;
end;

procedure TfAddBranch.FormShow(Sender: TObject);
begin
  edtCode.Text := GenerateBrancheCode;
end;

end.
