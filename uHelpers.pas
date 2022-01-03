unit uHelpers;

interface

uses SysUtils, Dialogs, StdCtrls, dbTables, DB, ADODB, sComboBox;
// ************* RECORDS ***************
type
  TBranche = record
    code: String;
    brancheAr: String;
    brancheFr: String;
    designationAr: String;
    designationFr: String;
  end;

  TArticle = record
    code: String;
    designationAr: String;
    designationFr: String;
    decret: String;
    montant: Currency;
    article: String;
  end;

  TTypeEngagement = record
    code: String;
    designation: String;
    valuer: Integer;
  end;

// ************ FONCTIONS ************
Function NbRecord(tblName: String): integer;
Function GenerateBrancheCode(): String;
Function GetBrancheCodeByField(field, value: String): String;
Function GetRubriqueCodeByField(field, value: String): String;
Function GetSectionCodeByField(field, value: String): String;
Function GetChapitreCodeByField(field, value: String): String;
Function GetArticleCodeByField(field, value: String): String;
Function GetMantantRestant(codeChapiter: String): Currency;
Function GetMantantTotatOfArticles(codeChapitre: String): Currency;
Function GetMantantOfChapitre(code: String): Currency;
Function GetTypeEngagementByField(name, value: String) : TTypeEngagement;
Function GetArticleByField(name, value: String): TArticle;
Function GetAncienSolde(codeA: String): Currency;
// Function GetBrancheByField(field, value : String): TBranchArray;

// ************ PROCEDURES ************
procedure PopulateCbxSql(sql: String; cbx: TsComboBox);
procedure PopulateCbx(tblname: String; cbx: TsComboBox);
procedure PopulateCbx2(tblname: String; fieldName: String; cbx: TsComboBox);

// ****** Table - Branches ******
procedure InsertBranche(designiationFr, designiationAr, BrancheFr, BrancheAr: String);
procedure UpdateBranche(code, designiationFr, designiationAr, BrancheFr, BrancheAr: String);
procedure DeleteBranche(code: String);

