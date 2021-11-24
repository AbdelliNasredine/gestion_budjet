object fAddBranch: TfAddBranch
  Left = -785
  Top = 592
  Width = 305
  Height = 232
  Caption = 'Nouveau Branch'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 16
    Top = 16
    Width = 202
    Height = 29
    Caption = 'Nouveaux Branche'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object LabeledEdit2: TLabeledEdit
    Left = 16
    Top = 72
    Width = 257
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'Designiation'
    TabOrder = 0
  end
  object LabeledEdit3: TLabeledEdit
    Left = 16
    Top = 120
    Width = 257
    Height = 22
    EditLabel.Width = 72
    EditLabel.Height = 14
    EditLabel.BiDiMode = bdLeftToRight
    EditLabel.Caption = 'Designiation Ar'
    EditLabel.Font.Charset = ARABIC_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = []
    EditLabel.ParentBiDiMode = False
    EditLabel.ParentFont = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object sBitBtn1: TsBitBtn
    Left = 200
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Kind = bkOK
  end
  object sBitBtn2: TsBitBtn
    Left = 112
    Top = 152
    Width = 75
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = sBitBtn2Click
    Kind = bkCancel
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 72
    Top = 152
  end
end
