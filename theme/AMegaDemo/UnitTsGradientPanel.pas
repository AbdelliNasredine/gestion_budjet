unit UnitTsGradientPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StdCtrls,
  Controls, Forms, Dialogs, Buttons, ImgList, UnitBaseMenu,

  sComboBoxes, sSpeedButton, sGroupBox, sComboBox, sCheckBox, acPopupCtrls, sEdit, sFrameAdapter,
  sMemo, acAlphaImageList, sLabel, sTrackBar,
  sPanel, sRadioButton, sMaskEdit, sCustomComboEdit, sComboEdit,
  Mask, ComCtrls, ExtCtrls;


type
  TFrameTsGradientPanel = class(TFrameBaseMenu)
    sGradientPanel1: TsGradientPanel;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sColorBox1: TsColorBox;
    sGroupBox3: TsGroupBox;
    sColorBox2: TsColorBox;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sGroupBox4: TsGroupBox;
    sComboEdit1: TsComboEdit;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    procedure sGroupBox1Click(Sender: TObject);
    procedure sColorBox1Change(Sender: TObject);
    procedure sColorBox2Change(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sComboEdit1ButtonClick(Sender: TObject);
    procedure sSpeedButton2Paint(Sender: TObject; Bmp: TBitmap);
    procedure sSpeedButton3Paint(Sender: TObject; Bmp: TBitmap);
    procedure sSpeedButton4Paint(Sender: TObject; Bmp: TBitmap);
    procedure sComboEdit1Change(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sGroupBox4CheckBoxChanged(Sender: TObject);
  public
  end;

var
  FrameTsGradientPanel: TFrameTsGradientPanel;

implementation

uses sGradBuilder, sColorDialog, sConst, sGradient, acntUtils, UnitDataModule;

{$R *.dfm}

const
  DefGradient1 = '-3360;0;44;-1108028007;26;16;-1157640574;27;16;-2130786962;50;20;16761642;100;28;E';
  DefGradient2 = '-3360;0;45;-1108028007;26;17;-1157640574;27;17;-2130786962;50;21;16761642;100;29;E';
  DefGradient3 = '-1108028007;0;62;-1108028007;26;18;16045465;27;18;-1108093800;50;22;16045465;100;30;E';


procedure TFrameTsGradientPanel.sCheckBox1Click(Sender: TObject);
begin
  sGradientPanel1.PaintData.Color1.UseSkinColor := sCheckBox1.Checked;
  sColorBox1.Enabled := not sCheckBox1.Checked;
end;


procedure TFrameTsGradientPanel.sCheckBox2Click(Sender: TObject);
begin
  sGradientPanel1.PaintData.Color2.UseSkinColor := sCheckBox2.Checked;
  sColorBox2.Enabled := not sCheckBox2.Checked;
end;


procedure TFrameTsGradientPanel.sColorBox1Change(Sender: TObject);
begin
  sGradientPanel1.PaintData.Color1.Color := sColorBox1.Selected;
end;


procedure TFrameTsGradientPanel.sColorBox2Change(Sender: TObject);
begin
  sGradientPanel1.PaintData.Color2.Color := sColorBox2.Selected;
end;


procedure TFrameTsGradientPanel.sComboEdit1ButtonClick(Sender: TObject);
var
  GradArray: TsGradArray;
begin
  CreateEditorForm(ColDlg);
  PrepareGradArray(sGradientPanel1.PaintData.CustomGradient, GradArray);
  GradBuilder.LoadFromArray(GradArray);
  GradBuilder.ShowModal;
  case GradBuilder.ModalResult of
    mrOk:   sComboEdit1.Text := GradBuilder.AsString;
    mrNone: begin
      sComboEdit1.Text := '';
      sGroupBox1.Checked := True;
    end;
  end;
  KillForm;
end;


procedure TFrameTsGradientPanel.sComboEdit1Change(Sender: TObject);
begin
  sGradientPanel1.PaintData.CustomGradient := sComboEdit1.Text;
end;


procedure TFrameTsGradientPanel.sGroupBox1Click(Sender: TObject);
begin
  sGroupBox4.Checked := not sGroupBox1.Checked;
  if sGroupBox1.Checked then begin
    sGradientPanel1.PaintData.Color1.Color := sColorBox1.Selected;
    sGradientPanel1.PaintData.Color2.Color := sColorBox2.Selected;
    sGradientPanel1.PaintData.CustomGradient := '';
    sColorBox1.Enabled := not sCheckBox1.Checked;
    sColorBox2.Enabled := not sCheckBox2.Checked;
  end
  else
    sGradientPanel1.PaintData.CustomGradient := DefGradient1;
end;


procedure TFrameTsGradientPanel.sGroupBox4CheckBoxChanged(Sender: TObject);
begin
  sGroupBox1.Checked := not sGroupBox4.Checked;
end;


procedure TFrameTsGradientPanel.sRadioButton1Click(Sender: TObject);
begin
  sGradientPanel1.PaintData.IsVertical := boolean(TsRadioButton(Sender).Tag);
end;


procedure TFrameTsGradientPanel.sSpeedButton2Click(Sender: TObject);
begin
  sComboEdit1.Text := DefGradient1;
end;


procedure TFrameTsGradientPanel.sSpeedButton2Paint(Sender: TObject; Bmp: TBitmap);
begin
  PaintGrad(Bmp, MkRect(sSpeedButton2), DefGradient1);
end;


procedure TFrameTsGradientPanel.sSpeedButton3Click(Sender: TObject);
begin
  sComboEdit1.Text := DefGradient2;
end;


procedure TFrameTsGradientPanel.sSpeedButton3Paint(Sender: TObject; Bmp: TBitmap);
begin
  PaintGrad(Bmp, MkRect(sSpeedButton3), DefGradient2);
end;


procedure TFrameTsGradientPanel.sSpeedButton4Click(Sender: TObject);
begin
  sComboEdit1.Text := DefGradient3;
end;


procedure TFrameTsGradientPanel.sSpeedButton4Paint(Sender: TObject; Bmp: TBitmap);
begin
  PaintGrad(Bmp, MkRect(sSpeedButton4), DefGradient3);
end;

end.
