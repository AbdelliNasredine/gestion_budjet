object fTypeEmployee: TfTypeEmployee
  Left = 169
  Top = 108
  BorderStyle = bsDialog
  Caption = 'fTypeEmployee'
  ClientHeight = 281
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 281
    Align = alClient
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
      Width = 869
      Height = 71
      Align = alTop
      Caption = #1589#1606#1601' '#1605#1587#1578#1582#1583#1605
      TabOrder = 0
      DesignSize = (
        869
        71)
      object edtEmployeeTypeFr: TsEdit
        Left = 183
        Top = 25
        Width = 200
        Height = 28
        Anchors = [akTop, akRight]
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
      object edtEmployeeTypeAr: TsEdit
        Left = 563
        Top = 26
        Width = 200
        Height = 28
        Anchors = [akTop, akRight]
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
        Height = 24
        TabOrder = 6
        Visible = False
      end
    end
    object dbGrid: TsDBGrid
      Left = 1
      Top = 72
      Width = 869
      Height = 208
      Align = alClient
      DataSource = dm.dsTypeEmployee
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbGridCellClick
      DefaultRowHeight = 20
    end
  end
end
