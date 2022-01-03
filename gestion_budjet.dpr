program gestion_budjet;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Auth in 'Auth.pas' {AuthForm},
  uValidation in 'uValidation.pas',
  uDataModule in 'uDataModule.pas' {dm: TDataModule},
  uHelpers in 'uHelpers.pas',
  uTypeEmployee in 'uTypeEmployee.pas' {fTypeEmployee},
  uTypeEngagement in 'uTypeEngagement.pas' {fTypeEngagement},
  uBanques in 'uBanques.pas' {fBanque},
  uFicheEngagaement in 'uFicheEngagaement.pas' {fFichierEngagament},
  uEntreprise in 'uEntreprise.pas' {fEntreprise},
  Unit5 in '..\..\..\Desktop\files\budjet\Unit5.pas' {Form5},
  Unit2 in '..\..\..\Desktop\files\budjet\Unit2.pas' {Form2},
  Unit1 in '..\..\..\Desktop\files\budjet\Unit1.pas' {Form1},
  uDesengagement in 'uDesengagement.pas' {fDesengagement},
  uBs in 'uBs.pas' {fBS};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestion Budjet';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfTypeEngagement, fTypeEngagement);
  Application.CreateForm(TfTypeEmployee, fTypeEmployee);
  Application.CreateForm(TfBanque, fBanque);
  Application.CreateForm(TAuthForm, AuthForm);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfFichierEngagament, fFichierEngagament);
  Application.CreateForm(TfEntreprise, fEntreprise);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfDesengagement, fDesengagement);
  Application.CreateForm(TfBS, fBS);
  Application.Run;
end.
