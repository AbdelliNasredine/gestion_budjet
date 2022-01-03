object fFichierEngagament: TfFichierEngagament
  Left = -1318
  Top = 180
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = #1573#1590#1575#1601#1577' '#1576#1591#1575#1602#1577' '#1573#1604#1578#1586#1575#1605
  ClientHeight = 603
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 603
    Align = alClient
    BiDiMode = bdRightToLeft
    Caption = #1576#1591#1575#1602#1577' '#1575#1604#1578#1586#1575#1605
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
      Width = 978
      Height = 601
      Align = alClient
      Caption = #1605#1593#1604#1608#1605#1575#1578' '#1576#1591#1575#1602#1577' '#1575#1604#1575#1604#1578#1586#1575#1605
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        978
        601)
      object cbxTypeEngagaement: TsComboBox
        Left = 571
        Top = 56
        Width = 392
        Height = 29
        Anchors = [akTop, akRight]
        DoubleBuffered = False
        TabOrder = 0
        OnChange = cbxTypeEngagaementChange
        BoundLabel.Active = True
        BoundLabel.Indent = 5
        BoundLabel.Caption = #1606#1608#1593' '#1575#1604#1573#1604#1578#1586#1575#1605
        BoundLabel.Layout = sclTopLeft
      end
      object sPanel8: TsPanel
        Left = 2
        Top = 541
        Width = 974
        Height = 58
        Align = alBottom
        BevelOuter = bvLowered
        DoubleBuffered = False
        TabOrder = 1
        DesignSize = (
          974
          58)
        object sBitBtn1: TsBitBtn
          Left = 843
          Top = 12
          Width = 120
          Height = 35
          Anchors = [akTop, akRight]
          Caption = #1578#1571#1603#1610#1583
          TabOrder = 0
          OnClick = sBitBtn1Click
          ImageIndex = 4
          Images = MainForm.actionsIcons
        end
        object sBitBtn2: TsBitBtn
          Left = 715
          Top = 12
          Width = 120
          Height = 35
          Anchors = [akTop, akRight]
          Caption = #1575#1604#1594#1575#1569
          TabOrder = 1
          OnClick = sBitBtn2Click
          ImageIndex = 1
          Images = MainForm.actionsIcons
        end
      end
      object sGroupBox2: TsGroupBox
        Left = 16
        Top = 96
        Width = 948
        Height = 441
        Anchors = [akLeft, akTop, akRight]
        Caption = #1578#1601#1575#1589#1610#1604' '#1575#1604#1573#1604#1578#1586#1575#1605
        TabOrder = 2
        Visible = False
        DesignSize = (
          948
          441)
        object sLabel5: TsLabel
          Left = 174
          Top = 52
          Width = 37
          Height = 21
          Anchors = [akTop, akRight]
          Caption = #1575#1604#1605#1576#1604#1594
        end
        object sEdit3: TsEdit
          Left = 221
          Top = 129
          Width = 550
          Height = 29
          Anchors = [akTop, akRight]
          TabOrder = 0
          BoundLabel.Indent = 5
          BoundLabel.Caption = 'sEdit3'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclTopLeft
          BoundLabel.ParentFont = False
        end
        object sEdit4: TsEdit
          Left = 221
          Top = 174
          Width = 550
          Height = 29
          Anchors = [akTop, akRight]
          TabOrder = 1
          BoundLabel.Indent = 5
          BoundLabel.Caption = 'sEdit4'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclTopLeft
          BoundLabel.ParentFont = False
        end
        object sEdit5: TsEdit
          Left = 221
          Top = 220
          Width = 550
          Height = 29
          Anchors = [akTop, akRight]
          TabOrder = 2
          BoundLabel.Indent = 5
          BoundLabel.Caption = 'sEdit5'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclTopLeft
          BoundLabel.ParentFont = False
        end
        object sEdit6: TsEdit
          Left = 221
          Top = 84
          Width = 550
          Height = 29
          Anchors = [akTop, akRight]
          TabOrder = 3
          BoundLabel.Indent = 5
          BoundLabel.Caption = 'sEdit6'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Segoe UI'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclTopLeft
          BoundLabel.ParentFont = False
        end
        object sPanel2: TsPanel
          Left = 774
          Top = 80
          Width = 175
          Height = 169
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 4
          object sLabel1: TsLabel
            Left = 16
            Top = 8
            Width = 146
            Height = 21
            Caption = #1573#1604#1578#1586#1575#1605' '#1601#1575#1578#1608#1585#1577' '#1588#1603#1604#1610#1577' '#1585#1602#1605
          end
          object sLabel2: TsLabel
            Left = 16
            Top = 53
            Width = 65
            Height = 21
            Caption = #1575#1604#1582#1575#1589#1577' '#1576
          end
          object sLabel3: TsLabel
            Left = 16
            Top = 98
            Width = 60
            Height = 21
            Caption = #1606#1608#1593' '#1575#1604#1583#1601#1593
          end
          object sLabel4: TsLabel
            Left = 16
            Top = 144
            Width = 77
            Height = 21
            Caption = #1585#1602#1605' '#1575#1604#1581#1587#1575#1576
          end
        end
        object cbxChapiters: TsComboBox
          Left = 320
          Top = 268
          Width = 450
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 5
          OnChange = cbxChapitersChange
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1575#1604#1576#1575#1576
        end
        object cbxArticles: TsComboBox
          Left = 320
          Top = 308
          Width = 450
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 6
          OnChange = cbxArticlesChange
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1575#1604#1605#1575#1583#1577
        end
        object cbxTypeEmploye: TsComboBox
          Left = 470
          Top = 390
          Width = 298
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 7
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1589#1606#1601' '#1575#1604#1605#1587#1578#1582#1583#1605#1610#1606
        end
        object cbxBanques: TsComboBox
          Left = 470
          Top = 350
          Width = 300
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 8
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1606#1608#1593' '#1575#1604#1583#1601#1593
        end
        object date: TsDateEdit
          Left = 646
          Top = 40
          Width = 126
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          MaxLength = 10
          ParentBiDiMode = False
          TabOrder = 9
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1575#1604#1578#1575#1585#1610#1582
          BoundLabel.Layout = sclRight
          DefaultToday = True
        end
        object m1: TsCurrencyEdit
          Left = 34
          Top = 84
          Width = 180
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          ParentBiDiMode = False
          TabOrder = 10
          Alignment = taLeftJustify
        end
        object m2: TsCurrencyEdit
          Left = 34
          Top = 129
          Width = 180
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          ParentBiDiMode = False
          TabOrder = 11
          Alignment = taLeftJustify
        end
        object m3: TsCurrencyEdit
          Left = 34
          Top = 174
          Width = 180
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          ParentBiDiMode = False
          TabOrder = 12
          Alignment = taLeftJustify
        end
        object m4: TsCurrencyEdit
          Left = 34
          Top = 220
          Width = 180
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          ParentBiDiMode = False
          TabOrder = 13
          Alignment = taLeftJustify
        end
        object solde: TsCurrencyEdit
          Left = 34
          Top = 308
          Width = 204
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          ParentBiDiMode = False
          TabOrder = 14
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1575#1604#1585#1589#1610#1583
          BoundLabel.Layout = sclRight
          Alignment = taLeftJustify
        end
      end
      object code: TsEdit
        Left = 0
        Top = 16
        Width = 121
        Height = 29
        TabOrder = 3
        Visible = False
      end
    end
  end
end
