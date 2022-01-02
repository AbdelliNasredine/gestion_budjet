object MainForm: TMainForm
  Left = -1448
  Top = -8
  Width = 1456
  Height = 886
  AlphaBlend = True
  BiDiMode = bdLeftToRight
  Caption = 'Principale - Gestion Budjet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 808
    Width = 1440
    Height = 19
    Panels = <>
  end
  object pageControle: TsPageControl
    Left = 0
    Top = 0
    Width = 1440
    Height = 808
    ActivePage = sTabSheet2
    Align = alClient
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MultiLine = True
    ParentBiDiMode = False
    ParentFont = False
    TabHeight = 45
    TabOrder = 1
    TabWidth = 200
    OnChange = pageControleChange
    TabMargin = 20
    TabPadding = 12
    TabSpacing = 20
    object budjet: TsTabSheet
      Caption = #1575#1604#1605#1610#1586#1575#1606#1610#1577
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      object sPanel2: TsPanel
        Left = 0
        Top = 0
        Width = 1432
        Height = 753
        Align = alClient
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object panelBranches: TsPanel
          Left = 1
          Top = 81
          Width = 1430
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 0
          DesignSize = (
            1430
            40)
          object btnAddBranche: TsBitBtn
            Left = 453
            Top = 8
            Width = 32
            Height = 28
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnAddBrancheClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object cbxBranches: TsComboBox
            Left = 496
            Top = 8
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            ParentBiDiMode = False
            TabOrder = 1
            OnChange = cbxBranchesChange
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            BoundLabel.Active = True
            BoundLabel.Indent = 40
            BoundLabel.Caption = #1575#1604#1601#1585#1608#1593
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -15
            BoundLabel.Font.Name = 'Segoe UI'
            BoundLabel.Font.Style = [fsBold]
            BoundLabel.ParentFont = False
          end
          object gbxNewBranche: TsGroupBox
            Left = 453
            Top = 44
            Width = 846
            Height = 197
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1593
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              846
              197)
            object edtDesigniationBrancheFr: TsEdit
              Left = 319
              Top = 112
              Width = 250
              Height = 29
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 0
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1601#1585#1593' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
            end
            object edtBrancheFr: TsEdit
              Left = 575
              Top = 112
              Width = 250
              Height = 29
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 1
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1601#1585#1593' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
            end
            object edtBrancheAr: TsEdit
              Left = 575
              Top = 55
              Width = 250
              Height = 29
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1601#1585#1593
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtDesigniationBrancheAr: TsEdit
              Left = 319
              Top = 55
              Width = 250
              Height = 29
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1601#1585#1593
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object sPanel1: TsPanel
              Left = 2
              Top = 157
              Width = 842
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 4
              DesignSize = (
                842
                38)
              object btnSaveBranche: TsButton
                Left = 721
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1590#1575#1601#1577
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
                OnClick = btnSaveBrancheClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object btnEditBranche: TsButton
                Left = 601
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1578#1593#1583#1610#1604
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
                OnClick = btnEditBrancheClick
                ImageAlignment = iaRight
                ImageIndex = 7
              end
              object btnDeleteBranche: TsButton
                Left = 481
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1581#1583#1601
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 2
                OnClick = btnDeleteBrancheClick
                ImageAlignment = iaRight
                ImageIndex = 3
              end
            end
            object sEdit2: TsEdit
              Left = 7
              Top = 23
              Width = 66
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Visible = False
              OnChange = sEdit2Change
              BoundLabel.Indent = 4
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
        object panelRubriques: TsPanel
          Left = 1
          Top = 121
          Width = 1430
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 1
          DesignSize = (
            1430
            40)
          object cbxRubrique: TsComboBox
            Left = 496
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            Enabled = False
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = cbxRubriqueChange
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            BoundLabel.Active = True
            BoundLabel.Indent = 40
            BoundLabel.Caption = #1575#1604#1593#1606#1575#1608#1610#1606
            BoundLabel.Font.Charset = ARABIC_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -15
            BoundLabel.Font.Name = 'Segoe UI'
            BoundLabel.Font.Style = [fsBold]
            BoundLabel.ParentFont = False
          end
          object btnAddRubrique: TsBitBtn
            Left = 453
            Top = 5
            Width = 32
            Height = 28
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnAddRubriqueClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object gbxNewRubrique: TsGroupBox
            Left = 456
            Top = 40
            Width = 845
            Height = 193
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              845
              193)
            object edtDesigniationRubriqueFr: TsEdit
              Left = 318
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 0
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1593#1606#1608#1575#1606' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
            end
            object edtRubriqueFr: TsEdit
              Left = 574
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 1
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1593#1606#1608#1575#1606'('#1575#1604#1601#1585#1606#1587#1610#1577')'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
            end
            object edtRubriqueAr: TsEdit
              Left = 574
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1593#1606#1608#1575#1606
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtDesigniationRubriqueAr: TsEdit
              Left = 318
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1593#1606#1608#1575#1606
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object sPanel3: TsPanel
              Left = 2
              Top = 153
              Width = 841
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 4
              DesignSize = (
                841
                38)
              object btnSaveRubrique: TsButton
                Left = 720
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1590#1575#1601#1577
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
                OnClick = btnSaveRubriqueClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object btnEditRb: TsButton
                Left = 600
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1578#1593#1583#1610#1604
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
                OnClick = btnEditRbClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object btnDeleteRb: TsButton
                Left = 480
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1581#1583#1601
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 2
                OnClick = btnDeleteRbClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
            end
            object sEdit5: TsEdit
              Left = 6
              Top = 23
              Width = 83
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Visible = False
              BoundLabel.Indent = 4
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
        object panelSections: TsPanel
          Left = 1
          Top = 161
          Width = 1430
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 2
          DesignSize = (
            1430
            40)
          object cbxSections: TsComboBox
            Left = 496
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            Enabled = False
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = cbxSectionsChange
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            BoundLabel.Active = True
            BoundLabel.Indent = 40
            BoundLabel.Caption = #1575#1604#1571#1602#1587#1575#1605
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -15
            BoundLabel.Font.Name = 'Segoe UI'
            BoundLabel.Font.Style = [fsBold]
            BoundLabel.ParentFont = False
          end
          object btnAddSection: TsBitBtn
            Left = 453
            Top = 5
            Width = 32
            Height = 28
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnAddSectionClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object gbxNewSection: TsGroupBox
            Left = 456
            Top = 40
            Width = 845
            Height = 193
            Anchors = [akTop, akRight]
            Caption = #1602#1587#1605
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              845
              193)
            object edtDesigniationSectionFr: TsEdit
              Left = 318
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 0
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1602#1587#1605' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
            end
            object edtSectionFr: TsEdit
              Left = 574
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 1
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1602#1587#1605' ('#1575#1604#1601#1585#1606#1587#1610#1577')'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
            end
            object edtSectionAr: TsEdit
              Left = 574
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1602#1587#1605
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtDesigniationSectionAr: TsEdit
              Left = 318
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1602#1587#1605
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object sPanel4: TsPanel
              Left = 2
              Top = 153
              Width = 841
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 4
              DesignSize = (
                841
                38)
              object btnSaveSection: TsButton
                Left = 720
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1590#1575#1601#1577
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
                OnClick = btnSaveSectionClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object btnEditSe: TsButton
                Left = 600
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1578#1593#1583#1610#1604
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object btnDeleteSe: TsButton
                Left = 480
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1581#1583#1601
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 2
                OnClick = btnDeleteSeClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
            end
            object sEdit6: TsEdit
              Left = 6
              Top = 23
              Width = 115
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Visible = False
              BoundLabel.Indent = 4
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
        object panelChapiters: TsPanel
          Left = 1
          Top = 201
          Width = 1430
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 3
          DesignSize = (
            1430
            40)
          object cbxChapitres: TsComboBox
            Left = 496
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            Enabled = False
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = cbxChapitresChange
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            BoundLabel.Active = True
            BoundLabel.Indent = 40
            BoundLabel.Caption = #1575#1604#1571#1576#1608#1575#1576
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -15
            BoundLabel.Font.Name = 'Segoe UI'
            BoundLabel.Font.Style = [fsBold]
            BoundLabel.ParentFont = False
          end
          object btnAddChapitre: TsBitBtn
            Left = 453
            Top = 5
            Width = 32
            Height = 28
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnAddChapitreClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object gbxNexChapitre: TsGroupBox
            Left = 456
            Top = 40
            Width = 841
            Height = 140
            Anchors = [akTop, akRight]
            Caption = #1605#1593#1604#1608#1605#1575#1578' '#1575#1604#1576#1575#1576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              841
              140)
            object edtChapitre: TsEdit
              Left = 751
              Top = 55
              Width = 69
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1576#1575#1576
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtDesignationChapitreAr: TsEdit
              Left = 314
              Top = 55
              Width = 430
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1576#1575#1576
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object sPanel5: TsPanel
              Left = 2
              Top = 100
              Width = 837
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 2
              DesignSize = (
                837
                38)
              object btnSaveChapiter: TsButton
                Left = 716
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1590#1575#1601#1577
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
                OnClick = btnSaveChapiterClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object sButton1: TsButton
                Left = 476
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1581#1583#1601
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
                OnClick = sButton1Click
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object sButton4: TsButton
                Left = 596
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1578#1593#1583#1610#1604
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 2
                ImageAlignment = iaRight
                ImageIndex = 5
              end
            end
            object edtMontantChapiter: TsMaskEdit
              Left = 104
              Top = 56
              Width = 203
              Height = 28
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DoubleBuffered = False
              ParentBiDiMode = False
              TabOrder = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1605#1576#1604#1594
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clBlack
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
              CheckOnExit = True
            end
            object sEdit7: TsEdit
              Left = 7
              Top = 15
              Width = 69
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Visible = False
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1576#1575#1576
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
        object panelArticles: TsPanel
          Left = 1
          Top = 241
          Width = 1430
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 4
          DesignSize = (
            1430
            40)
          object cbxArticles: TsComboBox
            Left = 496
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            Enabled = False
            ParentBiDiMode = False
            TabOrder = 0
            OnChange = cbxArticlesChange
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            BoundLabel.Active = True
            BoundLabel.Indent = 40
            BoundLabel.Caption = #1575#1604#1605#1608#1575#1583
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -15
            BoundLabel.Font.Name = 'Segoe UI'
            BoundLabel.Font.Style = [fsBold]
            BoundLabel.ParentFont = False
          end
          object btnAddArticle: TsBitBtn
            Left = 453
            Top = 5
            Width = 32
            Height = 28
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnAddArticleClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object gbxNewArticle: TsGroupBox
            Left = 456
            Top = 40
            Width = 843
            Height = 193
            Anchors = [akTop, akRight]
            Caption = #1605#1593#1604#1608#1605#1575#1578' '#1575#1604#1605#1575#1583#1577
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              843
              193)
            object edtDesignationArticleAr: TsEdit
              Left = 316
              Top = 56
              Width = 430
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1578#1587#1605#1610#1577' '#1575#1604#1605#1575#1583#1577
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object sPanel6: TsPanel
              Left = 2
              Top = 153
              Width = 839
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 1
              DesignSize = (
                839
                38)
              object sButton2: TsButton
                Left = 718
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1590#1575#1601#1577
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
                OnClick = sButton2Click
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object sButton3: TsButton
                Left = 478
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1581#1583#1601
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object sBitBtn10: TsBitBtn
                Left = 9
                Top = 5
                Width = 165
                Height = 28
                Anchors = [akTop, akRight]
                Caption = #1573#1590#1575#1601#1577' '#1605#1610#1586#1575#1606#1610#1577' '#1573#1590#1575#1601#1610#1577
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = sBitBtn10Click
                ImageIndex = 0
              end
              object sButton5: TsButton
                Left = 598
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1578#1593#1583#1610#1604
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 3
                ImageAlignment = iaRight
                ImageIndex = 5
              end
            end
            object edtMantantArticle: TsMaskEdit
              Left = 616
              Top = 112
              Width = 204
              Height = 28
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DoubleBuffered = False
              ParentBiDiMode = False
              TabOrder = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1605#1576#1604#1594
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clBlack
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
              CheckOnExit = True
            end
            object edtDecret: TsEdit
              Left = 221
              Top = 56
              Width = 89
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1605#1585#1587#1608#1605
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtMantantArticleRest: TsMaskEdit
              Left = 397
              Top = 112
              Width = 204
              Height = 28
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DoubleBuffered = False
              Enabled = False
              ParentBiDiMode = False
              TabOrder = 4
              Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              BoundLabel.Active = True
              BoundLabel.Indent = 4
              BoundLabel.Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1605#1578#1576#1602#1610
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clBlack
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopRight
              BoundLabel.ParentFont = False
              CheckOnExit = True
            end
            object edtArticle: TsMaskEdit
              Left = 752
              Top = 56
              Width = 66
              Height = 28
              Anchors = [akTop, akRight]
              DoubleBuffered = False
              TabOrder = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              BoundLabel.Active = True
              BoundLabel.Caption = #1575#1604#1605#1575#1583#1577
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clBlack
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
              CheckOnExit = True
            end
            object sEdit8: TsEdit
              Left = 5
              Top = 16
              Width = 124
              Height = 28
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Visible = False
              BoundLabel.Indent = 4
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
        object sPanel10: TsPanel
          Left = 1
          Top = 1
          Width = 1430
          Height = 80
          Align = alTop
          BevelOuter = bvLowered
          Caption = #1578#1587#1610#1610#1585' '#1575#1604#1605#1610#1586#1575#1606#1610#1577
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    object engagements: TsTabSheet
      Caption = #1575#1604#1575#1604#1578#1586#1575#1605#1575#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ImageIndex = 2
      ParentFont = False
      OnShow = engagementsShow
      object sPanel7: TsPanel
        Left = 0
        Top = 0
        Width = 1432
        Height = 753
        Align = alClient
        BevelOuter = bvNone
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sGroupBox1: TsGroupBox
          Left = 0
          Top = 0
          Width = 1432
          Height = 81
          Align = alTop
          Caption = #1575#1604#1593#1605#1604#1610#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object sPanel8: TsPanel
            Left = 2
            Top = 23
            Width = 1428
            Height = 56
            Align = alClient
            BevelOuter = bvNone
            DoubleBuffered = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DesignSize = (
              1428
              56)
            object sBitBtn1: TsBitBtn
              Left = 521
              Top = 7
              Width = 123
              Height = 33
              Caption = #1575#1590#1575#1601#1577
              TabOrder = 0
              OnClick = sBitBtn1Click
              ImageIndex = 5
              Images = actionsIcons
            end
            object sBitBtn2: TsBitBtn
              Left = 393
              Top = 7
              Width = 123
              Height = 33
              Caption = #1591#1576#1593
              Enabled = False
              TabOrder = 1
              OnClick = sBitBtn2Click
              ImageIndex = 8
              Images = actionsIcons
            end
            object sBitBtn3: TsBitBtn
              Left = 265
              Top = 7
              Width = 123
              Height = 33
              Caption = #1578#1593#1583#1610#1604
              Enabled = False
              TabOrder = 2
              ImageIndex = 7
              Images = actionsIcons
            end
            object sBitBtn4: TsBitBtn
              Left = 137
              Top = 7
              Width = 123
              Height = 33
              Caption = #1581#1583#1601
              Enabled = False
              TabOrder = 3
              OnClick = sBitBtn4Click
              ImageIndex = 3
              Images = actionsIcons
            end
            object sEdit1: TsEdit
              Left = 800
              Top = 8
              Width = 49
              Height = 29
              TabOrder = 4
              Visible = False
              OnChange = sEdit1Change
              Align = alCustom
            end
            object sComboBox1: TsComboBox
              Left = 960
              Top = 8
              Width = 377
              Height = 29
              Anchors = [akTop, akRight]
              DoubleBuffered = False
              TabOrder = 5
              OnChange = sComboBox1Change
              BoundLabel.Active = True
              BoundLabel.Indent = 5
              BoundLabel.Caption = #1581#1575#1604#1577' '#1575#1604#1573#1604#1578#1586#1575#1605
              Items.Strings = (
                #1578#1571#1588#1610#1585#1577' '#1575#1604#1605#1585#1575#1602#1576' '#1575#1604#1605#1575#1604#1610
                #1575#1604#1603#1604)
            end
            object sBitBtn9: TsBitBtn
              Left = 9
              Top = 7
              Width = 123
              Height = 33
              Caption = #1587#1581#1576' '#1575#1604#1573#1604#1578#1586#1575#1605
              Enabled = False
              TabOrder = 6
              OnClick = sBitBtn9Click
              ImageIndex = 11
              Images = actionsIcons
            end
          end
        end
        object sDBGrid1: TsDBGrid
          Left = 0
          Top = 81
          Width = 1432
          Height = 672
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clWhite
          DataSource = dm.dsEngagament
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          OnCellClick = sDBGrid1CellClick
          DefaultRowHeight = 25
          Columns = <
            item
              Expanded = False
              FieldName = 'code_FE'
              Title.Caption = #1585#1602#1605
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'date_FE'
              Title.Caption = #1575#1604#1578#1575#1585#1610#1582
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'e10'
              Title.Caption = #1573#1604#1578#1586#1575#1605
              Width = 531
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total'
              Title.Caption = #1575#1604#1605#1580#1605#1608#1593
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sit_e'
              Title.Caption = #1581#1575#1604#1577' '#1575#1604#1573#1604#1578#1586#1575#1605
              Width = 354
              Visible = True
            end>
        end
      end
    end
    object sTabSheet1: TsTabSheet
      Caption = #1575#1604#1578#1581#1608#1610#1604#1575#1578
      OnShow = sTabSheet1Show
      object sGroupBox2: TsGroupBox
        Left = 0
        Top = 0
        Width = 1432
        Height = 217
        Align = alTop
        Caption = #1605#1593#1604#1608#1605#1575#1578' '#1575#1604#1578#1581#1608#1610#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          1432
          217)
        object sComboBox2: TsComboBox
          Left = 965
          Top = 48
          Width = 350
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 0
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1605#1606
        end
        object sComboBox3: TsComboBox
          Left = 544
          Top = 48
          Width = 350
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 1
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1573#1604#1609
        end
        object sEdit3: TsEdit
          Left = 1064
          Top = 96
          Width = 250
          Height = 29
          Anchors = [akTop, akRight]
          TabOrder = 2
          OnChange = ge
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1605#1576#1604#1594' '#1575#1604#1578#1581#1608#1610#1604
        end
        object sPanel9: TsPanel
          Left = 2
          Top = 157
          Width = 1428
          Height = 58
          Align = alBottom
          BevelOuter = bvLowered
          DoubleBuffered = False
          TabOrder = 3
          DesignSize = (
            1428
            58)
          object sBitBtn5: TsBitBtn
            Left = 1288
            Top = 12
            Width = 120
            Height = 35
            Anchors = [akTop, akRight]
            Caption = #1575#1590#1575#1601#1577
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = sBitBtn5Click
            ImageIndex = 5
            Images = actionsIcons
          end
          object sBitBtn6: TsBitBtn
            Left = 1152
            Top = 12
            Width = 120
            Height = 35
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1610#1604
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = sBitBtn6Click
            ImageIndex = 7
            Images = actionsIcons
          end
          object sBitBtn7: TsBitBtn
            Left = 1016
            Top = 12
            Width = 120
            Height = 35
            Anchors = [akTop, akRight]
            Caption = #1581#1583#1601
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = sBitBtn7Click
            ImageIndex = 3
            Images = actionsIcons
          end
          object sBitBtn8: TsBitBtn
            Left = 888
            Top = 12
            Width = 120
            Height = 35
            Anchors = [akTop, akRight]
            Caption = #1573#1604#1594#1575#1569
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = sBitBtn8Click
            ImageIndex = 1
            Images = actionsIcons
          end
        end
        object sEdit4: TsEdit
          Left = 3
          Top = 16
          Width = 47
          Height = 29
          Anchors = [akTop, akRight]
          TabOrder = 4
          Visible = False
          OnChange = sEdit4Change
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1605#1576#1604#1594' '#1575#1604#1578#1581#1608#1610#1604
        end
      end
      object sDBGrid2: TsDBGrid
        Left = 0
        Top = 217
        Width = 1432
        Height = 536
        Align = alClient
        Color = clWhite
        DataSource = dm.dsTransfert
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        OnCellClick = sDBGrid2CellClick
        DefaultRowHeight = 25
        Columns = <
          item
            Expanded = False
            FieldName = 'code_trans'
            Title.Caption = #1585#1602#1605' '#1575#1604#1578#1581#1608#1610#1604
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des_out'
            Title.Caption = #1605#1606' '#1575#1604#1605#1575#1583#1577
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des_in'
            Title.Caption = #1573#1604#1609' '#1575#1604#1605#1575#1583#1577
            Width = 480
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'montant_trans'
            Title.Caption = #1575#1604#1605#1576#1604#1594
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_trans'
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1578#1581#1608#1610#1604
            Width = 117
            Visible = True
          end>
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = #1603#1588#1608#1601' '#1575#1604#1583#1601#1593
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      object sGroupBox3: TsGroupBox
        Left = 0
        Top = 0
        Width = 1432
        Height = 81
        Align = alTop
        Caption = #1575#1604#1593#1605#1604#1610#1575#1578
        TabOrder = 0
        DesignSize = (
          1432
          81)
        object sBitBtn11: TsBitBtn
          Left = 920
          Top = 32
          Width = 120
          Height = 35
          Anchors = [akTop, akRight]
          Caption = #1591#1576#1593
          Enabled = False
          TabOrder = 0
          OnClick = sBitBtn11Clck
          ImageIndex = 8
          Images = actionsIcons
        end
        object sEdit9: TsEdit
          Left = 8
          Top = 16
          Width = 121
          Height = 29
          TabOrder = 1
          Visible = False
          OnChange = sEdit9Change
        end
        object sBitBtn13: TsBitBtn
          Left = 1304
          Top = 32
          Width = 120
          Height = 35
          Anchors = [akTop, akRight]
          Caption = #1573#1590#1575#1601#1577
          TabOrder = 2
          ImageIndex = 8
          Images = actionsIcons
        end
        object sBitBtn14: TsBitBtn
          Left = 1176
          Top = 32
          Width = 120
          Height = 35
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1610#1604
          Enabled = False
          TabOrder = 3
          ImageIndex = 7
          Images = actionsIcons
        end
        object sBitBtn15: TsBitBtn
          Left = 1048
          Top = 32
          Width = 120
          Height = 35
          Anchors = [akTop, akRight]
          Caption = #1581#1583#1601
          Enabled = False
          TabOrder = 4
          OnClick = sBitBtn15Click
          ImageIndex = 3
          Images = actionsIcons
        end
      end
      object sDBGrid3: TsDBGrid
        Left = 0
        Top = 81
        Width = 1432
        Height = 672
        Align = alClient
        Color = clWhite
        DataSource = dm.dsMondat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = sDBGrid3CellClick
        DefaultRowHeight = 25
        Columns = <
          item
            Expanded = False
            FieldName = 'code_MP'
            Title.Caption = #1585#1602#1605' '#1575#1604#1581#1608#1575#1604#1577
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_MP'
            Title.Caption = #1575#1604#1578#1575#1585#1610#1582
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'montant_mp'
            Title.Caption = #1575#1604#1605#1576#1604#1594
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'objet'
            Title.Caption = #1575#1604#1605#1608#1590#1608#1593
            Width = 904
            Visible = True
          end>
      end
    end
  end
  object sideMenuIcons: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <>
    Left = 73
  end
  object MainMenu1: TMainMenu
    Images = mainMenuIcons
    Left = 170
    object F1: TMenuItem
      Caption = 'Fichier'
      object N2: TMenuItem
        Caption = '-'
      end
      object Q2: TMenuItem
        Caption = 'Quitter'
        ImageIndex = 0
        OnClick = Q2Click
      end
    end
    object N3: TMenuItem
      Caption = 'Base de donn'#233'es'
      object t1: TMenuItem
        Caption = #1571#1589#1606#1575#1601' '#1575#1604#1605#1587#1578#1582#1583#1605#1610#1606
        OnClick = t1Click
      end
      object N4: TMenuItem
        Caption = #1575#1604#1576#1606#1608#1603
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1571#1606#1608#1575#1593' '#1575#1604#1575#1604#1578#1586#1575#1605
        OnClick = N5Click
      end
    end
    object R1: TMenuItem
      Caption = 'R'#233'glage'
      object I1: TMenuItem
        Caption = 'Information d'#39'entreprise'
        OnClick = I1Click
      end
    end
    object N1: TMenuItem
      Caption = '?'
      object A1: TMenuItem
        Caption = 'A propos'
        ImageIndex = 1
      end
    end
  end
  object mainMenuIcons: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61453
        Color = -16777036
      end
      item
        Char = 61530
        Color = -5344256
      end>
    Left = 105
    Bitmap = {}
  end
  object actionsIcons: TsCharImageList
    Height = 16
    Width = 16
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61452
      end
      item
        Char = 61453
      end
      item
        Char = 61442
      end
      item
        Char = 61460
      end
      item
        Char = 61639
      end
      item
        Char = 61543
      end
      item
        Char = 61544
      end
      item
        Char = 61504
      end
      item
        Char = 61487
      end
      item
        Char = 61559
      end
      item
        Char = 61560
      end
      item
        Char = 61540
      end>
    Left = 138
    Bitmap = {}
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 40
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    object j1: TMenuItem
      Caption = #1578#1593#1583#1610#1604
    end
    object N6: TMenuItem
      Caption = #1587#1581#1576
    end
    object N7: TMenuItem
      Caption = #1581#1583#1601
    end
    object N8: TMenuItem
      Caption = #1591#1576#1593
    end
  end
end
