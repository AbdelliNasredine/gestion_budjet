unit uBanques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, Buttons, sBitBtn,
  sEdit, sGroupBox, acDBGrid;

type
  TfBanque = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    edtDesignationAr: TsEdit;
    edtDesignationFr: TsEdit;
    btnSave: TsBitBtn;
    btnEdit: TsBitBtn;
    btnDelete: TsBitBtn;
    btnCancel: TsBitBtn;
    edtCode: TsEdit;
    dbGrid: TsDBGrid;
    procedure btnSaveClick(Sender: TObject);
    procedure dbGridCellClick(Column: TColumn);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    procedure reset;
    procedure refresh;
  public
    { Public declarations }
  end;

var
  fBanque: TfBanque;

implementation

uses Main, uDataModule, uHelpers;

{$R *.dfm}

procedure TfBanque.reset;
begin
  edtCode.Text := '';
  edtDesignationAr.Text := '';
  edtDesignationFr.Text := '';
  btnSave.Enabled := true;
  btnEdit.Enabled := false;
  btnDelete.Enabled := false;
  btnCancel.Enabled := false;
end;

procedure TfBanque.refresh;
begin
  dbGrid.DataSource.DataSet.Active := false;
  dbGrid.DataSource.DataSet.Active := true;
end;

procedure TfBanque.btnSaveClick(Sender: TObject);
begin
  if (edtDesignationAr.Text <> '') or (edtDesignationFr.Text <> '') then
  begin
    InsertBanque(
      edtDesignationAr.Text,
      edtDesignationFr.Text
    );
    refresh;
    reset;
  end;
end;

procedure TfBanque.dbGridCellClick(Column: TColumn);
begin
  with dm.qryBanque do
  begin
    edtCode.Text := Fields[0].AsString;
    edtDesignationAr.Text := Fields[1].AsString;
    edtDesignationFr.Text := Fields[2].AsString;
    btnSave.Enabled := false;
    btnEdit.Enabled := true;
    btnDelete.Enabled := true;
    btnCancel.Enabled := true;
  end;
end;

procedure TfBanque.btnEditClick(Sender: TObject);
begin
  if edtCode.Text <> '' then
  begin
    try
      UpdateBanque(
        edtCode.Text,
        edtDesignationAr.Text,
        edtDesignationFr.Text
      );
    except on e : Exception do
      ShowMessage('Error: '+e.Message);
    end;
    refresh;
    reset;
  end;
end;

procedure TfBanque.btnCancelClick(Sender: TObject);
begin
  reset;
end;

procedure TfBanque.btnDeleteClick(Sender: TObject);
begin
  if edtCode.Text <> '' then
  begin
    try
      DeleteBanque(edtCode.Text);
    except on e : Exception do
      ShowMessage('Error: '+e.Message);
    end;
    refresh;
    reset;
  end;
end;

end.
