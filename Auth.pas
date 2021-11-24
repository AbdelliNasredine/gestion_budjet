unit Auth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Buttons, sSkinManager,
  sSkinProvider;

type
  TAuthForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    btnConnexion: TBitBtn;
    btnQuiter: TBitBtn;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    procedure btnConnexionClick(Sender: TObject);
    procedure btnQuiterClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  AuthForm: TAuthForm;

implementation

uses Main ,DBGrids;

{$R *.dfm}

// [START]: ConnexionOnClick
procedure TAuthForm.btnConnexionClick(Sender: TObject);
begin
  adoquery1.SQL.Clear;
  adoquery1.SQL.Add('select * from users');
  adoquery1.SQL.Add('where pseudo='+quotedstr(edit1.Text));
  adoquery1.SQL.Add('and pwd='+quotedstr(edit2.Text));
  try
    adoquery1.Open;
  except
    on e:exception do
    begin
      messagedlg('Impossible de connecter avec le serveur'+#13+e.Message, mtwarning,[mbok],0);
      exit;
    end;
  end;
  if adoquery1.IsEmpty then
  begin
    edit2.Clear;
    messagedlg('Nom utilisateur ou mot de passe erroné',mtwarning,[mbok],0)
  end
  else
  begin
    MainForm.Show;
    AuthForm.Visible := false;
  end;
  adoquery1.Close;
end;

// [START]: QuitterOnClick
procedure TAuthForm.btnQuiterClick(Sender: TObject);
begin
  close;
end;

end.









