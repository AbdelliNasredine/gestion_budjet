unit uValidation;

interface

uses SysUtils, Dialogs;

Procedure validateRequired(value: String; name: String);
Function isEmpty(value : String) : Boolean;
//Procedure validateMaxLength(value: String, errMessage: String);

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

end.