// ****** Table - Rubriques ******
procedure InsertRubrique(codeBranche, designiationFr, designiationAr, rubriqueFr, rubriqueAr: String);
// ****** Table - Sections ******
procedure InsertSection(
  codeRubrique,
  designationFr,
  designationAr,
  sectionFr,
  sectionAr : String
);
// ****** Table - Chapiters ******
procedure InsertChapiter(
  codeSection,
  designationFr,
  designationAr,
  chapiter,
  montant : String
);
// ****** Table - Articles ******
procedure InsertArticle(
  code,
  designationFr,
  designationAr,
  article,
  decret,
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
// ****** Table - TypeEngagement ******
procedure InsertBanque(designationAr, designationFr: String);
procedure UpdateBanque(code, designationAr, designationFr: String);
procedure DeleteBanque(code: String);
// ****** Table - FicheEngagement ******
procedure InsertFicheEngagement(
  date,
  typeEngagaement,
  e1,
  e2,
  e3,
  e4,
  typeEmploye,
  banque,
  article,
  m1,
  m2,
  m3,
  m4,
  solde : String
);
procedure DeleteFicheEngagement(code: String);

// ****** Table - Transfert ******
procedure InsertTransfert(articleIn,articleOut, montant: String);
procedure UpdateTransfert(code,articleIn,articleOut, montant: String);
procedure DeleteTransfert(code: String);

implementation

uses uDataModule;

//************ IMPLIMENTATION OF FUNCTIONS ************
Function GetAncienSolde(codeA: String): Currency;
var
  Query: TADOQuery;
  SQL_ANS_SOLD: String;
begin
  codeA := QuotedStr(codeA);
  SQL_ANS_SOLD := '(select a.montant_a-isnull((select sum(montant_e1+montant_e2+montant_e3+montant_e4) from fiche_engagement where code_a= '+codeA+' ),0)'
   + '+isnull((select sum(montant_bs) from bs where code_a= '+codeA+' ),0)+isnull((select sum(montant_trans) from transferts where trans_in= '+codeA+' ),0)'
   + '-isnull((select sum(montant_trans) from transferts where trans_out= '+codeA+' ),0)+isnull((select sum(montant_e1+montant_e2+montant_e3+montant_e4) from '
   + 'fiche_engagement fe, desengagements de where de.code_fe=fe.code_fe and fe.code_a= '+codeA+' ),0) as compte_anc from articles a where code_a= '+codeA+' )';
  Query := TADOQuery.Create(nil);
  Query.Connection := dm.ADOConnection1;
  Query.SQL.Clear;
  Query.SQL.Text := SQL_ANS_SOLD;
  Query.Open;
  GetAncienSolde := Query.Fields[0].AsCurrency;
  Query.Close;
  Query.Free;
end;

Function GetArticleByField(name, value: String): TArticle;
var
  Query: TADOQuery;
  Article: TArticle;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := dm.ADOConnection1;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM articles WHERE');
  Query.SQL.Add(name + ' = ' + QuotedStr(value));
  Query.Open;
  Article.code := Query.Fields[0].AsString;
  Article.designationFr := Query.Fields[1].AsString;
  Article.designationAr := Query.Fields[2].AsString;
  Article.decret := Query.Fields[3].AsString;
  Article.montant := Query.Fields[4].AsCurrency;
  Article.article := Query.Fields[5].AsString;
  GetArticleByField := Article;
  Query.Close;
  Query.Free;
end;

Function GetTypeEngagementByField(name, value: String) : TTypeEngagement;
var
  Query: TADOQuery;
  TypeEngagement: TTypeEngagement;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := dm.ADOConnection1;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM type_engagement WHERE');
  Query.SQL.Add(name + ' = ' + QuotedStr(value));
  Query.Open;
  TypeEngagement.code := Query.Fields[0].AsString;
  TypeEngagement.designation := Query.Fields[1].AsString;
  TypeEngagement.valuer := Query.Fields[2].AsInteger;
  GetTypeEngagementByField := TypeEngagement;
  Query.Close;
  Query.Free;
end;

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

Function GetChapitreCodeByField(field, value: String): String;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.add('SELECT code_ch FROM chapitres WHERE '+field+'='+quotedstr(value));
  q.Open;
  GetChapitreCodeByField := q.FieldValues['code_ch'];
  q.Close;
  q.Free;
end;

Function GetArticleCodeByField(field, value: String): String;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.add('SELECT code_a FROM articles WHERE '+field+'='+quotedstr(value));
  q.Open;
  GetArticleCodeByField := q.FieldValues['code_a'];
  q.Close;
  q.Free;
end;

Function GetMantantRestant(codeChapiter: String): Currency;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.text := 'SELECT (SELECT montant FROM chapitres WHERE code_ch = '+quotedstr(codeChapiter)
      +' ) - ISNULL(SUM(montant), 0) as rest FROM articles'
      +' WHERE code_a LIKE '+quotedstr(codeChapiter+'%');
  q.Open;
  GetMantantRestant := StrToCurr(q.FieldValues['rest']);
  q.Close;
  q.Free;
end;

Function GetMantantTotatOfArticles(codeChapitre: String): Currency;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.add('SELECT SUM(mantant) as total FROM articles');
  q.sql.add('WHERE code_a LIKE '+quotedstr(codeChapitre+'%'));
  q.Open;
  GetMantantTotatOfArticles := StrToCurr(q.FieldValues['code_ch']);
  q.Close;
  q.Free;
end;

Function GetMantantOfChapitre(code: String): Currency;
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.add('SELECT mantant as total FROM articles');
  q.sql.add('WHERE code_a LIKE '+quotedstr(code+'%'));
  q.Open;
  GetMantantOfChapitre := StrToCurr(q.FieldValues['total']);
  q.Close;
  q.Free;
end;

// ************ IMPLIMENTATION OF PROCEDURES ************
procedure PopulateCbxSql(sql: String; cbx: TsComboBox);
var Query : TADOQuery;
begin
  Query := TADOQuery.Create(nil);
  Query.Connection := dm.ADOConnection1;
  Query.SQL.Clear;
  Query.SQL.Add(sql);
  Query.Open;
  cbx.Clear;
  with Query do
    if Query.FieldCount <> 0 then
    while not Eof do
      begin
        cbx.Items.Add(Fields[0].AsString);
        Next;
      end
    else
      cbx.Enabled := false;
  Query.Free;
end;

procedure PopulateCbx2(tblname: String; fieldName: String; cbx: TsComboBox);
var Query : TADOQuery;
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
        cbx.Items.Add(FieldValues[fieldName]);
        Next;
      end;
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

procedure InsertBranche(designiationFr, designiationAr, brancheFr, brancheAr: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.SQL do
  begin
    Clear;
    Add('INSERT INTO branches');
    Add('(code_b, designation_b_fr, designation_b_ar, branche_fr, branche_ar)');
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

procedure UpdateBranche(code, designiationFr, designiationAr, BrancheFr, BrancheAr: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.SQL do
  begin
    add('UPDATE branches SET');
    add('designation_b_fr = ' + QuotedStr(designiationFr) +',');
    add('designation_b_ar = ' + QuotedStr(designiationAr) +',');
    add('branche_fr = ' + QuotedStr(BrancheFr) +',');
    add('branche_ar = ' + QuotedStr(BrancheAr));
    add('WHERE code_b = ' + QuotedStr(code));
  end;
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure DeleteBranche(code: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.SQL.add('DELETE FROM branches WHERE code_b=' + QuotedStr(code)+';');
  //q.SQL.add('DELETE FROM rubriques WHERE code_r LIKE '+QuotedStr(code+'%')+';');
  //q.SQL.add('DELETE FROM sections WHERE code_s LIKE '+QuotedStr(code+'%')+';');
  //q.SQL.add('DELETE FROM chapitres WHERE code_ch LIKE '+QuotedStr(code+'%')+';');
  //q.SQL.add('DELETE FROM articles WHERE code_a LIKE'+QuotedStr(code+'%')+';');
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
    sql.add('INSERT INTO Rubriques (code_r, designation_r_fr, designation_r_ar, rubrique_fr, rubrique_ar)');
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
    add('INSERT INTO sections (code_s, designation_s_fr, designation_s_ar, section_fr, section_ar)');
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
    add('INSERT INTO chapitres (code_ch, chapitre, designation_ch_fr, designation_ch_ar, montant_ch)');
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

procedure InsertArticle(
  code,
  designationFr,
  designationAr,
  article,
  decret,
  montant : String
);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.sql do
  begin
    add('INSERT INTO articles (code_a, article, designation_a_fr, designation_a_ar, decret , montant_a)');
    add('VALUES ( (SELECT ISNULL(FORMAT(MAX(code_a)+1, ''0000000000''), '+quotedstr(code+'01')
        +') FROM articles WHERE code_a LIKE '+quotedstr(code+'%')+'),'
        + quotedstr(article) + ','
        + quotedstr(designationFr) + ','
        + quotedstr(designationAr) + ','
        + quotedstr(decret) + ','
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
  q.sql.Text := 'INSERT INTO type_engagement (code_te, designation_te, type) VALUES ('
  + '(SELECT ISNULL(FORMAT(MAX(code_te)+1,''00''),''01'') FROM type_engagement),'
  + quotedstr(designation) + ', 1)';
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
  q.sql.Text := 'INSERT INTO typemploye (code_temp, designation_temp_ar, designation_temp_fr)'
  + ' VALUES ((SELECT ISNULL(FORMAT(MAX(code_temp)+1,''00''),''01'') FROM typemploye),'
  + quotedstr(designationAr) + ','
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
  q.sql.Text :='UPDATE typemploye SET designation_temp_ar = '+quotedstr(designationAr)
      +  ', designation_temp_fr = ' + quotedstr(designationFr)
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
  q.sql.Text := 'DELETE FROM typemploye WHERE code_temp = '+ quotedstr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertBanque(designationAr, designationFr: String);
var q : TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'INSERT INTO banques (code_bq, designation_bq_ar, designation_bq_fr)'
  + ' VALUES ((SELECT ISNULL(FORMAT(MAX(code_bq)+1,''00''),''01'') FROM banques),'
  + quotedstr(designationAr) + ','
  + quotedstr(designationFr) + ')';
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure UpdateBanque(code, designationAr, designationFr: String);
var q : TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text :='UPDATE banques SET designation_bq_ar = '+quotedstr(designationAr)
      +  ', designation_bq_fr = ' + quotedstr(designationFr)
      + 'WHERE code_bq = ' + quotedstr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure DeleteBanque(code: String);
var q: TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'DELETE FROM banques WHERE code_bq = '+ quotedstr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertFicheEngagement(
  date,
  typeEngagaement,
  e1,
  e2,
  e3,
  e4,
  typeEmploye,
  banque,
  article,
  m1,
  m2,
  m3,
  m4,
  solde : String
);

var q : TADOQuery;
    SQL_ANS_SOLD, codeA : String;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;

  codeA := QuotedStr(GetArticleByField('designation_a_ar', article).code);

  {
  SQL_ANS_SOLD := '(select a.montant_a-isnull((select sum(montant_e1+montant_e2+montant_e3+montant_e4) from fiche_engagement where code_a= '+codeA+' ),0)'
   + '+isnull((select sum(montant_bs) from bs where code_a= '+codeA+' ),0)+isnull((select sum(montant_trans) from transferts where trans_in= '+codeA+' ),0)'
   + '-isnull((select sum(montant_trans) from transferts where trans_out= '+codeA+' ),0)+isnull((select sum(montant_e1+montant_e2+montant_e3+montant_e4) from '
   + 'fiche_engagement fe, desengagements de where de.code_fe=fe.code_fe and fe.code_a= '+codeA+' ),0) as compte_anc from articles a where code_a= '+codeA+' )';
  }
  q.sql.Clear;
  q.sql.Text := 'INSERT INTO fiche_engagement'
    +'(code_fe,date_fe,annee_e,code_te,e1,e2,e3,e4,code_temp,code_bq,code_a'
    +',montant_e1,montant_e2, montant_e3, montant_e4, sit, solde) VALUES ('
    + '(SELECT ISNULL(FORMAT(MAX(code_fe)+1, ''000''), ''001'') FROM fiche_engagement WHERE code_a = '+codeA+'),'
    + 'CONVERT(DATE,'+QuotedStr(date)+'),'
    + 'YEAR(CONVERT(DATE,'+QuotedStr(date)+')),'
    + '(SELECT code_te FROM type_engagement WHERE designation_te = '+QuotedStr(typeEngagaement)+'),'
    + QuotedStr(typeEngagaement) + ','
    + QuotedStr(e2) + ','
    + QuotedStr(banque) + ','
    + QuotedStr(e4) + ','
    + '(SELECT code_temp FROM typemploye WHERE designation_temp_ar = '+QuotedStr(typeEmploye)+'),'
    + '(SELECT code_bq FROM banques WHERE designation_bq_ar = '+QuotedStr(banque)+'),'
    + '(SELECT code_a FROM articles WHERE designation_a_ar = '+QuotedStr(article)+'),'
    + m1 + ','
    + m2 + ','
    + m3 + ','
    + m4 + ','
    + '0,'
    + solde + ')';
  q.ExecSQL;
  q.Close;
  q.Free;
end;


procedure DeleteFicheEngagement(code: String);
var q : TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'DELETE FROM fiche_engagement WHERE code_eng = ' + QuotedStr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure InsertTransfert(articleIn,articleOut, montant: String);
var q : TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.SQL do
  begin
    add('INSERT INTO transferts (code_trans, trans_in, trans_out, montant_trans, date_trans) VALUES');
    add('((SELECT ISNULL(MAX(code_trans)+1, 0) FROM transferts),');
    add('(SELECT code_a FROM articles WHERE designation_a_ar = '+QuotedStr(articleIn)+'),');
    add('(SELECT code_a FROM articles WHERE designation_a_ar = '+QuotedStr(articleOut)+'),');
    add(montant+', GETDATE())');
  end;
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure UpdateTransfert(code,articleIn,articleOut, montant: String);
var q : TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  with q.SQL do
  begin
    add('UPDATE transferts SET');
    add('trans_in = (SELECT code_a FROM articles WHERE designation_a_ar = '+QuotedStr(articleIn)+'),');
    add('trans_out = (SELECT code_a FROM articles WHERE designation_a_ar = '+QuotedStr(articleOut)+'),');
    add('montant_trans = ' + montant);
    add('WHERE code_trans = ' + QuotedStr(code));
  end;
  q.ExecSQL;
  q.Close;
  q.Free;
end;

procedure DeleteTransfert(code: String);
var q : TADOQuery;
begin
  q := TADOQuery.Create(nil);
  q.Connection := dm.ADOConnection1;
  q.sql.Text := 'DELETE FROM transferts WHERE code_trans = ' + QuotedStr(code);
  q.ExecSQL;
  q.Close;
  q.Free;
end;



















end.
