unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm13 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form13: TForm13;

implementation

uses Unit1 ,DBGrids;

{$R *.dfm}

procedure TForm13.Image2Click(Sender: TObject);
begin
  close;
end;

procedure TForm13.Image1Click(Sender: TObject);

begin

  adoquery1.SQL.Clear;
  adoquery1.SQL.Add('select * from users');
  adoquery1.SQL.Add('where pseudo='+quotedstr(edit1.Text));
  adoquery1.SQL.Add('and pwd='+quotedstr(edit2.Text));
  //adoquery1.SQL.Add('and privilege=''A''');
  try
    adoquery1.Open;
  except
    on e:exception do
    begin
      messagedlg('Impossible de connecter avec le serveur'+#13+e.Message,mtwarning,[mbok],0);
      exit;
    end;
  end;
  if adoquery1.IsEmpty then
  begin
    edit2.Clear;
    messagedlg('Nom utilisateur ou Mot de passe erroné',mtwarning,[mbok],0)
  end
  else
  begin

    form1.Show;
    form13.Visible:=false;
  end;
  adoquery1.Close;
end;

end.
