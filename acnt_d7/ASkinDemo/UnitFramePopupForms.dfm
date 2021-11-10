inherited Frame_PopupForms: TFrame_PopupForms
  Width = 658
  object sGroupBox1: TsGroupBox [0]
    Left = 16
    Top = 127
    Width = 593
    Height = 218
    Caption = 'Popup controls:'
    TabOrder = 0
    object sColorBox1: TsColorBox
      Left = 32
      Top = 48
      Width = 129
      Height = 22
      BoundLabel.Active = True
      BoundLabel.Caption = 'sColorBox1'
      BoundLabel.Layout = sclTopLeft
      Selected = clCream
      PopupMode = pmPickColor
      DropDownCount = 8
      ItemHeight = 16
      TabOrder = 0
    end
    object sGroupBox2: TsGroupBox
      Left = 32
      Top = 96
      Width = 129
      Height = 97
      Caption = 'Popup mode'
      TabOrder = 1
      object sRadioButton1: TsRadioButton
        Left = 16
        Top = 24
        Width = 75
        Height = 20
        Caption = 'pmColorList'
        TabOrder = 0
        OnClick = sRadioButton1Click
      end
      object sRadioButton2: TsRadioButton
        Left = 16
        Top = 50
        Width = 77
        Height = 20
        Caption = 'pmPickColor'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = sRadioButton2Click
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 184
      Top = 40
      Width = 169
      Height = 153
      Caption = 'TsTrackEdit'
      TabOrder = 2
      object sCheckBox1: TsCheckBox
        Left = 27
        Top = 107
        Width = 73
        Height = 20
        Caption = 'AutoPopup'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox1Click
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object sTrackEdit2: TsTrackEdit
        Left = 24
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '75,00'
        HideExcessZeros = False
        Increment = 0.250000000000000000
        MaxValue = 100.000000000000000000
        MinValue = 50.000000000000000000
        Value = 75.000000000000000000
      end
      object sTrackEdit1: TsTrackEdit
        Left = 24
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '0'
        Increment = 1.000000000000000000
        MaxValue = 50.000000000000000000
        DecimalPlaces = 0
      end
    end
    object sGroupBox5: TsGroupBox
      Left = 375
      Top = 40
      Width = 185
      Height = 153
      Caption = 'TsSkinSelector'
      TabOrder = 3
      object sSkinSelector1: TsSkinSelector
        Tag = 23
        Left = 24
        Top = 32
        Width = 139
        Height = 22
        ItemHeight = 16
        TabOrder = 0
      end
      object sComboBox1: TsComboBox
        Left = 24
        Top = 80
        Width = 139
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'Thumbs size:'
        BoundLabel.Layout = sclTopLeft
        VerticalAlignment = taAlignTop
        Style = csDropDownList
        ItemHeight = 15
        ItemIndex = 2
        TabOrder = 1
        Text = 'Big'
        OnChange = sComboBox1Change
        Items.Strings = (
          'Small'
          'Medium'
          'Big')
      end
      object sCheckBox2: TsCheckBox
        Left = 24
        Top = 111
        Width = 138
        Height = 20
        Caption = 'Show `Standard theme`'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = sCheckBox2Click
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
  end
  object sGroupBox4: TsGroupBox [1]
    Left = 16
    Top = 16
    Width = 593
    Height = 97
    Caption = 'Showing of custom form:'
    TabOrder = 1
    object sPanel2: TsPanel
      Left = 227
      Top = 41
      Width = 152
      Height = 25
      Caption = 'Click for showing as popup'
      TabOrder = 0
      OnMouseDown = sPanel2MouseDown
    end
    object sButton1: TsButton
      Left = 408
      Top = 41
      Width = 152
      Height = 25
      Caption = 'Show as normal form'
      TabOrder = 1
      OnClick = sButton1Click
    end
    object sPopupBox1: TsPopupBox
      Left = 24
      Top = 41
      Width = 177
      Height = 21
      AutoSize = False
      TabOrder = 2
      CheckOnExit = True
      BoundLabel.Active = True
      BoundLabel.Caption = 'sPopupBox1'
      BoundLabel.Layout = sclTopLeft
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      PopupForm = FormCustomPopup.Owner
      OnBeforePopup = sPopupBox1BeforePopup
    end
  end
end
