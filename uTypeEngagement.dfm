object fTypeEngagement: TfTypeEngagement
  Left = -1032
  Top = 183
  BorderStyle = bsDialog
  Caption = 'fTypeEngagement'
  ClientHeight = 461
  ClientWidth = 688
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
    Width = 688
    Height = 461
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
      Width = 686
      Height = 72
      Align = alTop
      Caption = #1606#1608#1593' '#1575#1604#1578#1586#1575#1605
      TabOrder = 0
      DesignSize = (
        686
        72)
      object sBitBtn2: TsBitBtn
        Left = 88
        Top = 30
        Width = 32
        Height = 30
        TabOrder = 0
        ImageIndex = 4
        Images = MainForm.actionsIcons
      end
      object sEdit1: TsEdit
        Left = 135
        Top = 30
        Width = 475
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
        BoundLabel.Caption = #1606#1608#1593' '#1575#1604#1575#1604#1578#1586#1575#1605
      end
      object sBitBtn1: TsBitBtn
        Left = 49
        Top = 30
        Width = 32
        Height = 30
        Enabled = False
        TabOrder = 2
        ImageIndex = 7
        Images = MainForm.actionsIcons
      end
      object sBitBtn3: TsBitBtn
        Left = 10
        Top = 30
        Width = 32
        Height = 30
        Enabled = False
        TabOrder = 3
        ImageIndex = 3
        Images = MainForm.actionsIcons
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 73
      Width = 686
      Height = 387
      Align = alClient
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
