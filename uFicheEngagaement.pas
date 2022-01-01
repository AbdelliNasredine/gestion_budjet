unit uFicheEngagaement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, Mask, sMaskEdit, sCustomComboEdit,
  sComboBox, sGroupBox, ExtCtrls, sPanel, Buttons, sBitBtn, sLabel;

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
    sEdit7: TsEdit;
    sEdit8: TsEdit;
    sEdit9: TsEdit;
    sEdit10: TsEdit;
    sLabel5: TsLabel;
    sEdit11: TsEdit;
    procedure sBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxChapitersChange(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure cbxTypeEngagaementChange(Sender: TObject);
    procedure cbxArticlesChange(Sender: TObject);
    procedure sEdit10Exit(Sender: TObject);
    procedure sEdit9Exit(Sender: TObject);
    procedure sEdit8Exit(Sender: TObject);
    procedure sEdit7Exit(Sender: TObject);
  private
    { Private declarations }
    procedure reset;
  public
    { Public declarations }
  end;

var
  fFichierEngagament: TfFichierEngagament;

implementation

uses Main, uHelpers;

{$R *.dfm}
procedure TfFichierEngagament.reset;
begin
  cbxTypeEngagaement.Text := '';
  cbxTypeEmploye.Text := '';
  cbxBanques.Text := '';
  cbxChapiters.Text := '';
  cbxArticles.Text := '';
  sEdit10.Text := '0.00';
  sEdit9.Text := '0.00';
  sEdit8.Text := '0.00';
  sEdit7.Text := '0.00';
  sEdit6.Text := '';
  sEdit5.Text := '';
  sEdit4.Text := '';
  sEdit3.Text := '';
  sEdit11.Text := '';
end;


procedure TfFichierEngagament.sBitBtn2Click(Sender: TObject);
begin
  reset;
  self.Close;
end;

procedure TfFichierEngagament.FormShow(Sender: TObject);
begin
  reset;
  PopulateCbx2('typemploye', 'designation_temp_ar' ,cbxTypeEmploye);
  PopulateCbx2('banques', 'designation_bq_ar', cbxBanques);
  PopulateCbx2('type_engagement', 'designation_te', cbxTypeEngagaement);
  PopulateCbx2('chapitres','designation_ch_ar' ,  cbxChapiters);
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
        cbxTypeEngagaement.Text,
        sEdit6.Text,
        sEdit3.Text,
        sEdit4.Text,
        sEdit5.Text,
        '',
        cbxBanques.Text,
        cbxArticles.Text,
        sEdit10.Text,
        '0',
        '0',
        '0'
      )
    else
      InsertFicheEngagement(
        cbxTypeEngagaement.Text,
        sEdit6.Text,
        sEdit3.Text,
        sEdit4.Text,
        sEdit5.Text,
        cbxTypeEmploye.Text,
        cbxBanques.Text,
        cbxArticles.Text,
        sEdit10.Text,
        sEdit9.Text,
        sEdit7.Text,
        sEdit8.Text
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
          sEdit9.Visible := false;
          sEdit8.Visible := false;
          sEdit7.Visible := false;
        end
      else
        begin
          sEdit6.Text := te.designation;
          sPanel2.Visible := false;
          cbxTypeEmploye.Visible := true;
          sEdit9.Visible := true;
          sEdit8.Visible := true;
          sEdit7.Visible := true;
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
      sEdit11.Text := CurrToStr(GetAncienSolde(Article.code));
    end
  else
    sEdit11.Text := '';

end;

procedure TfFichierEngagament.sEdit10Exit(Sender: TObject);
var montant : Currency;
begin
     // check if they havae enterd a currency
     try
      montant := StrToCurr(sEdit10.Text);
      if sEdit11.Text <> '' then
        if StrToCurr(sEdit11.Text) < montant then
          MessageDlg('ÊÍÐíÑ: ÇáãÈáÛ ÇáÐí ÃÏÎáÊå ÃßÈÑ ãä ÑÕíÏ ÇáãÇÏÉ', mtWarning, [mbOk], 0);
     except
      on E: Exception do
        sEdit10.Text := '';
     end;
end;

procedure TfFichierEngagament.sEdit9Exit(Sender: TObject);
var montant : Currency;
begin
     // check if they havae enterd a currency
     try
      montant := StrToCurr(sEdit9.Text);
      if sEdit11.Text <> '' then
        if StrToCurr(sEdit11.Text) < montant then
          MessageDlg('ÊÍÐíÑ: ÇáãÈáÛ ÇáÐí ÃÏÎáÊå ÃßÈÑ ãä ãÈáÛ ÇáãÇÏÉ', mtWarning, [mbOk], 0);
     except
      on E: Exception do
        sEdit9.Text := '';
     end;
end;

procedure TfFichierEngagament.sEdit8Exit(Sender: TObject);
var montant : Currency;
begin
     // check if they havae enterd a currency
     try
      montant := StrToCurr(sEdit8.Text);
      if sEdit11.Text <> '' then
        if StrToCurr(sEdit11.Text) < montant then
          MessageDlg('ÊÍÐíÑ: ÇáãÈáÛ ÇáÐí ÃÏÎáÊå ÃßÈÑ ãä ãÈáÛ ÇáãÇÏÉ', mtWarning, [mbOk], 0);
     except
      on E: Exception do
        sEdit8.Text := '';
     end;
end;

procedure TfFichierEngagament.sEdit7Exit(Sender: TObject);
var montant : Currency;
begin
     // check if they havae enterd a currency
     try
      montant := StrToCurr(sEdit7.Text);
      if sEdit11.Text <> '' then
        if StrToCurr(sEdit11.Text) < montant then
          MessageDlg('ÊÍÐíÑ: ÇáãÈáÛ ÇáÐí ÃÏÎáÊå ÃßÈÑ ãä ãÈáÛ ÇáãÇÏÉ', mtWarning, [mbOk], 0);
     except
      on E: Exception do
        sEdit7.Text := '';
     end;
end;
end.
