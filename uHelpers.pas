unit uHelpers;

interface

uses SysUtils,StdCtrls, dbTables, DB, ADODB, sComboBox;

// -- FONCTIONS
Function NbRecord(tblName: String): integer;
Function GenerateBrancheCode(): String;

// -- PROCEDURES
procedure PopulateCbx(tblname: String; cbx: TsComboBox);

implementation

uses uDataModule;

Function NbRecord(tblName: String): integer;
var
  Query: TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := dm.ADOConnection1;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT COUNT(*) AS Total FROM ' + tblname);
  Query.Open;
  NbRecord := Query.FieldValues['Total'];
  Query.Free;
end;

Function GenerateBrancheCode(): String;
var Query: TADOQuery;
begin
  // generate 'CodeBranch' using SQL
  //
  //  SELECT ISNULL(
  //              RIGHT('00' + CAST(MAX(Code_b) + 1 AS VARCHAR(2)),2),
  //              '01')
  //        AS Code
  //  FROM Branche;
  //
  Query := TADOQuery.Create(nil);
  Query.Connection := dm.ADOConnection1;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT ISNULL( RIGHT('+quotedstr('00'));
  Query.SQL.Add('+ CAST(MAX(Code_b) + 1 AS VARCHAR(2)),2),'+quotedstr('01'));
  Query.SQL.Add(') AS Code FROM Branches');
  Query.Open;
  GenerateBrancheCode := Query.FieldValues['Code'];
  Query.Free;
end;

procedure PopulateCbx(tblname: String; cbx: TsComboBox);
var
  Query: TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := dm.ADOConnection1;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM ' + tblname);
  Query.Open;
  cbx.Clear;
  with Query do
    while not Eof do
      begin
        cbx.Items.Add(FieldValues['designation_ar']);
        Next;
      end;
  Query.Free;
end;

end.
