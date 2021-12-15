object fAddBranch: TfAddBranch
  Left = 72
  Top = 247
  BorderStyle = bsDialog
  Caption = 'Nouveau Branch'
  ClientHeight = 243
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 0
    Top = 0
    Width = 709
    Height = 243
    Align = alClient
    Caption = 'Ajouter une branche'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    BoxStyle = bsCard
    object edtBrancheFr: TsEdit
      Left = 112
      Top = 128
      Width = 250
      Height = 25
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.Indent = 12
      BoundLabel.Caption = 'branche'
    end
    object sBitBtn2: TsBitBtn
      Left = 496
      Top = 184
      Width = 90
      Height = 29
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = sBitBtn2Click
      NumGlyphs = 2
    end
    object sBitBtn1: TsBitBtn
      Left = 600
      Top = 184
      Width = 90
      Height = 29
      Caption = 'Save'
      Default = True
      TabOrder = 2
      OnClick = sBitBtn1Click
      NumGlyphs = 2
    end
    object edtDesigniationFr: TsEdit
      Left = 112
      Top = 88
      Width = 250
      Height = 25
      TabOrder = 3
      BoundLabel.Active = True
      BoundLabel.Indent = 12
      BoundLabel.Caption = 'designiation'
    end
    object edtCode: TsEdit
      Left = 112
      Top = 48
      Width = 81
      Height = 25
      Enabled = False
      TabOrder = 4
      BoundLabel.Active = True
      BoundLabel.Indent = 12
      BoundLabel.Caption = 'code'
    end
    object edtDesigniationAr: TLabeledEdit
      Left = 392
      Top = 88
      Width = 250
      Height = 25
      EditLabel.Width = 46
      EditLabel.Height = 17
      EditLabel.Caption = 'C?E???E'
      EditLabel.Color = clInactiveCaption
      EditLabel.Font.Charset = ARABIC_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      LabelPosition = lpRight
      LabelSpacing = 12
      ParentFont = False
      TabOrder = 5
    end
    object edtBrancheAr: TLabeledEdit
      Left = 392
      Top = 128
      Width = 250
      Height = 25
      EditLabel.Width = 32
      EditLabel.Height = 17
      EditLabel.Caption = 'C????'
      EditLabel.Color = clInactiveCaption
      EditLabel.Font.Charset = ARABIC_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentColor = False
      EditLabel.ParentFont = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      LabelPosition = lpRight
      LabelSpacing = 12
      ParentFont = False
      TabOrder = 6
    end
  end
end
