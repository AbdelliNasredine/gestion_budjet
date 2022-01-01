object fEntreprise: TfEntreprise
  Left = 313
  Top = 208
  Width = 672
  Height = 298
  Caption = 'fEntreprise'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 259
    Align = alClient
    BiDiMode = bdRightToLeft
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object sPanel2: TsPanel
      Left = 1
      Top = 206
      Width = 654
      Height = 52
      Align = alBottom
      BevelOuter = bvLowered
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        654
        52)
      object sBitBtn1: TsBitBtn
        Left = 526
        Top = 8
        Width = 120
        Height = 35
        Anchors = [akTop, akRight]
        Caption = #1581#1601#1592
        TabOrder = 0
        OnClick = sBitBtn1Click
        ImageIndex = 4
        Images = MainForm.actionsIcons
      end
    end
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 654
      Height = 205
      Align = alClient
      Caption = #1605#1593#1604#1608#1605#1575#1578' '#1575#1604#1605#1583#1610#1585#1610#1577
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        654
        205)
      object sEdit1: TsEdit
        Left = 341
        Top = 64
        Width = 300
        Height = 29
        Anchors = [akTop, akRight]
        TabOrder = 0
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1605#1583#1610#1585#1610#1577
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -13
        BoundLabel.Font.Name = 'Segoe UI'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        BoundLabel.ParentFont = False
      end
      object sEdit2: TsEdit
        Left = 28
        Top = 64
        Width = 305
        Height = 29
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1605#1583#1610#1585#1610#1577' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -13
        BoundLabel.Font.Name = 'Segoe UI'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopRight
        BoundLabel.ParentFont = False
      end
      object cbxWilaya: TsComboBox
        Left = 288
        Top = 128
        Width = 175
        Height = 29
        Anchors = [akTop, akRight]
        DoubleBuffered = False
        TabOrder = 2
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1575#1604#1608#1604#1575#1610#1577
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -13
        BoundLabel.Font.Name = 'Segoe UI'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        BoundLabel.ParentFont = False
        Items.Strings = (
          #1571#1583#1585#1575#1585
          #1575#1604#1588#1604#1601
          ' '#1575#1604#1571#1594#1608#1575#1591
          #1571#1605' '#1575#1604#1576#1608#1575#1602#1610
          #1576#1575#1578#1606#1577
          #1576#1580#1575#1610#1577
          #1576#1587#1603#1585#1577
          #1576#1588#1575#1585)
      end
      object sEdit3: TsEdit
        Left = 557
        Top = 128
        Width = 80
        Height = 29
        Anchors = [akTop, akRight]
        TabOrder = 3
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1585#1605#1586' '#1575#1604#1608#1586#1575#1585#1577
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -13
        BoundLabel.Font.Name = 'Segoe UI'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        BoundLabel.ParentFont = False
      end
      object sEdit4: TsEdit
        Left = 470
        Top = 128
        Width = 80
        Height = 29
        Anchors = [akTop, akRight]
        TabOrder = 4
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1585#1602#1605' '#1575#1604#1605#1589#1604#1581#1577
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -13
        BoundLabel.Font.Name = 'Segoe UI'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        BoundLabel.ParentFont = False
      end
      object sEdit5: TsEdit
        Left = 30
        Top = 128
        Width = 250
        Height = 29
        Anchors = [akTop, akRight]
        TabOrder = 5
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1581#1587#1575#1576' '#1575#1604#1582#1586#1610#1606#1577
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -13
        BoundLabel.Font.Name = 'Segoe UI'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        BoundLabel.ParentFont = False
      end
    end
  end
  object q: TADOQuery
    Connection = dm.ADOConnection1
    Parameters = <>
    Left = 1
    Top = 17
  end
end
