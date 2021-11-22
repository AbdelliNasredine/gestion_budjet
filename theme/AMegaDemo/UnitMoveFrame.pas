unit UnitMoveFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormMoveFrame = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMoveFrame: TFormMoveFrame;

procedure UninitPopupChildTsComboBox(Ctrl: TWinControl); //������� ��� TsComboBox

implementation
uses UnitDataModule,UnitMain,sComboBox,UnitTsSkinManager;
{$R *.dfm}

type
_TsComboBox=class(TsComboBox);
procedure UninitPopupChildTsComboBox(Ctrl: TWinControl); //������� ��� TsComboBox
var
  ChildWnd: TWinControl;
  i: integer;
begin
  if Assigned(Ctrl) and (Ctrl is TWinControl)then
  for I := 0 to Ctrl.ControlCount - 1 do
    if Ctrl.Controls[I] is TWinControl then begin //��� �����, �� ��������������
      ChildWnd := TWinControl(Ctrl.Controls[I]);  //��� �����, �� ��������������
      if ChildWnd is TsComboBox then
        _TsComboBox(ChildWnd).UninitPopup;
      UninitPopupChildTsComboBox(ChildWnd);
    end;
end;

procedure TFormMoveFrame.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//
  if (FormData.CurrentWorkFrame is TFrameTsSkinManager)
  and TFrameTsSkinManager(FormData.CurrentWorkFrame).sCheckBoxPreventMemoryLeaking.Checked then
    UninitPopupChildTsComboBox(FormData.CurrentWorkFrame); //���������� �� ��������� Parent
  Self.RemoveComponent(FormData.CurrentWorkFrame);
  FormData.CurrentWorkFrame.Parent:=MainForm.PanelContainer;// WM_NCDESTROY: lBoxHandle := 0; ��� �������� ������������ Memory Leak
end;

end.
