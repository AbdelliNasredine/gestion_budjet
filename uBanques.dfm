object fBanque: TfBanque
  Left = 236
  Top = 136
  BorderStyle = bsDialog
  Caption = 'fBanque'
  ClientHeight = 317
  ClientWidth = 832
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
    Width = 832
    Height = 317
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
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 830
      Height = 72
      Align = alTop
      Caption = #1576#1606#1603
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object edtDesignationAr: TsEdit
        Left = 546
        Top = 25
        Width = 200
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Align = alCustom
        BoundLabel.Active = True
        BoundLabel.Indent = 12
        BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1576#1606#1603
      end
      object edtDesignationFr: TsEdit
        Left = 194
        Top = 25
        Width = 200
        Height = 29
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Align = alCustom
        BoundLabel.Active = True
        BoundLabel.Indent = 12
        BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1576#1606#1603' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
        BoundLabel.Layout = sclRight
      end
      object btnSave: TsBitBtn
        Left = 128
        Top = 25
        Width = 30
        Height = 30
        TabOrder = 2
        OnClick = btnSaveClick
        ImageIndex = 4
        Images = MainForm.actionsIcons
      end
      object btnEdit: TsBitBtn
        Left = 89
        Top = 25
        Width = 30
        Height = 30
        Enabled = False
        TabOrder = 3
        OnClick = btnEditClick
        ImageIndex = 7
        Images = MainForm.actionsIcons
      end
      object btnDelete: TsBitBtn
        Left = 50
        Top = 25
        Width = 30
        Height = 30
        Enabled = False
        TabOrder = 4
        OnClick = btnDeleteClick
        ImageIndex = 3
        Images = MainForm.actionsIcons
      end
      object btnCancel: TsBitBtn
        Left = 10
        Top = 25
        Width = 32
        Height = 30
        Enabled = False
        TabOrder = 5
        OnClick = btnCancelClick
        ImageIndex = 1
        Images = MainForm.actionsIcons
      end
      object edtCode: TsEdit
        Left = 0
        Top = 8
        Width = 41
        Height = 25
        TabOrder = 6
        Visible = False
      end
    end
    object dbGrid: TsDBGrid
      Left = 1
      Top = 73
      Width = 830
      Height = 243
      Align = alClient
      DataSource = dm.dsBanque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbGridCellClick
      DefaultRowHeight = 21
    end
  end
end
