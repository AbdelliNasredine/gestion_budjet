unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, acTitleBar, ComCtrls, ToolWin, sToolBar,
  sTabControl, sPageControl, sStatusBar, sSkinProvider, acHeaderControl,
  ImgList, acAlphaImageList, StdCtrls, Buttons, sBitBtn, acCoolBar, Mask,
  sMaskEdit, sCustomComboEdit, sComboBox, sGroupBox, ExtCtrls, DBCtrls,
  sPanel, DB, ADODB, sLabel, Grids, DBGrids, dbcgrids, sEdit, sButton,
  sScrollBox, sDBNavigator, acDBGrid;

type
  TMainForm = class(TForm)
    sStatusBar1: TsStatusBar;
    sideMenuIcons: TsCharImageList;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Q2: TMenuItem;
    mainMenuIcons: TsCharImageList;
    A1: TMenuItem;
    actionsIcons: TsCharImageList;
    sSkinProvider1: TsSkinProvider;
    pageControle: TsPageControl;
    budjet: TsTabSheet;
    engagements: TsTabSheet;
    cbxRubrique: TsComboBox;
    cbxSections: TsComboBox;
    cbxChapitres: TsComboBox;
    cbxArticles: TsComboBox;
    btnAddBranche: TsBitBtn;
    btnAddRubrique: TsBitBtn;
    btnAddSection: TsBitBtn;
    btnAddChapitre: TsBitBtn;
    btnAddArticle: TsBitBtn;
    cbxBranches: TsComboBox;
    gbxNewBranche: TsGroupBox;
    edtDesigniationBrancheFr: TsEdit;
    edtBrancheFr: TsEdit;
    edtBrancheAr: TsEdit;
    edtDesigniationBrancheAr: TsEdit;
    btnSaveBranche: TsButton;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    panelBranches: TsPanel;
    panelRubriques: TsPanel;
    gbxNewRubrique: TsGroupBox;
    edtDesigniationRubriqueFr: TsEdit;
    edtRubriqueFr: TsEdit;
    edtRubriqueAr: TsEdit;
    edtDesigniationRubriqueAr: TsEdit;
    sPanel3: TsPanel;
    btnSaveRubrique: TsButton;
    panelSections: TsPanel;
    gbxNewSection: TsGroupBox;
    edtDesigniationSectionFr: TsEdit;
    edtSectionFr: TsEdit;
    edtSectionAr: TsEdit;
    edtDesigniationSectionAr: TsEdit;
    sPanel4: TsPanel;
    btnSaveSection: TsButton;
    panelChapiters: TsPanel;
    gbxNexChapitre: TsGroupBox;
    edtChapitre: TsEdit;
    edtDesignationChapitreAr: TsEdit;
    sPanel5: TsPanel;
    btnSaveChapiter: TsButton;
    edtMontantChapiter: TsMaskEdit;
    panelArticles: TsPanel;
    gbxNewArticle: TsGroupBox;
    edtDesignationArticleAr: TsEdit;
    sPanel6: TsPanel;
    sButton2: TsButton;
    edtMantantArticle: TsMaskEdit;
    edtDecret: TsEdit;
    edtMantantArticleRest: TsMaskEdit;
    N3: TMenuItem;
    t1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    sPanel7: TsPanel;
    sGroupBox1: TsGroupBox;
    edtArticle: TsMaskEdit;
    sPanel8: TsPanel;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sDBGrid1: TsDBGrid;
    sEdit1: TsEdit;
    R1: TMenuItem;
    I1: TMenuItem;
    sEdit2: TsEdit;
    sComboBox1: TsComboBox;
    sTabSheet1: TsTabSheet;
    PopupMenu1: TPopupMenu;
    j1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    sTabSheet2: TsTabSheet;
    sGroupBox2: TsGroupBox;
    sDBGrid2: TsDBGrid;
    sComboBox2: TsComboBox;
    sComboBox3: TsComboBox;
    sEdit3: TsEdit;
    sPanel9: TsPanel;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    sBitBtn8: TsBitBtn;
    sEdit4: TsEdit;
    sBitBtn9: TsBitBtn;
    btnEditBranche: TsButton;
    btnDeleteBranche: TsButton;
    sEdit5: TsEdit;
    btnEditRb: TsButton;
    btnDeleteRb: TsButton;
    sEdit6: TsEdit;
    btnEditSe: TsButton;
    btnDeleteSe: TsButton;
    sButton1: TsButton;
    sEdit7: TsEdit;
    sEdit8: TsEdit;
    sButton3: TsButton;
    sPanel10: TsPanel;
    sBitBtn10: TsBitBtn;
    sGroupBox3: TsGroupBox;
    sDBGrid3: TsDBGrid;
    sBitBtn11: TsBitBtn;
    sEdit9: TsEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pageControleChange(Sender: TObject);
    procedure btnAddBrancheClick(Sender: TObject);
    procedure loadBranches();
    procedure loadRubriques();
    procedure loadSections();
    procedure loadChapiters();
    procedure loadArtciles();
    procedure loadBudget();
    procedure FormShow(Sender: TObject);
    procedure Q2Click(Sender: TObject);
    procedure btnAddRubriqueClick(Sender: TObject);
    procedure btnSaveBrancheClick(Sender: TObject);
    procedure btnSaveRubriqueClick(Sender: TObject);
    procedure btnAddSectionClick(Sender: TObject);
    procedure btnAddChapitreClick(Sender: TObject);
    procedure btnAddArticleClick(Sender: TObject);
    procedure btnSaveSectionClick(Sender: TObject);
    procedure btnSaveChapiterClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure t1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure cbxChapitresChange(Sender: TObject);
    procedure engagementsShow(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sDBGrid1CellClick(Column: TColumn);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure cbxBranchesChange(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sTabSheet1Show(Sender: TObject);
    procedure ge(Sender: TObject);
    procedure sDBGrid2CellClick(Column: TColumn);
    procedure sEdit4Change(Sender: TObject);
    procedure sBitBtn8Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure btnEditBrancheClick(Sender: TObject);
    procedure btnDeleteBrancheClick(Sender: TObject);
    procedure sEdit2Change(Sender: TObject);
    procedure cbxRubriqueChange(Sender: TObject);
    procedure btnDeleteRbClick(Sender: TObject);
    procedure cbxSectionsChange(Sender: TObject);
    procedure btnDeleteSeClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure cbxArticlesChange(Sender: TObject);
    procedure sBitBtn10Click(Sender: TObject);
    procedure sDBGrid3CellClick(Column: TColumn);
    procedure sEdit9Change(Sender: TObject);
    procedure sBitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure refresheEngagement;
  end;

var
  MainForm: TMainForm;

implementation

uses Auth, uValidation, uAddBranch, uDataModule, uHelpers, uBanques,
  uTypeEmployee, uTypeEngagement, uFicheEngagaement, Unit2, uEntreprise,
  Unit5, uDesengagement, uBs, Unit3;

{$R *.dfm}

procedure TMainForm.refresheEngagement;
begin
  sDBGrid1.DataSource.DataSet.Active := false;
  sDBGrid1.DataSource.DataSet.Active := true;
end;

// PROCDEURE - LOAD ALL BRANCHES
procedure TMainForm.loadBranches();
begin
  if NbRecord('Branches') = 0 then
      begin
        cbxBranches.Enabled := false;
      end
    else
      begin
        cbxBranches.Enabled := true;
        PopulateCbx2('Branches','designation_b_ar' ,cbxBranches);
      end;
end;

// PROCDEURE - LOAD ALL RUBRIQUES
procedure TMainForm.loadRubriques();
begin
  if NbRecord('Rubriques') = 0 then
    begin
      cbxRubrique.Enabled := false;
    end
  else
    begin
      cbxRubrique.Enabled := true;
      PopulateCbx2('Rubriques', 'designation_r_ar', cbxRubrique);
    end;
end;

procedure TMainForm.loadSections;
begin
  if NbRecord('Sections') = 0 then
    begin
      cbxSections.Enabled := false;;
    end
  else
    begin
      cbxSections.Enabled := true;
      PopulateCbx2('Sections', 'designation_s_ar', cbxSections);
    end;
end;

procedure TMainForm.loadChapiters;
begin
  if NbRecord('Chapitres') = 0 then
    begin
      cbxChapitres.Enabled := false;
    end
  else
    begin
      cbxChapitres.Enabled := true;
      PopulateCbx2('Chapitres', 'designation_ch_ar', cbxChapitres);
    end;
end;

procedure TMainForm.loadArtciles;
begin
  if NbRecord('Articles') = 0 then
    begin
      cbxArticles.Enabled := false;
    end
  else
    begin
      cbxArticles.Enabled := true;
      PopulateCbx2('Articles', 'designation_a_ar' , cbxArticles);
    end;
end;

procedure TMainForm.loadBudget();
begin
  // verify the 'branche' table
  // if it is empty , disable Combobox ,
  // else show it with table records
  loadBranches;
  loadRubriques;
  loadSections;
  loadChapiters;
  loadArtciles;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messageDlg('Vous voulez quitter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    AuthForm.Close
  else
    abort;
end;


procedure TMainForm.pageControleChange(Sender: TObject);
begin
  if pageControle.ActivePageIndex = 0 then loadBudget;
  if pageControle.ActivePageIndex = 0 then loadBudget;
end;


procedure TMainForm.btnAddBrancheClick(Sender: TObject);
begin
  gbxNewBranche.Visible := not gbxNewBranche.Visible;
  if gbxNewBranche.Visible then
    begin
      btnAddBranche.ImageIndex := 9;
      panelBranches.Height :=  248;
    end
  else
    begin
      btnAddBranche.ImageIndex := 10;
      panelBranches.Height :=  40;
    end;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  // loadBudget;
  loadBranches;
end;

procedure TMainForm.Q2Click(Sender: TObject);
begin
  Auth.AuthForm.Close;
end;

procedure TMainForm.btnAddRubriqueClick(Sender: TObject);
begin
  gbxNewRubrique.Visible := not gbxNewRubrique.Visible;
  if gbxNewRubrique.Visible then
    panelRubriques.Height := 248
  else
    panelRubriques.Height := 40;
end;

procedure TMainForm.btnSaveBrancheClick(Sender: TObject);
begin
  // validation

  // insert new branche
  InsertBranche(
    edtDesigniationBrancheFr.Text,
    edtDesigniationBrancheAr.Text,
    edtBrancheFr.Text,
    edtBrancheAr.Text
  );

  // empty the fields
  edtDesigniationBrancheFr.Text := '';
  edtBrancheFr.Text := '';
  edtDesigniationBrancheAr.Text := '';
  edtBrancheAr.Text := '';

  // reload budget
  loadBudget;

end;

procedure TMainForm.btnSaveRubriqueClick(Sender: TObject);
var codeBranche: String;
begin
  // getting select branche
  if cbxBranches.Text <> '' then
    begin
     codeBranche := GetBrancheCodeByField('designation_b_ar', cbxBranches.Text);

     InsertRubrique(
      codeBranche,
      edtDesigniationRubriqueFr.Text,
      edtDesigniationRubriqueAr.Text,
      edtRubriqueFr.Text,
      edtRubriqueAr.Text,
     );

     edtRubriqueAr.Text := '';
     edtRubriqueFr.Text := '';
     edtDesigniationRubriqueAr.Text := '';
     edtDesigniationRubriqueFr.Text := '';

     loadBudget;
    end
  else
    messagedlg('—Ã«¡« «Œ — «·›—⁄', mtWarning, [mbOK], 0);
end;

procedure TMainForm.btnAddSectionClick(Sender: TObject);
begin
  gbxNewSection.Visible := not gbxNewSection.Visible;
  if gbxNewSection.Visible then
    panelSections.Height := 248
  else
    panelSections.Height := 40;
end;

procedure TMainForm.btnAddChapitreClick(Sender: TObject);
begin
  gbxNexChapitre.Visible := not gbxNexChapitre.Visible;
  if gbxNexChapitre.Visible then
    panelChapiters.Height := 200
  else
    panelChapiters.Height := 40;
end;

procedure TMainForm.btnAddArticleClick(Sender: TObject);
begin
  gbxNewArticle.Visible := not gbxNewArticle.Visible;
  if gbxNewArticle.Visible then
    panelArticles.Height := 245
  else
    panelArticles.Height := 40;
end;

procedure TMainForm.btnSaveSectionClick(Sender: TObject);
var codeRubrique : String;
begin
  if cbxRubrique.Text <> '' then
    begin
      codeRubrique := GetRubriqueCodeByField('designation_r_ar', cbxRubrique.Text);

      InsertSection(
        codeRubrique,
        edtDesigniationSectionFr.Text,
        edtDesigniationSectionAr.Text,
        edtSectionFr.Text,
        edtSectionAr.Text
      );

      edtDesigniationSectionFr.Text := '';
      edtDesigniationSectionAr.Text := '';
      edtSectionFr.Text := '';
      edtSectionAr.Text := '';

      loadBudget;
    end
  else
    begin
        messagedlg('—Ã«¡« «Œ — ⁄‰Ê«‰', mtWarning, [mbOK], 0);
    end;
end;

procedure TMainForm.btnSaveChapiterClick(Sender: TObject);
var codeSection: String;
begin
  if cbxSections.Text <> '' then
    begin
      codeSection := GetSectionCodeByField('designation_s_ar', cbxSections.Text);

      InsertChapiter(
        codeSection,
        '',
        edtDesignationChapitreAr.Text,
        edtChapitre.Text,
        edtMontantChapiter.Text
      );

      edtDesignationChapitreAr.Text := '';
      edtChapitre.Text := '';
      edtMontantChapiter.Text := '';

      loadBudget;
    end
  else
    messagedlg('—Ã«¡« «Œ — «·ﬁ”„', mtWarning, [mbOK], 0);

end;




procedure TMainForm.N4Click(Sender: TObject);
begin
  fBanque.ShowModal;
end;

procedure TMainForm.t1Click(Sender: TObject);
begin
  fTypeEmployee.ShowModal;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
  fTypeEngagement.ShowModal;
end;

procedure TMainForm.sButton2Click(Sender: TObject);
var codeChapitre : String;
    mantantRestant: Currency;
begin
  if cbxChapitres.Text <> '' then
    begin
      codeChapitre := GetChapitreCodeByField('designation_ch_ar', cbxChapitres.Text);
      // mantantRestant := GetMantantRestant(codeChapitre);
      // edtMantantArticleRest.Text := CurrToStr(mantant);
      // MessageDlg(CurrToStr(mantantRestant), mtError, [mbOk], 0);
      // get the total ammount in the selected chapter
      //if mantantRestant < StrToCurr(edtMantantArticle.Text) then
      //  MessageDlg('Mantant erronÈ', mtWarning, [mbOk], 0)
      //else
      //  begin
        // insert
        try
          InsertArticle(
            codeChapitre,
            '',
            edtDesignationArticleAr.Text,
            edtArticle.Text,
            edtDecret.Text,
            edtMantantArticle.Text
          );
        except on E : Exception do
          ShowMessage('Error : ' + E.message);
        end;

        edtDesignationArticleAr.Text := '';
        edtArticle.Text := '';
        edtDecret.Text := '';
        edtMantantArticle.Text := '';

        loadBudget;

        //end;
    end
  else
    messagedlg('—Ã«¡« «Œ — «·»«»', mtWarning, [mbOK], 0);
end;

procedure TMainForm.cbxChapitresChange(Sender: TObject);
begin
  if cbxChapitres.Text <> '' then
    begin
      sButton1.Enabled := true;
      cbxArticles.Enabled := true;
      btnSaveChapiter.Enabled := false;
      with dm.Query do
      begin
        sql.Clear;
        sql.Add('SELECT * FROM chapitres WHERE designation_ch_ar='+QuotedStr(cbxChapitres.Text));
        open;
        sEdit7.Text := Fields[0].AsString;
        edtChapitre.Text := Fields[1].AsString;
        edtDesignationChapitreAr.Text := Fields[3].AsString;
        edtMontantChapiter.Text := Fields[4].AsString;
        populateCbxSql(
          'SELECT designation_a_ar FROM articles WHERE '
          + 'code_a LIKE '+QuotedStr(sEdit7.Text+'%'),
          cbxArticles
        );
      end;
    end
  else
    begin
      btnSaveChapiter.Enabled := true;
      cbxArticles.Enabled := false;
      sButton1.Enabled := false;
      sEdit7.Text := '';
      edtChapitre.Text := '';
      edtDesignationChapitreAr.Text := '';
      edtMontantChapiter.Text := '';
    end;
end;

procedure TMainForm.engagementsShow(Sender: TObject);
begin
  sComboBox1.OnChange(self);
end;

procedure TMainForm.sComboBox4Change(Sender: TObject);
var sql : String;
begin
  {}
end;

procedure TMainForm.sBitBtn1Click(Sender: TObject);
begin
  fFichierEngagament.ShowModal;
end;

procedure TMainForm.sEdit1Change(Sender: TObject);
begin
  if sEdit1.Text <> '' then
    begin
      sBitBtn2.Enabled := true;
      sBitBtn3.Enabled := true;
      sBitBtn4.Enabled := true;
      sBitBtn9.Enabled := true;
    end
  else
    begin
      sBitBtn2.Enabled := false;
      sBitBtn3.Enabled := false;
      sBitBtn4.Enabled := false;
      sBitBtn9.Enabled := false;
    end;
end;

procedure TMainForm.sDBGrid1CellClick(Column: TColumn);
begin
  with dm.qryEngagement  do
  begin
    sEdit1.Text := Fields[0].AsString;
  end;
end;

procedure TMainForm.sBitBtn5Click(Sender: TObject);
begin
    if
      (sEdit3.Text <> '')
      and (sComboBox2.Text <> '')
      and (sComboBox3.Text <> '') then
    begin
      InsertTransfert(
        sComboBox3.Text,
        sComboBox2.Text,
        sEdit3.Text
      );
      sDBGrid2.DataSource.DataSet.Active := false;
      sDBGrid2.DataSource.DataSet.Active := true;
      sEdit3.Text := '';
      sComboBox2.Text := '';
      sComboBox3.Text := '';
    end
    else
      MessageDlg('—Ã«¡« ≈„·¡ ﬂ· „⁄·Ê«  «· ÕÊÌ·', mtWarning, [mbOk], 0);
end;

procedure TMainForm.sBitBtn4Click(Sender: TObject);
begin
  if sEdit1.Text <> '' then
  begin
    DeleteFicheEngagement(sEdit1.Text);
    refresheEngagement;
  end;
end;

procedure TMainForm.I1Click(Sender: TObject);
begin
  fEntreprise.ShowModal;
end;

procedure TMainForm.cbxBranchesChange(Sender: TObject);
begin
  if cbxBranches.Text <> '' then
    with dm.Query do
    begin
      btnSaveBranche.Enabled := false;
      sql.clear;
      sql.Add('SELECT * FROM branches WHERE designation_b_ar = ' + QuotedStr(cbxBranches.Text));
      open;
      sEdit2.Text := Fields[0].AsString;
      edtBrancheFr.Text := Fields[4].AsString;
      edtBrancheAr.Text := Fields[3].AsString;
      edtDesigniationBrancheAr.Text := Fields[2].AsString;
      edtDesigniationBrancheFr.Text := Fields[1].AsString;

      // pouplate rub
      cbxRubrique.Enabled := true;
      PopulateCbxSql(
        'SELECT designation_r_ar FROM rubriques'
        + ' WHERE code_r LIKE '+QuotedStr(Fields[0].AsString+'%'),
       cbxRubrique
      );
    end
  else
    begin
      // disbale rubriques cbx
      cbxRubrique.Enabled := false;

      btnSaveBranche.Enabled := true;

      // empty fields
      sEdit2.Text := '';
      edtBrancheFr.Text := '';
      edtBrancheAr.Text := '';
      edtDesigniationBrancheAr.Text := '';
      edtDesigniationBrancheFr.Text := '';
    end;
end;

procedure TMainForm.sBitBtn2Click(Sender: TObject);
begin
  // printing
  form5.eng2.Close;
  form2.ADOQuery1.Close;
  with dm.qryEngagement do
    begin
    if FieldByName('type').Text = '2' then
    begin
      form5.eng2.SQL := SQL;
      form5.eng2.SQL.Add('and e.code_fe='+quotedstr(fieldbyname('code_fe').Text));
      form5.eng2.Open;
      form5.QuickRep1.Preview;
    end
    else
    begin
      form2.ADOQuery1.SQL := SQL;
      form2.adoquery1.SQL.Add('and e.code_fe='+quotedstr(fieldbyname('code_fe').Text));
      form2.ADOQuery1.Open;
      form2.QuickRep1.Preview;
    end;
  end;
end;

procedure TMainForm.sComboBox1Change(Sender: TObject);
begin
  // on change event
  with dm.qryEngagement do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select *,a.montant_a-(select sum(montant_e1+montant_e2+montant_e3+montant_e4) from fiche_engagement where code_a=e.code_a)+(montant_e1+montant_e2+montant_e3+montant_e4) as compte_anc,');
    SQL.Add(' dbo.nombre_en_chiffre_ar(floor(montant_e1+montant_e2+montant_e3+montant_e4)) as nombre_en_chiffre, round((montant_e1+montant_e2+montant_e3+montant_e4)-floor(montant_e1+montant_e2+montant_e3+montant_e4),2,1)*100 as dec,');
    SQL.Add(' (select designation_temp_ar from typemploye where code_temp=e.code_temp) as temp, format((montant_e1+montant_e2+montant_e3+montant_e4),''# ### ##0.00'') as total, designation_te+'' ''+e1 as e10,');
    SQL.Add('(select designation_msg_ar from msgs where code_msg=e.sit) as sit_e from fiche_engagement e, banques b, articles a, chapitres ch, type_engagement te');
    SQL.Add('where e.code_bq=b.code_bq');
    SQL.Add('and e.code_a=a.code_a');
    SQL.Add('and ch.code_ch=substring(a.code_a,1,8)');
    SQL.Add('and te.code_te=e.code_te');
    // if sCombobox1.ItemIndex = 0 then
    // SQL.Add('and sit=0');
    Open;
  end;
end;

procedure TMainForm.sTabSheet1Show(Sender: TObject);
begin
  populateCbx2('articles', 'designation_a_ar', sComboBox2);
  populateCbx2('articles', 'designation_a_ar', sComboBox3);
end;

procedure TMainForm.ge(Sender: TObject);
begin
  if sEdit3.Text <> '' then
    try
      StrToCurr(sEdit3.Text);
    except
      on E : EConvertError do
      sEdit3.Text := '';
    end;
end;

procedure TMainForm.sDBGrid2CellClick(Column: TColumn);
begin
  with dm.qryTransfert do
  begin
    sEdit4.Text := Fields[0].AsString;
    sEdit3.Text := Fields[3].AsString;
    sComboBox2.Text := Fields[5].AsString;
    sComboBox3.Text := Fields[6].AsString
  end;
end;

procedure TMainForm.sEdit4Change(Sender: TObject);
begin
  if sEdit4.Text <> '' then
    begin
      sBitBtn6.Enabled := true;
      sBitBtn7.Enabled := true;
    end
  else
    begin
      sBitBtn6.Enabled := false;
      sBitBtn7.Enabled := false;
    end;
end;

procedure TMainForm.sBitBtn8Click(Sender: TObject);
begin
  sComboBox2.Text := '';
  sComboBox3.Text := '';
  sEdit3.Text := '';
  sEdit4.Text := '';
end;

procedure TMainForm.sBitBtn7Click(Sender: TObject);
begin
  // delete;  UpdateTransfert
  try
    if sEdit4.Text <> '' then
    begin
      DeleteTransfert(sEdit4.Text);
      sDBGrid2.DataSource.DataSet.Active := false;
      sDBGrid2.DataSource.DataSet.Active := true;
    end;
  except on E : Exception do
    MessageDlg(E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TMainForm.sBitBtn6Click(Sender: TObject);
begin
  try
    if
      (sEdit4.Text <> '')
      and (sEdit3.Text <> '')
      and (sComboBox2.Text <> '')
      and (sComboBox3.Text <> '') then
      begin
        UpdateTransfert(
          sEdit4.Text,
          sComboBox3.Text,
          sComboBox2.Text,
          sEdit3.Text
        );
        sDBGrid2.DataSource.DataSet.Active := false;
        sDBGrid2.DataSource.DataSet.Active := true;
      end
  except on E : Exception do
  end;
end;

procedure TMainForm.sBitBtn9Click(Sender: TObject);
begin
  // desengagement
  if sEdit1.Text <> '' then
    begin
      fDesengagement.sEdit1.Text := sEdit1.Text;
      fDesengagement.ShowModal;
    end
  else
    MessageDlg('—Ã«¡« ≈Œ — «·≈· “«„', mtConfirmation, [mbOk], 0);
end;

procedure TMainForm.btnEditBrancheClick(Sender: TObject);
begin
  if sEdit2.Text <> '' then
  begin
    UpdateBranche(
      sEdit2.Text,
      edtDesigniationBrancheFr.Text,
      edtDesigniationBrancheAr.Text,
      edtBrancheFr.Text,
      edtBrancheAr.Text
    );
    sEdit2.Text := '';
    // empty the fields
    edtDesigniationBrancheFr.Text := '';
    edtBrancheFr.Text := '';
    edtDesigniationBrancheAr.Text := '';
    edtBrancheAr.Text := '';
    loadBranches;
  end;
end;

procedure TMainForm.btnDeleteBrancheClick(Sender: TObject);
begin
  if sEdit2.Text <> '' then
    if messageDlg('Â·  —Ìœ Õœ› Âœ« «·›—⁄ø', mtConfirmation, [mbYes, mbNo], 0) = mrYes then;
      begin
        DeleteBranche(sEdit2.Text);
        sEdit2.Text := '';
        // empty the fields
        edtDesigniationBrancheFr.Text := '';
        edtBrancheFr.Text := '';
        edtDesigniationBrancheAr.Text := '';
        edtBrancheAr.Text := '';
        loadBranches;
      end;
end;

procedure TMainForm.sEdit2Change(Sender: TObject);
begin
  if sEdit2.Text <> '' then
    begin
      btnEditBranche.Enabled := true;
      btnDeleteBranche.Enabled := true;
    end
  else
    begin
      btnEditBranche.Enabled := false;
      btnDeleteBranche.Enabled := false;
    end;
end;

procedure TMainForm.cbxRubriqueChange(Sender: TObject);
begin
  if cbxRubrique.Text <> '' then
    begin
      btnDeleteRb.Enabled := true;
      btnEditRb.Enabled := true;
      cbxSections.Enabled := true;
      btnSaveRubrique.Enabled := false;
      with dm.Query do
      begin
        sql.Clear;
        sql.add('SELECT * FROM Rubriques WHERE designation_r_ar = ' + QuotedStr(cbxRubrique.Text));
        open;
        sEdit5.Text := Fields[0].AsString;
        edtDesigniationRubriqueFr.Text := Fields[1].AsString;
        edtDesigniationRubriqueAr.Text := Fields[2].AsString;
        edtRubriqueFr.Text := Fields[3].AsString;
        edtRubriqueAr.Text := Fields[4].AsString;

        populateCbxsql(
          'SELECT designation_s_ar FROM sections WHERE'
          + ' code_s LIKE '+QuotedStr(sEdit5.Text+'%'),
          cbxSections
        );

      end;
    end
  else
    begin
      btnSaveRubrique.Enabled := true;
      cbxSections.Enabled := false;
      btnDeleteRb.Enabled := false;
      btnEditRb.Enabled := false;
      sEdit5.Text := '';
      edtDesigniationRubriqueFr.Text := '';
      edtDesigniationRubriqueAr.Text := '';
      edtRubriqueFr.Text := '';
      edtRubriqueAr.Text := '';
    end;
end;

procedure TMainForm.btnDeleteRbClick(Sender: TObject);
begin
  if sEdit5.Text <> '' then
    with dm.Query do
    begin
      sql.Clear;
      sql.Add('DELETE FROM Rubriques WHERE code_r = '+QuotedStr(sEdit5.Text));
      ExecSQL;

      sEdit5.Text := '';
      edtRubriqueAr.Text := '';
      edtRubriqueFr.Text := '';
      edtDesigniationRubriqueAr.Text := '';
      edtDesigniationRubriqueFr.Text := '';

      loadBudget;
    end;
end;

procedure TMainForm.cbxSectionsChange(Sender: TObject);
begin
  if cbxSections.Text <> '' then
    begin
      btnEditSe.Enabled := true;
      btnDeleteSe.Enabled := true;
      cbxChapitres.Enabled := true;
      btnSaveSection.Enabled := false;
      with dm.Query do
      begin
        sql.clear;
        sql.add('SELECT * FROM sections WHERE designation_s_ar='+QuotedStr(cbxSections.Text));
        open;
        sEdit6.Text := Fields[0].AsString;
        edtDesigniationSectionFr.Text := Fields[1].AsString;
        edtDesigniationSectionAr.Text := Fields[2].AsString;
        edtSectionFr.Text := Fields[3].AsString;
        edtSectionAr.Text := Fields[4].AsString;

        populateCbxSql(
          'SELECT designation_ch_ar FROM chapitres WHERE '
          + 'code_ch LIKE '+QuotedStr(sEdit6.Text+'%'),
          cbxChapitres
        );

      end;
    end
  else
    begin
        btnSaveSection.Enabled := true;
        cbxChapitres.Enabled := false;
        btnEditSe.Enabled := false;
        btnDeleteSe.Enabled := false;
        sEdit6.Text := '';
        edtDesigniationSectionFr.Text := '';
        edtDesigniationSectionAr.Text := '';
        edtSectionFr.Text := '';
        edtSectionAr.Text := '';
    end;
end;

procedure TMainForm.btnDeleteSeClick(Sender: TObject);
begin
  if sEdit6.Text <> '' then
    with dm.Query do
    begin
      sql.Clear;
      sql.add('DELETE FROM sections WHERE code_s='+QuotedStr(sEdit6.Text));
      execsql;

      sEdit6.Text := '';
      edtDesigniationSectionFr.Text := '';
      edtDesigniationSectionAr.Text := '';
      edtSectionFr.Text := '';
      edtSectionAr.Text := '';

      loadbudget;
    end;
end;

procedure TMainForm.sButton1Click(Sender: TObject);
begin
  // delete chapitre
  if sEdit7.Text <> '' then
   with dm.Query do
   begin
    sql.Clear;
    sql.Add('DELETE FROM chapitres WHERE code_ch='+QuotedStr(sEdit7.Text));
    execsql;

    sButton1.Enabled := false;
    sEdit7.Text := '';
    edtChapitre.Text := '';
    edtDesignationChapitreAr.Text := '';
    edtMontantChapiter.Text := '';

    loadBudget;
   end;
end;

procedure TMainForm.cbxArticlesChange(Sender: TObject);
begin
  if cbxArticles.Text <> '' then
    begin
      // sButton4.Enabled := true;
      sButton3.Enabled := true;
      sButton2.Enabled := false;
      with dm.Query do
      begin
        sql.Clear;
        sql.Add('SELECT * FROM articles WHERE designation_a_ar='+QuotedStr(cbxArticles.Text));
        open;
        sEdit8.Text := Fields[0].AsString;
        edtArticle.Text := Fields[5].AsString;
        edtDesignationArticleAr.Text := Fields[2].AsString;
        edtDecret.Text := Fields[3].AsString;
        edtMantantArticle.Text := Fields[4].AsString;
      end;
    end
  else
    begin
      sButton2.Enabled := true;
      // sButton4.Enabled := false;
      sButton3.Enabled := false;
      sEdit8.Text := '';
      edtArticle.Text := '';
      edtDesignationArticleAr.Text := '';
      edtDecret.Text := '';
      edtMantantArticle.Text := '';
    end;
end;

procedure TMainForm.sBitBtn10Click(Sender: TObject);
begin
  if sEdit8.Text <> '' then
    fBS.ShowModal
  else
    MessageDlg('—Ã«¡« ≈Œ — «·„«œ…', mtConfirmation , [mbOk], 0);
end;

procedure TMainForm.sDBGrid3CellClick(Column: TColumn);
begin
  with dm.qryMondat do
    sEdit9.Text := Fields[0].asString;
end;

procedure TMainForm.sEdit9Change(Sender: TObject);
begin
  if sEdit9.Text <> '' then
    sBitBtn11.Enabled := true
  else
    sBitBtn11.Enabled := false;
end;

procedure TMainForm.sBitBtn11Click(Sender: TObject);
begin
  form3.ADOQuery1.Active := true;
  form3.entreprise.Active := true;
  form3.QuickRep1.Preview;
end;

end.
