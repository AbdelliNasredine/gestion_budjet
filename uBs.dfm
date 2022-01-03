object fBS: TfBS
  Left = -816
  Top = 346
  Width = 428
  Height = 147
  BiDiMode = bdRightToLeft
  Caption = #1605#1610#1586#1575#1606#1610#1577' '#1573#1590#1575#1601#1610#1577
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 20
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 108
    Align = alClient
    DoubleBuffered = False
    TabOrder = 0
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 410
      Height = 106
      Align = alClient
      Caption = #1605#1610#1586#1575#1606#1610#1577' '#1573#1590#1575#1601#1610#1577
      TabOrder = 0
      DesignSize = (
        410
        106)
      object btn: TsBitBtn
        Left = 15
        Top = 61
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
        TabOrder = 0
        OnClick = btnClick
        ImageIndex = 5
      end
      object sDateEdit1: TsDateEdit
        Left = 100
        Top = 61
        Width = 97
        Height = 28
        Anchors = [akTop, akRight]
        DoubleBuffered = False
        MaxLength = 10
        TabOrder = 1
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1575#1604#1578#1575#1585#1610#1582
        BoundLabel.Layout = sclTopLeft
        DefaultToday = True
      end
      object m: TsCurrencyEdit
        Left = 201
        Top = 61
        Width = 201
        Height = 28
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DoubleBuffered = False
        ParentBiDiMode = False
        TabOrder = 2
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1605#1590#1575#1601
        BoundLabel.Layout = sclTopRight
        Alignment = taLeftJustify
      end
    end
  end
end
