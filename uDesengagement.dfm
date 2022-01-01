object fDesengagement: TfDesengagement
  Left = 454
  Top = 78
  Width = 522
  Height = 486
  Caption = 'fDesengagement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 447
    Align = alClient
    BiDiMode = bdRightToLeft
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 504
      Height = 394
      Align = alClient
      Caption = #1587#1581#1576' '#1575#1604#1573#1604#1578#1586#1575#1605
      TabOrder = 0
      DesignSize = (
        504
        394)
      object sEdit1: TsEdit
        Left = 368
        Top = 56
        Width = 121
        Height = 28
        Anchors = [akTop, akRight]
        Enabled = False
        TabOrder = 0
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1585#1602#1605' '#1575#1604#1573#1604#1578#1586#1575#1605
        BoundLabel.Layout = sclTopLeft
      end
      object sMemo1: TsMemo
        Left = 16
        Top = 120
        Width = 473
        Height = 241
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1587#1576#1576' '#1575#1604#1587#1581#1576
        BoundLabel.Layout = sclTopLeft
      end
    end
    object sPanel2: TsPanel
      Left = 1
      Top = 395
      Width = 504
      Height = 51
      Align = alBottom
      Anchors = [akTop, akRight]
      BevelOuter = bvLowered
      DoubleBuffered = False
      TabOrder = 1
      DesignSize = (
        504
        51)
      object sBitBtn1: TsBitBtn
        Left = 368
        Top = 8
        Width = 120
        Height = 35
        Anchors = [akTop, akRight]
        Caption = #1578#1571#1603#1610#1583
        TabOrder = 0
        OnClick = sBitBtn1Click
      end
      object sBitBtn2: TsBitBtn
        Left = 240
        Top = 8
        Width = 120
        Height = 35
        Anchors = [akTop, akRight]
        Caption = #1573#1604#1594#1575#1569
        TabOrder = 1
        OnClick = sBitBtn2Click
      end
    end
  end
end
