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
      Height = 25
      BoundLabel.Active = True
      BoundLabel.Caption = 'sColorBox1'
      BoundLabel.Layout = sclTopLeft
      SkinData.SkinSection = 'COMBOBOX'
      SkinData.OuterEffects.Visibility = ovAlways
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
      Selected = clCream
      PopupMode = pmPickColor
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
        Left = 15
        Top = 30
        Width = 100
        Height = 17
        Caption = 'pmColorList'
        TabOrder = 0
        OnClick = sRadioButton1Click
        AutoSize = False
      end
      object sRadioButton2: TsRadioButton
        Left = 15
        Top = 56
        Width = 100
        Height = 17
        Caption = 'pmPickColor'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = sRadioButton2Click
        AutoSize = False
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 184
      Top = 40
      Width = 157
      Height = 153
      Caption = 'TsTrackEdit'
      TabOrder = 2
      Images = MainForm.CharImageList16
      ImageIndex = 15
      object sCheckBox1: TsCheckBox
        Left = 27
        Top = 107
        Width = 77
        Height = 17
        Caption = 'AutoPopup'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = sCheckBox1Click
      end
      object sTrackEdit2: TsTrackEdit
        Left = 24
        Top = 68
        Width = 109
        Height = 21
        TabOrder = 1
        Text = '75,00'
        SkinData.OuterEffects.Visibility = ovAlways
        HideExcessZeros = False
        Increment = 0.250000000000000000
        MinValue = 50.000000000000000000
        Value = 75.000000000000000000
      end
      object sTrackEdit1: TsTrackEdit
        Left = 24
        Top = 32
        Width = 109
        Height = 21
        TabOrder = 2
        Text = '0'
        OnChange = sTrackEdit1Change
        AddedGlyph.ColorTone = 16744448
        AddedGlyph.Images = MainForm.CharImageList16
        AddedGlyph.ImageIndex = 2
        SkinData.OuterEffects.Visibility = ovAlways
        Increment = 1.000000000000000000
        MaxValue = 360.000000000000000000
        DecimalPlaces = 0
      end
    end
    object sGroupBox5: TsGroupBox
      Left = 363
      Top = 40
      Width = 202
      Height = 153
      Caption = 'TsSkinSelector'
      TabOrder = 3
      object sSkinSelector1: TsSkinSelector
        Tag = 23
        Left = 24
        Top = 32
        Width = 153
        Height = 22
        SkinData.SkinSection = 'COMBOBOX'
        SkinData.OuterEffects.Visibility = ovAlways
        TabOrder = 0
      end
      object sComboBox1: TsComboBox
        Left = 24
        Top = 80
        Width = 153
        Height = 21
        BoundLabel.Active = True
        BoundLabel.Caption = 'Thumbs size:'
        BoundLabel.Layout = sclTopLeft
        SkinData.SkinSection = 'COMBOBOX'
        SkinData.OuterEffects.Visibility = ovAlways
        Style = csDropDownList
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
        Left = 22
        Top = 112
        Width = 142
        Height = 17
        Caption = 'Show `Standard theme`'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = sCheckBox2Click
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
      Left = 219
      Top = 41
      Width = 160
      Height = 32
      SkinData.OuterEffects.Visibility = ovAlways
      Caption = 'Click for showing as popup'
      TabOrder = 0
      OnMouseDown = sPanel2MouseDown
    end
    object sButton1: TsButton
      Left = 385
      Top = 41
      Width = 175
      Height = 32
      Caption = 'Show as normal form'
      TabOrder = 1
      OnClick = sButton1Click
      SkinData.OuterEffects.Visibility = ovAlways
    end
    object sPopupBox1: TsPopupBox
      Left = 24
      Top = 41
      Width = 189
      Height = 32
      AutoSize = False
      TabOrder = 2
      Text = ''
      AddedGlyph.Images = MainForm.CharImageList16
      AddedGlyph.Blend = 25
      AddedGlyph.ImageIndex = 16
      CheckOnExit = True
      BoundLabel.Active = True
      BoundLabel.Caption = 'sPopupBox1'
      BoundLabel.Layout = sclTopLeft
      SkinData.OuterEffects.Visibility = ovAlways
      VerticalAlignment = taVerticalCenter
      GlyphMode.Images = MainForm.CharImageList16
      PopupForm = FormCustomPopup.Owner
      OnBeforePopup = sPopupBox1BeforePopup
    end
  end
  inherited sFrameAdapter1: TsFrameAdapter
    Left = 4
    Top = 4
  end
end
