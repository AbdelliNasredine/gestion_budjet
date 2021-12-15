object MainForm: TMainForm
  Left = -1264
  Top = 1
  Width = 1269
  Height = 763
  Align = alCustom
  Caption = 'Principale - Gestion Budjet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 685
    Width = 1253
    Height = 19
    Panels = <>
  end
  object pageControle: TsPageControl
    Left = 0
    Top = 0
    Width = 1253
    Height = 685
    ActivePage = budjet
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
        Width = 1245
        Height = 630
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
          Top = 1
          Width = 1243
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 0
          DesignSize = (
            1243
            40)
          object btnEditBranche: TsBitBtn
            Left = 226
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
            OnClick = btnEditBrancheClick
            ImageIndex = 7
            Images = actionsIcons
          end
          object btnAddBranche: TsBitBtn
            Left = 266
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
            TabOrder = 1
            OnClick = btnAddBrancheClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object cbxBranches: TsComboBox
            Left = 309
            Top = 8
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            ParentBiDiMode = False
            TabOrder = 2
            Color = clWhite
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
            Left = 227
            Top = 44
            Width = 885
            Height = 193
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1593
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              885
              193)
            object edtDesigniationBrancheFr: TsEdit
              Left = 358
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Color = clWhite
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
              BoundLabel.Caption = 'Designiation'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtBrancheFr: TsEdit
              Left = 614
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Color = clWhite
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
              BoundLabel.Caption = 'Branche'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtBrancheAr: TsEdit
              Left = 614
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
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
              Left = 358
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
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
              Top = 153
              Width = 881
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 4
              DesignSize = (
                881
                38)
              object btnSaveBranche: TsButton
                Left = 760
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
                OnClick = btnSaveBrancheClick
                Images = actionsIcons
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object TsButton
                Left = 640
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1604#1594#1575#1569
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
            end
          end
        end
        object panelRubriques: TsPanel
          Left = 1
          Top = 41
          Width = 1243
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 1
          DesignSize = (
            1243
            40)
          object cbxRubrique: TsComboBox
            Left = 309
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            ParentBiDiMode = False
            TabOrder = 0
            Color = clWhite
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
          object btnEditRubrique: TsBitBtn
            Left = 226
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
            ImageIndex = 7
            Images = actionsIcons
          end
          object btnAddRubrique: TsBitBtn
            Left = 266
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
            TabOrder = 2
            OnClick = btnAddRubriqueClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object gbxNewRubrique: TsGroupBox
            Left = 227
            Top = 40
            Width = 885
            Height = 193
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              885
              193)
            object edtDesigniationRubriqueFr: TsEdit
              Left = 358
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Color = clWhite
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
              BoundLabel.Caption = 'Designiation'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtRubriqueFr: TsEdit
              Left = 614
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Color = clWhite
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
              BoundLabel.Caption = 'Rubrique'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtRubriqueAr: TsEdit
              Left = 614
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
              Left = 358
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
              Width = 881
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 4
              DesignSize = (
                881
                38)
              object btnSaveRubrique: TsButton
                Left = 760
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
                OnClick = btnSaveRubriqueClick
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object TsButton
                Left = 640
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1604#1594#1575#1569
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
            end
          end
        end
        object panelSections: TsPanel
          Left = 1
          Top = 81
          Width = 1243
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 2
          DesignSize = (
            1243
            40)
          object cbxSections: TsComboBox
            Left = 309
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            ParentBiDiMode = False
            TabOrder = 0
            Color = clWhite
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
            Left = 266
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
          object btnEditSection: TsBitBtn
            Left = 226
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
            TabOrder = 2
            ImageIndex = 7
            Images = actionsIcons
          end
          object gbxNewSection: TsGroupBox
            Left = 227
            Top = 40
            Width = 885
            Height = 193
            Anchors = [akTop, akRight]
            Caption = #1602#1587#1605
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              885
              193)
            object edtDesigniationSectionFr: TsEdit
              Left = 358
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Color = clWhite
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
              BoundLabel.Caption = 'Designiation'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtSectionFr: TsEdit
              Left = 614
              Top = 112
              Width = 250
              Height = 25
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Color = clWhite
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
              BoundLabel.Caption = 'Section'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Segoe UI'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclTopLeft
              BoundLabel.ParentFont = False
            end
            object edtSectionAr: TsEdit
              Left = 614
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
              Left = 358
              Top = 55
              Width = 250
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
              Width = 881
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 4
              DesignSize = (
                881
                38)
              object btnSaveSection: TsButton
                Left = 760
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
              object TsButton
                Left = 640
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1594#1575#1569
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
            end
          end
        end
        object panelChapiters: TsPanel
          Left = 1
          Top = 121
          Width = 1243
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 3
          DesignSize = (
            1243
            40)
          object btnEditChapitre: TsBitBtn
            Left = 226
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
            TabOrder = 0
            ImageIndex = 7
            Images = actionsIcons
          end
          object cbxChapitres: TsComboBox
            Left = 309
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            ParentBiDiMode = False
            TabOrder = 1
            Color = clWhite
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
            Left = 266
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
            TabOrder = 2
            OnClick = btnAddChapitreClick
            ImageIndex = 5
            Images = actionsIcons
          end
          object gbxNexChapitre: TsGroupBox
            Left = 225
            Top = 40
            Width = 885
            Height = 140
            Anchors = [akTop, akRight]
            Caption = #1576#1575#1576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              885
              140)
            object edtChapitre: TsEdit
              Left = 795
              Top = 55
              Width = 69
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
              Left = 358
              Top = 55
              Width = 430
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
              Width = 881
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 2
              DesignSize = (
                881
                38)
              object btnSaveChapiter: TsButton
                Left = 760
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
              object TsButton
                Left = 640
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1604#1594#1575#1569
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
            end
            object edtMontantChapiter: TsMaskEdit
              Left = 136
              Top = 56
              Width = 204
              Height = 28
              BiDiMode = bdLeftToRight
              DoubleBuffered = False
              MaxLength = 8
              ParentBiDiMode = False
              TabOrder = 3
              Color = clWhite
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
              EditMask = '#.###,##;1;_'
              Text = ' .   ,  '
            end
          end
        end
        object panelArticles: TsPanel
          Left = 1
          Top = 161
          Width = 1243
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 4
          DesignSize = (
            1243
            40)
          object cbxArticles: TsComboBox
            Left = 309
            Top = 5
            Width = 800
            Height = 28
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DoubleBuffered = False
            ParentBiDiMode = False
            TabOrder = 0
            Color = clWhite
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
            Left = 266
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
          object btnEditArticle: TsBitBtn
            Left = 226
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
            TabOrder = 2
            ImageIndex = 7
            Images = actionsIcons
          end
          object gbxNewArticle: TsGroupBox
            Left = 227
            Top = 40
            Width = 885
            Height = 193
            Anchors = [akTop, akRight]
            Caption = #1576#1575#1576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            Visible = False
            BoxStyle = bsStandard
            DesignSize = (
              885
              193)
            object edt: TsEdit
              Left = 795
              Top = 55
              Width = 69
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
            object sEdit2: TsEdit
              Left = 358
              Top = 55
              Width = 430
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
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
            object sPanel6: TsPanel
              Left = 2
              Top = 153
              Width = 881
              Height = 38
              Align = alBottom
              Alignment = taRightJustify
              BevelOuter = bvLowered
              DoubleBuffered = False
              TabOrder = 2
              DesignSize = (
                881
                38)
              object sButton2: TsButton
                Left = 760
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
                ImageAlignment = iaRight
                ImageIndex = 5
              end
              object TsButton
                Left = 640
                Top = 5
                Width = 112
                Height = 28
                Anchors = [akTop, akRight, akBottom]
                BiDiMode = bdRightToLeft
                Caption = #1575#1604#1594#1575#1569
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
            end
            object sMaskEdit2: TsMaskEdit
              Left = 656
              Top = 112
              Width = 204
              Height = 28
              BiDiMode = bdLeftToRight
              DoubleBuffered = False
              MaxLength = 8
              ParentBiDiMode = False
              TabOrder = 3
              Color = clWhite
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
              EditMask = '#.###,##;1;_'
              Text = ' .   ,  '
            end
            object sEdit5: TsEdit
              Left = 263
              Top = 55
              Width = 89
              Height = 28
              Anchors = [akTop, akRight]
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
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
            object sMaskEdit1: TsMaskEdit
              Left = 445
              Top = 112
              Width = 204
              Height = 28
              BiDiMode = bdLeftToRight
              DoubleBuffered = False
              Enabled = False
              MaxLength = 8
              ParentBiDiMode = False
              TabOrder = 5
              Color = clWhite
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
              EditMask = '#.###,##;1;_'
              Text = ' .   ,  '
            end
          end
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
      Caption = 'database'
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
end
