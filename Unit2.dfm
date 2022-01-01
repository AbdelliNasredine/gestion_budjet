object Form2: TForm2
  Left = 163
  Top = 44
  Width = 1226
  Height = 663
  HorzScrollBar.Position = 151
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Tag = 1
    Left = -151
    Top = 136
    Width = 1344
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      3556.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = First
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1268
      Height = 915
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2420.937500000000000000
        3354.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape16: TQRShape
        Left = 680
        Top = 536
        Width = 569
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          1799.166666666667000000
          1418.166666666667000000
          1505.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 680
        Top = 592
        Width = 569
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1799.166666666667000000
          1566.333333333333000000
          1505.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRMemo2: TQRMemo
        Left = 141
        Top = 16
        Width = 205
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333300000
          373.062500000000000000
          42.333333333333330000
          542.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          #1605#1610#1586#1575#1606#1610#1600#1600#1600#1600#1600#1577' '#1575#1604#1583#1608#1604#1600#1600#1600#1600#1600#1600#1577
          '* '#1576#1591#1575#1602#1577' '#1575#1604#1578#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1586#1575#1605' *')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
      object QRLabel1: TQRLabel
        Left = 464
        Top = 104
        Width = 120
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1227.666666666667000000
          275.166666666666700000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1589#1606#1601' '#1575#1604#1605#1587#1578#1582#1583#1605#1610#1606' :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel2: TQRLabel
        Left = 517
        Top = 136
        Width = 67
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1367.895833333333000000
          359.833333333333300000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1606#1608#1593' '#1575#1604#1583#1601#1593' :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText1: TQRDBText
        Left = 332
        Top = 104
        Width = 125
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          878.416666666666700000
          275.166666666666700000
          330.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'designation_ar'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText2: TQRDBText
        Left = 366
        Top = 136
        Width = 147
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          968.375000000000000000
          359.833333333333300000
          388.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'designation_ar_1'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 543
        Top = 168
        Width = 41
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1436.687500000000000000
          444.500000000000000000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1587#1606#1577' :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel4: TQRLabel
        Left = 516
        Top = 200
        Width = 68
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1365.250000000000000000
          529.166666666666700000
          179.916666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1603#1588#1601' '#1585#1602#1605' :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText3: TQRDBText
        Left = 460
        Top = 168
        Width = 77
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1217.083333333333000000
          444.500000000000000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'annee_E'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText4: TQRDBText
        Left = 433
        Top = 200
        Width = 80
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1145.645833333333000000
          529.166666666666700000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'code_FE'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel5: TQRLabel
        Left = 346
        Top = 168
        Width = 46
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          915.458333333333300000
          444.500000000000000000
          121.708333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1608#1586#1575#1585#1577' :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText5: TQRDBText
        Left = 267
        Top = 168
        Width = 70
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          706.437500000000000000
          444.500000000000000000
          185.208333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = entreprise
        DataField = 'code_M'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel6: TQRLabel
        Left = 337
        Top = 200
        Width = 55
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          891.645833333333300000
          529.166666666666700000
          145.520833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1605#1589#1604#1581#1577' :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText6: TQRDBText
        Left = 241
        Top = 200
        Width = 88
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          637.645833333333300000
          529.166666666666700000
          232.833333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = entreprise
        DataField = 'service_M'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel7: TQRLabel
        Left = 28
        Top = 168
        Width = 156
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          74.083333333333330000
          444.500000000000000000
          412.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1585#1602#1605' : ........................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel8: TQRLabel
        Left = 19
        Top = 200
        Width = 165
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          50.270833333333330000
          529.166666666666700000
          436.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1605#1572#1585#1582' '#1601#1610' : .................'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape1: TQRShape
        Left = 512
        Top = 264
        Width = 105
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1354.666666666667000000
          698.500000000000000000
          277.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 440
        Top = 264
        Width = 73
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1164.166666666667000000
          698.500000000000000000
          193.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 296
        Top = 264
        Width = 145
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          783.166666666666800000
          698.500000000000000000
          383.645833333333400000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 152
        Top = 264
        Width = 145
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          402.166666666666600000
          698.500000000000000000
          383.645833333333400000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 8
        Top = 264
        Width = 145
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          21.166666666666670000
          698.500000000000000000
          383.645833333333400000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 512
        Top = 312
        Width = 105
        Height = 329
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          870.479166666666800000
          1354.666666666667000000
          825.500000000000100000
          277.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 440
        Top = 312
        Width = 73
        Height = 329
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          870.479166666666800000
          1164.166666666667000000
          825.500000000000100000
          193.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 296
        Top = 312
        Width = 145
        Height = 329
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          870.479166666666800000
          783.166666666666800000
          825.500000000000100000
          383.645833333333400000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 152
        Top = 312
        Width = 145
        Height = 329
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          870.479166666666800000
          402.166666666666600000
          825.500000000000100000
          383.645833333333400000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 8
        Top = 312
        Width = 145
        Height = 329
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          870.479166666666800000
          21.166666666666670000
          825.500000000000100000
          383.645833333333400000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 578
        Top = 272
        Width = 30
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1529.291666666667000000
          719.666666666666700000
          79.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1576#1575#1576
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel10: TQRLabel
        Left = 469
        Top = 272
        Width = 35
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1240.895833333333000000
          719.666666666666700000
          92.604166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1605#1575#1583#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel11: TQRLabel
        Left = 350
        Top = 272
        Width = 82
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          926.041666666666700000
          719.666666666666700000
          216.958333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1585#1589#1610#1583' '#1575#1604#1602#1583#1610#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel12: TQRLabel
        Left = 197
        Top = 272
        Width = 91
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          521.229166666666700000
          719.666666666666700000
          240.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1605#1580#1605#1608#1593' '#1575#1604#1593#1605#1604#1610#1577
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel13: TQRLabel
        Left = 58
        Top = 272
        Width = 86
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          153.458333333333300000
          719.666666666666700000
          227.541666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1585#1589#1610#1583' '#1575#1604#1580#1583#1610#1583
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText7: TQRDBText
        Left = 520
        Top = 368
        Width = 89
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1375.833333333333000000
          973.666666666666900000
          235.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'chapitre'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText8: TQRDBText
        Left = 448
        Top = 368
        Width = 57
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1185.333333333333000000
          973.666666666666900000
          150.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'article'
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRExpr1: TQRExpr
        Left = 304
        Top = 368
        Width = 128
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          804.333333333333200000
          973.666666666666900000
          338.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'FORMATNUMERIC('#39'# ### ###.00'#39', ADOQuery1.compte_anc)'
        FontSize = 14
      end
      object QRExpr3: TQRExpr
        Left = 16
        Top = 368
        Width = 128
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          42.333333333333340000
          973.666666666666900000
          338.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'FORMATNUMERIC('#39'# ### ###.00'#39',ADOQuery1.compte_anc-ADOQuery1.mont' +
          'ant_e1-ADOQuery1.montant_e2-ADOQuery1.montant_e3-ADOQuery1.monta' +
          'nt_e4)'
        FontSize = 14
      end
      object QRLabel14: TQRLabel
        Left = 253
        Top = 656
        Width = 139
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          669.395833333333300000
          1735.666666666667000000
          367.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1605#1604#1575#1581#1592#1575#1578' '#1575#1604#1605#1589#1604#1581#1600#1600#1600#1600#1600#1600#1577
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel16: TQRLabel
        Left = 188
        Top = 832
        Width = 52
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          497.416666666666700000
          2201.333333333333000000
          137.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1605#1583#1610#1600#1600#1600#1600#1585
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape11: TQRShape
        Left = 680
        Top = 264
        Width = 569
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1799.166666666667000000
          698.500000000000000000
          1505.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 680
        Top = 312
        Width = 569
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          1799.166666666667000000
          825.500000000000100000
          1505.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 680
        Top = 368
        Width = 569
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          1799.166666666667000000
          973.666666666666900000
          1505.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 680
        Top = 424
        Width = 569
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          1799.166666666667000000
          1121.833333333333000000
          1505.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 680
        Top = 480
        Width = 569
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          1799.166666666667000000
          1270.000000000000000000
          1505.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 968
        Top = 272
        Width = 128
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          2561.166666666667000000
          719.666666666666700000
          338.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1606#1608#1593#1610#1600#1600#1600#1600#1577' '#1575#1604#1575#1604#1578#1600#1600#1600#1600#1600#1600#1600#1586#1575#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel18: TQRLabel
        Left = 710
        Top = 272
        Width = 66
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1878.541666666667000000
          719.666666666666700000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1605#1580#1605#1600#1600#1600#1608#1593
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel19: TQRLabel
        Left = 822
        Top = 600
        Width = 66
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          2174.875000000000000000
          1587.500000000000000000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1605#1580#1605#1600#1600#1600#1608#1593
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel20: TQRLabel
        Left = 1111
        Top = 656
        Width = 121
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          2939.520833333333000000
          1735.666666666667000000
          320.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1575#1604#1605#1580#1605#1608#1593' '#1576#1575#1604#1571#1581#1585#1601' :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRMemo3: TQRMemo
        Left = 770
        Top = 48
        Width = 355
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          2037.291666666667000000
          127.000000000000000000
          939.270833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          #1578#1601#1589#1610#1604' '#1575#1604#1575#1604#1578#1586#1575#1605#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578)
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 36
      end
      object QRExpr4: TQRExpr
        Left = 688
        Top = 328
        Width = 112
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1820.333333333333000000
          867.833333333333500000
          296.333333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'IF(ADOQuery1.montant_e1>0, FORMATNUMERIC('#39'# ### ##0.00'#39',ADOQuery' +
          '1.montant_e1),'#39' '#39')'
        FontSize = 14
      end
      object QRExpr5: TQRExpr
        Left = 688
        Top = 384
        Width = 112
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1820.333333333333000000
          1016.000000000000000000
          296.333333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'IF(ADOQuery1.montant_e2>0, FORMATNUMERIC('#39'# ### ##0.00'#39',ADOQuery' +
          '1.montant_e2),'#39' '#39')'
        FontSize = 14
      end
      object QRExpr8: TQRExpr
        Left = 720
        Top = 552
        Width = 80
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1905.000000000000000000
          1460.500000000000000000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRExpr9: TQRExpr
        Left = 683
        Top = 600
        Width = 126
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1807.104166666667000000
          1587.500000000000000000
          333.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'FORMATNUMERIC('#39'# ### ###.00'#39',ADOQuery1.montant_e1+ADOQuery1.mont' +
          'ant_e2+ADOQuery1.montant_e3+ADOQuery1.montant_e4)'
        FontSize = 14
      end
      object QRExpr10: TQRExpr
        Left = 8
        Top = 688
        Width = 587
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          21.166666666666670000
          1820.333333333333000000
          1553.104166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39#1575#1604#1576#1575#1576' '#39'+ADOQuery1.chapitre+'#39' : '#39'+ADOQuery1.designation_ar_3'
        FontSize = 14
      end
      object QRExpr11: TQRExpr
        Left = 8
        Top = 744
        Width = 587
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          21.166666666666670000
          1968.500000000000000000
          1553.104166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39#1575#1604#1605#1575#1583#1577' '#39'+ADOQuery1.article+'#39' : '#39'+ADOQuery1.designation_ar_2'
        FontSize = 14
      end
      object QRExpr12: TQRExpr
        Left = 824
        Top = 316
        Width = 419
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          2180.166666666667000000
          836.083333333333400000
          1108.604166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'ADOQuery1.e1'
        FontSize = 14
      end
      object QRExpr13: TQRExpr
        Left = 824
        Top = 372
        Width = 419
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          2180.166666666667000000
          984.249999999999900000
          1108.604166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'ADOQuery1.e2'
        FontSize = 14
      end
      object QRExpr14: TQRExpr
        Left = 824
        Top = 428
        Width = 419
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          2180.166666666667000000
          1132.416666666667000000
          1108.604166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'ADOQuery1.e3'
        FontSize = 14
      end
      object QRExpr15: TQRExpr
        Left = 824
        Top = 484
        Width = 419
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          2180.166666666667000000
          1280.583333333333000000
          1108.604166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'ADOQuery1.e4'
        FontSize = 14
      end
      object QRExpr16: TQRExpr
        Left = 824
        Top = 540
        Width = 419
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          2180.166666666667000000
          1428.750000000000000000
          1108.604166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRExpr6: TQRExpr
        Left = 688
        Top = 440
        Width = 112
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1820.333333333333000000
          1164.166666666667000000
          296.333333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'IF(ADOQuery1.montant_e3>0, FORMATNUMERIC('#39'# ### ###.00'#39',ADOQuery' +
          '1.montant_e3),'#39' '#39')'
        FontSize = 14
      end
      object QRExpr7: TQRExpr
        Left = 688
        Top = 496
        Width = 112
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1820.333333333333000000
          1312.333333333333000000
          296.333333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'IF(ADOQuery1.montant_e4>0, FORMATNUMERIC('#39'# ### ###.00'#39',ADOQuery' +
          '1.montant_e4),'#39' '#39')'
        FontSize = 14
      end
      object QRExpr17: TQRExpr
        Left = 424
        Top = 16
        Width = 195
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1121.833333333333000000
          42.333333333333340000
          515.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'entreprise.wilaya_AR'
        FontSize = 14
      end
      object QRExpr18: TQRExpr
        Left = 424
        Top = 40
        Width = 195
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1121.833333333333000000
          105.833333333333300000
          515.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'entreprise.nomination_AR'
        FontSize = 14
      end
      object QRLabel15: TQRLabel
        Left = 256
        Top = 800
        Width = 60
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          677.333333333333300000
          2116.666666666667000000
          158.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = #1576#1588#1575#1585' '#1601#1610' :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRExpr19: TQRExpr
        Left = 688
        Top = 656
        Width = 416
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          1820.333333333333000000
          1735.666666666667000000
          1100.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'ADOQuery1.nombre_en_chiffre+'#39' '#1583#1610#1606#1575#1585' '#1608' '#39'+ADOQuery1.dec+'#39' '#1587#1606#1578#1610#1605#39
        FontSize = 14
      end
      object QRExpr20: TQRExpr
        Left = -660
        Top = 800
        Width = 911
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          -1746.250000000000000000
          2116.666666666667000000
          2410.354166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'COPY(ADOQuery1.date_FE,1,4)+'#39'/'#39'+COPY(ADOQuery1.date_FE,6,2)+'#39'/'#39'+' +
          'COPY(ADOQuery1.date_FE,9,2)'
        FontSize = 14
      end
      object QRExpr2: TQRExpr
        Left = 163
        Top = 368
        Width = 126
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          431.270833333333400000
          973.666666666666900000
          333.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'FORMATNUMERIC('#39'# ### ###.00'#39',ADOQuery1.montant_e1+ADOQuery1.mont' +
          'ant_e2+ADOQuery1.montant_e3+ADOQuery1.montant_e4)'
        FontSize = 14
      end
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budget;Data Source=ser' +
      'ver2'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  *,'
      
        '  a.montant - (select sum(montant_e1+montant_e2+montant_e3+monta' +
        'nt_e4) from fiche_engagement where code_a=e.code_a) + (montant_e' +
        '1+montant_e2+montant_e3+montant_e4) as compte_anc,'
      
        '  dbo.nombre_en_chiffre_ar(floor(montant_e1+montant_e2+montant_e' +
        '3+montant_e4)) as nombre_en_chiffre, round((montant_e1+montant_e' +
        '2+montant_e3+montant_e4)-floor(montant_e1+montant_e2+montant_e3+' +
        'montant_e4),2,1)*100 as dec from fiche_engagement e, typemploye ' +
        'emp, banques b, articles a, chapitres ch'
      'where e.code_temp=emp.code_temp'
      'and e.code_banq=b.code_banq'
      'and e.code_a=a.code_a'
      'and ch.code_ch=substring(a.code_a,1,8);')
    Left = 8
    Top = 8
  end
  object entreprise: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budget;Data Source=ser' +
      'ver2'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from entreprise')
    Left = 8
    Top = 40
  end
end
