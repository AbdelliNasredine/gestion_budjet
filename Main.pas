unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, acTitleBar, ComCtrls, ToolWin, sToolBar,
  sTabControl, sPageControl, sStatusBar, sSkinProvider, acHeaderControl,
  ImgList, acAlphaImageList, StdCtrls, Buttons, sBitBtn, acCoolBar, Mask,
  sMaskEdit, sCustomComboEdit, sComboBox, sGroupBox, ExtCtrls, DBCtrls,
  sPanel, DB, ADODB, sLabel;

type
  TMainForm = class(TForm)
    sStatusBar1: TsStatusBar;
    mainMenu: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sideMenuIcons: TsCharImageList;
    sTabSheet3: TsTabSheet;
    sTabSheet4: TsTabSheet;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Q2: TMenuItem;
    mainMenuIcons: TsCharImageList;
    A1: TMenuItem;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sComboBox1: TsComboBox;
    sBitBtn1: TsBitBtn;
    actionsIcons: TsCharImageList;
    edtCode: TLabeledEdit;
    edtNominationAr: TLabeledEdit;
    edtNomination: TLabeledEdit;
    cbxWillaya: TsComboBox;
    edtCodeM: TLabeledEdit;
    edtServiceM: TLabeledEdit;
    edtComptT: TLabeledEdit;
    btnSave: TsBitBtn;
    qryInsertFicheEnt: TADOQuery;
    sLabel1: TsLabel;
    sGroupBox3: TsGroupBox;
    sBitBtn2: TsBitBtn;
    sLabel2: TsLabel;
    panelHeader: TsPanel;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    panelBody: TsPanel;
    sPageControl1: TsPageControl;
    sTabSheet5: TsTabSheet;
    sTabSheet6: TsTabSheet;
    sTabSheet7: TsTabSheet;
    sTabSheet8: TsTabSheet;
    sTabSheet9: TsTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Auth, uValidation;

{$R *.dfm}

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messageDlg('Vous voulez quitter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    AuthForm.Close
  else
    abort;
end;


procedure TMainForm.btnSaveClick(Sender: TObject);
  var Code, Nomination, NominationAr, Willaya,
            ServiceM, CodeM, ComptT: string;
begin
  // TODO: Validate form data before saving into the db
  validateRequired(edtCode.Text, 'Code');
  validateRequired(edtNomination.Text, 'Nomination');
  validateRequired(edtNominationAr.Text, 'NominationAr');
  validateRequired(cbxWillaya.Text, 'Wilaya');
  validateRequired(edtServiceM.Text, 'Service Ministére');
  validateRequired(edtCodeM.Text, 'Code Ministére');
  validateRequired(edtComptT.Text, 'Compt Trésor');

  // populate local vars
  Code         := edtCode.Text;
  Nomination   := edtNomination.Text;
  NominationAr := edtNominationAr.Text;
  Willaya      := cbxWillaya.Text;
  ServiceM     := edtServiceM.Text;
  CodeM        := edtCodeM.Text;
  ComptT       := edtComptT.Text;

  // save the company information into the database
  try
  with qryInsertFicheEnt do
  begin
    Close;
    Parameters.ParamByName('code').Value := Code;
    Parameters.ParamByName('nominationFr').Value := Nomination;
    Parameters.ParamByName('nominationAr').Value := NominationAr;
    Parameters.ParamByName('wilayaFr').Value := Willaya;
    Parameters.ParamByName('wilayaAr').Value := Willaya;
    Parameters.ParamByName('serviceM').Value := ServiceM;
    Parameters.ParamByName('codeM').Value := CodeM;
    Parameters.ParamByName('compte').Value := ComptT;
    ExecSQL;
  end;
  except
    on e:exception do
    messagedlg('Error: ' + #13 + e.Message, mtWarning, [mbOK], 0);
  end;
end;

end.
