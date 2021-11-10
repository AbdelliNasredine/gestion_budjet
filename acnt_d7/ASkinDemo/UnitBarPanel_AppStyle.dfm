object BarPanel_AppStyle: TBarPanel_AppStyle
  Left = 0
  Top = 0
  Width = 169
  Height = 287
  TabOrder = 0
  DesignSize = (
    169
    287)
  object sImage1: TsImage
    Left = 20
    Top = 256
    Width = 125
    Height = 24
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    Stretch = True
    Transparent = True
    ImageIndex = 0
    Images = MainForm.sAlphaImageList1
    SkinData.SkinSection = 'TRANSPARENT'
  end
  object spdBtn_Preview: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 88
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Preview skin'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_PreviewClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object spdBtn_Menus: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 148
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Menu'#39's options'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_MenusClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object spdBtn_CurrSkin: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 8
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Current skin'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_CurrSkinClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object spdBtn_Hints: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 128
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Alpha hints'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_HintsClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object sSpeedButton3: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 168
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Sys msg boxes'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = sSpeedButton3Click
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object sBitBtn1: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 208
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Test forms'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = sBitBtn1Click
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object sBitBtn3: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 188
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Dynamic frames'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = sBitBtn3Click
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object sSpeedButton6: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 228
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Standard VCL'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = sSpeedButton6Click
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object spdBtn_ScrollBars: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 48
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'ScrollBars'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_ScrollBarsClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object spdBtn_ImageLists: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 108
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Alpha image lists'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_ImageListsClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object spdBtn_OuterEffects: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 28
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Outer effects'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_OuterEffectsClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object spdBtn_PopupForms: TsSpeedButton
    Tag = 5
    Left = 16
    Top = 68
    Width = 126
    Height = 20
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    GroupIndex = 1
    Caption = 'Popup forms'
    Flat = True
    Margin = 2
    NumGlyphs = 2
    Spacing = 8
    OnClick = spdBtn_PopupFormsClick
    Alignment = taLeftJustify
    SkinData.SkinSection = 'WEBBUTTON'
    Images = MainForm.ImgList_Multi16
    TextAlignment = taLeftJustify
    ImageIndex = 0
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'BARPANEL'
    Left = 103
    Top = 10
  end
end
