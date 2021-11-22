program gestion_budjet;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Auth in 'Auth.pas' {AuthForm},
  uValidation in 'uValidation.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestion Budjet';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAuthForm, AuthForm);
  Application.Run;
end.
