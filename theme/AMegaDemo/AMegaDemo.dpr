program AMegaDemo;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {MainForm},
  UnitDataModule in 'UnitDataModule.pas' {FormData: TDataModule},
  UnitBaseMenu in 'UnitBaseMenu.pas' {FrameBaseMenu: TFrame},
  UnitTsPageControl in 'UnitTsPageControl.pas' {FrameTsPageControl: TFrame},
  UnitTsSpeedButton in 'UnitTsSpeedButton.pas' {FrameTsSpeedButton: TFrame},
  UnitTsBitBtn in 'UnitTsBitBtn.pas' {FrameTsBitBtn: TFrame},
  UnitTsButton in 'UnitTsButton.pas' {FrameTsButton: TFrame},
  UnitTsImage in 'UnitTsImage.pas' {FrameTsImage: TFrame},
  UnitTsEdit in 'UnitTsEdit.pas' {FrameTsEdit: TFrame},
  UnitTsCheckBox in 'UnitTsCheckBox.pas' {FrameTsCheckBox: TFrame},
  UnitTsRadioButton in 'UnitTsRadioButton.pas' {FrameTsRadioButton: TFrame},
  UnitTsMemo in 'UnitTsMemo.pas' {FrameTsMemo: TFrame},
  UnitTsComboBox in 'UnitTsComboBox.pas' {FrameTsComboBox: TFrame},
  UnitTsPanel in 'UnitTsPanel.pas' {FrameTsPanel: TFrame},
  UnitTsSplitter in 'UnitTsSplitter.pas' {FrameTsSplitter: TFrame},
  UnitTsTrackBar in 'UnitTsTrackBar.pas' {FrameTsTrackBar: TFrame},
  UnitTsTreeView in 'UnitTsTreeView.pas' {FrameTsTreeView: TFrame},
  UnitTsListView in 'UnitTsListView.pas' {FrameTsListView: TFrame},
  UnitTsSpinEdit in 'UnitTsSpinEdit.pas' {FrameTsSpinEdit: TFrame},
  UnitTsScrollBox in 'UnitTsScrollBox.pas' {FrameTsScrollBox: TFrame},
  UnitTsListBoxes in 'UnitTsListBoxes.pas' {FrameTsListBoxes: TFrame},
  UnitTsBoxes in 'UnitTsBoxes.pas' {FrameTsBoxes: TFrame},
  UnitTsOthers1 in 'UnitTsOthers1.pas' {FrameTsOthers1: TFrame},
  UnitTsOthers2 in 'UnitTsOthers2.pas' {FrameTsOthers2: TFrame},
  UnitTsSkinSelector in 'UnitTsSkinSelector.pas' {FrameTsSkinSelector: TFrame},
  UnitTsPopupBox in 'UnitTsPopupBox.pas' {FrameTsPopupBox: TFrame},
  UnitCustomPopup in 'UnitCustomPopup.pas' {FormCustomPopup},
  UnitTsSplitView in 'UnitTsSplitView.pas' {FrameTsSplitView: TFrame},
  UnitTsPageScroller in 'UnitTsPageScroller.pas' {FrameTsPageScroller: TFrame},
  UnitTsTreeViewEx in 'UnitTsTreeViewEx.pas' {FrameTsTreeViewEx: TFrame},
  UnitTsGradientPanel in 'UnitTsGradientPanel.pas' {FrameTsGradientPanel: TFrame},
  UnitTsSlider in 'UnitTsSlider.pas' {FrameTsSlider: TFrame},
  UnitTsMonthCalendar in 'UnitTsMonthCalendar.pas' {FrameTsMonthCalendar: TFrame},
  UnitTsLabelFX in 'UnitTsLabelFX.pas' {FrameTsLabelFX: TFrame},
  UnitTsHTMLLabel in 'UnitTsHTMLLabel.pas' {FrameTsHTMLLabel: TFrame},
  UnitTsLabels in 'UnitTsLabels.pas' {FrameTsLabels: TFrame},
  UnitTsExtEdits in 'UnitTsExtEdits.pas' {FrameTsExtEdits: TFrame},
  UnitTsColorPickers in 'UnitTsColorPickers.pas' {FrameTsColorPickers: TFrame},
  UnitTsShellControls in 'UnitTsShellControls.pas' {FrameTsShellControls: TFrame},
  UnitTsOthers3 in 'UnitTsOthers3.pas' {FrameTsOthers3: TFrame},
  UnitTsOthers4 in 'UnitTsOthers4.pas' {FrameTsOthers4: TFrame},
  UnitTsMeter in 'UnitTsMeter.pas' {FrameTsMeter: TFrame},
  UnitTsRoundBtn in 'UnitTsRoundBtn.pas' {FrameTsRoundBtn: TFrame},
  UnitTsArcDial in 'UnitTsArcDial.pas' {FrameTsArcDial: TFrame},
  UnitTsArcHandle in 'UnitTsArcHandle.pas' {FrameTsArcHandle: TFrame},
  UnitTsArcGauge in 'UnitTsArcGauge.pas' {FrameTsArcGauge: TFrame},
  UnitTsArcPreloader in 'UnitTsArcPreloader.pas' {FrameTsArcPreloader: TFrame},
  UnitTsBadgeBtn in 'UnitTsBadgeBtn.pas' {FrameTsBadgeBtn: TFrame},
  UnitTsSkinManager in 'UnitTsSkinManager.pas' {FrameTsSkinManager: TFrame},
  UnitTsSkinProvider in 'UnitTsSkinProvider.pas' {FrameTsSkinProvider: TFrame},
  UnitTsFrameAdapter in 'UnitTsFrameAdapter.pas' {FrameTsFrameAdapter: TFrame},
  UnitTsMagnifier in 'UnitTsMagnifier.pas' {FrameTsMagnifier: TFrame},
  UnitTsColorDialog in 'UnitTsColorDialog.pas' {FrameTsColorDialog: TFrame},
  UnitTsAlphaImageList in 'UnitTsAlphaImageList.pas' {FrameTsAlphaImageList: TFrame},
  UnitTsVirtualImageList in 'UnitTsVirtualImageList.pas' {FrameTsVirtualImageList: TFrame},
  UnitTsCharImageList in 'UnitTsCharImageList.pas' {FrameTsCharImageList: TFrame},
  UnitTsAlphaHints in 'UnitTsAlphaHints.pas' {FrameTsAlphaHints: TFrame},
  UnitTsHintsFrame2 in 'UnitTsHintsFrame2.pas' {FrameTsHints2: TFrame},
  UnitTsHintsFrame3 in 'UnitTsHintsFrame3.pas' {FrameTsHints3: TFrame},
  UnitTsTitleBar in 'UnitTsTitleBar.pas' {FrameTsTitleBar: TFrame},
  UnitTsFloatButtons in 'UnitTsFloatButtons.pas' {FrameTsFloatButtons: TFrame},
  UnitTsFontStore in 'UnitTsFontStore.pas' {FrameTsFontStore: TFrame},
  UnitTsOthers5 in 'UnitTsOthers5.pas' {FrameTsOthers5: TFrame},
  UnitTsTrackEdit in 'UnitTsTrackEdit.pas' {FrameTsTrackEdit: TFrame},
  UnitTsRollOutPanel in 'UnitTsRollOutPanel.pas' {FrameTsRollOutPanel: TFrame},
  UnitAnimation in 'UnitAnimation.pas' {FrameAnimation: TFrame},
  UnitTsComboBoxEx in 'UnitTsComboBoxEx.pas' {FrameTsComboBoxEx: TFrame};

{$R *.res}

begin
//  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
//  Application.MainFormOnTaskbar := True; // Commented for compiling under old Delphi versions
  Application.CreateForm(TFormData, FormData);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFormCustomPopup, FormCustomPopup);
  Application.Run;
end.
