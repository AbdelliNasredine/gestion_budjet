inherited Frame_EditAdd: TFrame_EditAdd
  object sColorBox1: TsColorBox [0]
    Tag = 5
    Left = 110
    Top = 39
    Width = 160
    Height = 22
    BoundLabel.Active = True
    BoundLabel.Caption = 'sColorBox1'
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
    Selected = clRed
    PopupMode = pmPickColor
    DropDownCount = 8
    ItemHeight = 16
    TabOrder = 2
  end
  object sCheckBox1: TsCheckBox [1]
    Left = 512
    Top = 270
    Width = 105
    Height = 20
    Caption = 'AutoHideScroll'
    AutoSize = False
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = sCheckBox1Click
    Margin = 4
    ImgChecked = 0
    ImgUnchecked = 0
    ShowFocus = False
  end
  object sTreeViewEx1: TsTreeViewEx [2]
    Left = 110
    Top = 170
    Width = 160
    Height = 119
    Indent = 19
    TabOrder = 10
    BoundLabel.Active = True
    BoundLabel.Caption = 'sTreeViewEx1'
    BoundLabel.Layout = sclLeftTop
    SkinData.SkinSection = 'ALPHAEDIT'
  end
  object sCheckListBox1: TsCheckListBox [3]
    Tag = 5
    Left = 302
    Top = 39
    Width = 170
    Height = 226
    BorderStyle = bsSingle
    Columns = 2
    ItemHeight = 16
    Items.Strings = (
      'Item0'
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6'
      'Item7'
      'Item8'
      'Item9'
      'Item10'
      'Item11'
      'Item12'
      'Item13'
      'Item14'
      'Item15'
      'Item16'
      'Item17'
      'Item18'
      'Item19'
      'Item20'
      'Item21'
      'Item22'
      'Item23'
      'Item24'
      'Item25'
      'Item26'
      'Item27'
      'Item28'
      'Item29'
      'Item30'
      'Item31'
      'Item32'
      'Item33'
      'Item34'
      'Item35'
      'Item36'
      'Item37'
      'Item38'
      'Item39'
      'Item30')
    TabOrder = 0
    BoundLabel.Active = True
    BoundLabel.Caption = 'sCheckListBox1'
    BoundLabel.Layout = sclTopLeft
    SkinData.SkinSection = 'ALPHAEDIT'
  end
  object sComboBoxEx1: TsComboBoxEx [4]
    Tag = 5
    Left = 110
    Top = 103
    Width = 160
    Height = 22
    BoundLabel.Active = True
    BoundLabel.Caption = 'sComboBoxEx1'
    ItemsEx = <
      item
        Caption = 'First item'
        ImageIndex = 0
        SelectedImageIndex = 0
      end
      item
        Caption = 'Second item'
        ImageIndex = 1
        Indent = 1
        SelectedImageIndex = 1
      end
      item
        Caption = 'Third item'
        ImageIndex = 2
        Indent = 2
        SelectedImageIndex = 2
      end>
    Style = csExDropDownList
    ItemIndex = 1
    ItemHeight = 16
    TabOrder = 3
    Images = MainForm.ImageList16
    DropDownCount = 180
  end
  object sColorBox2: TsColorBox [5]
    Tag = 5
    Left = 110
    Top = 71
    Width = 160
    Height = 22
    BoundLabel.Active = True
    BoundLabel.Caption = 'sColorBox2'
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor]
    Selected = clRed
    DropDownCount = 8
    ItemHeight = 16
    TabOrder = 9
  end
  object sCheckBox2: TsCheckBox [6]
    Left = 310
    Top = 270
    Width = 70
    Height = 20
    Caption = 'Multiselect'
    TabOrder = 7
    OnClick = sCheckBox2Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sListBox1: TsListBox [7]
    Tag = 5
    Left = 502
    Top = 39
    Width = 160
    Height = 226
    ItemHeight = 16
    Items.Strings = (
      'Item 00'
      'Item 01'
      'Item 02'
      'Item 03'
      'Item 04'
      'Item 05'
      'Item 06'
      'Item 07'
      'Item 08'
      'Item 09'
      'Item 0A'
      'Item 0B'
      'Item 0C'
      'Item 0D'
      'Item 0E'
      'Item 0F'
      'Item 10'
      'Item 11'
      'Item 12'
      'Item 13'
      'Item 14'
      'Item 15'
      'Item 16'
      'Item 17'
      'Item 18'
      'Item 19'
      'Item 1A'
      'Item 1B'
      'Item 1C'
      'Item 1D'
      'Item 1E'
      'Item 1F')
    TabOrder = 1
    BoundLabel.Active = True
    BoundLabel.Caption = 'sListBox1'
    BoundLabel.Layout = sclTopLeft
    SkinData.SkinSection = 'ALPHAEDIT'
  end
  object sCheckBox3: TsCheckBox [8]
    Left = 388
    Top = 270
    Width = 82
    Height = 20
    Caption = 'Disable items'
    TabOrder = 8
    OnClick = sCheckBox3Click
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sComboBox1: TsComboBox [9]
    Left = 318
    Top = 337
    Width = 170
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'SkinSection property: '
    VerticalAlignment = taAlignTop
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = -1
    TabOrder = 4
    OnChange = sComboBox1Change
    Items.Strings = (
      'TRANSPARENT'
      'GROUPBOX'
      'PANEL'
      'PANEL_LOW'
      'EDIT'
      'ALPHAEDIT'
      'ALPHACOMBOBOX'
      'HINT'
      'BAR'
      'MAINMENU')
  end
  object sFilterComboBox1: TsFilterComboBox [10]
    Tag = 5
    Left = 110
    Top = 137
    Width = 160
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Active = True
    BoundLabel.Caption = 'sFilterComboBox1'
    VerticalAlignment = taAlignTop
    TabOrder = 6
  end
end