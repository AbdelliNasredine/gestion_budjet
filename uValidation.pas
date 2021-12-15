unit uValidation;

interface

uses SysUtils, Dialogs, sEdit;

Function isEmpty(value : String) : Boolean;
Procedure validateRequired(value: String; name: String);
Procedure requiredEdit(edit: TsEdit);

implementation

Function isEmpty(value: String): Boolean;
begin
  if value = '' then
    isEmpty := true
  else
    isEmpty := false;
end;

Procedure validateRequired(value: String; name: String);
begin
  if isEmpty(value) then
  begin
    messageDlg('Champ "'+ name + '" ne peut pas étre vide', mtError, [mbOK], 0);
    abort;
  end;
end;

Procedure requiredEdit(edit: TsEdit);
begin
  validateRequired(edit.Text, edit.BoundLabel.Caption);
end;

end.
