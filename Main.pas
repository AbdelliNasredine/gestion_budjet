unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, sSkinManager, acTitleBar, ComCtrls, ToolWin, sToolBar,
  sTabControl, sPageControl, sStatusBar, sSkinProvider, acHeaderControl,
  ImgList, acAlphaImageList;

type
  TMainForm = class(TForm)
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sSkinProvider1: TsSkinProvider;
    sAlphaImageList1: TsAlphaImageList;
    sToolBar1: TsToolBar;
    ToolButton1: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Auth;

{$R *.dfm}

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messageDlg('Vous voulez quitter ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    AuthForm.Close
  else
    abort;
end;


end.
