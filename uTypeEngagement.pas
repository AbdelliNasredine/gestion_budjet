unit uTypeEngagement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, StdCtrls, sGroupBox, Grids, DBGrids, sEdit,
  Buttons, sBitBtn, acDBGrid;

type
  TfTypeEngagement = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    btnSave: TsBitBtn;
    edtTypeEngagement: TsEdit;
    btnEdit: TsBitBtn;
    btnDelete: TsBitBtn;
    dbGrid: TsDBGrid;
    edtCode: TsEdit;
    btnCancel: TsBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure dbGridCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    procedure reset;
    procedure refresh;
  public
    { Public declarations }
  end;

var
  fTypeEngagement: TfTypeEngagement;

implementation

uses uDataModule, uHelpers;

{$R *.dfm}

procedure TfTypeEngagement.reset;
begin
  edtCode.Text := '';
  edtTypeEngagement.Text := '';
  btnSave.Enabled := true;
  btnEdit.Enabled := false;
  btnDelete.Enabled := false;
  btnCancel.Enabled := false;
end;

procedure TfTypeEngagement.refresh;
begin
  dbGrid.DataSource.DataSet.Active := false;
  dbGrid.DataSource.DataSet.Active := true;
end;

procedure TfTypeEngagement.btnSaveClick(Sender: TObject);
begin
  if edtTypeEngagement.Text <> '' then
    begin
      InsertTypeEngagement(edtTypeEngagement.Text);
      refresh;
      reset;
    end;
end;

procedure TfTypeEngagement.dbGridCellClick(Column: TColumn);
begin
  with dm.qryTypeEngagement  do
  begin
    edtCode.Text := Fields[0].AsString;
    edtTypeEngagement.Text := Fields[1].AsString;
    btnSave.Enabled := false;
    btnEdit.Enabled := true;
    btnDelete.Enabled := true;
    btnCancel.Enabled := true;
  end;
end;

procedure TfTypeEngagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  reset;
end;

procedure TfTypeEngagement.btnEditClick(Sender: TObject);
begin
  // on edit
  if edtCode.Text <> '' then
  begin
    try
      UpdateTypeEngagement(
        edtCode.Text,
        edtTypeEngagement.Text
      );
    except on e : Exception do
      ShowMessage('Error: ' + e.Message);
    end;
    refresh;
    reset;
  end;
end;

procedure TfTypeEngagement.btnDeleteClick(Sender: TObject);
begin
  // on delete
  if edtCode.Text <> '' then
  begin
    try
      DeleteTypeEngagement(edtCode.Text);
    except on e : Exception do
      ShowMessage('Error: ' + e.Message);
    end;
    refresh;
    reset;
  end;
end;


procedure TfTypeEngagement.btnCancelClick(Sender: TObject);
begin
  reset;
end;

end.
