object fFichierEngagament: TfFichierEngagament
  Left = 93
  Top = 29
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'fFichierEngagament'
  ClientHeight = 587
  ClientWidth = 1145
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 1145
    Height = 587
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
      Width = 1143
      Height = 585
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
        1143
        585)
      object cbxTypeEngagaement: TsComboBox
        Left = 736
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
        Top = 525
        Width = 1139
        Height = 58
        Align = alBottom
        BevelOuter = bvLowered
        DoubleBuffered = False
        TabOrder = 1
        DesignSize = (
          1139
          58)
        object sBitBtn1: TsBitBtn
          Left = 1008
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
          Left = 880
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
        Width = 1113
        Height = 417
        Anchors = [akLeft, akTop, akRight]
        Caption = #1578#1601#1575#1589#1610#1604' '#1575#1604#1573#1604#1578#1586#1575#1605
        TabOrder = 2
        Visible = False
        DesignSize = (
          1113
          417)
        object sLabel5: TsLabel
          Left = 339
          Top = 28
          Width = 37
          Height = 21
          Anchors = [akTop, akRight]
          Caption = #1575#1604#1605#1576#1604#1594
        end
        object sEdit3: TsEdit
          Left = 386
          Top = 105
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
          Left = 386
          Top = 150
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
          Left = 386
          Top = 196
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
          Left = 386
          Top = 60
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
          Left = 939
          Top = 23
          Width = 175
          Height = 210
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 4
          object sLabel1: TsLabel
            Left = 16
            Top = 40
            Width = 146
            Height = 21
            Caption = #1573#1604#1578#1586#1575#1605' '#1601#1575#1578#1608#1585#1577' '#1588#1603#1604#1610#1577' '#1585#1602#1605
          end
          object sLabel2: TsLabel
            Left = 16
            Top = 85
            Width = 65
            Height = 21
            Caption = #1575#1604#1582#1575#1589#1577' '#1576
          end
          object sLabel3: TsLabel
            Left = 16
            Top = 130
            Width = 60
            Height = 21
            Caption = #1606#1608#1593' '#1575#1604#1583#1601#1593
          end
          object sLabel4: TsLabel
            Left = 16
            Top = 176
            Width = 77
            Height = 21
            Caption = #1585#1602#1605' '#1575#1604#1581#1587#1575#1576
          end
        end
        object sEdit9: TsEdit
          Left = 178
          Top = 105
          Width = 200
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 5
          Text = '0.00'
          OnExit = sEdit9Exit
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
        object sEdit8: TsEdit
          Left = 178
          Top = 150
          Width = 200
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 6
          Text = '0.00'
          OnExit = sEdit8Exit
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
        object sEdit7: TsEdit
          Left = 178
          Top = 196
          Width = 200
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 7
          Text = '0.00'
          OnExit = sEdit7Exit
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
        object sEdit10: TsEdit
          Left = 178
          Top = 60
          Width = 200
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 8
          Text = '0.00'
          OnExit = sEdit10Exit
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
        object sEdit11: TsEdit
          Left = 179
          Top = 284
          Width = 233
          Height = 29
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 9
          BoundLabel.Active = True
          BoundLabel.Indent = 5
          BoundLabel.Caption = #1575#1604#1585#1589#1610#1583
          BoundLabel.Layout = sclRight
        end
        object cbxChapiters: TsComboBox
          Left = 485
          Top = 244
          Width = 450
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 10
          OnChange = cbxChapitersChange
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1575#1604#1576#1575#1576
        end
        object cbxArticles: TsComboBox
          Left = 485
          Top = 284
          Width = 450
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 11
          OnChange = cbxArticlesChange
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1575#1604#1605#1575#1583#1577
        end
        object cbxTypeEmploye: TsComboBox
          Left = 635
          Top = 366
          Width = 298
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 12
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1589#1606#1601' '#1575#1604#1605#1587#1578#1582#1583#1605#1610#1606
        end
        object cbxBanques: TsComboBox
          Left = 635
          Top = 326
          Width = 300
          Height = 29
          Anchors = [akTop, akRight]
          DoubleBuffered = False
          TabOrder = 13
          BoundLabel.Active = True
          BoundLabel.Indent = 15
          BoundLabel.Caption = #1606#1608#1593' '#1575#1604#1583#1601#1593
        end
      end
    end
  end
end
