unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, acTitleBar, ComCtrls, ToolWin, sToolBar,
  sTabControl, sPageControl, sStatusBar, sSkinProvider, acHeaderControl,
  ImgList, acAlphaImageList, StdCtrls, Buttons, sBitBtn, acCoolBar, Mask,
  sMaskEdit, sCustomComboEdit, sComboBox, sGroupBox, ExtCtrls, DBCtrls,
  sPanel, DB, ADODB, sLabel, Grids, DBGrids, dbcgrids, sEdit, sButton,
  sScrollBox;

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
    btnEditBranche: TsBitBtn;
    btnAddRubrique: TsBitBtn;
    btnEditRubrique: TsBitBtn;
    btnAddSection: TsBitBtn;
    btnEditSection: TsBitBtn;
    btnAddChapitre: TsBitBtn;
    btnEditChapitre: TsBitBtn;
    btnAddArticle: TsBitBtn;
    btnEditArticle: TsBitBtn;
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
    edt: TsEdit;
    sEdit2: TsEdit;
    sPanel6: TsPanel;
    sButton2: TsButton;
    sMaskEdit2: TsMaskEdit;
    sEdit5: TsEdit;
    sMaskEdit1: TsMaskEdit;
    N3: TMenuItem;
    t1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pageControleChange(Sender: TObject);
    procedure btnAddBrancheClick(Sender: TObject);
    procedure btnEditBrancheClick(Sender: TObject);
    procedure loadBranches();
    procedure loadRubriques();
    procedure loadSections();
    procedure loadChapiters();
    procedure loadArtciles();
    procedure loadBudget();
    procedure loadSettings();
    procedure FormShow(Sender: TObject);
    procedure Q2Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Auth, uValidation, uAddBranch, uDataModule, uHelpers, uBanques,
  uTypeEmployee, uTypeEngagement;

{$R *.dfm}


// PROCDEURE - LOAD ALL BRANCHES
procedure TMainForm.loadBranches();
begin
  if NbRecord('Branches') = 0 then
      begin
        cbxBranches.Enabled := false;
        btnEditBranche.Enabled := false;
      end
    else
      begin
        cbxBranches.Enabled := true;
        btnEditBranche.Enabled := true;
        PopulateCbx('Branches', cbxBranches);
      end;
end;

// PROCDEURE - LOAD ALL RUBRIQUES
procedure TMainForm.loadRubriques();
begin
  if NbRecord('Rubriques') = 0 then
    begin
      cbxRubrique.Enabled := false;
      btnEditRubrique.Enabled := false;
    end
  else
    begin
      cbxRubrique.Enabled := true;
      btnEditRubrique.Enabled := true;
      PopulateCbx('Rubriques', cbxRubrique);
    end;
end;

procedure TMainForm.loadSections;
begin
  if NbRecord('Sections') = 0 then
    begin
      cbxSections.Enabled := false;
      btnEditSection.Enabled := false;
    end
  else
    begin
      cbxSections.Enabled := true;
      btnEditSection.Enabled := true;
      PopulateCbx('Sections', cbxSections);
    end;
end;

procedure TMainForm.loadChapiters;
begin
  if NbRecord('Chapitres') = 0 then
    begin
      cbxChapitres.Enabled := false;
      btnEditChapitre.Enabled := false;
    end
  else
    begin
      cbxChapitres.Enabled := true;
      btnEditChapitre.Enabled := true;
      PopulateCbx('Chapitres', cbxChapitres);
    end;
end;

procedure TMainForm.loadArtciles;
begin
  if NbRecord('Articles') = 0 then
    begin
      cbxArticles.Enabled := false;
      btnEditArticle.Enabled := false;
    end
  else
    begin
      cbxArticles.Enabled := true;
      btnEditArticle.Enabled := true;
      PopulateCbx('Articles', cbxArticles);
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

procedure TMainForm.loadSettings();
begin
  if NBRecord('entreprise') <> 0 then
  with dm do
  begin
    qryEntreprise.SQL.Clear;
    qryEntreprise.SQL.Add('SELECT TOP 1 * FROM entreprise');
    qryEntreprise.Open;
    // edtCodeEnt.Text := qryEntreprise.FieldValues['Code_En'];
    edtNominationEnt.Text := qryEntreprise.FieldValues['nomination_FR'];
    edtNominationEntAr.Text := qryEntreprise.FieldValues['nomination_AR'];
    edtWilaya.Text := qryEntreprise.FieldValues['wilaya_FR'];
    edtWilayaAr.Text := qryEntreprise.FieldValues['wilaya_AR'];
    edtServiceEnt.Text := qryEntreprise.FieldValues['Service_M'];
    edtCodeMinEnt.Text  :=  qryEntreprise.FieldValues['Code_M'];
    edtComptTreEnt.Text := qryEntreprise.FieldValues['compte_tresor_w'];
  end;
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
  if pageControle.ActivePageIndex = 2 then loadSettings;
