unit uTypeEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, StdCtrls, sGroupBox, Grids, DBGrids, Buttons,
  sBitBtn, sEdit, acDBGrid;

type
  TfTypeEmployee = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    edtEmployeeTypeFr: TsEdit;
    edtEmployeeTypeAr: TsEdit;
    btnSave: TsBitBtn;
    btnEdit: TsBitBtn;
    btnDelete: TsBitBtn;
    btnCancel: TsBitBtn;
    dbGrid: TsDBGrid;
    edtCode: TsEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbGridCellClick(Column: TColumn);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    procedure reset;
    procedure refresh;
  public
    { Public declarations }
  end;

var
  fTypeEmployee: TfTypeEmployee;

implementation

uses uDataModule, uHelpers;

{$R *.dfm}

procedure TfTypeEmployee.reset;
begin
  edtCode.Text := '';
  edtEmployeeTypeAr.Text := '';
  edtEmployeeTypeFr.Text := '';
  btnSave.Enabled := true;
  btnEdit.Enabled := false;
  btnDelete.Enabled := false;
  btnCancel.Enabled := false;
end;

procedure TfTypeEmployee.refresh;
begin
  dbGrid.DataSource.DataSet.Active := false;
  dbGrid.DataSource.DataSet.Active := true;
end;

procedure TfTypeEmployee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  reset;
end;

procedure TfTypeEmployee.dbGridCellClick(Column: TColumn);
begin
  with dm.qryTypeEmployee do
  begin
    edtCode.Text := Fields[0].AsString;
    edtEmployeeTypeAr.Text := Fields[1].AsString;
    edtEmployeeTypeFr.Text := Fields[2].AsString;
    btnSave.Enabled := false;
    btnEdit.Enabled := true;
    btnDelete.Enabled := true;
    btnCancel.Enabled := true;
  end;
end;

procedure TfTypeEmployee.btnCancelClick(Sender: TObject);
begin
  reset;
end;

procedure TfTypeEmployee.btnSaveClick(Sender: TObject);
begin
  if (edtEmployeeTypeAr.Text <> '') or (edtEmployeeTypeFr.Text <> '') then
  begin
    InsertTypeEmploye(
      edtEmployeeTypeAr.Text,
      edtEmployeeTypeFr.Text
    );
    refresh;
    reset;
  end;
end;

procedure TfTypeEmployee.btnEditClick(Sender: TObject);
begin
  if edtCode.Text <> '' then
  begin
    try
      UpdateTypeEmploye(
        edtCode.Text,
        edtEmployeeTypeAr.Text,
        edtEmployeeTypeFr.Text
      );
    except on e : Exception do
      ShowMessage('Error: '+e.Message);
    end;
    refresh;
    reset;
  end;
end;

procedure TfTypeEmployee.btnDeleteClick(Sender: TObject);
begin
  if edtCode.Text <> '' then
  begin
    try
      DeleteTypeEmploye(edtCode.Text);
    except on e: Exception do
      ShowMessage('Error: '+e.Message);
    end;
    refresh;
    reset;
  end;
end;

end.
