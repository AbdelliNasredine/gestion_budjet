unit uFicheEngagaement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, Mask, sMaskEdit, sCustomComboEdit,
  sComboBox, sGroupBox, ExtCtrls, sPanel, Buttons, sBitBtn, sLabel,
  sToolEdit, sCurrEdit, sCurrencyEdit, sCheckBox;

type
  TfFichierEngagament = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    cbxTypeEmploye: TsComboBox;
    cbxBanques: TsComboBox;
    cbxTypeEngagaement: TsComboBox;
    cbxChapiters: TsComboBox;
    cbxArticles: TsComboBox;
    sPanel8: TsPanel;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sGroupBox2: TsGroupBox;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sEdit6: TsEdit;
    sPanel2: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    date: TsDateEdit;
    m1: TsCurrencyEdit;
    m2: TsCurrencyEdit;
    m3: TsCurrencyEdit;
    m4: TsCurrencyEdit;
    solde: TsCurrencyEdit;
    code: TsEdit;
    procedure sBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxChapitersChange(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure cbxTypeEngagaementChange(Sender: TObject);
    procedure cbxArticlesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure reset;
  public
    { Public declarations }
  end;

var
  fFichierEngagament: TfFichierEngagament;

implementation

uses Main, uHelpers, uDataModule;

{$R *.dfm}
procedure TfFichierEngagament.reset;
begin
  cbxTypeEngagaement.Text := '';
  cbxTypeEmploye.Text := '';
  cbxBanques.Text := '';
  cbxChapiters.Text := '';
  cbxArticles.Text := '';
  sEdit6.Text := '';
  sEdit5.Text := '';
  sEdit4.Text := '';
  sEdit3.Text := '';
  // sEdit11.Text := '';
  solde.Clear;
  m1.Clear;
  m2.Clear;
  m3.Clear;
  m4.Clear;
end;


procedure TfFichierEngagament.sBitBtn2Click(Sender: TObject);
begin
  reset;
  code.Clear;
  self.Close;
end;

procedure TfFichierEngagament.FormShow(Sender: TObject);
begin
  reset;
  PopulateCbx2('typemploye', 'designation_temp_ar' ,cbxTypeEmploye);
  PopulateCbx2('banques', 'designation_bq_ar', cbxBanques);
  PopulateCbx2('type_engagement', 'designation_te', cbxTypeEngagaement);
  PopulateCbx2('chapitres','designation_ch_ar' ,  cbxChapiters);
  if code.Text <> '' then
  begin
    sGroupBox2.Visible := true;
    with dm.Query do
    begin
      sql.clear;
      sql.add('SELECT * FROM fiche_engagement WHERE code_eng = '+quotedstr(code.Text));
      open;
      date.Text := FieldValues['date_fe'];
      sEdit6.Text := FieldValues['e1'];
      sEdit3.Text := FieldValues['e2'];
      sEdit4.Text := FieldValues['e3'];
      sEdit5.Text := FieldValues['e4'];
      m1.Text := FieldValues['montant_e1'];
      m2.Text := FieldValues['montant_e2'];
      m3.Text := FieldValues['montant_e3'];
      m4.Text := FieldValues['montant_e4'];
      solde.Text := FieldValues['solde'];
    end;
  end;
end;

procedure TfFichierEngagament.cbxChapitersChange(Sender: TObject);
var sql : String;
begin
  if cbxChapiters.Text <> '' then
  begin
    sql := 'SELECT designation_a_ar FROM articles WHERE code_a LIKE'
     + QuotedStr(GetChapitreCodeByField('designation_ch_ar', cbxChapiters.Text)+'%');
    PopulateCbxSql(sql, cbxArticles);
  end;
end;

procedure TfFichierEngagament.sBitBtn1Click(Sender: TObject);
var error : Boolean;
begin
  // TODO : validation
  error := false;
  try
    if GetTypeEngagementByField('designation_te', cbxTypeEngagaement.Text).valuer = 2 then
      InsertFicheEngagement(
        date.Text,
        cbxTypeEngagaement.Text,
        sEdit6.Text,
        sEdit3.Text,
        sEdit4.Text,
        sEdit5.Text,
        '',
        cbxBanques.Text,
        cbxArticles.Text,
        m1.Text,
        m2.Text,
        m3.Text,
        m4.Text,
        solde.Text
      )
    else
      InsertFicheEngagement(
        date.Text,
        cbxTypeEngagaement.Text,
        sEdit6.Text,
        sEdit3.Text,
        sEdit4.Text,
        sEdit5.Text,
        cbxTypeEmploye.Text,
        cbxBanques.Text,
        cbxArticles.Text,
        m1.Text,
        m2.Text,
        m3.Text,
        m4.Text,
        solde.Text
      );
  except on E: Exception do
    begin
      MessageDlg('Error : ' + E.Message , mtError, [mbOk], 0);
      error := true;
    end;
  end;
  if not error then
  begin
    MainForm.refresheEngagement;
    Self.Close;
  end;
end;

procedure TfFichierEngagament.cbxTypeEngagaementChange(Sender: TObject);
var te: TTypeEngagement;
begin
  if cbxTypeEngagaement.Text <> '' then
    begin
      te := GetTypeEngagementByField('designation_te', cbxTypeEngagaement.Text);
      sGroupBox2.Visible := true;

      if te.valuer = 2 then
        begin
          sEdit6.Text := '';
          sPanel2.Visible := true;
          cbxTypeEmploye.Visible := false;
          m2.Visible := false;
          m3.Visible := false;
          m4.Visible := false;
        end
      else
        begin
          sEdit6.Text := te.designation;
          sPanel2.Visible := false;
          cbxTypeEmploye.Visible := true;
          m2.Visible := true;
          m3.Visible := true;
          m4.Visible := true;
        end;
    end
  else
    sGroupBox2.Visible := false;
end;

procedure TfFichierEngagament.cbxArticlesChange(Sender: TObject);
var Article : TArticle;
begin
  // article on change
  if cbxArticles.Text <> '' then
    begin
      Article := GetArticleByField('designation_a_ar', cbxArticles.Text);
      // sEdit11.Text := CurrToStr(GetAncienSolde(Article.code));
      solde.Text :=  CurrToStr(GetAncienSolde(Article.code));
    end
  else
    begin
      // sEdit11.Text := '';
      solde.Clear;
    end;
end;

procedure TfFichierEngagament.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  date.Clear;
  code.Clear;
  reset;
end;

end.