end;


procedure TMainForm.btnAddBrancheClick(Sender: TObject);
begin
  // fAddBranch.ShowModal;
  gbxNewBranche.Visible := not gbxNewBranche.Visible;
  if gbxNewBranche.Visible then
    panelBranches.Height :=  248
  else
    panelBranches.Height :=  40;
end;

procedure TMainForm.btnEditBrancheClick(Sender: TObject);
begin
  // edit selected branche
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  loadBudget;
  loadSettings;
end;

procedure TMainForm.Q2Click(Sender: TObject);
begin
  Auth.AuthForm.Close;
end;

procedure TMainForm.btnSaveClick(Sender: TObject);
begin
  // validate required data
  validateRequired(edtCodeEnt.Text, 'Code');
  validateRequired(edtNominationEnt.Text, 'Nomination');
  validateRequired(edtNominationEntAr.Text, '«·«”„');
  validateRequired(edtWilaya.Text, 'Wilaya');
  validateRequired(edtWilayaAr.Text, '«·Ê·«Ì…');
  validateRequired(edtServiceEnt.Text, 'Service MinistÈre');
  validateRequired(edtCodeMinEnt.Text, 'Code MinistÈre');
  validateRequired(edtComptTreEnt.Text, 'Compt TrÈsor');

  with dm do
  if NbRecord('entreprise') = 0 then
    begin
      // insert
      qryEntreprise.Close;
      qryEntreprise.SQL.Clear;
      qryEntreprise.SQL.Add('INSERT INTO entreprise (');
      qryEntreprise.SQL.Add('code_En, nomination_FR, nomination_AR, wilaya_FR');
      qryEntreprise.SQL.Add(', wilaya_AR, code_M, service_M, compte_tresor_w)');
      qryEntreprise.SQL.Add('VALUES (:c, :n, :nar, :w, :war, :cm, :sm, :ctw)');
      qryEntreprise.Parameters.ParamByName('c').Value := edtCodeEnt.Text;
      qryEntreprise.Parameters.ParamByName('n').Value := edtNominationEnt.Text;
      qryEntreprise.Parameters.ParamByName('nar').Value := edtNominationEntAr.Text;
      qryEntreprise.Parameters.ParamByName('w').Value := edtWilaya.Text;
      qryEntreprise.Parameters.ParamByName('war').Value := edtWilayaAr.Text;
      qryEntreprise.Parameters.ParamByName('cm').Value := edtCodeMinEnt.Text;
      qryEntreprise.Parameters.ParamByName('sm').Value := edtServiceEnt.Text;
      qryEntreprise.Parameters.ParamByName('ctw').Value := edtComptTreEnt.Text;
      qryEntreprise.ExecSQL;
      qryEntreprise.Close;
    end
  else
    begin
      // update
    end;
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
  validateRequired(edtDesigniationBrancheFr.Text, 'Designiation');
  validateRequired(edtBrancheFr.Text, 'Branche');
  validateRequired(edtDesigniationBrancheAr.Text, '«· ”„Ì… «·›—⁄');
  validateRequired(edtBrancheAr.Text, '«·›—⁄');

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
  requiredEdit(edtRubriqueAr);
  requiredEdit(edtRubriqueFr);
  requiredEdit(edtDesigniationRubriqueAr);
  requiredEdit(edtDesigniationRubriqueFr);

  // getting select branche
  if cbxBranches.Text <> '' then
    begin
     codeBranche := GetBrancheCodeByField('designation_ar', cbxBranches.Text);

     InsertRubrique(
      codeBranche,
      edtRubriqueAr.Text,
      edtRubriqueFr.Text,
      edtDesigniationRubriqueAr.Text,
      edtDesigniationRubriqueFr.Text
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
      codeRubrique := GetRubriqueCodeByField('designation_ar', cbxRubrique.Text);

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
      codeSection := GetSectionCodeByField('designation_ar', cbxSections.Text);

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

end.
