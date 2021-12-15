unit uHelpers;

interface

uses SysUtils,StdCtrls, dbTables, DB, ADODB, sComboBox;

// ************ FONCTIONS ************
Function NbRecord(tblName: String): integer;
Function GenerateBrancheCode(): String;
Function GetBrancheCodeByField(field, value: String): String;
Function GetRubriqueCodeByField(field, value: String): String;
Function GetSectionCodeByField(field, value: String): String;

// ************ PROCEDURES ************
procedure PopulateCbx(tblname: String; cbx: TsComboBox);
procedure InsertBranche(designiationFr, designiationAr, BrancheFr, BrancheAr: String);
procedure InsertRubrique(codeBranche, designiationFr, designiationAr, rubriqueFr, rubriqueAr: String);
procedure InsertSection(
  codeRubrique,
  designationFr,
  designationAr,
  sectionFr,
  sectionAr : String
);
procedure InsertChapiter(
  codeSection,
  designationFr,
  designationAr,
  chapiter,
  montant : String
);

// ****** Table - TypeEngagement ******
procedure InsertTypeEngagement(designation: String);
procedure UpdateTypeEngagement(code, designation: String);
procedure DeleteTypeEngagement(code: String);
// ****** Table - TypeEngagement ******
procedure InsertTypeEmploye(designationAr, designationFr: String);
procedure UpdateTypeEmploye(code, designationAr, designationFr: String);
procedure DeleteTypeEmploye(code: String);

implementation

uses uDataModule;

//************ IMPLIMENTATION OF FUNCTIONS ************
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

Function GetBrancheCodeByField(field, value: String): String;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.sql do
  begin
    add('SELECT code_b FROM branches WHERE');
    add(field + '=' + quotedstr(value));
  end;
  q.Open;
  GetBrancheCodeByField := q.FieldValues['code_b'];
  q.Close;
  q.Free;
end;


Function GetRubriqueCodeByField(field, value: String): String;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q do
  begin
    sql.add('SELECT code_r FROM rubriques WHERE');
    sql.Add(field + '=' + quotedstr(value));
    open;
    GetRubriqueCodeByField := fieldValues['code_r'];
    close;
    free;
  end;
end;

Function GetSectionCodeByField(field, value: String): String;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.add('SELECT code_s FROM sections WHERE '+field+'='+quotedstr(value));
  q.Open;
  GetSectionCodeByField := q.FieldValues['code_s'];
  q.Close;
  q.Free;
end;

// ************ IMPLIMENTATION OF PROCEDURES ************
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

procedure InsertBranche(designiationFr, designiationAr, brancheFr, brancheAr: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.SQL do
  begin
    Clear;
    Add('INSERT INTO branches');
    Add('(code_b, designation_fr, designation_ar, branche_fr, branche_ar)');
    Add('VALUES ((SELECT ISNULL(FORMAT(MAX(code_b)+1,'+quotedstr('00')+
        '),'+quotedstr('01')+') FROM branches),');
    Add(
        quotedstr(designiationFr)+','
        +quotedstr(designiationAr)+','
        +quotedstr(brancheFr)+','
        +quotedstr(brancheAr)+')'
    );
  end;
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertRubrique(codeBranche, designiationFr, designiationAr, rubriqueFr, rubriqueAr: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q do
  begin
    sql.clear;
    sql.add('INSERT INTO Rubriques (code_r, designation_fr, designation_ar, rubrique_fr, rubrique_ar)');
    sql.add('VALUES (');
    sql.add('(SELECT ISNULL((SELECT FORMAT(MAX(code_r)+1,''0000'') FROM Rubriques WHERE');
    sql.add('code_r LIKE '+quotedstr(codeBranche+'%')+'),'+quotedstr(codeBranche+'01')+')),');
    sql.add(quotedstr(designiationFr) + ','
            + quotedstr(designiationAr) +','
            + quotedstr(rubriqueFr) +','
            + quotedstr(rubriqueAr) +')');
  end;
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertSection(
  codeRubrique,
  designationFr,
  designationAr,
  sectionFr,
  sectionAr : String
);
var
  q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.sql do
  begin
    add('INSERT INTO sections (code_s, designation_fr, designation_ar, section_fr, section_ar)');
    add('VALUES ( (SELECT ISNULL(FORMAT(MAX(code_s)+1, ''000000''), '
          +quotedstr(codeRubrique+'01')+') FROM sections WHERE code_s LIKE '
          +quotedstr(codeRubrique+'%')+'),');
    add(
      quotedstr(designationFr) + ','
      + quotedstr(designationAr) + ','
      + quotedstr(sectionFr) + ','
      + quotedstr(sectionAr) + ')'
    );
  end;
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertChapiter(
  codeSection,
  designationFr,
  designationAr,
  chapiter,
  montant : String
);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.sql do
  begin
    add('INSERT INTO chapitres (code_ch, chapitre, designation_fr, designation_ar, montant)');
    add('VALUES ( (SELECT ISNULL(FORMAT(MAX(code_ch)+1, ''00000000''), '+quotedstr(codeSection+'01')
        +') FROM chapitres WHERE code_ch LIKE '+quotedstr(codeSection+'%')+'),'
        + quotedstr(chapiter) + ','
        + quotedstr(designationFr) + ','
        + quotedstr(designationAr) + ','
        + quotedstr(montant) +')'
    );
  end;
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertTypeEngagement(designation: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'INSERT INTO type_engagement (code_te, designation_te) VALUES ('
  + '(SELECT ISNULL(FORMAT(MAX(code_te)+1,''00''),''01'') FROM type_engagement),'
  + quotedstr(designation) + ')';
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure UpdateTypeEngagement(code, designation: String);
var q :TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text :='UPDATE type_engagement SET designation_te = '
          + quotedstr(designation) + 'WHERE code_te = ' + quotedstr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure DeleteTypeEngagement(code: String);
var q :TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'DELETE FROM type_engagement WHERE code_te = '+ quotedstr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertTypeEmploye(designationAr, designationFr: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'INSERT INTO typeemploye (code_temp, designation_ar, designation_fr)'
  + ' VALUES ((SELECT ISNULL(FORMAT(MAX(code_temp)+1,''00''),''01'') FROM typeemploye),'
  + quotedstr(designationAr) + ',';
  + quotedstr(designationFr) + ')';
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure UpdateTypeEmploye(code, designationAr, designationFr: String);
var q :TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text :='UPDATE typeemploye SET designation_ar = '+quotedstr(designationAr)
      +  ', designation_fr = ' + quotedstr(designationFr)
      + 'WHERE code_temp = ' + quotedstr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;


procedure DeleteTypeEmploye(code: String);
var q :TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'DELETE FROM typeemploye WHERE code_temp = '+ quotedstr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;
















end.
