inherited FrameTsLabels: TFrameTsLabels
  object sGroupBox1: TsGroupBox [0]
    Left = 52
    Top = 28
    Width = 617
    Height = 73
    Caption = 'TsWebLabel'
    TabOrder = 0
    BoxStyle = bsCard
    object sWebLabel1: TsWebLabel
      Left = 52
      Top = 33
      Width = 81
      Height = 16
      Caption = 'Label with link'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -13
      HoverFont.Name = 'Tahoma'
      HoverFont.Style = []
      URL = 'http://www.alphaskins.com'
    end
    object sEdit1: TsEdit
      Left = 200
      Top = 30
      Width = 397
      Height = 21
      TabOrder = 0
      Text = 'http://www.alphaskins.com'
      OnChange = sEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'URL:'
    end
  end
  object sGroupBox2: TsGroupBox [1]
    Left = 52
    Top = 128
    Width = 617
    Height = 201
    Caption = 'TsStickyLabel'
    TabOrder = 1
    BoxStyle = bsCard
    object sStickyLabel1: TsStickyLabel
      Left = 75
      Top = 73
      Width = 64
      Height = 13
      Caption = 'sStickyLabel1'
      Color = clYellow
      ParentColor = False
      AlignTo = altTop
      AttachTo = sDragBar1
    end
    object sTrackEdit1: TsTrackEdit
      Left = 539
      Top = 30
      Width = 60
      Height = 21
      TabOrder = 1
      Text = '2'
      OnChange = sTrackEdit1Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Gap:'
      Increment = 1.000000000000000000
      MaxValue = 10.000000000000000000
      Value = 2.000000000000000000
    end
    object sRadioGroup1: TsRadioGroup
      Left = 320
      Top = 60
      Width = 279
      Height = 121
      Caption = 'TAlignTo'
      TabOrder = 2
      ImageIndex = 1
      Columns = 2
      ItemIndex = 1
      ContentVOffset = 6
      ContentHOffset = 22
      Items.Strings = (
        'altLeft'
        'altTop'
        'altBottom'
        'altRight'
        'altTopCenter'
        'altBottomCenter')
      OnChange = sRadioGroup1Change
    end
    object sDragBar1: TsDragBar
      Left = 75
      Top = 88
      Width = 185
      Height = 33
      Cursor = crHandPoint
      SkinData.SkinSection = 'DRAGBAR'
      Align = alNone
      BevelOuter = bvNone
      Caption = 'Drag the bar'
      ParentBackground = False
      TabOrder = 0
      DraggedControl = sDragBar1
    end
  end
  object sGroupBox3: TsGroupBox [2]
    Left = 52
    Top = 356
    Width = 617
    Height = 81
    Caption = 'TsImgLabel'
    TabOrder = 2
    BoxStyle = bsCard
    object sImgLabel1: TsImgLabel
      Left = 84
      Top = 36
      Width = 76
      Height = 18
      Caption = 'sImgLabel1'
      Layout = tlCenter
      ImageIndex = 5
      Images = FormData.CharList16
    end
    object sCheckBox1: TsCheckBox
      Left = 392
      Top = 39
      Width = 81
      Height = 17
      Caption = 'Show glyph'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = sCheckBox1Click
    end
    object sTrackEdit2: TsTrackEdit
      Left = 320
      Top = 36
      Width = 48
      Height = 21
      TabOrder = 1
      Text = '4'
      OnChange = sTrackEdit2Change
      BoundLabel.Active = True
      BoundLabel.Caption = 'Spacing:'
      Increment = 1.000000000000000000
      MaxValue = 24.000000000000000000
      Value = 4.000000000000000000
    end
  end
end
