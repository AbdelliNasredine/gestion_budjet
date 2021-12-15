object fTypeEmployee: TfTypeEmployee
  Left = -1127
  Top = 208
  BorderStyle = bsDialog
  Caption = 'fTypeEmployee'
  ClientHeight = 511
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 73
    Align = alTop
    BiDiMode = bdRightToLeft
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 832
      Height = 71
      Align = alClient
      Caption = #1589#1606#1601' '#1605#1587#1578#1582#1583#1605
      TabOrder = 0
      DesignSize = (
        832
        71)
      object sEdit2: TsEdit
        Left = 162
        Top = 25
        Width = 200
        Height = 28
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        BoundLabel.Active = True
        BoundLabel.Indent = 12
        BoundLabel.Caption = #1589#1606#1601' '#1575#1604#1605#1587#1578#1582#1583#1605' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
        BoundLabel.Layout = sclRight
      end
      object sEdit1: TsEdit
        Left = 526
        Top = 26
        Width = 200
        Height = 28
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BoundLabel.Active = True
        BoundLabel.Indent = 12
        BoundLabel.Caption = #1589#1606#1601' '#1575#1604#1605#1587#1578#1582#1583#1605
      end
      object sBitBtn2: TsBitBtn
        Left = 96
        Top = 25
        Width = 30
        Height = 30
        TabOrder = 2
        ImageIndex = 4
        Images = MainForm.actionsIcons
      end
      object sBitBtn1: TsBitBtn
        Left = 57
        Top = 25
        Width = 30
        Height = 30
        Enabled = False
        TabOrder = 3
        ImageIndex = 7
        Images = MainForm.actionsIcons
      end
      object sBitBtn3: TsBitBtn
        Left = 18
        Top = 25
        Width = 30
        Height = 30
        Enabled = False
        TabOrder = 4
        ImageIndex = 3
        Images = MainForm.actionsIcons
      end
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 73
    Width = 834
    Height = 438
    Align = alClient
    DoubleBuffered = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 832
      Height = 436
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
