program gestion_budjet;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Auth in 'Auth.pas' {AuthForm},
  uValidation in 'uValidation.pas',
  uAddBranch in 'uAddBranch.pas' {fAddBranch},
  uDataModule in 'uDataModule.pas' {dm: TDataModule},
  uHelpers in 'uHelpers.pas',
  uAddRubrique in 'uAddRubrique.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestion Budjet';
  Application.CreateForm(TAuthForm, AuthForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfAddBranch, fAddBranch);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
