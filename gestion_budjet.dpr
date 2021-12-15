program gestion_budjet;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Auth in 'Auth.pas' {AuthForm},
  uValidation in 'uValidation.pas',
  uAddBranch in 'uAddBranch.pas' {fAddBranch},
  uDataModule in 'uDataModule.pas' {dm: TDataModule},
  uHelpers in 'uHelpers.pas',
  uAddRubrique in 'uAddRubrique.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  uBanques in 'uBanques.pas' {fBanque},
  uTypeEmployee in 'uTypeEmployee.pas' {fTypeEmployee},
  uTypeEngagement in 'uTypeEngagement.pas' {fTypeEngagement};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestion Budjet';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAuthForm, AuthForm);
  Application.CreateForm(TfAddBranch, fAddBranch);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfBanque, fBanque);
  Application.CreateForm(TfTypeEmployee, fTypeEmployee);
  Application.CreateForm(TfTypeEngagement, fTypeEngagement);
  Application.Run;
end.
