object fTypeEngagement: TfTypeEngagement
  Left = 270
  Top = 73
  BorderStyle = bsDialog
  Caption = 'fTypeEngagement'
  ClientHeight = 333
  ClientWidth = 754
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
    Width = 754
    Height = 333
    Align = alClient
    BiDiMode = bdRightToLeft
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 752
      Height = 72
      Align = alTop
      Caption = #1606#1608#1593' '#1575#1604#1578#1586#1575#1605
      TabOrder = 0
      DesignSize = (
        752
        72)
      object btnSave: TsBitBtn
        Left = 128
        Top = 30
        Width = 32
        Height = 30
        TabOrder = 0
        OnClick = btnSaveClick
        ImageIndex = 4
        Images = MainForm.actionsIcons
      end
      object edtTypeEngagement: TsEdit
        Left = 168
        Top = 30
        Width = 508
        Height = 29
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        BoundLabel.Active = True
        BoundLabel.Indent = 12
        BoundLabel.Caption = #1606#1608#1593' '#1575#1604#1575#1604#1578#1586#1575#1605
      end
      object btnEdit: TsBitBtn
        Left = 89
        Top = 30
        Width = 32
        Height = 30
        Enabled = False
        TabOrder = 2
        OnClick = btnEditClick
        ImageIndex = 7
        Images = MainForm.actionsIcons
      end
      object btnDelete: TsBitBtn
        Left = 50
        Top = 30
        Width = 32
        Height = 30
        Enabled = False
        TabOrder = 3
        OnClick = btnDeleteClick
        ImageIndex = 3
        Images = MainForm.actionsIcons
      end
      object edtCode: TsEdit
        Left = 0
        Top = 8
        Width = 41
        Height = 25
        TabOrder = 4
        Visible = False
      end
      object btnCancel: TsBitBtn
        Left = 10
        Top = 30
        Width = 32
        Height = 30
        Enabled = False
        TabOrder = 5
        OnClick = btnCancelClick
        ImageIndex = 1
        Images = MainForm.actionsIcons
      end
    end
    object dbGrid: TsDBGrid
      Left = 1
      Top = 73
      Width = 752
      Height = 259
      Align = alClient
      DataSource = dm.dsTypeEngagement
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbGridCellClick
      DefaultRowHeight = 21
      Columns = <
        item
          Expanded = False
          FieldName = #1585#1602#1605
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1606#1608#1593' '#1575#1604#1575#1578#1586#1575#1605
          Width = 698
          Visible = True
        end>
    end
  end
end
