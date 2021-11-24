program gestion_budjet;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Auth in 'Auth.pas' {AuthForm},
  uValidation in 'uValidation.pas',
  uAddBranch in 'uAddBranch.pas' {fAddBranch};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestion Budjet';
  Application.CreateForm(TAuthForm, AuthForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfAddBranch, fAddBranch);
  Application.Run;
end.
