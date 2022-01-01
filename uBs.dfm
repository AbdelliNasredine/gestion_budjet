object fBS: TfBS
  Left = 392
  Top = 207
  Width = 356
  Height = 226
  BiDiMode = bdRightToLeft
  Caption = 'fBS'
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 187
    Align = alClient
    DoubleBuffered = False
    TabOrder = 0
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 338
      Height = 185
      Align = alClient
      Caption = #1573#1590#1575#1601#1577' '#1605#1610#1586#1575#1606#1610#1577' '#1573#1590#1575#1601#1610#1577
      TabOrder = 0
      DesignSize = (
        338
        185)
      object m: TsMaskEdit
        Left = 15
        Top = 53
        Width = 254
        Height = 28
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DoubleBuffered = False
        ParentBiDiMode = False
        TabOrder = 0
        BoundLabel.Active = True
        BoundLabel.Indent = 15
        BoundLabel.Caption = #1575#1604#1605#1576#1604#1594
        BoundLabel.Layout = sclRight
        CheckOnExit = True
      end
      object btn: TsBitBtn
        Left = 191
        Top = 133
        Width = 78
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1573#1590#1575#1601#1577
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnClick
        ImageIndex = 5
      end
      object sDateEdit1: TsDateEdit
        Left = 157
        Top = 93
        Width = 112
        Height = 28
        Anchors = [akTop, akRight]
        DoubleBuffered = False
        MaxLength = 10
        TabOrder = 2
        BoundLabel.Active = True
        BoundLabel.Indent = 15
        BoundLabel.Caption = #1575#1604#1578#1575#1585#1610#1582
      end
    end
  end
end
