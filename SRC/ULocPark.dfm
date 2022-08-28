object frmLocPark: TfrmLocPark
  Left = 0
  Top = 0
  Caption = #1055#1072#1088#1082' '#1089#1077#1088#1074#1080#1089#1085#1099#1093' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086#1074
  ClientHeight = 657
  ClientWidth = 1158
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 627
    Width = 1158
    Height = 30
    Align = alBottom
    AutoSize = True
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object dxBarDockControl2: TdxBarDockControl
      Left = 2
      Top = 2
      Width = 1154
      Height = 26
      ParentCustomHint = False
      Align = dalBottom
      BarManager = bmLocPark
    end
  end
  object pc: TcxPageControl
    Left = 0
    Top = 122
    Width = 1158
    Height = 505
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsRunning
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 498
    ClientRectLeft = 4
    ClientRectRight = 1151
    ClientRectTop = 30
    object tsRunning: TcxTabSheet
      Caption = #1055#1088#1086#1073#1077#1075#1080
      ImageIndex = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1147
        Height = 468
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object grdLocPark: TcxGrid
          Left = 2
          Top = 2
          Width = 1143
          Height = 464
          Cursor = crHandPoint
          Touch.ParentTabletOptions = False
          Touch.TabletOptions = [toPressAndHold]
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = '5'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LevelTabs.Style = 9
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          RootLevelOptions.TabsForEmptyDetails = False
          object btvLocPark: TcxGridDBBandedTableView
            PopupMenu = bpmLocPark
            OnKeyPress = btvLocParkKeyPress
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Position = fpTop
            OnCanSelectRecord = btvLocParkCanSelectRecord
            OnCustomDrawCell = btvLocParkCustomDrawCell
            OnFocusedRecordChanged = btvLocParkFocusedRecordChanged
            DataController.KeyFieldNames = 'id_object'
            DataController.Summary.DefaultGroupSummaryItems.BeginText = '['
            DataController.Summary.DefaultGroupSummaryItems.EndText = ']'
            DataController.Summary.DefaultGroupSummaryItems.Separator = ';'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ' '
                Kind = skMax
                FieldName = 'filial_kod_road'
                Column = btvLocParkColumn6
                DisplayText = ' '
                Sorted = True
                VisibleForCustomization = False
              end
              item
                Format = #1058#1055#1045': ###### '#1077#1076'.'
                Kind = skSum
                FieldName = 'tpe_counter'
              end
              item
                Format = '   '#1042#1089#1077#1075#1086' '#1089#1077#1082#1094#1080#1081': ###### '#1089#1077#1082#1094'.'
                Kind = skCount
              end
              item
                Format = '     '#1053#1072' '#1083#1080#1085#1080#1080': ###### '#1089#1077#1082#1094'.'
                Kind = skSum
                FieldName = 'in_work'
              end
              item
                Format = '       '#1042' '#1076#1077#1087#1086' ('#1082#1088#1086#1084#1077' '#1053#1056' '#1080' '#1056#1045#1050#1051'): ###### '#1089#1077#1082#1094'.'
                Kind = skSum
                FieldName = 'in_depo'
              end
              item
                Format = '       '#1053#1056' + '#1056#1045#1050#1051': ###### '#1089#1077#1082#1094'.  '
                Kind = skSum
                FieldName = 'in_depo_NR'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #1057#1077#1082#1094#1080#1081':'
                Kind = skCount
              end
              item
                Format = '#####0'
                Kind = skCount
                Column = clmnSeria
              end
              item
                Format = '#####'
                Kind = skSum
                Column = clmnCheck
              end
              item
                Format = #1057#1077#1082#1094#1080#1081':'
                Kind = skCount
                Column = btvLocParkColumn10
              end>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.IgnoreTimeForFiltering = True
            Filtering.ColumnFilteredItemsList = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.CellHints = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clmnNomTPE
            OptionsBehavior.BestFitMaxRecordCount = 20
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
            OptionsCustomize.BandSizing = False
            OptionsCustomize.BandsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = 
              #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1044#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' <'#1054 +
              #1073#1085#1086#1074#1080#1090#1100'>'
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GridLineColor = clBtnShadow
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 20
            OptionsView.BandHeaderEndEllipsis = True
            OptionsView.FixedBandSeparatorWidth = 0
            Styles.Background = stlNeed2Refresh
            Styles.FilterBox = stlBandHeader
            Styles.Selection = stlSelection
            Styles.GroupFooterSortedSummary = stlAttention
            Styles.GroupSortedSummary = stlNeed2Refresh
            Styles.StyleSheet = stlshtBTV
            Styles.OnGetGroupSummaryStyle = btvLocParkStylesGetGroupSummaryStyle
            Bands = <
              item
                Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
                FixedKind = fkLeft
                Styles.Content = stlBackgroundLightBlue
              end
              item
                Caption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
              end
              item
                Caption = #1058#1077#1082#1091#1097#1080#1077' '#1087#1088#1086#1073#1077#1075#1080
              end
              item
                Caption = #1058#1054'-2'
                Position.BandIndex = 2
                Position.ColIndex = 0
                Styles.Content = stlBackgroundLightBlue
              end
              item
                Caption = #1055#1088#1086#1073#1077#1075
                Position.BandIndex = 3
                Position.ColIndex = 0
                Styles.Content = stlBackgroundLightGreen
              end
              item
                Caption = #1053#1086#1088#1084#1072
                Position.BandIndex = 3
                Position.ColIndex = 1
                Styles.Content = stlGrayText_LightGreenBg
              end
              item
                Caption = #1044#1072#1090#1072
                Position.BandIndex = 3
                Position.ColIndex = 2
                Styles.Content = stlBackgroundLightGreen
              end
              item
                Caption = #1058#1054'-3'
                Position.BandIndex = 2
                Position.ColIndex = 1
              end
              item
                Caption = #1055#1088#1086#1073#1077#1075
                Position.BandIndex = 7
                Position.ColIndex = 0
              end
              item
                Caption = #1053#1086#1088#1084#1072
                Position.BandIndex = 7
                Position.ColIndex = 1
                Styles.Content = stlGrayText_Italic
              end
              item
                Caption = #1044#1072#1090#1072
                Position.BandIndex = 7
                Position.ColIndex = 2
              end
              item
                Caption = #1058#1056'-1'
                Position.BandIndex = 2
                Position.ColIndex = 2
              end
              item
                Caption = #1055#1088#1086#1073#1077#1075
                Position.BandIndex = 11
                Position.ColIndex = 0
                Styles.Content = stlBackgroundLightGreen
              end
              item
                Caption = #1053#1086#1088#1084#1072
                Position.BandIndex = 11
                Position.ColIndex = 1
                Styles.Content = stlGrayText_LightGreenBg
              end
              item
                Caption = #1044#1072#1090#1072
                Position.BandIndex = 11
                Position.ColIndex = 2
                Styles.Content = stlBackgroundLightGreen
              end
              item
                Caption = #1058#1056'-2'
                Position.BandIndex = 2
                Position.ColIndex = 3
              end
              item
                Caption = #1055#1088#1086#1073#1077#1075#1080
                Position.BandIndex = 15
                Position.ColIndex = 0
              end
              item
                Caption = #1053#1086#1088#1084#1072
                Position.BandIndex = 15
                Position.ColIndex = 1
                Styles.Content = stlGrayText_Italic
              end
              item
                Caption = #1044#1072#1090#1072
                Position.BandIndex = 15
                Position.ColIndex = 2
              end
              item
                Caption = #1058#1056'-3'
                Position.BandIndex = 2
                Position.ColIndex = 4
              end
              item
                Caption = #1055#1088#1086#1073#1077#1075
                Position.BandIndex = 19
                Position.ColIndex = 0
                Styles.Content = stlBackgroundLightGreen
              end
              item
                Caption = #1053#1086#1088#1084#1072
                Position.BandIndex = 19
                Position.ColIndex = 1
                Styles.Content = stlGrayText_LightGreenBg
              end
              item
                Caption = #1044#1072#1090#1072
                Position.BandIndex = 19
                Position.ColIndex = 2
                Styles.Content = stlBackgroundLightGreen
              end
              item
                Caption = #1055#1054#1057#1058#1056
                Position.BandIndex = 2
                Position.ColIndex = 5
              end
              item
                Caption = #1055#1088#1086#1073#1077#1075
                Position.BandIndex = 23
                Position.ColIndex = 0
              end
              item
                Caption = #1044#1072#1090#1072
                Position.BandIndex = 23
                Position.ColIndex = 1
              end
              item
                Caption = #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
                Styles.Content = DMMain.stlBackgroundLight
              end>
            OnBandPosChanged = btvLocParkBandPosChanged
            object clmnRN: TcxGridDBBandedColumn
              DataBinding.FieldName = 'rn'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object clmnCheck: TcxGridDBBandedColumn
              AlternateCaption = #1054#1090#1084#1077#1095#1077#1085#1086
              DataBinding.FieldName = 'checked'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = #1044#1072
              Properties.DisplayUnchecked = #1053#1077#1090
              Properties.DisplayGrayed = #1053#1077#1090
              Properties.FullFocusRect = True
              Properties.Glyph.Data = {
                36060000424D3606000000000000360000002800000020000000100000000100
                18000000000000060000C30E0000C30E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809AD1809AD1809AD1809AD1809AD1809AD1809AD1809AD18
                09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600006600FF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
                6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660031C24F22B7381AB02D21
                B437006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
                A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FF0066004FD67953DE7F31B54D006600FF00FF00
                6600179D271EAE31006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
                00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF006600149D21006600FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FF
                FF00FFFF00FFAD1809AD1809AD1809AD1809AD1809AD1809AD1809AD1809AD18
                09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600FF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              Properties.GlyphCount = 2
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '0'
              Properties.ValueUnchecked = 0
              Properties.OnEditValueChanged = clmnCheckPropertiesEditValueChanged
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF004B00004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B000F9E1C0F9D1E00
                4B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF004B001CB13511A4220C9C1911A021004B00FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF004B002EC65224BC43139224004B000D
                931A0E9D1D004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00
                35CA5E39D4651CA134004B00FF00FF004B000A86150F991C004B00FF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF004B0029B548004B00FF00FFFF00FFFF
                00FFFF00FF004B000C9518004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00098611004B
                00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FF004B00004B00FF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FF004B00004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Footer = stlRunningRed
              VisibleForCustomization = False
              Width = 41
              OnCustomDrawFooterCell = clmnCheckCustomDrawFooterCell
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object btvLocParkColumn10: TcxGridDBBandedColumn
              AlternateCaption = #1051#1086#1082#1086#1084#1086#1090#1080#1074': '#1058#1103#1075#1072
              Caption = #1058#1103#1075#1072
              DataBinding.FieldName = 'tjaga_name_new'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 58
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmnSeria: TcxGridDBBandedColumn
              AlternateCaption = #1051#1086#1082#1086#1084#1086#1090#1080#1074': '#1057#1077#1088#1080#1103
              Caption = #1057#1077#1088#1080#1103
              DataBinding.FieldName = 'ser_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 74
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object clmnNomTPE: TcxGridDBBandedColumn
              AlternateCaption = #1051#1086#1082#1086#1084#1086#1090#1080#1074': '#1053#1086#1084#1077#1088
              Caption = #1053#1086#1084#1077#1088' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
              DataBinding.FieldName = 'nom_tpe'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 82
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmnSectionName: TcxGridDBBandedColumn
              Caption = #1057#1077#1082#1094#1080#1103
              DataBinding.FieldName = 'section_name'
              OnCustomDrawCell = clmnSectionNameCustomDrawCell
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object btvLocParkColumn2: TcxGridDBBandedColumn
              AlternateCaption = #1051#1086#1082#1086#1084#1086#1090#1080#1074': '#1044#1086#1088#1086#1075#1072' '#1087#1088#1080#1087#1080#1089#1082#1080
              Caption = #1044#1086#1088#1086#1075#1072
              DataBinding.FieldName = 'road_mnemo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 62
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object btvLocParkColumn23: TcxGridDBBandedColumn
              AlternateCaption = #1051#1086#1082#1086#1084#1086#1090#1080#1074': '#1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
              Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
              DataBinding.FieldName = 'depo_name'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 153
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object btvLocParkColumn6: TcxGridDBBandedColumn
              Caption = #1060#1080#1083#1080#1072#1083
              DataBinding.FieldName = 'filial_firm_name'
              PropertiesClassName = 'TcxTextEditProperties'
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 71
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 26
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvLocParkColumn1: TcxGridDBBandedColumn
              AlternateCaption = #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077': '#1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
              Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
              DataBinding.FieldName = 'department_firm_name'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 101
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 26
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvLocParkColumn7: TcxGridDBBandedColumn
              AlternateCaption = #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077': '#1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
              Caption = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
              DataBinding.FieldName = 'repair_base_firm_name'
              PropertiesClassName = 'TcxTextEditProperties'
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 128
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 26
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn5: TcxGridDBBandedColumn
              AlternateCaption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077': '#1057#1086#1089#1090#1086#1103#1085#1080#1077
              Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
              DataBinding.FieldName = 'sost_mnemo'
              PropertiesClassName = 'TcxTextEditProperties'
              OnCustomDrawCell = btvLocParkColumn8CustomDrawCell
              OnGetCellHint = btvLocParkColumn5GetCellHint
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 104
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmnSostCategory: TcxGridDBBandedColumn
              AlternateCaption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077': '#1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
              Caption = '*'
              DataBinding.FieldName = 'sost_category'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Images = imlSmall
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = #1053#1072' '#1083#1080#1085#1080#1080
                  Value = '0'
                end
                item
                  Description = #1042' '#1076#1077#1087#1086
                  ImageIndex = 37
                  Value = '1'
                end
                item
                  Description = #1042' '#1076#1077#1087#1086' '#1085#1072' '#1053#1056' '#1080#1083#1080' '#1056#1045#1050#1051
                  ImageIndex = 41
                  Value = '2'
                end>
              Properties.ShowDescriptions = False
              OnGetCellHint = clmnSostCategoryGetCellHint
              HeaderAlignmentHorz = taCenter
              MinWidth = 16
              Options.Editing = False
              Options.CellMerging = True
              Options.VertSizing = False
              Width = 28
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmnLastEventDate: TcxGridDBBandedColumn
              AlternateCaption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077': '#1044#1072#1090#1072
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'data_is'
              PropertiesClassName = 'TcxTextEditProperties'
              OnCustomDrawCell = btvLocParkColumn8CustomDrawCell
              OnGetDisplayText = clmnLastEventDateGetDisplayText
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 89
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvLocParkColumn8: TcxGridDBBandedColumn
              AlternateCaption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077': '#1044#1080#1089#1083#1086#1082#1072#1094#1080#1103
              Caption = #1044#1080#1089#1083#1086#1082#1072#1094#1080#1103
              DataBinding.FieldName = 'firm_name'
              PropertiesClassName = 'TcxTextEditProperties'
              OnCustomDrawCell = btvLocParkColumn8CustomDrawCell
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 136
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmnSostName: TcxGridDBBandedColumn
              Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' ('#1087#1086#1083#1085#1086#1077')'
              DataBinding.FieldName = 'sost_name'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object btvLocParkColumn11: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1054'-2: '#1055#1088#1086#1073#1077#1075', '#1082#1084
              Caption = #1082#1084
              DataBinding.FieldName = 'prob_to2_km'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn11CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 45
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmnTO2_Vr: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1054'-2: '#1055#1088#1086#1073#1077#1075', '#1095#1072#1089
              Caption = #1095#1072#1089
              DataBinding.FieldName = 'prob_to2_vr'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = clmnTO2_VrCustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 45
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmnTO2_Date: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1054'-2: '#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'date_to2'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              OnGetDisplayText = clmnTO2_DateGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 109
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn3: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1054'-3: '#1055#1088#1086#1073#1077#1075', '#1082#1084
              Caption = #1082#1084
              DataBinding.FieldName = 'prob_to3_km'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn3CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn4: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1054'-3: '#1055#1088#1086#1073#1077#1075', '#1089#1091#1090
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'prob_to3_vr'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn4CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmnTO3_Date: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1054'-3: '#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'date_to3'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO3_DateGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 80
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn14: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-1: '#1055#1088#1086#1073#1077#1075', '#1082#1084
              Caption = #1082#1084
              DataBinding.FieldName = 'prob_tr1_km'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn14CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 12
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn16: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-1: '#1055#1088#1086#1073#1077#1075', '#1089#1091#1090
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'prob_tr1_vr'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn16CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 12
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvLocParkColumn17: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-1: '#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'date_tr1'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO3_DateGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 80
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 14
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn9: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-2: '#1055#1088#1086#1073#1077#1075', '#1082#1084
              Caption = #1082#1084
              DataBinding.FieldName = 'prob_tr2_km'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn9CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 16
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn12: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-2: '#1055#1088#1086#1073#1077#1075', '#1089#1091#1090
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'prob_tr2_vr'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn12CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 16
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvLocParkColumn13: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-2: '#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'date_tr2'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO3_DateGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 80
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 18
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn18: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-3: '#1055#1088#1086#1073#1077#1075', '#1082#1084
              Caption = #1082#1084
              DataBinding.FieldName = 'prob_tr3_km'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn18CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 20
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn19: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-3: '#1055#1088#1086#1073#1077#1075', '#1089#1091#1090
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'prob_tr3_vr'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnCustomDrawCell = btvLocParkColumn19CustomDrawCell
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 20
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvLocParkColumn20: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1056'-3: '#1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'date_tr3'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO3_DateGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 80
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 22
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn21: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1055#1054#1057#1058#1056': '#1055#1088#1086#1073#1077#1075', '#1082#1084
              Caption = #1082#1084
              DataBinding.FieldName = 'prob_postr_km'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 80
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 24
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvLocParkColumn22: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1055#1054#1057#1058#1056': '#1055#1088#1086#1073#1077#1075', '#1089#1091#1090
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'prob_postr_vr'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 80
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 24
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvLocParkColumn24: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1055#1054#1057#1058#1056': '#1044#1072#1090#1072
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'date_postr'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO3_DateGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 80
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 25
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TO2_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TO2_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TO2_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TO2_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 4
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TO3_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TO3_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TO3_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TO3_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 8
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TR1_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TR1_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 12
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TR1_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TR1_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 12
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TR2_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TR2_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 16
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TR2_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TR2_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 16
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TR3_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TR3_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 20
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_TR3_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_TR3_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 20
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_SR_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_SR_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_SR_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_SR_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_KR_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_KR_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object clmn_PRIZN_PROB_KR_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRIZN_PROB_KR_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TO2_KM: TcxGridDBBandedColumn
              AlternateCaption = #1055#1088#1086#1073#1077#1075#1080': '#1058#1054'-2: '#1053#1086#1088#1084#1072' '#1087#1088#1086#1073#1077#1075#1072', '#1082#1084
              Caption = #1082#1084
              DataBinding.FieldName = 'norm_prob_to2_km'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 45
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TO2_VR: TcxGridDBBandedColumn
              Caption = #1095#1072#1089
              DataBinding.FieldName = 'NORM_PROB_TO2_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.UseLeftAlignmentOnEditing = False
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TO3_KM: TcxGridDBBandedColumn
              Caption = #1082#1084
              DataBinding.FieldName = 'NORM_PROB_TO3_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TO3_VR: TcxGridDBBandedColumn
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'NORM_PROB_TO3_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TR1_KM: TcxGridDBBandedColumn
              Caption = #1082#1084
              DataBinding.FieldName = 'NORM_PROB_TR1_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 13
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TR1_VR: TcxGridDBBandedColumn
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'NORM_PROB_TR1_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 13
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TR2_KM: TcxGridDBBandedColumn
              Caption = #1082#1084
              DataBinding.FieldName = 'NORM_PROB_TR2_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 17
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TR2_VR: TcxGridDBBandedColumn
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'NORM_PROB_TR2_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 17
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TR3_KM: TcxGridDBBandedColumn
              Caption = #1082#1084
              DataBinding.FieldName = 'NORM_PROB_TR3_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 21
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_TR3_VR: TcxGridDBBandedColumn
              Caption = #1089#1091#1090
              DataBinding.FieldName = 'NORM_PROB_TR3_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 21
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_SR_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NORM_PROB_SR_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_SR_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NORM_PROB_SR_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_KR_KM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NORM_PROB_KR_KM'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object clmn_NORM_PROB_KR_VR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NORM_PROB_KR_VR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              OnGetDisplayText = clmnTO2_VrGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              VisibleForCustomization = False
              Width = 55
              OnCompareRowValuesForCellMerging = clmnSeriaCompareRowValuesForCellMerging
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
          end
          object lvlLocPark: TcxGridLevel
            Tag = 1
            Caption = #1048#1085#1094#1080#1076#1077#1085#1090#1099
            GridView = btvLocPark
            Options.TabsForEmptyDetails = False
          end
        end
      end
    end
    object tsOthers: TcxTabSheet
      Caption = 'tsOthers'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlFirmTree: TPanel
        Left = 8
        Top = 91
        Width = 425
        Height = 473
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object tlFirmTree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 421
          Height = 446
          BorderStyle = cxcbsNone
          Align = alClient
          Bands = <
            item
            end>
          DataController.ParentField = 'kod_firm_parent'
          DataController.KeyField = 'kod_firm'
          DataController.StateIndexField = 'state_index'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Navigator.Buttons.CustomButtons = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.HotTrack = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = clmn_FirmName
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExtPaintStyle = True
          OptionsView.Headers = False
          RootValue = -1
          StateImages = imlFirmTreeState
          Styles.StyleSheet = stlTL
          TabOrder = 0
          OnDblClick = aSelect_FirmTreeExecute
          OnKeyDown = tlFirmTreeKeyDown
          OnKeyPress = tlFirmTreeKeyPress
          object clmn_FirmName: TcxDBTreeListColumn
            DataBinding.FieldName = 'firm_name'
            Width = 340
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object clmn_FirmTypeMnemo: TcxDBTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Visible = False
            DataBinding.FieldName = 'firm_type_mnemo'
            Width = 81
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object clmn_KodFirm: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'kod_firm'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object dxStatusBar4: TdxStatusBar
          Left = 2
          Top = 448
          Width = 421
          Height = 23
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              Text = #1042#1099#1073#1086#1088' '#1089#1090#1088#1086#1082#1080' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082' '#1084#1099#1096#1080' '#1080#1083#1080' '#1085#1072#1078#1072#1090#1080#1077' Enter'
              Width = 400
            end>
          PaintStyle = stpsUseLookAndFeel
          LookAndFeel.Kind = lfUltraFlat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object pnlConditions: TPanel
        Left = 0
        Top = 47
        Width = 648
        Height = 31
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object cbLocSer: TcxImageComboBox
          Left = 271
          Top = 3
          Hint = #1042#1099#1073#1086#1088' '#1089#1077#1088#1080#1080
          EditValue = '0'
          ParentFont = False
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Properties.OnEditValueChanged = cbLocSerPropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
          Width = 108
        end
        object cbDepoList: TcxImageComboBox
          Left = 379
          Top = 3
          Hint = #1042#1099#1073#1086#1088' '#1076#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
          EditValue = '0'
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Properties.OnEditValueChanged = cbDepoListPropertiesEditValueChanged
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
          Width = 267
        end
        object cbFirmTree_: TcxPopupEdit
          Left = 2
          Top = 3
          ParentFont = False
          Properties.PopupControl = pnlFirmTree
          Properties.OnEditValueChanged = cbFirmTree_PropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
          Width = 269
        end
      end
      object Panel1: TPanel
        Left = 654
        Top = 47
        Width = 58
        Height = 31
        BevelOuter = bvNone
        TabOrder = 2
        object chbShowAll: TcxCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Align = alClient
          Caption = #1042#1089#1105
          Properties.Alignment = taLeftJustify
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = '0'
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Transparent = True
          Width = 52
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1158
    Height = 100
    Align = alTop
    AutoSize = True
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 6
    object dxBarDockControl1: TdxBarDockControl
      Left = 2
      Top = 2
      Width = 1154
      Height = 96
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Align = dalTop
      BarManager = bmLocPark
    end
  end
  object lblTitle: TcxLabel
    Left = 0
    Top = 100
    Align = alTop
    ParentFont = False
    Style.BorderStyle = ebsUltraFlat
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.TextColor = 3698944
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Caramel'
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Caramel'
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    AnchorX = 579
    AnchorY = 111
  end
  object alLocParkIncident: TActionList
    Images = imlSmall
    Left = 128
    Top = 312
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086#1074
      ImageIndex = 4
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aLoad_NSI_FirmTree: TAction
      Caption = 'aLoad_NSI_FirmTree'
      ImageIndex = 13
      OnExecute = aLoad_NSI_FirmTreeExecute
    end
    object aEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' ('#1089#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077')'
      ImageIndex = 6
      ShortCut = 115
      Visible = False
      OnExecute = aEditExecute
    end
    object aDeleteFromService: TAction
      Caption = #1048#1089#1082#1083#1102#1095#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1080#1079' '#1087#1072#1088#1082#1072' '#1089#1077#1088#1074#1080#1089#1085#1099#1093' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086#1074
      ImageIndex = 7
      Visible = False
      OnExecute = aDeleteFromServiceExecute
    end
    object aSetAction: TAction
      Caption = 'aSetAction'
      ImageIndex = 0
      ShortCut = 115
      OnExecute = aSetActionExecute
    end
    object aExportXLS: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Hint = #1069#1089#1082#1087#1086#1088#1090' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      ImageIndex = 54
      OnExecute = aExportXLSExecute
    end
    object aLoad_NSI_LocSer: TAction
      Caption = 'aLoad_NSI_LocSer'
      ImageIndex = 13
      OnExecute = aLoad_NSI_LocSerExecute
    end
    object aLoad_NSI_DepoList: TAction
      Caption = 'aLoad_NSI_DepoList'
      ImageIndex = 13
      OnExecute = aLoad_NSI_DepoListExecute
    end
    object aSelect_FirmTree: TAction
      Caption = 'aSelect_FirmTree'
      ImageIndex = 0
      OnExecute = aSelect_FirmTreeExecute
    end
    object aCreateTemplate: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1096#1072#1073#1083#1086#1085
      OnExecute = aCreateTemplateExecute
    end
    object aViewTemplate: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1096#1072#1073#1083#1086#1085#1086#1074
      OnExecute = aViewTemplateExecute
    end
    object aClearAll: TAction
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1105
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1105
      ImageIndex = 58
      OnExecute = aClearAllExecute
    end
    object aViltrLRZ: TAction
      Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1051#1056#1047' '#1087#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1091
      OnExecute = aViltrLRZExecute
    end
    object aSetForm: TAction
      Caption = 'aSetForm'
      OnExecute = aSetFormExecute
    end
  end
  object bmLocPark: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Group2')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    ImageOptions.Images = imlSmall
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 186
    Top = 310
    DockControlHeights = (
      0
      0
      0
      0)
    object tbCommonButtons: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      Color = clBtnFace
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 178
      FloatTop = 95
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'beichbShowAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic10'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end
        item
          Visible = True
          ItemName = 'cbRepairType'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem2'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chbLess'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chbEqualy'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chbMore'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic9'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lblTemplateName'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bmLegend: TdxBar
      AllowQuickCustomizing = False
      Caption = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103
      CaptionButtons = <>
      Color = clBtnFace
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1163
      FloatTop = 8
      FloatClientWidth = 147
      FloatClientHeight = 17
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'lblLegend_InDepo'
        end
        item
          Visible = True
          ItemName = 'lblLegend_InDepo_NR'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic6'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarStatic2: TdxBarStatic
      Caption = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':'
      Category = 0
      Hint = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':'
      Style = DMMain.stlHeader
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Action = aRefresh
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object lblLegend_InDepo: TdxBarStatic
      Caption = #1042' '#1076#1077#1087#1086' ('#1082#1088#1086#1084#1077' '#1053#1056' '#1080' '#1056#1045#1050#1051');   '
      Category = 0
      Hint = #1051#1086#1082#1086#1084#1086#1090#1080#1074' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1074' '#1076#1077#1087#1086
      Visible = ivAlways
      ImageIndex = 37
    end
    object lblLegend_InDepo_NR: TdxBarStatic
      Caption = #1042' '#1076#1077#1087#1086' '#1085#1072' '#1053#1056' '#1080#1083#1080' '#1056#1045#1050#1051
      Category = 0
      Hint = 
        #1051#1086#1082#1086#1084#1086#1090#1080#1074' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1074' '#1076#1077#1087#1086' '#1074' '#1089#1086#1089#1090#1086#1103#1085#1080#1080' '#1085#1077#1087#1083#1072#1085#1086#1074#1086#1075#1086' '#1088#1077#1084#1086#1085#1090#1072' '#1080#1083#1080' '#1088 +
        #1077#1082#1083#1072#1084#1072#1094#1080#1080
      Visible = ivAlways
      ImageIndex = 41
    end
    object dxBarButton2: TdxBarButton
      Action = aRefresh
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = aEdit
      Category = 0
    end
    object dxBarStatic1: TdxBarStatic
      Caption = '* - '#1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1089#1086#1089#1090#1086#1103#1085#1080#1103':'
      Category = 0
      Hint = '* - '#1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1089#1086#1089#1090#1086#1103#1085#1080#1103':'
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = '90%-100%'
      Category = 0
      Hint = '90%-100%'
      Style = stlRunningGreen
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic4: TdxBarStatic
      Caption = #1055#1088#1086#1073#1077#1075' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072':'
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072
      Visible = ivAlways
    end
    object dxBarStatic5: TdxBarStatic
      Caption = '100%-110%'
      Category = 0
      Hint = '100%-110%'
      Style = stlRunningYellow
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic6: TdxBarStatic
      Caption = '> 110%'
      Category = 0
      Hint = '> 110% ('#1087#1077#1088#1077#1087#1088#1086#1073#1077#1075')'
      Style = stlRunningRed
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarButton4: TdxBarButton
      Action = aExportXLS
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = aDeleteFromService
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = pnlConditions
    end
    object beichbShowAll: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      Control = Panel1
    end
    object chbLess: TcxBarEditItem
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072' - 90%-100%  '
      Style = stlRunningGreen
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      StyleEdit = stlRunningGreen
      InternalEditValue = '0'
    end
    object chbEqualy: TcxBarEditItem
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072' - 100%-110%'
      Style = stlRunningYellow
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      StyleEdit = stlRunningYellow
      InternalEditValue = '0'
    end
    object chbMore: TcxBarEditItem
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072' - > 110%'
      Style = stlRunningRed
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      StyleEdit = stlRunningRed
      InternalEditValue = '0'
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072': '
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072': '
      Visible = ivAlways
      ImageIndex = 11
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarButton7: TdxBarButton
      Action = aCreateTemplate
      Category = 0
      ImageIndex = 57
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = aViewTemplate
      Category = 0
      ImageIndex = 33
      PaintStyle = psCaptionGlyph
    end
    object cbRepairType: TcxBarEditItem
      Caption = #1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072
      Category = 0
      Hint = #1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'TO-2'
        'TO-3'
        'TP-1'
        'TP-2'
        'TP-3')
      InternalEditValue = 'TO-2'
    end
    object cxBarEditItem3: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarStatic7: TdxBarStatic
      Caption = '90%-100%'
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072' - 90%-100%  '
      Style = stlRunningGreen
      Visible = ivAlways
    end
    object dxBarStatic8: TdxBarStatic
      Caption = '100%-110%'
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072' - 100%-110%  '
      Style = stlRunningYellow
      Visible = ivAlways
    end
    object dxBarStatic9: TdxBarStatic
      Caption = '> 110%'
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075#1080' '#1086#1090' '#1085#1086#1088#1084#1072#1090#1080#1074#1072' - > 110%'
      Style = stlRunningRed
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Action = aClearAll
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarStatic10: TdxBarStatic
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C4C4C4FFBCBCBCFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C7C7C7FFBABABAFF00000000000000000000000000000000000000000000
        00000000000000000000AEAEAEFF333333FF878787FF00000000000000000000
        000000000000000000000000000000000000000000000000000000000000C7C7
        C7FF3F3F3FFF636363FF00000000000000000000000000000000000000000000
        00000000000000000000000000007D7D7DFF3A3A3AFFB7B7B7FF000000000000
        0000000000000000000000000000000000000000000000000000000000005C5C
        5CFF414141FFD2D3D2FF00000000000000000000000000000000000000000000
        000000000000000000000000000000000000535353FF4E4E4EFFC2C2C2FFC7C7
        C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FF838383FF3737
        37FFB3B3B3FF0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C9C9C9FF434343FF404040FF4141
        41FF414141FF414141FF414141FF414141FF414141FF404040FF3F3F3FFF8686
        86FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000898989FF454545FF404040FF4343
        43FF434343FF434343FF444444FF434343FF434343FF424242FF3D3D3DFF6464
        64FFC9C9C9FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000979797FF3F3F3FFF545454FF979797FF5555
        55FF464646FF464646FF464646FF454545FF454545FF545454FF979797FF5555
        55FF414141FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000707070FF414141FFAAAAAAFFEDEDEDFFB1B1
        B1FF484848FF484848FF484848FF474747FF474747FFAAAAAAFFEDEDEDFFB1B1
        B1FF3F3F3FFFD0D1D0FF00000000000000000000000000000000000000000000
        0000000000000000000000000000727272FF414141FF646464FFA5A5A5FF6464
        64FF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF646464FFA5A5A5FF6464
        64FF414141FFD1D1D1FF00000000000000000000000000000000000000000000
        0000000000000000000000000000767676FF414141FF4C4C4CFF4E4E4EFF5050
        50FF515151FF515151FF515151FF505050FF505050FF4E4E4EFF4C4C4CFF4A4A
        4AFF454545FFD3D3D3FF00000000000000000000000000000000000000000000
        0000000000000000000000000000797979FF414141FF505050FF525252FF5454
        54FF555555FF555555FF565656FF545454FF545454FF535353FF505050FF4E4E
        4EFF494949FFD5D6D5FF00000000000000000000000000000000000000000000
        00000000000000000000000000007D7D7DFF525252FF4B4B4BFF484848FF4949
        49FF4A4A4AFF4A4A4AFF4A4A4AFF494949FF494949FF484848FF484848FF5050
        50FF4E4E4EFFD8D8D8FF00000000000000000000000000000000000000000000
        0000000000000000000000000000808080FF595959FFBFBFBFFFD9D9D9FFDADA
        DAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFD9DAD9FFD3D3D3FF7B7C
        7BFF525252FFDADADAFF00000000000000000000000000000000000000000000
        0000000000000000000000000000848484FF878787FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F7F6FFF6F7F6FFF6F7F6FFF6F7F6FFF6F7F6FFF6F6F6FFF6F6F6FFC9CA
        C9FF565656FFDCDCDCFF00000000000000000000000000000000000000000000
        0000000000000000000000000000868786FF8C8C8CFFF6F7F6FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F6FFCDCD
        CDFF5A5A5AFFDDDEDDFF00000000000000000000000000000000000000000000
        00000000000000000000000000008A8A8AFF7E7E7EFFF6F6F6FFF8F8F8FFF8F8
        F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFBCBC
        BCFF5F5F5FFFDFE0DFFF00000000000000000000000000000000000000000000
        00000000000000000000000000008C8D8CFF676767FF808080FF949494FF9B9B
        9BFFAEAEAEFFAEAEAEFFAEAEAEFFA8A8A8FFA8A8A8FF929292FF8F8F8FFF6B6B
        6BFF616161FFE3E4E3FF00000000000000000000000000000000000000000000
        0000000000000000000000000000BBBCBBFF616161FF6B6B6BFF6D6D6DFFB6B7
        B6FFFAFBFAFFFAFBFAFFFAFBFAFFF2F2F2FFF2F2F2FF6A6A6AFF6C6C6CFF6767
        67FF777877FF0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000BEBEBEFF848484FF808080FF9091
        90FFABABABFFABABABFFABABABFFA3A3A3FFA3A3A3FF808080FF818181FF9A9A
        9AFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object lblTemplateName: TcxBarEditItem
      Caption = #1055#1088#1080#1084#1077#1085#1105#1085' '#1096#1072#1073#1083#1086#1085': '
      Category = 0
      Hint = #1055#1088#1080#1084#1077#1085#1105#1085' '#1096#1072#1073#1083#1086#1085': '
      Style = DMMain.stlBandHeader9
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = DMMain.stlBandHeader9
    end
    object btnViltrLRZ: TdxBarButton
      Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1079#1072#1093#1086#1076#1086#1074
      Category = 0
      Hint = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1079#1072#1093#1086#1076#1086#1074
      Visible = ivAlways
      ImageIndex = 13
      OnClick = aViltrLRZExecute
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object stlrpLocPark: TcxStyleRepository
    Left = 132
    Top = 360
    PixelsPerInch = 96
    object stlBackground: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object stlGroup: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stlContent: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlHeader: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
    object stlBandHeader: TcxStyle
      AssignedValues = [svBitmap, svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stlContentProgress: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlSmallFont7: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlContent8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlSeriesElder: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16357218
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlHeaderBlack: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object stlHotTrack: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object stlLegendSmall: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlLegendSmallBold: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stlLargeFont: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Arial'
      Font.Style = []
    end
    object stlAttention: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = 221
    end
    object stlLegend: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object stlArial13: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
    end
    object stlCategory: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16761992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stlRowDisabled: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 8224125
    end
    object stlBackgroundLight: TcxStyle
      AssignedValues = [svColor]
      Color = 14544639
    end
    object stlSelection: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16770005
      TextColor = clBlack
    end
    object stlContentNonEditing: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
    object stlToolbar: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlLineSeries_1: TcxStyle
      AssignedValues = [svColor]
      Color = clBlue
    end
    object stlContentOdd: TcxStyle
      AssignedValues = [svColor]
      Color = 16773864
    end
    object stlBackgroundLightBlue: TcxStyle
      AssignedValues = [svColor]
      Color = 16708066
    end
    object stlGrayText_LightGreenBg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15532012
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clGray
    end
    object stlBackgroundLightGreen: TcxStyle
      AssignedValues = [svColor]
      Color = 15532012
    end
    object stlBackgroundLightRed: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
    object stlBandHeadet11Green: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 3368448
    end
    object stlNeed2Refresh: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 25088
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 8404992
    end
    object stlSystemInfo: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object stlAttention_Middle: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clNavy
    end
    object stlLocInDepoNR: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object stlLocInDepo: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object stlLocInWork: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGray
    end
    object stlRunningRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlRunningYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlRunningGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 7725974
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlGrayText_Italic: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clGray
    end
    object stlshtBTV: TcxGridBandedTableViewStyleSheet
      Styles.Content = stlContent
      Styles.Footer = stlGroup
      Styles.Group = stlGroup
      Styles.GroupSummary = stlHeader
      Styles.Header = stlHeader
      Styles.BandHeader = stlBandHeader
      BuiltIn = True
    end
    object stlTL: TcxTreeListStyleSheet
      Styles.Content = stlContent
      Styles.Inactive = stlSelection
      Styles.Selection = stlSelection
      Styles.HotTrack = stlHotTrack
      BuiltIn = True
    end
  end
  object imlSmall: TcxImageList
    FormatVersion = 1
    DesignInfo = 25034768
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000356B890060B4D9003F7C9C0007
          0F15000000000000000000000000000000000000000000000000000000000000
          0000000104060060AFD10164B8DC08438BB7005CCFFF006AD9FF0081DFFF0027
          516C000000000008121800000000000000000000000000000000000000000002
          0B112F7DC7F3006AE3FF0054D1FF89EDF8FF88EFFFFF2880D0FF0065D4FF0078
          D9FF004083A80072D6FF0027536D000000000000000000000000000A202C82C5
          EBFFE4FFFFFF62B1E0FF66C1E9FF91F9FFFF8FFFFFFF5EC2F1FF0044C0FF005A
          CBFF0467CEFF0078E0FF007ADAFF002B56710000000000000000000104065F9C
          D6FBBDFFFFFFB7FFFFFFB5FFFFFF76D7F3FF72D9F6FF9AFFFFFF78E2FAFF52B5
          EFFF5DC8F6FF0052C3FF007AE0FF006CCDFC000000000000000000173E54003C
          BEF6C4FFFFFFA6EEF7FF0A4CBCF3000C222F020E1E280C3B7EA572E0F8FF85FB
          FFFF64D7FFFF59C4F5FF0163CBFF002F617D00000000000000003286CFF67BC1
          EDFFE1FFFFFF3E91DEFF0070E4FC000002030000000000000000000C354E56BE
          EEFF82FBFFFF40A2E8FF005CCEFF0075D7FF002A5772000811173C6A95ACF0FF
          FFFFC4FFFFFF2A88DCFF08A8FFFF002D62840000000000000000000000000010
          3B5775E7FBFF67D4F8FF0044C3FF0069D8FF0083E1FF0034678413417794D0FF
          FFFFDEFFFFFF5297D8FF0099FFFF1CA1F3FF000B213100000000000000000000
          0000185A9EC18DFFFFFF55BCEEFF217BD2FF006DD8FF004C92B3000712190113
          4D6C93CFEFFFCEF7F5FF0064D7FF20C8FFFF168FE8FF0014354D000000000000
          0000000F2A3977E3FFFF7DF1FFFF65D0F8FF0064D3FF0059A8CD000000000000
          0000052A7096E4FFFFFF81B3DFFF006ADFFF1EC6FFFF21ABF8FF04498DB30017
          354700286F9580E9FCFF78E3FFFF6ACEF4FF0057B8ED00060E13000000000003
          0A0E62A7DFFFDFFFFFFFC8FFFFFF86B4DDFF0063D4FF0090F7FF03A4FFFF0071
          ECFF2982D5FFAAFFFFFF479FE2FF005CD4FF005BAED800000000000000000000
          000004205574A7E0F4FFDCFFFFFFE2FFFFFFD4FCF7FF5EA0DBFF398DD9FF56A3
          DCFFA4FFFEFF96FFFFFF4A99DFFF007BE8FF016BC2E300050B0F000000000000
          000000000000021F5B7B5AA0DEFF072A719795D4F0FFDCFFFFFFC5FFFFFFCCFF
          FFFFA4FEFFFFA7FFFFFFBAFFFFFF1964B6E40000010200000000000000000000
          000000000000000000000002070B00000000021C5A7BD6FFFFFFEFFFFFFF6ABA
          EAFF003FC6FF63ADDFFF53A6D9F3000106090000000000000000000000000000
          00000000000000000000000000000000000000061219133F728E406A98B1277C
          C6EA0012344700030D130007141C000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FC3F0000C02F000080070000000300000003000000030000030000000380
          000001C0000000C00000C000000080010000C0000000E0010000F4030000FC07
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000103031B01131C6301131C6301131B6301131B6301121B6301121B630112
          1B6301121B6301121B6301121B630102031A0000000000000000000000000000
          0000010A0F470370A1FF13719BFF247296FF367491FF47778DFF47758BFF3671
          8EFF256E91FF136A94FF036798FF01090D430000000000000000000000000000
          0000010B0F470172A4FF0171A3FF0170A2FF016EA0FF016D9FFF016C9EFF016A
          9CFF01699BFF01689AFF016799FF01090D430000000000000000000000000000
          0000010B0F470176A7FF0174A6FF0173A5FF0171A3FF0170A2FF016FA1FF016D
          9FFF016C9EFF016B9DFF01699BFF01090E430000000000000000000000000000
          0000010B1047077BACFF0177A9FF0175A7FF0174A6FF0173A5FF0171A3FF0170
          A2FF016FA1FF016D9FFF016C9EFF010A0E430000000000000000000000000000
          0000010C10470C81B0FF0179ABFF0178AAFF0177A9FF0175A7FF0174A6FF0173
          A5FF0171A3FF0170A2FF016FA1FF010A0E430000000000000000000000000000
          0000010C10471285B5FF017CAEFF017BADFF017AACFF0178AAFF0177A9FF0175
          A7FF01609BFF01448BFF015B97FF010A0E430000000000000000000000000000
          0000020C1147188BB9FF017FB1FF017EB0FF017CAEFF017BADFF017AACFF0178
          AAFF0872A6FF267FAEFF076DA2FF010A0E430000000000000000000000000000
          0000020D11472A86A9F95F645EFF646561FF696765FF706A6AFF776D70FF7F72
          76FF85757CFF85737CFF3D8DB3FF010A0F430000000000000000000000000000
          0000020D1147357993ECC15201FFBE4B01FFBA4401FFB73D01FFB33601FFB030
          01FFAC2901FFA92201FF5390ACFE010B0F430000000000000000000000000000
          0000020D1147387B94F1CB6701FFC86001FFC45901FFC15201FFBE4B01FFBA44
          01FFB73D01FFB33701FF46849FF9010B0F430000000000000000000000000000
          0000020D12473A7D94F6D7800BFFD47909FFD07209FFCD6D0CFFCB6A11FFC967
          17FFC7631AFFC45D1BFF397B93F3010B0F430000000000000000000000000000
          0000020E12473C7F95FBEEC47AFFECBD73FFE9B66DFFE6AF66FFE3A760FFDF9F
          5AFFDC9753FFD88E4DFF2F748CEE010B10430000000000000000000000000000
          0000020E12473F8096FEF8DFA7FFF6DAA0FFF4D59AFFF2CF93FFEFC98DFFEDC3
          86FFEABD81FFE7B67BFF28738CED010C10430000000000000000000000000000
          0000030E124758A7C3FF2D778EFF28738CFE24718BFC22718CFA20708DF81E6F
          8CF51B6E8CF3196E8BF0087DA7F9010C10430000000000000000000000000000
          00000104041F13252B6F11242A6F0E22296F0C21286F0920286F071E276F041D
          266F021C256F011B256F011B256F0103041D0000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0030000C0030000C0030000C0030000C0030000C0030000C0030000C003
          0000C0030000C0030000C0030000C0030000C0030000C0030000C0030000C003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          011B0706053D0B09074A0706053E0202011A0000000000000000000000000000
          000000000000000000000000000000000000000000000B09074A66564DC1BC98
          75FAD2AB85FFD1AB85FFC6A07CFFAE8C69FA382C22A000000000000000000000
          000000000000000000000000000000000000211B146DC39D79FDD0B5A7FFD5AE
          8BFFDEB791FFDDB791FFD3AE8AFFC29C77FF8C6D52EB0101012A01010108070D
          0A510E1D157A10201882122019810B171171695B44C2D4AD87FFCAB6A9FFE3C1
          A5FFE5BE98FFE7C19DFFDBB997FFC6A07CFF755B44D801010121325C48BB55A0
          7BFF57A27DFF559F7BFF7DA58BFF579D7AFF829771FFE0B994FFC7B6A7FFF1DB
          CAFFE4BD97FFE9C7A5FFDEBF9FFFC7A17DFF3E302499000000005D9A7EE768B3
          8DFF68B38DFF62AD87FFAAC5ACFF6BAA8AFF62A07BFFD8BB94FFA99F93FF617B
          95FFA39A92FFDCB691FFD4AF8BFF957659E2050403300000000061957DCA77C0
          9CFF71BC96FF73B994FFC4D9BFFF6EAE8DFF59A17DFF578267E768737CF12F55
          7BFF32587DFF938474FE5D4C3BAD030302220101010B0000000021342B4A7BC1
          9FFB6EB893FF699BA0FF6B8DACFF4F846AFF549A78FD426D76E840668BFF3D62
          86FF2D5378FF171F277000000000000000000000000000000000000000001C2F
          264A477D63E65C83A2FF557C9EFE233F33C00F17153F4F7193E85B81A6FF5177
          9CFF42668AFF10171F580000000000000000000000000000000000000000080D
          0F3C345D70F16A8FB3FF749AC0FE42617BEB141F247E7197BDFE759AC1FF658A
          B0FF4D7297FF32485CF10303030F000000000000000000000000000000002A4A
          56A8507F97FF91B7DEFF8FB5DCFF7195B9FF17222A7E91B3D7FE93B6DAFF7397
          BDFF506A83FF3D4043FF0B0B0B42000000000000000000000000000000003961
          6FB979A2C0FFB3D8F3FFA4CAEDFF7DA1C6FE0607091E7C9AB9E08DADCEFF7291
          B2FF4F5C6AFF3E3E3EFF0B0B0B3C000000000000000000000000000000003557
          61936B9EB5FFB7DBECFFA7CBEBFF769BC0FE04050518636464BF7D7D7DFF6C6C
          6CFF5A5A5AFF3F3F3FE402020208000000000000000000000000000000001421
          243B83BCCBFE619CAEFF5E90A9FF4D7792FE0B13177C000000002424244B3636
          367B2929296E0909091D00000000000000000000000000000000000000000000
          00005C747A8896CAD6F583C1D1FE5D94A1E41D32387D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000304040A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF830000FE010000FC00000000000000000100000001000000010000000F
          0000800F000080070000800700008007000080070000810F0000C1FF0000F7FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000020202130303031D13100F5A0101010D0101010900000000000000000000
          0000000000000000000000000000000000000000000000000000000000003030
          2E584E3A27EC6C6351F9593F25FF18161474161310760101012E010101220101
          01140000000000000000000000000000000000000000000000002322222A7066
          55D270684DFF909581FF56422CFF777365FE64523EF3010101350101012C0101
          01280101012A0303032F1A1A18694E4D48A52625237B010101096565617A8C86
          72FFA3A082FFB1B7A0FFBED2CAFF81877DFF5D4A30F8231F19921F1D1A80403F
          3B9E87847CD3DCD5CDFBF0DFDDFFF4E8E9FFCBC5B1FD0303032421202028A19E
          8FEC979582FF828571FF9AAAA5FF98A099FF6D6351FF695D46FFCDBFB9FFF4E3
          E5FFFEEFF5FFFFF4F8FFFFFAFCFFF9F8F8FFCCC5B0FF030303187E7E7D94D7D6
          D1FF9E9E93FFA2A393FF757A76FF888781FF777669FF595438FFC0BCB6FFFAFA
          F9FFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F6FFC8C1ABFF02020215000000005756
          5476A29F98FF72776FFF5A6059FF929795FFBACCC8FF79847AFF919C90FFDBDD
          DAFFFBFBFBFFF0F0F0FFE7E7E7FFF3F3F2FFC3BCA6FF02020213000000008E88
          7BBDB6AF9DFF888885FF777776FFC1C2BDFFCDDCD2FFA8BBB6FFA2A6A1FFD8D8
          D8FFE5E5E5FFEFEFEFFFF7F7F7FFF5F4F3FFBFB7A1FF0B0A0A11000000002322
          2137C3BDB0FFBABAB6FFA9A8A2FFCACABFFFB9BFAAFF838981FF818078FFD2C9
          C7FFFFFEFEFFFFFFFFFFF5F5F6FFEAE9E7FFBBB29BFF0F0F0F0F000000000E0D
          0D17C5BFB2FFC1C5C1FFBAC2BAFFB2B19FFF8E8C7EFF8C8A7EFFBFBBB6FFF9F9
          FAFFE5DCE4FFE3D2DCFFE0D8DCFFE5E4E5FFB6AD96FF0D0D0D0D000000000D0C
          0B17D0CBBFFFD5E8F2FFD8DCD8FF8A8780FFB3ADA2FFA79592FFDACFD2FFE1DE
          F1FFBEB4D2FFA2A2C2FF9E9ED7FFA5A1C4FFB2A891FF0A0A0A0A000000001515
          1517D0CABEFFE6CDD7FFE6D1DDFFC2BFE8FFB1B0EBFFA09FD9FF9591C1FF958E
          AAFFAAA29CFFB9AA8EFFB9A47BFFC0B69CFFAEA28AFF00000000000000001717
          1717C4BEB1FF9E9A95FF817C9BFFA39CA0FFB3AA97FFB6AD93FFC6BFA7FFD6D0
          BAFFCAAA76FFCFB588FFD0BEA0FFD1C8B2FF9E927DF000000000000000001717
          1717CEC7B6FFD4CFBDFFDCD8C5FFE3DECAFFEAE6D4FFE4DFCEFFDED8C7FFD7D1
          C1FFC3BBA8FFB0A590FEA19787E7867F73B929241B4A00000000000000001212
          1212E5E2D8FDF1EFE7FFE0DBCFFFC2B9A6FFACA18DF78A806FCE665F51A04A44
          3A72312E2A441312111600000000000000000000000000000000000000000000
          000043413E5368655E8344413C5921201E2B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C1FF0000803F000000000000000000000000000000000000800000008000
          0000800000008000000080000000800100008001000080010000800F0000C3FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000060602360101010B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010101098F4C1AD90807034500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003B230C8ED16423FF7D4417DD713C13D4603012C02212
          0978010101120000000000000000000000000000000000000000000000000000
          0000000000000A08033CCD7221FCCD6E21FFCB6B21FFCE6922FFCE6722FFD269
          25FF9A5E37DF0504043100000000000000000000000000000000000000000000
          000000000000765824B9D98921FFD78521FFD88322FF634017AD442D16896645
          27A4C78C56E8A77C50E201010113000000000000000000000000000000000000
          000000000000020101082D241567B18433DAE39E22FF1B150665000000000000
          0000000000003E3123782C24177A000000000000000000000000000000000000
          000000000000000000000000000000000000211B10552D241173000000000000
          0000000000000000000006050423000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000100D0849000000000000000000000000000000006A5222B52117
          0674010101110000000000000000000000000000000000000000000000000000
          0000000000005E4C2E9B3628188E0202011B00000000000000004F3D1D90DD9C
          24FFA9761CEB2C1E088602010119000000000000000000000000000000000000
          0000000000000504041BC79764E8CB8648F9814B1FD3683B15C49B5D21E5CC81
          25FFCC8325FFD18925FF2E220F79000000000000000000000000000000000000
          000000000000000000000A09072BA06742D5BE6429FFBE6528FFBD6727FFBC68
          27FFC26D27FF8C5829D300000000000000000000000000000000000000000000
          0000000000000000000000000000000000001C140E524629198E4B2B19988B52
          30D1BE6732FA0906043400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B1D
          156C352015840000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000303
          0317000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F9FF0000F1FF0000F01F0000E00F0000E0070000E0E70000FCF70000FFFF
          0000EF1F0000E3070000E0070000F00F0000FC0F0000FF9F0000FFBF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000C200E401C5A21B21A591FB219571EB21D4D
          20A5040A04150000000000000000000000000000000000000000000000000000
          0000000000000000000000000000227D29AA04BA12FF01AF0BFF01A405FF23A6
          24FF0528075E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000022812CAA0DC71DFF06BC14FF01B10CFF21B2
          26FF0529075E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000268232AA1AD231FF10C920FF07BE16FF22BD
          2DFF0529085E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000002C863BAA2ADA51FF1CD337FF11CA22FF28C8
          36FF052B095E00000000000000000000000000000000000000000B180C340B2C
          0F5E0B2D0F5E0B2E105E0A2F105E2F8D3EC939E06AFF2CDB55FF1ED43BFF32D2
          42FF06460C96052B095E052A085E0529085E0529085E040B041552B35BF173E2
          87FE78E593FE76E797FE70E695FE64E58EFE45E37AFF3CE16EFF2EDC59FF29D7
          47FF31D042FE29C836FE23C02FFE21B729FE23AD26FE1D4D20A53EC249FF40D7
          51FF4ADD63FF57E379FF61E78AFF5FE78DFF57E687FF4AE47EFF3DE16FFF30DD
          5CFF21D642FF15CE29FF0BC41AFF04B811FF01AD09FF19581EB23ABF44FF3AD2
          48FF40D64FFF49DD61FF55E277FF61E789FF6EEA98FF72EC9EFF6AEA96FF59E6
          85FF43E06CFF2BD84CFF18D02DFF0CC51CFF04B912FF1A591FB23ABC42FF36CD
          43FF3AD248FF3FD64EFF48DC5FFF54E275FF60E687FF6CEA97FF73EC9FFF73EC
          9FFF6FEB9AFF63E78BFF55E378FF43DB5CFF32D143FF215C27B2214F2473287D
          2DAA297F2FAA2A8132AA2D8237AA46B155E253E173FF5FE686FF6AE994FF82EC
          AAFF3C8D48C93D8B4CAA378846AA348841AA32873EAA0F241140000000000000
          00000000000000000000000000002C8235AA46DB5BFF50E06FFF5DE683FF7DEA
          A2FF0C2C105E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A8030AA3ED54CFF44DA58FF4EE06CFF71E7
          91FF0B2B0F5E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000287E2EAA39D046FF3CD44BFF43D955FF64E2
          7DFF0A290C5E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000277D2CAA35CB41FF37CF44FF3BD34AFF59DB
          69FF09290C5E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000235025733ABA42FF37BC40FF3ABF43FF49AF
          51F10A180B340000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F81F0000F81F0000F81F0000F81F000000000000000000000000
          0000000000000000000000000000F81F0000F81F0000F81F0000F81F0000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000004C828E9C589B
          A7B8589BA7B8589BA6B8579AA6B85799A5B85799A4B85799A3B85799A3B85798
          A3B85798A3B85797A2B85797A1B8445D636E000000000000000065BECCDFABFF
          F9FFA7FFF8FFA5FFF8FFA3FFF8FFA2FFF8FFA1FEF8FFA0FFF8FF9EFFF7FF9EFF
          F7FF9EFFF7FF9EFFF7FFAAFFF8FF54838C9F000000000000000065BECDDFA7FF
          F8FF9EFFF8FF7FCECBFF77BDB8FF79C5BFFF7BCDC7FF82E3DCFF89F6EEFF89FD
          F3FF88FEF4FF88FEF4FFA2FFF8FF54838D9F000000000000000065BFCDDFA9FF
          F8FFA2FFF8FF67AEB5FF56ABBDFF54929FFF537C7DFF588280FF66A19DFF76C6
          C0FF81E4DCFF85F5ECFFA1FCF5FF4F7E899F000000000000000066C0CEDFAAFF
          F8FFA5FFF7FF98F1F0FF6AD8E3FF66D6E7FF2CA2E9FF428EB1FF62938FFF6194
          90FF68A6A2FF73C1BCFF90DAD5FF235059A4000000000000000066C0CFDFABFF
          F8FFA6FFF8FFA5FFF7FF74D9E1FF31B6F0FF22A4EBFF249CEDFF5EC2E3FF85D8
          D1FF7AC3BEFF74BDB7FF84C4C0FF254F58B00606061D0303030A68C0CFDFABFF
          F8FFA6FFF8FFA6FFF8FF7EE3F4FF23BCF2FF19B3E7FF199AE7FF249CEEFF69D4
          F5FF98FAF2FF91F1EAFF9BEAE4FF26535DAA050505160000000069C1CFDFABFF
          F8FFA6FFF8FFA6FFF8FFA6FFF8FF73DEF8FF25C0F1FF19B3E7FF199AE7FF249C
          EEFF6CD5F6FF9DFEF7FFA9FEF8FF3C6D77A0000000000000000069C1CFDFABFF
          F8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FF73DEF8FF24BFF1FF19B3E7FF199A
          E7FF259CEEFF6DD5F6FFABFFF9FF54858F9F000000000000000069C1CFDFABFF
          F8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FF73DEF8FF25C0F1FF19B3
          E7FF199AE7FF2F9CE9FFA9DCDEFF5486909F00000000000000006AC1CFDFABFF
          F8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FF73DEF8FF25C0
          F1FF27B3E3FFA3B7C4FFB3B0B0FF75898EAC00000000000000006AC1CFDFABFF
          F8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FF74DE
          F8FFB5CED6FFC4C2C3FFB2AFAFFF9D9AB6FE3F3F4F5B000000006BC2CFDFABFF
          F8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FF
          F8FFB6ECE8FFD6D5D6FFACA9C6FF3736AFFE3232AFFB3C3C4A546BC2CFDFABFF
          F8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FFF8FFA6FF
          F8FFA6FFF8FFAAE2E5FF4344C0FF4242CFFE4040CAFE454595C56CC2CFDFAEFF
          F9FFABFFF8FFABFFF8FFABFFF8FFABFFF8FFABFFF8FFABFFF8FFABFFF8FFABFF
          F8FFABFFF8FFABFFF8FF86BBE3FF4648D4FE4444C6F535353E445796A3B069B4
          C1CF68B4C1CF68B4C1CF67B3C1CF66B3C0CF65B3C0CF65B3C0CF65B3C0CF64B3
          C0CF64B2C0CF63B2C0CF62B1BFCF4C7084931D1D202100000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000300000003000000030000000300000003000000000000000100000003
          0000000300000003000000030000000100000000000000000000000000000001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A180C340B2C
          0F5E0B2C0F5E0B2D105E0B2D105E0B2D105E0A2D0F5E092D0F5E082D0D5E072C
          0C5E062C0B5E052B095E052A085E052A085E0529085E040B041552B35BF16CE1
          81FE70E48CFE6FE690FE68E58EFE62E58CFE5CE589FF55E380FF49DF6EFF3CD9
          57FF31D042FE29C836FE23C02FFE21B729FE23AD26FE1D4D20A53EC249FF40D7
          51FF4ADD63FF57E379FF61E78AFF5FE78DFF57E687FF4AE47EFF3DE16FFF30DD
          5CFF21D642FF15CE29FF0BC41AFF04B811FF01AD09FF19581EB23ABF44FF3AD2
          48FF40D64FFF49DD61FF55E277FF61E789FF6EEA98FF72EC9EFF6AEA96FF59E6
          85FF43E06CFF2BD84CFF18D02DFF0CC51CFF04B912FF1A591FB23ABC42FF36CD
          43FF3AD248FF3FD64EFF48DC5FFF54E275FF60E687FF6CEA97FF73EC9FFF73EC
          9FFF6FEB9AFF63E78BFF55E378FF43DB5CFF32D143FF215C27B2214F2473287D
          2DAA297F2FAA2B8132AA2D8237AA31843DAA32843FAA358645AA378647AA3986
          49AA3D864BAA3B8647AA368443AA33823EAA30803AAA0F241140000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000020602160205021F01020102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000005190833149526EA0D6F1BD50104021F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000040E061B209731DF26B53AFF20B234FF06260B89010302070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000308040F258733CC3DCF53FF38C94DFF32C347FF24A436EF020502320101
          010100000000000000000000000000000000000000000000000000000000050C
          0615287F35C34FE266FF4BDE62FF32B646E643D65AFF3ED054FF104A19AC0204
          020D00000000000000000000000000000000000000000000000008160A26379F
          47D759EC71FF57EA70FF319740CF050E061936B147D94ADD62FF40D357FA030B
          0457010202030000000000000000000000000000000000000000236F2DAA56E8
          6FFF59EC72FF2F8E3DC6050D061500000000103A165055E96DFF52E46AFF298A
          38D50204021C00000000000000000000000000000000000000000A1F0D2B2884
          34B5185120870308040A000000000000000001020101319940B958EB71FF57ED
          70FF0C2B108B0203020700000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000091E0C2750DE67F659EC
          72FF47CD5DF30309044101020102000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001A59237652E3
          6AFF56E86EFF257732CA02050319000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020402042B95
          3BC246D65EFF4BDE63FE0C2B108E0204020A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000819
          0A2343BB54F243CA59FF37BE4BF7020A03560102020400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000113B165E4AC15CFF4DC45FFF31923EE30205023001010101000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001C61249E43B854FF46BD58FF1D5E25C402050316000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000308040A288634CA3BB04CFF36A845F30308041D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000040C0513144B1B7C081B0A3400000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F8FF0000F0FF0000E07F0000C03F0000803F0000001F0000041F00000C0F
          0000FE070000FF070000FF030000FF810000FFC00000FFE00000FFE00000FFF1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000005151
          52557676AEE282828BAA00000000000000000000000000000000000000000000
          0000000000000000000076768CAA7878A8FF5050505500000000363637384545
          CAFF0202BFFF1E1EB2FF7F7F88AA000000000000000000000000000000000000
          00000000000071718BAA0A0A9FFF03039CFF5F5F9EFF515151556767CAE20202
          D8FF0202CFFF0202C5FF1F1FB4FF808088AA0000000000000000000000000000
          00006E6E8BAA0909A6FF0202A3FF0202A0FF03039EFF8484B2FF6767D6E20303
          E4FF0303DDFF0202D5FF0202CBFF1F1FB8FF808088AA00000000000000006C6C
          8CAA0909AEFF0202ABFF0202A8FF0202A4FF0808A3FF7B7B91AA1C1C1D1C5555
          D6E20303E7FF0303E1FF0202DAFF0202D2FF2020BDFF818189AA6A6A8DAA0808
          B7FF0202B3FF0202B0FF0202ADFF0707AAFF6F6F8EAA00000000000000001C1C
          1D1C5656D6E20303E9FF0303E5FF0303DFFF0202D7FF1919C5FF0808C3FF0202
          BCFF0202B9FF0202B5FF0707B3FF6A6A8EAA0000000000000000000000000000
          00001C1C1D1C5757D6E20303EAFF0303E8FF0303E3FF0303DCFF0202D3FF0202
          C9FF0202C0FF0606BBFF67678EAA000000000000000000000000000000000000
          0000000000001C1C1D1C5858D6E20303EAFF0303E9FF0303E6FF0303E0FF0202
          D9FF0505D0FF626290AA00000000000000000000000000000000000000000000
          000000000000000000006F6F95AA2525EBFF0B0BEBFF0303EAFF0303E8FF0303
          E4FF1212D2FF7F7F8AAA00000000000000000000000000000000000000000000
          000000000000737394AA4D4DE5FF5252ECFF5454EEFF4444EEFF3030EDFF2121
          ECFF1717E8FF2A2ACEFF82828BAA000000000000000000000000000000000000
          0000747493AA5555E1FF5C5CE6FF6060E9FF6363ECFF6464EEFF6464F0FF6262
          F1FF5F5FF1FF5A5AEFFF5454D2FF84848CAA0000000000000000000000007575
          93AA5B5BDFFF6363E4FF6868E6FF6B6BE7FF6A6AE8FF6F6F97AA7F7FD3E26D6D
          F0FF6B6BF1FF6767F1FF6161F1FF5858D3FF86868DAA00000000777795AA5F5F
          DCFF6868E2FF6D6DE4FF7171E5FF7171E6FF727296AA000000001D1D1D1C8383
          D3E27474EFFF7070F1FF6B6BF1FF6464F1FF5A5AD2FF8A8A90AA7474DDFF6A6A
          DFFF7070E1FF7575E3FF7474E3FF747495AA0000000000000000000000001D1D
          1D1C8686D2E27777EEFF7373F0FF6C6CF1FF6464F1FF7E7EBCE27171868D7070
          DEFF7777E1FF7676E1FF757595AA000000000000000000000000000000000000
          00001D1D1D1C8989D2E27878EDFF7373EFFF7272E5FF4D4D5255000000008888
          A1AA7E7EDFFF797998AA00000000000000000000000000000000000000000000
          0000000000001D1D1D1C8F8FD2E28181E6FF4D4D525500000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF008FF1000007E0000003C00000018000000001000080030000C0070000E00F
          0000F00F0000E0070000C003000080010000010000000380000007C000008FE1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000202020F100F
          0D3F100F0D3F100F0D3F100F0D3F100F0D3F100F0D3F100F0D3F100F0D3F100F
          0D3F100F0D3F100F0D3F100E0D3F100E0C3F100E0C3F0202020F100F0D3FFBF3
          EBFFFDFAF7FFFDFAF7FFFDFAF7FFFDFAF7FFFDFAF7FFFDFAF7FFFDFAF7FFFDFA
          F7FFFDFAF7FFFDFAF7FFFDFAF6FFFDF9F6FFF9EEE2FF100E0C3F100F0D3FFCF6
          F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E7FF100D0B3F100F0D3FF0EA
          E5FFE3E3E2FFE9E5D4FFE0DAC7FFE7DEC8FFE6DAC2FFDDD0B7FFE3D3B7FFDAC9
          ACFFE1CCABFFD8C2A2FFDFC5A0FFDDC099FFF1E7DDFF100D0B3F100F0D3FF0EA
          E4FFDCDDE3FF8A9FEBFF8FA3E3FF9AAFEBFF99ABE7FF92A1D9FF919FDCFF8B95
          D0FF8992D1FF8489C6FF8285C7FF7E80C1FFF0E6DBFF0F0D0A3F100F0D3FEFEA
          E4FFE1E1DFFFE9E5D4FFE0DAC7FFE5DCC6FFE3D8C0FFDCCFB7FFE3D3B7FFD9C8
          ABFFDFC9A9FFD6C0A0FFDFC5A0FFDDC099FFF0E4D9FF0F0D0A3F100F0D3FF0EA
          E5FFDEDFE5FF879DE9FF8DA1E1FF9AAEEBFF99ABE6FF92A1D9FF919FDCFF8B95
          D0FF8992D1FF8489C6FF8285C7FF7E80C1FFEFE2D5FF0F0C093F100F0D3FEFE9
          E3FFDBDBDAFFE2DFCFFFDAD5C4FFE3DBC7FFDFD5C0FFD5CAB4FFDBCCB3FFD4C5
          ABFFDDCAADFFD2BFA2FFD7C0A1FFD4B994FFECDBCAFF0F0C093F100F0D3FE0E8
          D4FF53C553FF55C255FF5BBC5BFF58B958FF57B657FF5BB05BFF57AD57FF5BA7
          5BFF58A458FF5A9F59FF559851FF54924EFFECD5BFFF0F0C093F100F0D3FEBCB
          BDFFCB7033FFDE9428FFFBF1D9FFFAF2D5FFF7E7C0FFF4DFB3FFF2D8A7FFEFD0
          9AFFECC88EFFE9BF81FFE6B672FFE0AB63FFECCCACFF0F0C083F100E0D3FE8D1
          CBFFD6AFAFFFCA8176FFF6E9E4FFF9EFD6FFF6E6C3FFF4E0BAFFF2D9AFFFEFD0
          A2FFECC794FFE9BF86FFE2B479FFC59B68FFE6C3A0FF0F0B083F100E0C3FFBF4
          EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFBF6F2FFF8EF
          E7FFF5E7DBFFF3E0D0FFF0D9C5FFE7CBB1FFD8B28CFE06050326100E0C3FF8E9
          DBFFFAF1E8FFFAF0E7FFFAF0E6FFF9EFE4FFF8ECE0FFF6E6D6FFF3DFCCFFF1D9
          C2FFEFD3B8FFEDCDAFFFE8C5A3FFCAA37DFC2D20137A00000000020202101411
          0F4314110E4314110E4314110D4314100D4314100D4314100C4314100B43140F
          0B43140F0B43140F0A43120D0943050402220000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000001000000030000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000614F
          4F005E5E5E008B8B8B0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000614F4F007875
          9900A88387005E5E5E008B8B8B00000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000065B8F400408C
          DB007F7AA500A88387005E5E5E008B8B8B000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008294FF0051B7
          FF00408CDB007F7AA500A88387005E5E5E008B8B8B0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008294
          FF0051B7FF00408CDB007F7AA500B08787005E5E5E008B8B8B00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008294FF0055BBFF00407DD2007F7AA500A88387006C666E006C666E006C66
          6E006C666E006C666E008B8B8B00000000000000000000000000000000000000
          0000000000008294FF0051B7FF00408CDB008B8B8B007B7B7B00C4988500D0AC
          9300E3C9B100D5B4A400747373006C666E000000000000000000000000000000
          000000000000000000008294FF008294FF00B0878700F5D2A900FFF4C700FFFC
          D000FFFFDB00FFFFDC00FDF6E200A88387006C666E0000000000000000000000
          0000000000000000000000000000D0AC9300EBCDA800FFF2BF00FFF6C300FFFF
          D900FFFFE900FFFFF800FFFFFF00F4EECD00756161008B8B8B00000000000000
          0000000000000000000000000000D5B4A400FFF1C400FFE4B100FFF9C600FFFF
          DB00FFFFED00FFFFFA00FFFFF700FFFFDB00C39B8A006C666E00000000000000
          0000000000000000000000000000D0AC9300FFF6CD00FFDDAA00FFF5C200FFFF
          D600FFFFE500FFFFED00FFFFE600FFFFD900D0AC93006C666E00000000000000
          0000000000000000000000000000D5B4A400FFF4C700FFE5B800FFEFBC00FFFF
          CC00FFFFD600FFFFDB00FFFFD900FFFCD000D0AC93006C666E00000000000000
          0000000000000000000000000000D5B4A400FFF6CD00FFF1D600FFE3B700FFF1
          BE00FFF5C200FFF9C600FFF6C300FFF8C500B68D80008B8B8B00000000000000
          0000000000000000000000000000DAB39B00ECE0C300FFFFFF00FFFAE800FFEC
          BF00FFDFAC00FFE3B000FFF0BD00F5D2A9009E73730000000000000000000000
          000000000000000000000000000000000000D5B4A400F4EECD00FFFAE800FFF6
          CD00FFEEBB00FFF4C700F8D1A500BB928A000000000000000000000000000000
          00000000000000000000000000000000000000000000D5B4A400D5B4A400CAA5
          8E00E1BBA300DAB39B008B8B8B00000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF008FFF000007FF000003FF000001FF000080FF0000C0070000E0030000F001
          0000F8000000F8000000F8000000F8000000F8000000F8010000FC030000FE07
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FFC0C0
          C0FF636363840000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFD8D8
          D8FFC0C0C0FF6363638400000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFF3F3
          F3FFD8D8D8FFC0C0C0FF63636384000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5475
          F7FFF3F3F3FFD8D8D8FFC0C0C0FF636363840000000000000000000000000000
          00000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF536CF8FF5A68
          FAFF5468F8FFF3F3F3FFD8D8D8FFC0C0C0FF6363638400000000000000000000
          000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF536CF8FF5A68FAFF616B
          F9FF5A68FAFF5468F8FFF3F3F3FFD8D8D8FFC0C0C0FF63636384000000000000
          0000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4E65F7FF5A68FAFF616BF9FF616B
          F9FF616BF9FF5A68FAFF5174F6FFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0
          C0FFD8D8D8FFF3F3F3FFFDFDFDFF536CF8FF5A68FAFF616BF9FF616BF9FF616B
          F9FF5A68FAFF5675F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FFC0C0C0FFD8D8
          D8FFF3F3F3FFFDFDFDFF5475F7FF5A68FAFF616BF9FF616BF9FF616BF9FF5A68
          FAFF5975F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0C0FFF3F3
          F3FFFDFDFDFFFAFAFAFFD6E6FEFF5468F8FF5A68FAFF616BF9FF5A68FAFF5975
          F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5468F8FF5A68FAFF5975F8FFFDFD
          FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000C0C0C0FFFDFD
          FDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF597FF8FFFDFDFDFFF3F3
          F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000C0C0C0FFFDFD
          FDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
          D8FFC0C0C0FF0000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
          C0FF000000000000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
          000000000000000000000000000000000000000000000000000063636384C0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF1F0000FE0F0000FC070000F8030000F0010000E0000000C00000008000
          0000000100000003000000070000000F0000001F0000003F0000007F000000FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000482B
          0147FF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF99
          01FFFF9901FFFF9901FFFF9901FFFF9901FF482B01470000000000000000FF99
          01FFDBC5C5FFFFE5E5FF3D6CFFFF7FB6FFFF2152FFFFFFE0E0FFDBBFBFFFFFDB
          DBFFDBB9B9FFFFD4D4FFDBB2B2FFFFCCCCFFFF9901FF0000000000000000FF99
          01FFDBC9C9FFDBC9C9FF4C7AFFFF3D6CFFFF1C4EFFFFDBC5C5FFDBC1C1FFDBBF
          BFFFDBBCBCFFDBB8B8FFDBB4B4FFDBB2B2FFFF9901FF0000000000000000FF99
          01FFDBCECEFFFFF0F0FF3D6CFFFF7FB6FFFF2152FFFFFFE8E8FFDBC5C5FFFFE1
          E1FFDBBFBFFFFFD9D9FFDBB8B8FFFFD1D1FFFF9901FF0000000000000000FF99
          01FFDBD2D2FFDBD2D2FF4C7AFFFF3D6CFFFF1C4EFFFFDBCCCCFFDBC7C7FFDBC5
          C5FFDBC0C0FFDBBDBDFFDBB9B9FFDBB4B4FFFF9901FF0000000000000000FF99
          01FFDBD8D8FFFFFBFBFF3D6CFFFF7FB6FFFF2152FFFFFFF0F0FFDBCBCBFFFFE6
          E6FFDBC3C3FFFFDEDEFFDBBABAFFFFD4D4FFFF9901FF0000000000000000FF99
          01FFDBDBDBFFDBDBDBFF4C7AFFFF3D6CFFFF1C4EFFFFDBD1D1FFDBCCCCFFDBC9
          C9FFDBC5C5FFDBC0C0FFDBBCBCFFDBB8B8FFFF9901FF0000000000000000FF99
          01FFDBDBDBFFFFFFFFFF3D6CFFFF7FB6FFFF2152FFFFFFF5F5FFDBCECEFFFFEA
          EAFFDBC5C5FFFFE0E0FFDBBCBCFFFFD6D6FFFF9901FF0000000000000000FF99
          01FFDBDBDBFFDBDBDBFF4C7AFFFF3D6CFFFF1C4EFFFFDBD2D2FFDBCECEFFDBC9
          C9FFDBC5C5FFDBC0C0FFDBBCBCFFDBB8B8FFFF9901FF0000000000000000FF99
          01FFDBDBDBFFFFFFFFFF3D6CFFFF7FB6FFFF2152FFFFFFF5F5FFDBCECEFFFFEA
          EAFFDBC5C5FFFFE0E0FFDBBCBCFFFFD6D6FFFF9901FF0000000000000000FF99
          01FFFFAD3EFFFF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF99
          01FFFF9901FFFF9901FFFF9901FFFF9901FFFF9901FF0000000000000000FF99
          01FFFFCC99FFEB8501FFEB8501FFEB8501FFEB8501FFEB8501FFEB8501FFEB85
          01FFEB8501FFEB8501FFEB8501FFF79101FFFF9901FF0000000000000000FF99
          01FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
          99FFFFCC99FFFFCC99FFFFCC99FFFFAD3EFFFF9901FF0000000000000000482B
          0147FF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF9901FFFF99
          01FFFF9901FFFF9901FFFF9901FFFF9901FF482B014700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C003000080010000800100008001000080010000800100008001
          0000800100008001000080010000800100008001000080010000C0030000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000012080116742D01B1110601150000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000D06010E944001CDCC6F11FF8C3C01CB0C04
          010D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000008050108924201BFD77D22FFDB8020FFC46C14FF893B
          01BD070301080000000000000000000000000000000000000000000000000000
          00000000000004020104904601B0E09347FFE29A50FFDB812AFFDC8226FFBF6C
          1AFF843A01AE0302010300000000000000000000000000000000000000000000
          0000000000007A41017FCB6904DDCD6806F4E8A969FFDE8934FFD58432FFC35E
          03F4BB5902DD6D32017D00000000000000000000000000000000000000000000
          0000000000000000000000000000BF6203DAEDB277FFE49140FFCF863EFFC266
          03E1000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C56703DAEFB985FFE8994DFFD08C4BFFC769
          03E1000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C66B03DAF3C293FFEBA158FFD29356FFC96A
          03E1000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C66B03DAF6C9A0FFEFAB65FFD49A61FFC468
          03D8000000000000000000000000000000000000000000000000000000000000
          000000000000945A029ADE8905E4EF8F0DF4F4BE8CFFF3B371FFD49D6AFFD97B
          04F5E17E04E7A25C02AD00000000000000000000000000000000000000000000
          00000000000004030103BA6E02C0FCD4A7FFF7C596FFF7B97FFFF0B781FFF1AE
          67FFB16502BC0302010200000000000000000000000000000000000000000000
          0000000000000000000009060108C57802CBFED3A5FFFAC89EFFF7B979FFC271
          02C8070501060000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E09010DCF7F02D6FECF9AFFCD7D02D30C08
          010B000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000160E0115B96C02BF140D01130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FEFF0000FC7F0000F83F0000F01F0000E00F0000F83F0000F83F
          0000F83F0000F83F0000E00F0000F01F0000F83F0000FC7F0000FEFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0601155221017F853601CC9B4001EF9A3D01EF8030
          01CB4D1A017E0E05011400000000000000000000000000000000000000000000
          000000000000421D0151AA5101EEB95F01FFB85B01FFB35401FFAF4E01FFAD4D
          01FFA94901FF993B01EE3A130150000000000000000000000000000000000000
          0000441E0152BF6201FCC26A01FFC06601FFBC5C01FFE8AC70FFEEB67FFFB655
          01FFB25401FFAA4A01FFA64401FB3A1301500000000000000000000000001308
          0116B7650AEFC87001FFC66F01FFC46401FFE6A665FFFFFFFFFFFFFFFFFFEFB8
          81FFB85501FFB45801FFAA4A01FF993B01EE0E05011500000000000000005E30
          0182D3861EFFCC7501FFCA6D01FFE4A464FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0BB85FFB85601FFB35401FFAA4B01FF4E1D017F0000000000000000A15E
          0DD0D88E1FFFCF7201FFE3A361FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0BB87FFB85801FFAC4B01FF833301CD0000000000000000C57A
          19F4DC901DFFE3A669FFFFFFFFFFFFFFFFFFE5A669FFFFFFFFFFFFFFFFFFEEBA
          84FFFFFFFFFFFFFFFFFFF1BF8DFFB45301FF9D3F01F10000000000000000CA7D
          18F4E39830FFE7BB97FFF1D9C8FFE3A15FFFD56C01FFFFFFFFFFFFFFFFFFD373
          01FFEDBA87FFFFFAF6FFFFF7ECFFC36A10FF9E4101F10000000000000000A966
          0BCEF0B75AFFE58101FFE58201FFE68801FFDB7501FFFFFFFFFFFFFFFFFFD477
          01FFCA7001FFCA6E01FFC46701FFB85B01FF873A01CB00000000000000006437
          017FF5B655FFF2A229FFF08E01FFEF9101FFDC7601FFFFFFFFFFFFFFFFFFD578
          01FFCF7A01FFCA7301FFC46B01FFBB6101FF5324017C00000000000000001109
          0114D3861CECFDC268FFF99B0DFFF49201FFDF7501FFFFFFFFFFFFFFFFFFD475
          01FFD17C01FFCC7401FFC87001FFAD5401EB0E06011200000000000000000000
          00004828014CEEA12DFAFFC565FFF9A322FFE88001FFE2AA75FFE7B68AFFD579
          01FFD17D01FFCD7801FFC16901FA3D1D014A0000000000000000000000000000
          0000000000004628014AD5871CEAFAB955FFF7B54FFFEC9C20FFE3910AFFDB8D
          0FFFD58712FFB86504EA3E1E0149000000000000000000000000000000000000
          000000000000000000000F0801105E340177A56610C4C47C1AE9C27A1BE99D5E
          10C4582E01760E08011000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F81F0000E0070000C0030000C003000080010000800100008001
          0000800100008001000080010000C0030000E0070000F00F0000F81F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000010201040309031300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010301041D6F1DAC28962DE306150624000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010301041D711DAC4AD072FF50DB80FF2A9931E3061506240000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010301041E741EAC50D679FF5AE177FF4FD763FF50DA7EFF2A9931E30615
          0624000000000000000000000000061506271244127000000000000000000103
          01041F761FAC55DA7EFF6BED8AFF62E576FF58DE6BFF50D865FF51DB7FFF2A99
          31E306150624000000000616062727942FE51B6D1BB200000000010201031F78
          1FAC57DB80FF74F293FF72EF87FF6CEC81FF64E678FF5ADF6DFF51D966FF51DB
          80FF2A9931E30C300C4B299731E54FDA86FF1B6D1BB2000000000206020B2999
          2CD662E692FF74EF8DFF75F089FF73F087FF6DED81FF65E779FF5BE06FFF52DA
          68FF52DC81FF37B64CFF4BD779FF4CDA7CFF1C6E1CB10000000000000000040F
          04182A9A2ED662E691FF73EE8CFF75F089FF73F088FF6EED82FF66E87BFF5DE1
          70FF54DB69FF50DB72FF43CF56FF4CD979FF1C6F1CB100000000000000000000
          0000040F04182A9A2ED662E690FF73EE8CFF75F089FF74F088FF6FEE83FF68E9
          7CFF5EE272FF54DB67FF4BD45CFF4FDB7CFF1C6F1CB000000000000000000000
          000000000000040F04182A9A2ED662E590FF72ED8BFF75EF89FF74F089FF70EE
          84FF69EA7DFF60E373FF56DC68FF55DF82FF1D701DB000000000000000000000
          00000000000000000000040F04182A9A2ED661E590FF72ED8AFF75EF89FF75F0
          89FF71EF85FF6AEA7FFF61E475FF5CE589FF1D721DB000000000000000000000
          00000000000000000000000000000C2D0C3F3CC14CFF6DEB93FF72EB86FF75EF
          89FF75F089FF71EF86FF6BEB80FF63E990FF1D721CAF00000000000000000000
          000000000000000000000719072730A938E55EDF8CFF67DF7CFF6DE581FF71EA
          85FF74EE89FF75F089FF72EF87FF68ED97FF1D731DAF00000000000000000000
          000000000000071907272EA831E554DA87FF5ADB87FF5EDF89FF61E38DFF64E6
          91FF67E994FF69EC97FF6AED97FF63E997FF1E731DAE00000000000000000000
          000000000000114011571E741E9F1E731E9F1E721D9F1E711D9F1D701C9F1D70
          1C9F1C6E1C9F1D701CA21C6E1CA21C6D1CA21143116400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F9FF0000F0FF0000E07F0000C03900008011000000010000000100008001
          0000C0010000E0010000F0010000F8010000F0010000E0010000E0010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000006B6968A49C9A
          99F79B9999F79A9898F7999797F7989696F7979595F7969494F7949393F79492
          92F7939191F7939191F7939191F7939191F7929090F75F5D5DAA999797F4F2EC
          ECFFD4CFCFFFD4CFCFFFD4CFCFFFD4CFCFFFD4CFCFFFD4CFCFFFD4CFCFFFE1DB
          DBFFF5EEEEFFF5EEEEFFEFE9E9FFF3EDECFFF6F0F0FF908E8EF5999797F4E9E2
          E2FFB4AEAEFFB4AEAEFFB4AEAEFFB4AEAEFFB4AEAEFFB4AEAEFFB4AEAEFFCBC3
          C3FFEDE4E4FFE1D9DDFF4847B1FF8E8BC1FFEFE8E8FF908E8EF6999797F4E8E0
          E0FFD7CECEFFD7CECEFFD7CECEFFD7CECEFFD7CECEFFD7CECEFFD7CECEFFDDD4
          D4FFE5DBDBFFCBC2C5FF6665B6FF8985B1FFE8E0E0FF908E8EF6979696F3E8E2
          E2FFE5DDDDFFE5DDDDFFE5DDDDFFE5DDDDFFE5DDDDFFE5DDDDFFE5DDDDFFE5DD
          DDFFE5DDDDFFE5DDDDFFD2CBCBFFDFD7D7FFE8E1E1FF8F8E8EF5848282E3CCC9
          C9FFCECBCBFFCECBCBFFCECBCBFFCECBCBFFCDCACAFFCCC9C9FFCAC8C8FFC9C5
          C5FFC7C4C4FFC5C2C2FFC3C1C1FFC2BFBFFFBEBBBBFF787575E35151519DB1B0
          B0FFB3B0B0FFB3B0B0FFB1AEAEFFAEACACFFAEABABFF499A4BFF419D45FFA4A1
          A1FFA8A5A5FFB0ADADFFB3B0B0FFB3B0B0FFACAAAAFF4E4D4D9C353535689E9D
          9DFAD5CFCFFFCCC4C4FFC7C0C0FFD4CECEFF52A654FF45CF67FF44CF66FF43A0
          47FFAAA5A5FFB1ABABFFCCC4C4FFD5CFCFFF939292F935353568000000003535
          3568B1AFAFFFBEB6B6FFBDB6B6FF4DA34FFF54DB78FF4CD55EFF40CD51FF44CF
          66FF439F47FFBCB4B4FFBEB6B6FFAFADADFF3535356800000000000000000000
          000035353568ACAAAAFF4BA64EFF62E586FF6BEC80FF5DE270FF4DD75FFF41CE
          52FF44CF66FF419E45FFA7A5A5FF353535680000000000000000000000000000
          000000000000207E20C34ED472FF5FE180FF72F18EFF6CED81FF5FE473FF52DB
          6BFF43CD63FF41C765FF1F7B1FCE000000000000000000000000000000000000
          000000000000081E084D0924095C1D731CC26BEB8FFF74F088FF6EED82FF64EA
          88FF1E781DD00920085C071D0752000000000000000000000000000000000000
          0000000000000000000000000000144E14A065E488FF70EA84FF74F088FF6EF1
          94FF175B17B30000000000000000000000000000000000000000000000000000
          0000000000000000000000000000144F14A05DDA7FFF67E07AFF6FE983FF71F1
          96FF175D17B30000000000000000000000000000000000000000000000000000
          0000000000000000000000000000145014A053D074FF5BD26CFF66DE79FF6CEB
          91FF175E17B30000000000000000000000000000000000000000000000000000
          00000000000000000000000000001248128F3FC657FD41C75AFD44C95DFD46CB
          61FD165615A20000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          000080010000C0030000E0070000E0070000F81F0000F81F0000F81F0000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00007D7A7AD7969292F5949191F5939090F5928F8FF5928E8EF5918D8DF5908C
          8CF58F8C8CF58F8B8BF58E8A8AF58E8A8AF5716E6ED200000000000000000000
          0000928E8EEFFAF6F4FFD8BFBCFFC27B74FFF6ECE8FFF5EAE7FFF5E9E5FFF4E8
          E4FFF4E8E3FFF4E8E3FFF4E8E3FFF8F1EFFF817E7EE900000000000000000000
          0000948F8FEFCFA7A0FFD58755FFC57A64FFF2E2DDFFF1DFD9FFF0DDD6FFEFDA
          D3FFEED9D1FFEED8D0FFEED8D0FFF5EAE5FF827F7FE900000000000000000201
          0104A06859F8E39664FFEE996FFFCD8156FFC7836DFFC4816BFFC37E69FFC17C
          67FFBC756BFFEEDAD2FFEED8D0FFF5EAE5FF827F7FE900000000070302138C46
          2CBDE99B6CFFF09678FFF09676FFED9470FFE78E68FFDF865DFFD77E53FFD178
          4AFFC06C49FFF0DDD7FFEFDBD4FFF5EAE7FF838080E9000000007F3A23AFE59B
          66FFE78B71FFED9276FFF09678FFF09677FFED9371FFE78C68FFDF835CFFD77D
          52FFC26F4CFFF2E2DCFFF1DFD9FFF6ECE9FF848080E9000000000503020E8644
          28B4E19264FFE68B72FFEC9176FFF09878FFF19A76FFEE9771FFE89169FFE189
          5FFFC4734EFFF4E7E2FFF3E4DEFFF7EFECFF858181E900000000000000000101
          0102A5705FF8DD8F5DFFE89270FFD28659FFCF927AFFCD9079FFCC8E79FFCA8C
          78FFC7877CFFF6EBE7FFF5E8E4FFF8F1EFFF868282E900000000000000000000
          00009A9595EFD7B5AAFFD78C58FFCF8869FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
          EEFFF8F0EDFFF8EFEBFFF7EDE9FFF9F3F1FF878383E900000000000000000000
          00009B9696EFFAF6F4FFE0CAC2FFD08F7CFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
          EEFFF9F1EEFFF9F0EDFFF8F0ECFFFAF5F3FF888484E900000000000000000000
          00009C9797EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
          EEFFF9F1EEFFF8F0EDFFF8F0EDFFFAF6F4FF898585E900000000000000000000
          00009C9898EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
          EEFFF8F0EDFFEEE6E3FFE4DCDAFFE7E4E2FF868282E900000000000000000000
          00009D9999EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
          EEFFF7EFECFFA5A0A0FF9E9A9AFF999595FF827E7EE100000000000000000000
          00009E9999EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
          EEFFF7EFECFFA19D9DFFD3D1D2FF908C8CEE2120203400000000000000000000
          00009F9A9AEFFBF9F8FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
          F4FFFAF5F4FFA19C9CFF928E8EEE212020340000000000000000000000000000
          0000888383D29F9A9AEF9E9999EF9D9999EF9C9898EF9C9797EF9B9696EF9A95
          95EF999595EF888484E122212134000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0010000C0010000C0010000800100000001000000010000000100008001
          0000C0010000C0010000C0010000C0010000C0010000C0010000C0030000C007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000104070A0148838A01101D23000000000000000000000000000000000000
          000000000000010C181F013F7F8801060B100000000000000000000000000000
          0000010305070A90F2FD1698F0FB01559EA701172A3000000000000000000113
          242C014B97A2168DEBFA097EEDFE01060B100000000000000000000000000000
          0000000000000985DBE456E3FCFF42CBF9FF1C9EF3FE015BADB70157A7B21D98
          F0FD43C8F8FF55E1FCFF0874DEEE000000000000000000000000000000000000
          000000000000016EBDC452E4FCFF37D3FDFF42D6FCFF45CEFAFF45CEFAFF40D3
          FCFF31C9FDFF4AD7FBFF0160C1CF000000000000000000000000000000000000
          000000000000015EA0A551E3FCFF43E5FDFF3BD9FDFF34D0FDFF31CAFDFF30C9
          FDFF30C9FDFF44CDF9FF0152A3AF000000000000000000000000000000000000
          0000000000000151878B4BDDFBFF4EF6FEFF48ECFEFF40E1FDFF38D6FDFF32CD
          FDFF30C9FDFF3EC3F8FF01478B94000000000000000000000000000000000000
          0000011D2E320F9DEAF05AF3FDFF53FEFFFF51FBFEFF4CF3FEFF45E9FDFF3DDD
          FDFF36D3FDFF49D6FBFF0D84E6F3011C353A0000000000000000000000000118
          25290B9AE6EA52EAFDFF4CF7FEFF4FFCFFFF52FEFFFF53FDFFFF50F9FEFF4AF0
          FEFF43E5FDFF3DDBFDFF4CD7FAFF0A7DDFED01162A2F0000000001131C200897
          E1E34AE1FDFF3DE8FEFF41EEFFFF47F4FFFF4CF9FFFF50FDFFFF53FEFFFF52FC
          FEFF4EF6FEFF48ECFEFF43E2FDFF4CD7FAFF0778DAE701112126018FD8D924C0
          FDFF40D8FDFF4BE5FDFF4DEBFEFF47EDFEFF43F0FEFF48F5FFFF4DFAFFFF52FD
          FEFF5AFDFEFF5EFAFDFF57EAFCFF46D1F9FF25A5F4FF016CD1DF0119252B013E
          5E5F015E8F90017CBFC10B9FEDF025BDFCFF4DECFEFF3FECFFFF45F2FFFF58F6
          FDFF27B3F8FF0B8EE8F10168BAC3014C8B9201325C610114262E000000000000
          000000000000000000000102020201598B8D3BD0FCFF3AE4FEFF3FE9FEFF3CCE
          FBFF015792970102020200000000000000000000000000000000000000000000
          000000000000000000000000000001090D100A9DE9EC49E5FDFF4BE6FDFF0998
          EBF1010C13150000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001476E6F32C9FCFF30C6FCFF014B
          787A000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010405060590D9DB0592DFE20105
          0809000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000012E464801334E4F0000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C7E30000C1830000E0070000E0070000E0070000E0070000C00300008001
          0000000000000000000000000000F00F0000F81F0000FC3F0000FC3F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000001717173540404085080808140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005858589FADADADFF232323520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E7E7ECC9D9D9DFF0F0F0F270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020203A0A0A0F58F8F8FF5020202030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0D26ABABABFF747474CC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222253B3B3B3FF5650519F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404080B7B6B6FF831D2AE3160406290000000000000000000000000000
          0000020101022C070C52751822BAA42030F170121CBC03010207000000000000
          0000646464ADA99A9BFFB32F3EFFAE2F3EF34F0E168823060946230609494A0C
          1382952330DED8495AFFE44B5DFFD02F41FFA01827F502010102000000000000
          0000898989D9A17D80FFC13848FFE15162FFE75566FFC83142FFB6182AFFC828
          3AFFE1485AFFEC5769FFE14659FFCD293DFF7D121ECB00000000000000000404
          040AA6A6A6FC9F656BFFCE4151FFE45264FFEB5466FFD33144FFC0192CFFCF2E
          40FFE54C5EFFEC5668FFDE4255FFC92538FF5B0E179D00000000000000001313
          1334ACADACFFA75760FFD44455FFE65566FFEA5263FFCE293DFFC1192DFFD332
          45FFE75162FFE95566FFDA3C4FFFC32134FF3F0B107000000000000000002B2B
          2B61B6B7B6FFAB404DFFD84959FFE95668FFE64D5FFFC92236FFC31B2FFFD738
          4BFFE95566FFE95263FFD7374AFFB71C2FFF2206094300000000000000004B4B
          4B8EB4B0AFFFAD2D3CFFDB4C5CFFEA5869FFE24558FFC51E31FFC62033FFDB3E
          51FFEC5668FFE54F60FFD33245FFAD192BFE0A02031600000000000000006F6F
          6FBAA59596FFB12D3CFFDE4F5FFFEC5769FFDD3E51FFC21A2EFFC92538FFDF44
          57FFD74859FFB73040FAAB2031F9911624E90000000000000000000000004343
          4383666666C537131766A72D3AEDDB4C5CFFD43547FFB8182AFFAB1E2EFA6C15
          1FB02B070B4D040102080602020B2F080C540000000000000000000000000000
          000000000000000000000602020D2E080C563E0A106F2D080C540A0203140000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000C000
          0000C0010000800100008001000080010000800100008003000080030000F07F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000001717173540404085080808140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005858589FADADADFF232323520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E7E7ECC9D9D9DFF0F0F0F270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020203A0A0A0F58F8F8FF5020202030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0D26ABABABFF747474CC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222253B3B3B3FF55544E9F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404080B6B7B6FF83741DE3161204290000000000000000000000000000
          0000020201022C270752756718BAA48E1EF1706312BC03030107000000000000
          0000646464ADA9A79AFFB3A12FFFAE9B2FF34F450E88231F0646231F06494A41
          0C82958623DED8C449FFE3CA48FFD0BA2FFFA08E18F502020102000000000000
          0000898989D9A19C7DFFC1AD38FFE0CC51FFE3CE55FFC8B431FFB69F18FFC8B2
          28FFDFC846FFECD653FFDFC644FFCDB529FF7D6E12CB00000000000000000404
          040AA6A6A6FC9F9462FFCEBB41FFE4CC52FFE7D154FFD3BC31FFC0A719FFCFB9
          2EFFE4CD49FFECD552FFDEC542FFC9B225FF5B510E9D00000000000000001313
          1334ACACADFFA79D57FFD4BD43FFE2CD55FFEAD652FFCEB629FFC1A619FFD3BB
          31FFE6D151FFE5D055FFDABF38FFC3AC21FF3F380B7000000000000000002B2B
          2B61B6B6B7FFAB9A40FFD8C549FFE5CF56FFE5CC4AFFC9AD21FFC3A819FFD7BD
          34FFE5D055FFE9D552FFD7BF34FFB69D19FF221E064300000000000000004B4B
          4B8EB1B3ADFFAD9A2DFFDBC548FFE8D056FFE1C642FFC5AC1EFFC6AE20FFDAC1
          3BFFECD552FFE4CF4FFFD3BB31FFAD9418FE0A09021600000000000000006F6F
          6FBAA5A395FFB19F2DFFDCC84FFFECD653FFDCC13CFFC2A719FFC9B225FFDEC4
          42FFD7BF44FFB69F2FFAAB9820F9918016E90000000000000000000000004343
          4383666666C537321366A7962DEDDBC548FFD4BD35FFB8A218FFAB981EFA6C60
          15B02B25074D040401080605020B2F2A08540000000000000000000000000000
          000000000000000000000606020D2E2908563E360A6F2D2808540A0902140000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000C000
          0000C0010000800100008001000080010000800100008003000080030000F07F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000001717173540404085080808140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005858589FADADADFF232323520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E7E7ECC9D9D9DFF0F0F0F270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020203A0A0A0F58F8F8FF5020202030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0D26ABABABFF747474CC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222253B3B3B3FF50564F9F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404080B6B7B6FF1F831DE3041604290000000000000000000000000000
          000001020102082C0752197518BA23A41FF1137012BC01030107000000000000
          0000646464AD9AA99AFF30B32FFF30AE2FF30F4F0E8806230646062306490D4A
          0C82249523DE4BD849FF4DE44AFF30D02FFF19A018F501020102000000000000
          0000898989D97DA17DFF3AC138FF53E051FF57E655FF32C831FF1AB618FF29C8
          28FF4AE147FF59EC56FF49E046FF2CCD29FF137D12CB00000000000000000404
          040AA6A6A6FC659F64FF42CE41FF55E452FF56EA54FF33D331FF1BC019FF2FCF
          2EFF4EE54BFF58EC55FF45DE42FF27C925FF0F5B0E9D00000000000000001313
          1334ACACADFF57A757FF46D443FF57E555FF53EA52FF2CCE29FF1CC119FF34D3
          31FF52E651FF57E855FF3FDA3BFF23C321FF0B3F0B7000000000000000002B2B
          2B61B6B6B7FF42AB40FF4AD849FF59E856FF4FE64CFF25C921FF1EC31AFF3BD7
          37FF57E855FF53E952FF39D736FF1FB71BFF0622064300000000000000004B4B
          4B8EAEB4B0FF2FAD2DFF4DDB4BFF5AEA57FF48E244FF20C51EFF22C620FF41DB
          3DFF58EC55FF50E44FFF34D331FF1CAD18FE020A021600000000000000006F6F
          6FBA95A595FF2EB12DFF50DD4FFF59EC56FF41DD3DFF1DC219FF27C925FF47DF
          43FF4AD747FF32B72FFA22AB20F9179116E90000000000000000000000004343
          4383666666C5143713662DA72DED4DDB4BFF37D435FF19B818FF1FAB1EFA166C
          15B0082B074D010401080206020B092F08540000000000000000000000000000
          000000000000000000000206020D082E08560B3E0A6F082D0854020A02140000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000C000
          0000C0010000800100008001000080010000800100008003000080030000F07F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000001717173540404085080808140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005858589FADADADFF232323520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E7E7ECC9D9D9DFF0F0F0F270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020203A0A0A0F58F8F8FF5020202030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0D26ABABABFF747474CC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222253B3B3B3FF554F559F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404080B7B6B6FF831D82E3150416290000000000000000000000000000
          0000020102022C072C52751873BAA31EA4F170126EBC03010307000000000000
          0000646464ADA99AA8FFB32FB1FFAE2FADF34F0E4E8823062246230623494A0C
          4982952394DED849D6FFE249E3FFD02FCDFFA0189DF502010202000000000000
          0000898989D9A17DA0FFC138C0FFE051DEFFE455E4FFC831C5FFB618B5FFC828
          C5FFE046E0FFEC54EBFFDE45DFFFCD29CCFF7D127BCB00000000000000000404
          040AA6A6A6FC9E629FFFCE41CBFFE352E4FFE854E8FFD331D1FFC019BFFFCF2E
          CCFFE549E5FFEC53EBFFDD42DEFFC925C7FF5B0E5A9D00000000000000001313
          1334ACADACFFA757A4FFD343D4FFE355E3FFEA52E7FFCE29CDFFC019C1FFD331
          D2FFE651E4FFE655E6FFD839DAFFC321C1FF3F0B3E7000000000000000002B2B
          2B61B6B7B6FFAB40ABFFD849D5FFE556E6FFE44BE5FFC721C9FFC219C3FFD635
          D7FFE655E6FFE952E6FFD734D6FFB519B7FF2206214300000000000000004B4B
          4B8EB3ADB1FFAD2DACFFDB49DAFFE756E9FFDE43E1FFC51EC4FFC620C4FFD93C
          DAFFEC53EBFFE44FE2FFD331D2FFAB18ADFE0A02091600000000000000006F6F
          6FBAA595A4FFB12DAFFFDC4FDAFFEC54EBFFDA3CDCFFC119C2FFC925C7FFDC42
          DEFFD645D7FFB42FB6FAAB20A9F991168FE90000000000000000000000004343
          4383666666C537133666A72DA5EDDB49DAFFD435D3FFB818B5FFAB1EA8FA6C15
          6AB02B072A4D040104080602050B2F082F540000000000000000000000000000
          000000000000000000000602060D2E082E563E0A3E6F2D082D540A0209140000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000C000
          0000C0010000800100008001000080010000800100008003000080030000F07F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000001717173540404085080808140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005858589FADADADFF232323520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E7E7ECC9D9D9DFF0F0F0F270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020203A0A0A0F58F8F8FF5020202030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0D26ABABABFF747474CC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222253B4B3B3FF5151569F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404080B6B6B7FF1E1E83E3040416290000000000000000000000000000
          00000101020207072C52181875BA2121A4F1121270BC01010307000000000000
          0000646464AD9A9AAAFF2F2FB4FF3030AEF30E0E4F8806062346060623490C0C
          4A82232395DE4A4AD8FF4C4CE4FF2F2FD0FF1818A0F501010202000000000000
          0000898989D97E7DA1FF3838C1FF5151E2FF5555E8FF3131C8FF1818B6FF2828
          C9FF4848E2FF5858ECFF4747E1FF2A2ACDFF12127DCB00000000000000000404
          040AA6A6A6FC67669FFF4141CEFF5353E4FF5555EBFF3131D3FF1919C0FF2E2E
          CFFF4D4DE5FF5757ECFF4343DEFF2525C9FF0E0E5B9D00000000000000001313
          1334ADACACFF5757A7FF4545D4FF5555E7FF5252EAFF2A2ACEFF1A1AC1FF3333
          D3FF5151E8FF5555EAFF3D3DDAFF2121C3FF0B0B3F7000000000000000002B2B
          2B61B7B6B6FF4141ABFF4949D8FF5757E9FF4D4DE7FF2323C9FF1C1CC3FF3939
          D7FF5555EAFF5252E9FF3838D7FF1D1DB7FF0606224300000000000000004B4B
          4B8EB1B0B4FF2D2DADFF4C4CDCFF5858EBFF4646E2FF1E1EC5FF2020C6FF3F3F
          DBFF5757ECFF4F4FE6FF3333D3FF1A1AADFE02020A1600000000000000006F6F
          6FBA9595A6FF2D2DB1FF4F4FDFFF5858ECFF3F3FDDFF1B1BC2FF2525C9FF4545
          DFFF4949D7FF3131B7FA2121ABF9161691E90000000000000000000000004343
          4383666666C5131337662D2DA7ED4C4CDCFF3535D4FF1818B8FF1E1EABFA1515
          6CB007072B4D010104080202060B08082F540000000000000000000000000000
          000000000000000000000202060D08082E560A0A3E6F08082D5402020A140000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000C000
          0000C0010000800100008001000080010000800100008003000080030000F07F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000001717173540404085080808140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005858589FADADADFF232323520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E7E7ECC9D9D9DFF0F0F0F270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020203A0A0A0F58F8F8FF5020202030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0D26ABABABFF747474CC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222253B3B3B3FF4F55569F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000040404080B6B6B7FF1D7A83E3041416290000000000000000000000000000
          00000102020207292C52186C75BA1E9AA4F1126770BC01030307000000000000
          0000646464AD9AA7A9FF2FA6B3FF2FA2AEF30E494F8806202346062023490C44
          4A82238A95DE49CBD8FF4AD7E3FF2FC0D0FF1892A0F501020202000000000000
          0000898989D97D9DA1FF38B5C1FF51D3E0FF55D9E5FF31B9C8FF18A8B6FF28B8
          C8FF46D4E1FF55DFECFF46D3DFFF29BFCDFF12727DCB00000000000000000404
          040AA6A6A6FC639A9FFF41C0CEFF52D8E4FF54DCE9FF31C4D3FF19B1C0FF2EBF
          CFFF4AD8E5FF54DFECFF42D1DEFF25BAC9FF0E545B9D00000000000000001313
          1334ADACACFF579EA7FF43C8D4FF55D8E4FF52DBEAFF29C0CEFF19B3C1FF31C5
          D3FF51D8E6FF55DBE7FF3ACEDAFF21B4C3FF0B3A3F7000000000000000002B2B
          2B61B7B6B6FF40A2ABFF49CAD8FF56DCE7FF4CD9E5FF21BCC9FF19B5C3FF36CA
          D7FF55DBE7FF52DAE9FF35C9D7FF1AABB7FF061F224300000000000000004B4B
          4B8EADB1B4FF2DA2ADFF4ACEDBFF57DEE9FF44D6E1FF1EB6C5FF20B7C6FF3CCF
          DBFF54DFECFF4FD6E4FF31C5D3FF18A2ADFE02090A1600000000000000006F6F
          6FBA95A3A5FF2DA4B1FF4FCFDCFF55DFECFF3DD0DCFF19B4C2FF25BAC9FF43D3
          DEFF46CBD7FF2FACB6FA209FABF9168591E90000000000000000000000004343
          4383666666C5133437662D9BA7ED4ACEDBFF35C6D4FF18A8B8FF1E9DABFA1563
          6CB007282B4D010404080205060B082C2F540000000000000000000000000000
          000000000000000000000206060D082B2E560A3A3E6F082A2D5402090A140000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000C000
          0000C0010000800100008001000080010000800100008003000080030000F07F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E561778192D0C480000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003059177D7BC54DFF223D10620000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003059177D7BC54DFF7BC54DFF223C10620000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003059177D7BC54DFF85E76AFF7BC54DFF233F10620000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003059177D7BC54DFF86E66CFF9BE570FF7BC54DFF5CA630E8569A
          2CD956982CD957982BD957972BD958952BD958942BD94E7A22BB000000000000
          00003059177D7BC54DFF86E76CFF9BE570FF9DE873FF94EF74FF87F274FF88F4
          74FF87F473FF84F272FF81F06FFF7DEE6BFF71EF68FF5EA131E8000000003059
          177D7BC54DFF87E86CFF9CE671FF9FEA74FFA0ED75FFA1EF77FFA0F077FF9FF0
          76FF9CEF74FF96ED70FF91E96AFF8BE465FF77E761FF60A031E82E5617787BC5
          4DFF86E96CFF9BE671FF9EEA74FFA0ED76FFA1EF77FFA0F077FF9FF076FF9BEF
          73FF95EB6FFF90E76AFF8AE463FF82DE5DFF71E25CFF619E31E8325B18807BC5
          4DFF8CEC6FFF9FEA75FFA1EE76FFA1F077FFA0F077FF9FF076FF9AEE73FF95EB
          6FFF8FE769FF89E362FF81DE5BFF7AD954FF6ADF55FF609D2FE800000000355F
          19887BC54DFF8EF174FFA0F077FFA0F077FF9DF075FF9AEE72FF94EB6DFF8DE6
          68FF88E262FF81DD5BFF7AD953FF74D44DFF66DB51FF609C2FE8000000000000
          000037601A8C7BC54DFF8EF374FF9DF075FF98EE72FF8AED6CFF7EEC69FF79E9
          64FF74E45FFF6FE25AFF69DD55FF65DB50FF5EE053FF619B2FE8000000000000
          000000000000385F1A8C7BC54DFF87F170FF91EA6BFF7BC54DFF63A733F05E9E
          31E65E9D2FE65F9C2FE6609B30E65F9A2FE660992FE6577C22C7000000000000
          000000000000000000003A5E1A8D7BC54DFF7EE967FF7BC54DFF263B10620000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003A5C198D7BC54DFF7BC54DFF253710620000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C5B198D7BC54DFF253710620000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003B5719891E2C0D4F0000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE7F0000FC7F0000F87F0000F07F0000E0000000C0000000800000000000
          00000000000080000000C0000000E0000000F07F0000F87F0000FC7F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000207
          0B10115096A61969BFD41A66BFD51962BDD5195FBBD5195BB9D51958B7D51958
          B6D51958B6D51958B6D51856B6D4103B89A10204080C00000000000000000E45
          7A8440BFEFFF43CAF0FF41C6F0FF40C5F0FF40C5F0FF40C5F0FF40C5F0FF40C5
          F0FF40C5F0FF40C5F0FF41C5F0FF3CABE8FF0D2E697B00000000000000001054
          929D48D4F1FF2FB9EFFF2AABEEFF29A3EDFF289EEBFF289BEAFF2799E9FF2799
          E9FF2799E9FF2799E9FF2AA0EAFF40BBECFF0F377F9500000000000000001156
          939D4CDEF2FF39CFF2FF32C0F0FF2FB5EEFF2CAAEDFF2AA2EBFF299EEAFF299C
          EAFF299CEAFF299CEAFF2AA3EBFF40BBECFF0F377F9500000000000000001158
          949D4FE4F3FF3BD9F3FF36CBF2FF32C1F0FF2EB6EEFF2BABEDFF29A2EBFF289B
          EAFF2799E9FF2799E9FF299FEAFF40BBECFF0F377F9500000000000000001159
          949D4EE4F3FF3EE1F2FF3BDAF2FF3AD6F3FF38CDF1FF34C2F0FF30B6EDFF2DAB
          EBFF2AA2EBFF299DEAFF2AA2EBFF40BBEDFF0F377F9500000000000000001159
          959D4BE0F3FF3BDAF3FF38D6F2FF39D6F2FF38D4F3FF37CDF1FF33C2F0FF30B6
          EEFF2CABEBFF29A1EAFF2AA0EBFF40BCEDFF0F387F9500000000000000001159
          959D48DBF2FF36D5F2FF37D4F3FF39D7F3FF3ADAF3FF3BDBF2FF3BD6F2FF39CE
          F1FF36C3EFFF31B7ECFF30B2ECFF42C0EDFF0F3A819500000000000000000E4B
          7C8341CAF2FF48E2F3FF4BE6F3FF4EEBF3FF50EEF4FF52F1F3FF53F2F3FF53F1
          F4FF52EDF3FF4FE6F2FF4BDEF2FF3FB6EBFF0C326B7A00000000000000000208
          0C10256EAABB41A3EDFF40A3ECFF2687D0E21A7CC6D21A7AC5D21A76C3D21A73
          C3D22379C9E23D90E2FF3D8CE1FF215499B80205090C00000000000000000000
          00003E3F4162E1DCDCFFDDD8D8FF35393E5E0000000000000000000000000000
          00002A2F355DCFCBCBFFCFCBCBFF343435630000000000000000000000000000
          00003F3D3D5FE3DEDEFFE1DCDCFF444141620000000000000000000000000000
          000038363663D2CECEFFCFCBCBFF353333610000000000000000000000000000
          000028272741DFDAD9FFF0EBEAFF878282B80303030500000000000000000504
          04087A7575BFE6E0E0FFC8C4C4FF252424470000000000000000000000000000
          000005050508C0B9B9EDF9F3F3FFE5E1E0FFB3AFAFEA999494D2959191D2ACA8
          A8EDDDD9D9FFF0EAEAFFA7A2A2F30606060D0000000000000000000000000000
          0000000000004744445BD5D0D0FDF4EEEEFFFBF6F6FFFAF6F6FFF9F5F5FFF7F2
          F2FFEDE9E9FFC3C0C0FE4441416B000000000000000000000000000000000000
          000000000000000000002B2A293A7C7777A09C9797CB9F9B9AD29C9897D29590
          90CE73706FA82E2C2C4600000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          00008001000080010000C3C30000C3C30000C1830000C0030000E0070000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000010051029AB4BA1FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000010041028AB4BA1FFAB4BA1FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001004
          1028AB4BA1FFD041B6FFAB4BA1FFAB4BA1FFAB4BA1FFAB4BA1FFAB4BA1FF0000
          00000000000000000000000000000000000000000000000000004D434E93AB4B
          A1FFD041B7FFD44BC2FFE25CCCFFED6BD5FFF072D8FFEB71D4FFAB4BA1FFB7BA
          BAF2707474E46F7373E46F7272E46F7272E46F7272E44B4C4C80AB4BA1FFD445
          B6FFD74CC4FFE35DCFFFED6DD8FFF072DAFFEA70D5FFE066CCFFAB4BA1FFF2F6
          F6FFE7ECECFFE7ECECFFE7EDEDFFF2F4F4FFC8CACAFF9A9B9BF1CFCBD0FFAB4B
          A1FFE561CBFFEE6FD9FFF072D8FFEA6FD2FFDF65C8FFD25BBDFFAB4BA1FFEFF3
          F3FFDEE8E8FFDEE8E8FFE7EDEDFFBEC3C3FFE7EDEDFFA1A3A3F1AAADADFEE7E5
          EAFFAB4BA1FFF071D2FFAB4BA1FFAB4BA1FFAB4BA1FFAB4BA1FFAB4BA1FFEBEF
          EFFFEDF5F5FFEDF1F1FFBCC3C3FFE1EAEBFFE8EFF0FFA1A4A4F1ABAEAEFEEDF5
          F5FFE7E5EAFFAB4BA1FFAB4BA1FFEBECECFFDEE3E3FFDFE0E0FFDFE0E0FFDEE3
          E3FFD6D9D9FFBFC3C4FFE4ECECFFE8F0F0FFEDF5F5FFA2A5A5F1ACAFAFFEF2F7
          F7FFECF5F5FFE8E6EBFFAB4BA1FFE4E7E7FFBDBFBFFFDFE2E2FFDFE2E2FFBDBF
          BFFFC8CFCFFFCED7D8FFEAF2F2FFECF5F5FFF2F7F7FFA3A6A6F1ACAFAFFFF2F7
          F7FFECF5F5FFEAF2F2FFE4E7E7FFDFE0E0FFDFE2E2FFDEE2E2FFDEE2E2FFDFE2
          E2FFBDBFBFFFC8CFCFFFEAF2F2FFECF5F5FFF2F7F7FFACAFAFFEAEB0B0FEF2F9
          F9FFF1F7F7FFCCD3D3FFBDBFBFFFDFE2E2FFE5E9E9FFDAE3E3FFDAE3E3FFE5E9
          E9FFDFE2E2FFBDBFBFFFCCD3D3FFF1F7F7FFF2F9F9FFA5A7A7F1AFB2B2FEF2F9
          F9FFCCD3D3FFBDBFBFFFDFE2E2FFEDF1F2FFE6EFEFFFE6EEEFFFE6EEEFFFE6EF
          EFFFEDF1F2FFDFE2E2FFBDBFBFFFCCD3D3FFF2F9F9FFA6A9A9F1AFB3B3FECCD3
          D3FFBDBFBFFFDFE2E2FFF4F9F9FFEFF7F7FFEFF8F8FFEFF7F8FFEFF7F8FFEFF8
          F8FFEFF7F7FFF4F9F9FFDFE2E2FFBDBFBFFFCCD3D3FFA6AAAAF1ACAFAFFEBDBF
          BFFFDFE2E2FFF4F9F9FFF1F9F9FFF1F9F9FFF1F9F9FFF1F9F9FFF1F9F9FFF1F9
          F9FFF1F9F9FFF1F9F9FFF4F9F9FFDFE2E2FFBDBFBFFFA3A6A6F14B4C4C809598
          98FF9A9D9DFF9A9E9EFF9B9F9FFF9CA0A0FF9EA1A1FF9FA2A2FF9FA2A2FF9EA1
          A1FF9CA0A0FF9B9F9FFF9A9E9EFF9A9D9DFF959898FF4B4C4C80000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E7FF0000C7FF0000807F0000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004BAB55FF05100529000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004BAB55FF4BAB55FF041004280000000000000000000000000000
          000000000000000000000000000000000000000000004BAB55FF4BAB55FF4BAB
          55FF4BAB55FF4BAB55FF42D05BFF4BAB55FF04100428000000004C4B4B80726F
          6FE4726F6FE4726F6FE4736F6FE4747070E4BAB8B8F24BAB55FF71EC87FF73F0
          8AFF6CED82FF5CE272FF4BD55DFF42D059FF4BAB55FF444E43939C9A9AF1CAC8
          C8FFF5F2F2FFEDE7E7FFECE7E7FFECE7E7FFF6F3F3FF4BAB55FF67E07BFF70EA
          84FF73F088FF6DED81FF5EE372FF4DD75FFF46D463FF4BAB55FFA3A1A1F1EDE7
          E7FFC3BFBFFFEDE7E7FFE8DFDFFFE8DFDFFFF4EFEFFF4BAB55FF5BD26FFF66DF
          7DFF6FEA86FF73F08AFF6FEE83FF61E67CFF4BAB55FFCCD0CBFFA4A1A1F1F0E9
          E8FFEBE3E2FFC3BDBDFFF1EDEDFFF5EEEEFFEFEBEBFF4BAB55FF4BAB55FF4BAB
          55FF4BAB55FF4BAB55FF72F08FFF4BAB55FFE9EBE5FFADAAAAFEA5A2A2F1F5EE
          EEFFF0E8E8FFECE4E4FFC5C0BFFFD9D6D6FFE3DEDEFFE0DFDFFFE0DFDFFFE3DE
          DEFFECEBEBFF4BAB55FF4BAB55FFE9EBE5FFF5EEEEFFAEABABFEA6A3A3F1F8F2
          F2FFF5EDEDFFF2EAEAFFD8D0CFFFCFC8C8FFBFBDBDFFE2DFDFFFE2DFDFFFBFBD
          BDFFE7E4E4FF4BAB55FFEAECE6FFF5EDEDFFF8F2F2FFAFACACFEAFACACFEF8F2
          F2FFF5EDEDFFF2EAEAFFCFC8C8FFBFBDBDFFE2DFDFFFE2DEDEFFE2DEDEFFE2DF
          DFFFE0DFDFFFE7E4E4FFF2EAEAFFF5EDEDFFF8F2F2FFAFACACFFA7A5A5F1F9F3
          F3FFF8F1F1FFD3CCCCFFBFBDBDFFE2DFDFFFE9E5E5FFE3DADAFFE3DADAFFE9E5
          E5FFE2DFDFFFBFBDBDFFD3CCCCFFF8F1F1FFF9F3F3FFB0AEAEFEA9A6A6F1F9F3
          F3FFD3CCCCFFBFBDBDFFE2DFDFFFF2EEEDFFEFE6E6FFEFE7E6FFEFE7E6FFEFE6
          E6FFF2EEEDFFE2DFDFFFBFBDBDFFD3CCCCFFF9F3F3FFB2AFAFFEAAA7A7F1D3CC
          CCFFBFBDBDFFE2DFDFFFF9F4F4FFF7F0F0FFF8F0F0FFF8F1F0FFF8F1F0FFF8F0
          F0FFF7F0F0FFF9F4F4FFE2DFDFFFBFBDBDFFD3CCCCFFB3B0B0FEA6A3A3F1BFBD
          BDFFE2DFDFFFF9F4F4FFF9F2F2FFF9F2F2FFF9F2F2FFF9F2F2FFF9F2F2FFF9F2
          F2FFF9F2F2FFF9F2F2FFF9F4F4FFE2DFDFFFBFBDBDFFAFACACFE4C4B4B809895
          95FF9D9A9AFF9E9A9AFF9F9B9BFFA09C9CFFA19E9EFFA29F9FFFA29F9FFFA19E
          9EFFA09C9CFF9F9B9BFF9E9A9AFF9D9A9AFF989595FF4C4B4B80000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFE70000FFE30000FE010000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000007D7A
          7AD79B9797FD9A9696FF999595FF989494FF928F8FF5928E8EF5918D8DF5908C
          8CF58F8C8CF58F8B8BF58E8A8AF58E8A8AF5716E6ED20000000000000000928E
          8EEFFAF6F4FFF7EFECFFF6EDEAFFF6ECE8FFF6ECE8FFF5EAE7FFF5E9E5FFF4E8
          E4FFF4E8E3FFF4E8E3FFF4E8E3FFF8F1EFFF817E7EE90000000000000000948F
          8FEFF9F3F0FFFC629EFFFC589AFFFB619CFFF2E2DDFFF1DFD9FFF0DDD6FFEFDA
          D3FFEED9D1FFEED8D0FFEED8D0FFF5EAE5FF827F7FE900000000000000009591
          91EFFAF5F3FFFD5A9CFFFAAFB5FFFC599BFFF4E7E2FFDFD8D5FFDED6D3FFF1DE
          D8FFDDD4D0FFDCD3CFFFDCD2CEFFF5EAE5FF827F7FE900000000000000009592
          92EFFAF6F4FFFD5A9DFFFBB1B8FFFD599CFFF6EBE7FFF5E9E4FFF4E6E1FFF3E3
          DEFFF1E0DAFFF0DDD7FFEFDBD4FFF5EAE7FF838080E900000000000000009693
          93EFFAF6F4FFFD5A9EFFFCB2B9FFFD5A9DFFF8EFEBFFE1DCDAFFE0DAD9FFE0DA
          D7FFDFD8D6FFF2E2DCFFDED5D2FFF6ECE9FF848080E900000000000000009794
          94EFFAF6F4FFFD5A9EFFFCB2BAFFFD5A9DFFF9F0EDFFF8F0EDFFF7EEEBFFF6EC
          E8FFF5E9E5FFF4E7E2FFF3E4DEFFF7EFECFF858181E900000000000000009995
          95EFFAF6F4FFFD5A9EFFFCB2BAFFFD5A9EFFF9F1EEFFE2DEDCFFE1DDDCFFF8EF
          ECFFE1DCDAFFE0DBD9FFE0DAD8FFF8F1EFFF868282E900000000000000009A95
          95EFFAF6F4FFFD5A9EFFFCB2BAFFFD5A9EFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
          EEFFF8F0EDFFF8EFEBFFF7EDE9FFF9F3F1FF878383E900000000000000009B96
          96EFFAF6F4FFFD65A1FFFD5A9EFFFD65A1FFF9F1EEFFE2DEDCFFE2DEDCFFE2DE
          DCFFE2DEDCFFE2DDDCFFE1DDDBFFFAF5F3FF888484E900000000000000009C97
          97EFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FF898585E900000000000000009C98
          98EFFAF6F4FFD8A44FFFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA2
          47FFDAA247FFDAA247FFD8A44FFFFAF6F4FF868282E900000000000000009D99
          99EFFAF6F4FFDAA247FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B4
          91FFC9B491FFC9B491FFDAA247FFFAF6F4FF827E7EE100000000000000009E99
          99EFFAF6F4FFD8A44FFFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA2
          47FFDAA247FFDAA247FFD8A44FFFFAF6F4FF868181E700000000000000009F9A
          9AEFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9
          F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FF827E7EE100000000000000008883
          83D2A7A2A2FCA8A3A3FEA7A3A3FEA6A2A2FE9C9898EF9C9797EF9B9696EF9A95
          95EF999595EFA29D9DFD9B9696F2827E7EE1827E7EE100000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          0000800100008001000080010000800100008001000080010000800100008001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000909090900DA2C1FF0DA2C1FF019DD6FF019DD6FF909090900000
          00000000000000000000000000000000000000000000000000007D7A7AD79B97
          97FD9A9696FFD3D1D1FF0DA2C1FF0DA2C1FFB0E8F2FF28A1E3FF157DB8FFCECD
          CDFB8F8B8BF58E8A8AF58E8A8AF5716E6ED20000000000000000928E8EEFFAF6
          F4FFF7EFECFFFBF7F6FF019DD6FFB0E8F2FF6AD6E7FF33A3E5FF1B94E9FF157D
          B8FFFAF5F3FFF4E8E3FFF8F1EFFF8C8888FD00000000000000009D9898FEF9F3
          F0FFFC629EFFFEB6D3FF019DD6FFB0E8F2FF3CC0EFFF21A5EBFF1F98EFFF1B94
          E9FF157DB8FFF0EBEAFFF5EAE5FF827F7FE90000000000000000959292EFFAF6
          F4FFFD5A9DFFFBB1B8FFFEB6D4FF157DB8FF80D1F9FF1FBBE9FF1C9EE8FF1F98
          EFFF2094E8FF157DB8FFFBF6F5FF838080E90000000000000000969393EFFAF6
          F4FFFD5A9EFFFCB2B9FFFD5A9DFFFCF8F6FF157DB8FF80D1F9FF20BBE9FF1C9E
          E8FF2398EDFFA9ADB1FF818181FFC9C8C8F50000000000000000979494EFFAF6
          F4FFFD5A9EFFFCB2BAFFFD5A9DFFF9F0EDFFFCF8F7FF157DB8FF80D1F9FF25BB
          E8FF94B4C9FFB4B1B1FF6160A9FF818181FF9090909000000000999595EFFAF6
          F4FFFD5A9EFFFCB2BAFFFD5A9EFFF9F1EEFFE2DEDCFFF2F0F0FF157DB8FF80D1
          F9FFCBC9CBFFB8B6B9FF5F5DAFFF3B3BACFF3737BCFF909090909A9595EFFAF6
          F4FFFD5A9EFFFCB2BAFFFD5A9EFFF9F1EEFFF9F1EEFFF9F1EEFFFCF9F8FF8181
          81FFD7D4D7FF6866C0FF3737BCFF3232B1FF3131B1FF010194FF9B9696EFFAF6
          F4FFFD65A1FFFD5A9EFFFD65A1FFF9F1EEFFE2DEDCFFE2DEDCFFE2DEDCFFF2F1
          F0FF818181FF9696EDFF5050E2FF3636B9FF3434B8FF010194FF9C9797EFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
          F4FFFDFBFAFF020294FF9696EDFF9696EDFF010194FF909090909C9898EFFAF6
          F4FFD8A44FFFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA2
          47FFDAA247FFEED7B2FF3737BCFF020294FF90909090000000009D9999EFFAF6
          F4FFDAA247FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B4
          91FFC9B491FFDAA247FFFDFBFAFFC8C7C7F200000000000000009E9999EFFAF6
          F4FFD8A44FFFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA2
          47FFDAA247FFD8A44FFFFAF6F4FF868181E700000000000000009F9A9AEFFBF9
          F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9
          F8FFFBF9F8FFFBF9F8FFFBF9F8FF827E7EE10000000000000000888383D2A7A2
          A2FCA8A3A3FEA7A3A3FEA6A2A2FE9C9898EF9C9797EF9B9696EF9A9595EF9995
          95EFA29D9DFD9B9696F2827E7EE1827E7EE10000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E07F00000003000000030000000300000003000000030000000100000000
          0000000000000000000000000000000100000003000000030000000300000003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004F19167E5F1D1B970101
          0101000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000531B1782C47145FFCB7E4AFF631E
          1C9D010101010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000551D1782C87548FFE69960FFE08F5AFFCB7E
          4AFF631E1C9D0101010100000000000000000000000000000000000000000000
          00000000000000000000571F1883CC7B4BFFEDA16BFFE48964FFDE835CFFDF8F
          59FFCB7D4AFF631E1C9D01010101000000000000000000000000000000000000
          00000000000059211884CF7F4DFFF2A673FFED9370FFE88E6AFFE38863FFDE82
          5BFFDF8E58FFCB7D49FF621E1C9C010101010000000000000000000000000000
          00005C251986D0814DFFF3A676FFF09777FFEF9575FFEC926FFFE88D69FFE388
          62FFDD815AFFDE8D57FFCB7D49FF621E1C9C0101010100000000000000005F27
          1988D1824DFFF0A473FFEF9677FFF09678FFF09677FFEF9574FFEC926FFFE78D
          68FFE28761FFDD8259FFDE8F57FFCB7D49FF621E1C9C010101015E281984BD5E
          38FFD88E52FFD78B53FFDD9459FFF2A276FFF09678FFF09677FFEF9573FFEB91
          6EFFE99768FFD99154FFCE814CFFCD814AFFB04F37FF5E1D1B9625100A3B3316
          0E5233160E5235160E529F472DE0F2AB73FFEF9578FFF09678FFF09677FFEE94
          73FFEFA46DFFAC5035F332110E522E0F0D522E0F0D52250C0B41000000000000
          0000000000000000000096432AD2F0A871FFED9276FFEF9578FFF09678FFF096
          76FFF2A671FFAA4F35EE00000000000000000000000000000000000000000000
          0000000000000000000097452AD2EDA56FFFEA8E74FFED9377FFF09578FFF096
          78FFF3A874FFAB5135EE00000000000000000000000000000000000000000000
          0000000000000000000099462AD2EAA16CFFE68A71FFEA8F74FFEE9377FFF096
          78FFF3A875FFAC5335EE00000000000000000000000000000000000000000000
          000000000000000000009A482AD2E69D69FFE1856DFFE68B71FFEB9075FFEE93
          77FFF3A775FFAE5536EE00000000000000000000000000000000000000000000
          000000000000000000009A482BD2E39966FFDD8068FFE2856DFFE78B72FFEB90
          75FFF2A674FFAF5636EE00000000000000000000000000000000000000000000
          000000000000000000009A492BD2E6A565FFE39866FFE79D6AFFEBA16EFFEEA5
          70FFF3B271FFB05736EE00000000000000000000000000000000000000000000
          000000000000000000007A3720A8A04E2DD8A04D2DD89F4C2DD89E4A2DD89D4A
          2DD89C492DD8853724BF00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE3F0000FC1F0000F80F0000F0070000E0030000C0010000800000000000
          000000000000F00F0000F00F0000F00F0000F00F0000F00F0000F00F0000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000E5C95AB1E8C
          CCE41B87C9E11B87C9E11B87C8E11B87C9E11B87C8E11B87C9E11B87C8E11B87
          C9E11B87C8E11B87C9E11B87C8E11B87C9E11F8DCDE509457290187BB9C76BED
          FFFF66E5FFFF66E5FFFF66E5FFFF66E5FFFF66E5FFFF66E5FFFF66E5FFFF66E5
          FFFF66E5FFFF66E5FFFF66E5FFFF67E7FFFF57D5FBFF0F5E95A81777B6C647CA
          FFFF4ED7FFFF4ED5FFFF4ED6FFFF4ED5FFFF4ED6FFFF4ED5FFFF4ED6FFFF4ED5
          FFFF4ED6FFFF4ED5FFFF4ED6FFFF4ED5FFFF48CDFFFF105E94A7197AB6C670EF
          FFFF7AFBFFFF79F8FDFD7AFBFFFF79F8FDFD7AFBFFFF79F8FDFD7AFBFFFF79F8
          FDFD7AFBFFFF79F8FDFD7AFBFFFF79F8FDFD6CE9FFFF0F5D93A71B79B6C64CCD
          FFFF55D9FFFF55D9FFFF55D9FFFF55D9FFFF55D9FFFF55D9FFFF55D9FFFF55D9
          FFFF55D9FFFF55D9FFFF55D9FFFF55D9FFFF50D0FFFF105F94A71C7AB7C67CF1
          FFFF86FFFFFF84FCFDFD86FFFFFF84FCFDFD86FFFFFF84FCFDFD86FFFFFF84FC
          FDFD86FFFFFF84FCFDFD86FFFFFF86FDFDFD74EDFFFF125E94A71C7AB5C65CD6
          FFFF65E0FFFF65E0FFFF65E0FFFF65E0FFFF65E0FFFF65E0FFFF65E0FFFF65E0
          FFFF65E0FFFF65E0FFFF65E0FFFF65E0FFFF5ED9FFFF135F94A71E7BB6C67DF1
          FFFF87FAFFFF85F8FDFD86FAFFFF85F8FDFD86FAFFFF85F8FDFD86FAFFFF85F8
          FDFD86FAFFFF85F8FDFD86FAFFFF86F8FDFD79EBFFFF135E94A71E7CB6C673E5
          FFFF7CF0FFFF7CF0FFFF7CF0FFFF7CF0FFFF7CF0FFFF7CF0FFFF7CF0FFFF7CF0
          FFFF7CF0FFFF7CF0FFFF7CF0FFFF7CF0FFFF71E5FFFF146094A71E7CB7C677E7
          FFFF81F2FFFF80F0FDFD81F2FFFF80F0FDFD81F2FFFF80F0FDFD81F2FFFF80F0
          FDFD81F2FFFF80F0FDFD81F2FFFF80F0FDFD77E6FFFF146094A7217DB8C688F3
          FFFF93FDFFFF93FDFFFF93FDFFFF93FDFFFF93FDFFFF93FDFFFF93FDFFFF93FD
          FFFF93FDFFFF93FDFFFF93FDFFFF93FDFFFF85F1FFFF146094A7217DB6C671DD
          FFFF7EEBFFFF7DE8FDFD7CE8FFFF7DE7FDFD7EEBFFFF7BE6FDFD7CE9FFFF7FEB
          FDFD7CE8FFFF7BE6FDFD80EDFFFF7DE7FDFD74E1FFFF146196A7227FB8C69FFA
          FFFF7EE9FFFF8BF2FFFFACFFFFFF95FAFFFF74E2FEFFACFFFFFFA9FFFFFF5FD4
          F2FFACFFFFFFADFFFFFF6CDFFAFF9DFFFFFF98FAFFFF146094A72481BBC8A0FB
          FFFF89B4C1FF74B6D1FEB1FFFFFF81D8EAFEAD748BFFB0FEFEFE79E8FFFFD487
          84FD80F2FFFFA8FEFEFEBF8481FF70CEE8FE9FF9FFFF156397A815669FAE38AC
          E9E999B7CFF869A5D5F535ABE8E86ABAE4F1C08FB2FC36AFEBEB39AAE7EEEEA9
          A0FF36ACEBEC36AEEBEBDAA6A6FD50AAE2F545BBF3F30F568B9A000000000000
          0000775E579044334A670000000021293042915E5EB50000000000000000D299
          92F30000000000000000AE837AC7141720300000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C9B3
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000909090900DA2C1FF0DA2C1FF019DD6FF019DD6FF909090900000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000909090900DA2C1FF0DA2C1FFB0E7F1FE28A1E3FF147CB8FE9090
          9090000000000000000000000000000000000000000000000000000000000000
          00000000000090909090019DD6FFB0E8F2FF68D5E6FE2E9FE1FA1B94E9FF147C
          B8FE909090900000000000000000000000000000000000000000000000000000
          00000000000090909090019DD6FFB0E7F1FE3CC0EFFF21A5EBFF1C96ECFC1B94
          E9FF147CB8FE9090909000000000000000000000000000000000000000000000
          0000000000000000000090909090147CB8FE80D1F9FF1FBBE9FF1B9EE7FE1C96
          ECFC2094E8FF147CB8FE90909090000000000000000000000000000000000000
          000000000000000000000000000090909090147CB8FE80D1F9FF1FBBE8FE1B9E
          E7FE2196EAFCA9ADB1FF808080FE909090900000000000000000000000000000
          00000000000000000000000000000000000090909090147CB8FE80D1F9FF25BB
          E8FF94B4C8FEB4B1B1FE6160A9FF808080FE9090909000000000000000000000
          0000000000000000000000000000000000000000000090909090147CB8FE80D1
          F9FFCAC8CAFEB8B6B9FE5D5BADFD3B3BACFF3737BCFF90909090000000000000
          0000000000000000000000000000000000000000000000000000909090908181
          81FFD7D4D7FF6866C0FF3737BCFF3232B1FF3131B1FF010194FF000000000000
          0000000000000000000000000000000000000000000000000000000000009090
          9090808080FE9696EDFF5050E2FF3636B9FF3434B8FF010194FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000090909090010194FE9696EDFF9696EDFF010194FF90909090000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000909090903737BCFF010194FE9090909000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000090909090909090900000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E07F0000E03F0000E01F0000E00F0000F0070000F8030000FC010000FE00
          0000FF000000FF800000FFC00000FFE10000FFF30000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000007A2B22BBA14631E8A04431E89E4231E89D4130E89C40
          2FE89B3E2FE87C2523C700000000000000000000000000000000000000000000
          00000000000000000000943D2BD9EFAF68FFE79C62FFE3975CFFDF9356FFDB8F
          52FFE09D54FF993C2FE600000000000000000000000000000000000000000000
          00000000000000000000953F2CD9EFA76BFFE58A65FFDF845DFFD97F55FFD479
          4EFFDB8F51FF9A3E2FE600000000000000000000000000000000000000000000
          0000000000000000000097412CD9F1AA6FFFE98F6BFFE48964FFDE835CFFD97E
          54FFDE9255FF9B3F30E600000000000000000000000000000000000000000000
          0000000000000000000098412CD9F3AC72FFED9370FFE88E6AFFE38863FFDE82
          5BFFE2965AFF9C4130E600000000000000000000000000000000000000000000
          0000000000000000000099432CD9F4AC74FFEF9575FFEC926FFFE88D69FFE388
          62FFE59A5FFF9D4330E600000000000000000000000000000000000000000000
          000000000000000000009A452CD9F4AC75FFF09677FFEF9574FFEC926FFFE78D
          68FFE99E64FF9E4431E6000000000000000000000000000000002D140C483D1A
          10623C1910623F1A1162A64B30E8F3AB74FFF09678FFF09677FFEF9573FFEB91
          6EFFECA269FFA74833F03B14106237121062371110622C0E0D4F56251778BE5E
          38FEDA9255FFDA8F56FFE0995DFFEF9D75FFEF9578FFF09678FFF09677FFEE94
          73FFED9B6DFFDE975AFFD48951FFD48A50FFB25138FF571B1989000000005926
          177DCE7D48FFE79A6BFFE58970FFE98E73FFED9276FFEF9578FFF09678FFF096
          76FFEE9472FFEA916CFFEA9E67FFCB7B49FF5B1E198D00000000000000000000
          00005926177DCE7E48FFE79A6CFFE58970FFEA8E74FFED9377FFF09578FFF096
          78FFF09676FFF1A470FFCE7F4CFF5C20198D0000000000000000000000000000
          0000000000005926177DCE7E48FFE89B6CFFE68A71FFEA8F74FFEE9377FFF096
          78FFF3A675FFD0814EFF5E221A8D000000000000000000000000000000000000
          000000000000000000005926177DCF7E48FFE89B6DFFE68B71FFEB9075FFF1A4
          75FFD1824EFF5F241A8C00000000000000000000000000000000000000000000
          00000000000000000000000000005926177DCF7E48FFE99C6DFFEC9D70FFD283
          4EFF60261A8C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005926177DCF7E49FFD2824CFF5F27
          1988000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000562517785B2718800000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F00F0000F00F0000F00F0000F00F0000F00F0000F00F0000F00F00000000
          00000000000080010000C0030000E0070000F00F0000F81F0000FC3F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000192D0C482E5617780000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000223D10627BC54DFF3059
          177D000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000223C10627BC54DFF7BC5
          4DFF3059177D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000233F10627BC54DFF85E7
          6AFF7BC54DFF3059177D000000000000000000000000000000004E7A22BB5894
          2BD958952BD957972BD957982BD956982CD9569A2CD95CA630E87BC54DFF9BE5
          70FF86E66CFF7BC54DFF3059177D0000000000000000000000005EA131E871EF
          68FF7DEE6BFF81F06FFF84F272FF87F473FF88F474FF87F274FF94EF74FF9DE8
          73FF9BE570FF86E76CFF7BC54DFF3059177D000000000000000060A031E877E7
          61FF8BE465FF91E96AFF96ED70FF9CEF74FF9FF076FFA0F077FFA1EF77FFA0ED
          75FF9FEA74FF9CE671FF87E86CFF7BC54DFF3059177D00000000619E31E871E2
          5CFF82DE5DFF8AE463FF90E76AFF95EB6FFF9BEF73FF9FF076FFA0F077FFA1EF
          77FFA0ED76FF9EEA74FF9BE671FF86E96CFF7BC54DFF2E561778609D2FE86ADF
          55FF7AD954FF81DE5BFF89E362FF8FE769FF95EB6FFF9AEE73FF9FF076FFA0F0
          77FFA1F077FFA1EE76FF9FEA75FF8CEC6FFF7BC54DFF325B1880609C2FE866DB
          51FF74D44DFF7AD953FF81DD5BFF88E262FF8DE668FF94EB6DFF9AEE72FF9DF0
          75FFA0F077FFA0F077FF8EF174FF7BC54DFF355F198800000000619B2FE85EE0
          53FF65DB50FF69DD55FF6FE25AFF74E45FFF79E964FF7EEC69FF8AED6CFF98EE
          72FF9DF075FF8EF374FF7BC54DFF37601A8C0000000000000000577C22C76099
          2FE65F9A2FE6609B30E65F9C2FE65E9D2FE65E9E31E663A733F07BC54DFF91EA
          6BFF87F170FF7BC54DFF385F1A8C000000000000000000000000000000000000
          00000000000000000000000000000000000000000000263B10627BC54DFF7EE9
          67FF7BC54DFF3A5E1A8D00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000253710627BC54DFF7BC5
          4DFF3A5C198D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000253710627BC54DFF3C5B
          198D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E2C0D4F3B5719890000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE7F0000FE3F0000FE1F0000FE0F00000007000000030000000100000000
          000000000000000100000003000000070000FE0F0000FE1F0000FE3F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FFC0C0
          C0FF636363840000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFD8D8
          D8FFC0C0C0FF6363638400000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFF3F3
          F3FFD8D8D8FFC0C0C0FF63636384000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF79
          7FFFF3F3F3FFD8D8D8FFC0C0C0FF636363840000000000000000000000000000
          00000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF797FFFFF79
          7FFFFF797FFFF3F3F3FFD8D8D8FFC0C0C0FF6363638400000000000000000000
          000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF797FFFFF797FFFFE94
          9AFFFF797FFFFF797FFFF3F3F3FFD8D8D8FFC0C0C0FF63636384000000000000
          0000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF797FFFFF797FFFFE949AFFFE94
          9AFFFE949AFFFF797FFFFF797FFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0
          C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF797FFFFF797FFFFE949AFFFE949AFFFE94
          9AFFFF797FFFFF797FFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FFC0C0C0FFD8D8
          D8FFF3F3F3FFFDFDFDFFFF797FFFFF797FFFFE949AFFFE949AFFFE949AFFFF79
          7FFFFF797FFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0C0FFF3F3
          F3FFFDFDFDFFFAFAFAFFFED6D7FFFF797FFFFF797FFFFE949AFFFF797FFFFF79
          7FFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFCFCFCFFFDFDFDFFFED6D7FFFF797FFFFF797FFFFF797FFFFDFD
          FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000C0C0C0FFFDFD
          FDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFFED6D7FFFF797FFFFDFDFDFFF3F3
          F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000C0C0C0FFFDFD
          FDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
          D8FFC0C0C0FF0000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
          C0FF000000000000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
          000000000000000000000000000000000000000000000000000063636384C0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF1F0000FE0F0000FC070000F8030000F0010000E0000000C00000008000
          0000000100000003000000070000000F0000001F0000003F0000007F000000FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FFC0C0
          C0FF636363840000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFD8D8
          D8FFC0C0C0FF6363638400000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFF3F3
          F3FFD8D8D8FFC0C0C0FF63636384000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF50F7
          7CFFF3F3F3FFD8D8D8FFC0C0C0FF636363840000000000000000000000000000
          00000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF49F67CFF3BF4
          7AFF42F57BFFF3F3F3FFD8D8D8FFC0C0C0FF6363638400000000000000000000
          000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF49F67CFF3BF47AFF48F3
          85FF3BF47AFF42F57BFFF3F3F3FFD8D8D8FFC0C0C0FF63636384000000000000
          0000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF42F57BFF3BF47AFF48F385FF48F3
          85FF48F385FF3BF47AFF50F77CFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0
          C0FFD8D8D8FFF3F3F3FFFDFDFDFF49F67CFF3BF47AFF48F385FF48F385FF48F3
          85FF3BF47AFF50F77CFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FFC0C0C0FFD8D8
          D8FFF3F3F3FFFDFDFDFF50F77CFF3BF47AFF48F385FF48F385FF48F385FF3BF4
          7AFF50F77CFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0C0FFF3F3
          F3FFFDFDFDFFFAFAFAFFD6FED9FF42F57BFF3BF47AFF48F385FF3BF47AFF50F7
          7CFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFCFCFCFFFDFDFDFFD6FED9FF42F57BFF3BF47AFF50F77CFFFDFD
          FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000C0C0C0FFFDFD
          FDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6FED9FF57F97DFFFDFDFDFFF3F3
          F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000C0C0C0FFFDFD
          FDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
          D8FFC0C0C0FF0000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
          C0FF000000000000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
          000000000000000000000000000000000000000000000000000063636384C0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF1F0000FE0F0000FC070000F8030000F0010000E0000000C00000008000
          0000000100000003000000070000000F0000001F0000003F0000007F000000FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FFC0C0
          C0FF636363840000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFD8D8
          D8FFC0C0C0FF6363638400000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFF3F3
          F3FFD8D8D8FFC0C0C0FF63636384000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF79AA
          FFFFF3F3F3FFD8D8D8FFC0C0C0FF636363840000000000000000000000000000
          00000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF79AAFFFF79AA
          FFFF79AAFFFFF3F3F3FFD8D8D8FFC0C0C0FF6363638400000000000000000000
          000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF79AAFFFF79AAFFFF94BC
          FEFF79AAFFFF79AAFFFFF3F3F3FFD8D8D8FFC0C0C0FF63636384000000000000
          0000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF79AAFFFF79AAFFFF94BCFEFF94BC
          FEFF94BCFEFF79AAFFFF79AAFFFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0
          C0FFD8D8D8FFF3F3F3FFFDFDFDFF79AAFFFF79AAFFFF94BCFEFF94BCFEFF94BC
          FEFF79AAFFFF79AAFFFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FFC0C0C0FFD8D8
          D8FFF3F3F3FFFDFDFDFF79AAFFFF79AAFFFF94BCFEFF94BCFEFF94BCFEFF79AA
          FFFF79AAFFFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0C0FFF3F3
          F3FFFDFDFDFFFAFAFAFFD6E5FEFF79AAFFFF79AAFFFF94BCFEFF79AAFFFF79AA
          FFFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E5FEFF79AAFFFF79AAFFFF79AAFFFFFDFD
          FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000C0C0C0FFFDFD
          FDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E5FEFF79AAFFFFFDFDFDFFF3F3
          F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000C0C0C0FFFDFD
          FDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
          D8FFC0C0C0FF0000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
          C0FF000000000000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
          000000000000000000000000000000000000000000000000000063636384C0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF1F0000FE0F0000FC070000F8030000F0010000E0000000C00000008000
          0000000100000003000000070000000F0000001F0000003F0000007F000000FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FFC0C0
          C0FF636363840000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFD8D8
          D8FFC0C0C0FF6363638400000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFF3F3
          F3FFD8D8D8FFC0C0C0FF63636384000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF79
          F6FFF3F3F3FFD8D8D8FFC0C0C0FF636363840000000000000000000000000000
          00000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF79F6FFFF79
          F6FFFF79F6FFF3F3F3FFD8D8D8FFC0C0C0FF6363638400000000000000000000
          000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF79F6FFFF79F6FFFE94
          F8FFFF79F6FFFF79F6FFF3F3F3FFD8D8D8FFC0C0C0FF63636384000000000000
          0000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF79F6FFFF79F6FFFE94F8FFFE94
          F8FFFE94F8FFFF79F6FFFF79F6FFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0
          C0FFD8D8D8FFF3F3F3FFFDFDFDFFFF79F6FFFF79F6FFFE94F8FFFE94F8FFFE94
          F8FFFF79F6FFFF79F6FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FFC0C0C0FFD8D8
          D8FFF3F3F3FFFDFDFDFFFF79F6FFFF79F6FFFE94F8FFFE94F8FFFE94F8FFFF79
          F6FFFF79F6FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0C0FFF3F3
          F3FFFDFDFDFFFAFAFAFFFED6FBFFFF79F6FFFF79F6FFFE94F8FFFF79F6FFFF79
          F6FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFCFCFCFFFDFDFDFFFED6FBFFFF79F6FFFF79F6FFFF79F6FFFDFD
          FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000C0C0C0FFFDFD
          FDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFFED6FBFFFF79F6FFFDFDFDFFF3F3
          F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000C0C0C0FFFDFD
          FDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
          D8FFC0C0C0FF0000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
          C0FF000000000000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
          000000000000000000000000000000000000000000000000000063636384C0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF1F0000FE0F0000FC070000F8030000F0010000E0000000C00000008000
          0000000100000003000000070000000F0000001F0000003F0000007F000000FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FFC0C0
          C0FF636363840000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFD8D8
          D8FFC0C0C0FF6363638400000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFF3F3
          F3FFD8D8D8FFC0C0C0FF63636384000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5475
          F7FFF3F3F3FFD8D8D8FFC0C0C0FF636363840000000000000000000000000000
          00000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF536CF8FF5A68
          FAFF5468F8FFF3F3F3FFD8D8D8FFC0C0C0FF6363638400000000000000000000
          000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF536CF8FF5A68FAFF616B
          F9FF5A68FAFF5468F8FFF3F3F3FFD8D8D8FFC0C0C0FF63636384000000000000
          0000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4E65F7FF5A68FAFF616BF9FF616B
          F9FF616BF9FF5A68FAFF5174F6FFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0
          C0FFD8D8D8FFF3F3F3FFFDFDFDFF536CF8FF5A68FAFF616BF9FF616BF9FF616B
          F9FF5A68FAFF5675F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FFC0C0C0FFD8D8
          D8FFF3F3F3FFFDFDFDFF5475F7FF5A68FAFF616BF9FF616BF9FF616BF9FF5A68
          FAFF5975F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0C0FFF3F3
          F3FFFDFDFDFFFAFAFAFFD6E6FEFF5468F8FF5A68FAFF616BF9FF5A68FAFF5975
          F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5468F8FF5A68FAFF5975F8FFFDFD
          FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000C0C0C0FFFDFD
          FDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF597FF8FFFDFDFDFFF3F3
          F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000C0C0C0FFFDFD
          FDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
          D8FFC0C0C0FF0000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
          C0FF000000000000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
          000000000000000000000000000000000000000000000000000063636384C0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF1F0000FE0F0000FC070000F8030000F0010000E0000000C00000008000
          0000000100000003000000070000000F0000001F0000003F0000007F000000FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C0FFC0C0
          C0FF636363840000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFD8D8
          D8FFC0C0C0FF6363638400000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFF3F3
          F3FFD8D8D8FFC0C0C0FF63636384000000000000000000000000000000000000
          0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF3EEB
          F0FFF3F3F3FFD8D8D8FFC0C0C0FF636363840000000000000000000000000000
          00000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF35EAEEFF30EA
          EDFF31E9EDFFF3F3F3FFD8D8D8FFC0C0C0FF6363638400000000000000000000
          000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF35EAEEFF30EAEDFF32E9
          ECFF30EAEDFF31E9EDFFF3F3F3FFD8D8D8FFC0C0C0FF63636384000000000000
          0000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF2DE9ECFF30EAEDFF32E9ECFF32E9
          ECFF32E9ECFF30EAEDFF3BEBF0FFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0
          C0FFD8D8D8FFF3F3F3FFFDFDFDFF35EAEEFF30EAEDFF32E9ECFF32E9ECFF32E9
          ECFF30EAEDFF40EBF1FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FFC0C0C0FFD8D8
          D8FFF3F3F3FFFDFDFDFF3AEDEFFF30EAEDFF32E9ECFF32E9ECFF32E9ECFF30EA
          EDFF42E9F1FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000C0C0C0FFF3F3
          F3FFFDFDFDFFFAFAFAFFD6FEFAFF31E9EDFF30EAEDFF32E9ECFF30EAEDFF3DEB
          F0FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFCFCFCFFFDFDFDFFD6FEFAFF31E9EDFF30EAEDFF42E9F1FFFDFD
          FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000C0C0C0FFFDFD
          FDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6FEFAFF47EFF3FFFDFDFDFFF3F3
          F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000C0C0C0FFFDFD
          FDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
          D8FFC0C0C0FF0000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
          C0FF000000000000000000000000000000000000000000000000C0C0C0FFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
          000000000000000000000000000000000000000000000000000063636384C0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF1F0000FE0F0000FC070000F8030000F0010000E0000000C00000008000
          0000000100000003000000070000000F0000001F0000003F0000007F000000FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000090909090401A
          096D863610C6A04216E6853610C64019086D00000000000000007D7A7AD79B97
          97FD9A9696FF999595FF989494FF928F8FF5928E8EF5CFCECEFBA96548FCD168
          38FFC86434FFD8AB94FFBE5927FFBF5421FE763213AB00000000928E8EEFFAF6
          F4FFF7EFECFFF6EDEAFFF6ECE8FFF6ECE8FFFBF6F5FFCC9D8AFFDF784FFFE678
          4CFFD6815CFFFEFEFEFFC0673CFFBF4E17FFBC531EF9421A086E9D9898FEF9F3
          F0FFFC629EFFFC589AFFFB619CFFF4E7E2FFF1EEEDFFBC6B48FFE67955FFEB7D
          57FFE18C6CFFFEFEFEFFC87047FFC1501AFFC0511AFF873611C8959292EFFAF6
          F4FFFD5A9DFFFBB1B8FFFD599CFFF6EBE7FFFBF5F3FFBC5C37FFDA6A4CFFE576
          54FFE38E72FFFEFEFEFFD57F5BFFCE5E2BFFC3531EFEA34316E9969393EFFAF6
          F4FFFD5A9EFFFCB2B9FFFD5A9DFFF8EFEBFFF2F0EFFFB76443FFC8563AFFD665
          47FFDC795BFFE5C5BAFFE3805AFFDF7042FFD26330FF8B3912CA979494EFFAF6
          F4FFFD5A9EFFFCB2BAFFFD5A9DFFF9F0EDFFFCF8F7FFCD9E8BFFBD4F32FFC450
          37FFCE6F58FFF2E3DFFFE38668FFEA7C53FFD46B3EFA461D0A71999595EFFAF6
          F4FFFD5A9EFFFCB2BAFFFD5A9EFFF9F1EEFFE2DEDCFFF2F0F0FFC67D62FFBB4E
          2FFFC1573FFFD69787FFDE7757FFDD764DFF7F3A1CAE909090909A9595EFFAF6
          F4FFFD5A9EFFFCB2BAFFFD5A9EFFF9F1EEFFF9F1EEFFF9F1EEFFFCF9F8FFCE9F
          8CFFBA6644FFBA5833FFC06E4BFF916553F390909090000000009B9696EFFAF6
          F4FFFD65A1FFFD5A9EFFFD65A1FFF9F1EEFFE2DEDCFFE2DEDCFFE2DEDCFFF2F1
          F0FFF2F0F0FFF2F0EFFFFDFBFAFFCBC9C9F500000000000000009C9797EFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F4FF898585E900000000000000009C9898EFFAF6
          F4FFD8A44FFFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA2
          47FFDAA247FFD8A44FFFFAF6F4FF868282E900000000000000009D9999EFFAF6
          F4FFDAA247FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B4
          91FFC9B491FFDAA247FFFAF6F4FF827E7EE100000000000000009E9999EFFAF6
          F4FFD8A44FFFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA247FFDAA2
          47FFDAA247FFD8A44FFFFAF6F4FF868181E700000000000000009F9A9AEFFBF9
          F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9
          F8FFFBF9F8FFFBF9F8FFFBF9F8FF827E7EE10000000000000000888383D2A7A2
          A2FCA8A3A3FEA7A3A3FEA6A2A2FE9C9898EF9C9797EF9B9696EF9A9595EF9995
          95EFA29D9DFD9B9696F2827E7EE1827E7EE10000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF0300000001000000000000000000000000000000000000000000000000
          0000000100000003000000030000000300000003000000030000000300000003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000128
          39562684A9E5298FB6F21F8DB5F21B8CB4F2148BB3F20D8BB3F20688AFEF0188
          AEEF0187ADEF0184AAED0183A7EC01678ED7011B2A4500000000000000002F8B
          B0E8A6EBF7FF84E1F1FF6DE2F1FF57E3F1FF41EBF6FF1AF1FAFF2BF7F7FF02FF
          FFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01759CE700000000000000001A7B
          A1D9A5E7F3FF7FDBEDFF6ADBECFF56DEEDFF33E3FDFF1F3841FF463D39FF0AFF
          FFFF01FBFCFF01FFFEFF01FFFFFF01FFFFFF0187ABF100000000000000000130
          455B6AC3DDFF89DEF0FF6FDBECFF5BDCEDFF45E3F4FF0E93B6FF139DB8FF09F5
          FCFF01F4F9FF01FCFEFF01FFFFFF01E4EEFF01314D8200000000000000000000
          00000A75A0C694E1F1FF77DAECFF62DBECFF51E0F0FF33E6EBFF47DCDDFF17EC
          F7FF07EEF6FF01F5F9FF01FFFFFF0179A0E40106080B00000000000000000000
          000001212F3649B4D6FD87DFEFFF6DDAECFF59E4F6FF1B888EFF417573FF27F2
          FEFF18E9F3FF0CF2F8FF03C6DAFF012E3E5F0000000000000000000000000000
          000000000000016184A187D9EBFF7CDCECFF48E8FFFF253B3FFF403736FF1EFB
          FFFF2CE5F2FF22EEF6FF036A87CA000000000000000000000000000000000000
          0000000000000112181A31A4C9F394E3F0FF39D2F6FF221311FF392827FF21CE
          DAFF42E8F5FF20AED0FE01202E3C000000000000000000000000000000000000
          00000000000000000000014A677B82D3E8FF46CFF1FF120703FF2C1511FF24C9
          E5FF56DFEFFF02597DA900000000000000000000000000000000000000000000
          00000000000000000000010708081C8CB4DF9DE6F6FF32B0D3FF28ADCFFF68E5
          FAFF2C9EC5F601121A2000000000000000000000000000000000000000000000
          000000000000000000000000000001364B5570C7E3FFA2E5F2FF92E1F2FF78D4
          E7FF014663850000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B77A0C1B8E8F2FFB1E9F6FF278D
          B2E601080B0C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000011720271A7CA1D12788AEE20126
          3747000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000080010000800100008001000080010000C0010000C003
          0000E0070000E0070000F00F0000F00F0000F81F0000FC1F0000FC3F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101017FC55847FFC55847FFC55847FFC558
          47FFC55847FF0101017F00000000000000000000000000000000000000000000
          00000000000000000000000000000101013F0101017FE25847FFFF5847FFE258
          47FF0101017F0101013F00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C55847FFFF5847FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C55847FFFF5847FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C55847FFFF5847FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C55847FFFF5847FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C55847FFFF5847FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101017FC55847FFFF5847FFFF5847FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101013F0101017FC55847FFE25847FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000101013F0101
          017F000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007C392DE2C55847FF0101
          013F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101017FFF5847FFFF7547FFC558
          47FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101013FC05A2DE2FF5847FF7C39
          2DE2000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000101013F0101017F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F80F0000F80F0000FE3F0000FE3F0000FE3F0000FE3F0000FE3F
          0000F83F0000F83F0000FF3F0000FE3F0000FC3F0000FC3F0000FE7F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000001F1615206941479B382B33580908080800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D0B0A0C6B4F4F93463DBDFB6E2F30A100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D0B0B0C68383580504BDBFC2D2BB6F227223564000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000381F1E3DBB5640CA7C3E34A25D59BDFA3F66B7FF064A50F1B34835CEA04A
          37AC120F0F120000000000000000000000000000000000000000000000000000
          0000755549779B5F4FA2A24836B13E625AF15C8282FF0A7777FF3C35308E2015
          14213E2726435D3330666A302C76281D1D2A0000000000000000000000000000
          00003F2322459A4337AAC75F46D67B4436C5398887FF41B7B7FF1C9E9BF88D56
          439C85584889D67658E0D8906BD9352D2935000000000000000030232232B04E
          3DC0E9926CEEC77D5ECB8B4F3E915B484061208B89D1A5FCFCFF05DEDEFE503D
          399B974F3FA162493F6324171526492423513A201D3F00000000231F1D22332C
          29320F0C0B0F0000000000000000000000004334339073F8F8FF4BF0F0FF218A
          87DF75322B85B44C3AC6EA8160F5B0775CB124201E2300000000000000000000
          0000000000002418182681443D8DBF4936D3AC4D39C235B1AEF9A0FBFBFF06D9
          D9FF956652E7A86852AE3A2E283A000000000000000000000000000000000000
          0000000000008954418ECA8766CB9F644EA37355487553483FBB7DFDFDFF3FEE
          EEFF2E7F7ADC923A2FA3AF4B3BC070332C7B0000000000000000000000000000
          00000000000000000000000000000000000067352E6FED9A72FB39C6C2FB94F9
          F9FF06D3D2FEB48568F2A97359AA3B302B3B120C0C1213101013000000000000
          0000000000000000000000000000000000001C17161C542A225B59665ECD86FC
          FCFF34EEEEFF1F5351B64D211D569A4D41A8DA7154E66E493E72000000000000
          00000000000000000000120F0F1261383569964030A47D584A7F30201C3D2B89
          89F4508181FF026A6AFF7251429A3B2E283B0C09090B00000000000000000000
          00002A1B1A2D80322A909B5947A453342D5735201E3958292460733B307C384F
          4AAD538686FF1D8789FF2937539C00000000000000000000000016111116944A
          40A2D7674CE6984735A46331286A49302A4C292220290B0A0A0A000000001617
          172126559EF37277D7FE1D1D7ACB00000000000000000000000025211F256F56
          486F3E35303D1312111200000000000000000000000000000000000000000000
          00002E2E456C41415A8311111113000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E1FF0000E1FF0000E0FF0000C01F0000C0030000C0030000000100001C01
          0000E0070000E0030000FC000000FC000000F0010000C0070000008700000FC7
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000007090C22121211551A1A1A831616164D00000000000000000000
          0000000000000000000000000000000000000000000000000000082917472D55
          ABBF4277DEEE45629DFE403E3AFF5C5C5EFF676767EE00000000000000000000
          0000000000000000000000000000000000000000000007260B3E0F831EF677A9
          FFFF79AFFFFF7090BCFF6D6964FF919190FF5A5A59C700000000000000000000
          000000000000000000000000000000000000051F0932108B1EF022A33EFF83B4
          FFFF83BCFFFF8CC9FFFF8D9BA2FF8E9094FF39393D7E00000000000000000000
          000000000000000000000000000004180826118723E929C43EFF35CD4BFF7FB7
          F3FF8EC8FFFF97D5FFFF9BDDFFFF76B0FFFF1520383A00000000000000000000
          000000000000000000000311061D148526E02DC644FF42DB62FF4FEA75FF60DA
          9AFF9BD0FFFF9FD8FFFF9BD4FFFF6691E5E90000000000000000000000000000
          000000000000030D0414168028D632C94AFF44DD64FF50E879FF60F88EFF61FD
          8FFF66E79BFF82D9D6FF63C5ABFF365E868A0000000000000000000000000000
          00000406040D127C27CB34CA4DFF45DD66FF53EB7BFF62FA8FFF61F992FF54EC
          7CFF45DF65FF29BE49FB135B2476000000000000000000000000000000000000
          00004B4448BC3EC356FF46E168FF54EC7DFF63FB92FF60F88FFF52EA7AFF42DA
          64FF27AA48EA0C3518430000000000000000000000000000000000000000091B
          7B90787384FF41E865FF55EE7FFF64FC93FF5FF78DFF51EA78FF3DD360FF218F
          3FCA07170B1D0000000000000000000000000000000000000000000000001939
          CEEDD6CCCFFF63E486FF60FD91FF5BF689FF4EE975FF37C959FE1A73339B0000
          0000000000000000000000000000000000000000000000000000000000001E41
          C8DDB0BBF2FFFDFFF3FF83F5A1FF5DE17DFF45B562F713502464000000000000
          0000000000000000000000000000000000000000000000000000000000000E1D
          595E274AE1FD8192E4FF807DC0FF8D838BDE2424243300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000060C2F34060F608101024266010106080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFE10000FF010000FE010000FC010000F8010000F0030000E003
          0000C0070000C00F0000801F0000807F000080FF000081FF0000C3FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C0004F8B8A0000DBD30000FFFF0000FFFF0000DB
          D3004F8B8A00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B0000DBD30000FFFD0000FFFD0000FFFD0000FF
          FD0000DBD3004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D0000FFFF0000FFFD0000FFFD0000FFFD0000FF
          FD0000FFFF00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D0000FFFF0000FFFD0000FFFD0000FFFD0000FF
          FD0000FFFF00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B0000DBD30000FFFD0000FFFD0000FFFD0000FF
          FD0000DBD3004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C0004F8B8A0000DBD30000FFFF0000FFFF0000DB
          D3004F8B8A00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD004263420021422100214221004263
          4200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD004284420000BD000000DE000000DE000000BD
          000042844200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE004263420000BD000000FF000000FF000000FF000000FF
          000000BD000042634200DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE002142210000DE000000FF000000FF000000FF000000FF
          000000DE000021422100DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE002142210000DE000000FF000000FF000000FF000000FF
          000000DE000021422100DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE004263420000BD000000FF000000FF000000FF000000FF
          000000BD000042634200DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD004284420000BD000000DE000000DE000000BD
          000042844200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD004263420021422100214221004263
          4200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD003B35AC0021208300212083003B35
          AC00BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD001C1DD6000E2B9200150CD200150CD2000E2B
          92001C1DD600BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE003B35AC000E2B92001900FF001900FF001900FF001900
          FF000E2B92003B35AC00DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE0021208300150CD2001900FF001900FF001900FF001900
          FF00150CD20021208300DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE0021208300150CD2001900FF001900FF001900FF001900
          FF00150CD20021208300DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE003B35AC000E2B92001900FF001900FF001900FF001900
          FF000E2B92003B35AC00DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD001C1DD6000E2B9200150CD200150CD2000E2B
          92001C1DD600BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD003B35AC0021208300212083003B35
          AC00BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006E0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006E0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000006E00001DE8000010DC0000006E00FF00FF00FF00FF00FF00FF00FF00
          FF0000006E000004E2000008E70000006E00FF00FF00FF00FF00FF00FF00FF00
          FF0000006E00001AE200001FEB000010D90000006E00FF00FF00FF00FF000000
          6E000005DF000009EB000003DB0000006E00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006E00001ADF000020EB000013DC0000006E0000006E000005
          E200000BEB000004DA0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000006E00001BDF000022EB000012E6000008EA000009
          EB000004DF0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000006E00001BE3000016EB000011EB00000A
          DF0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000006E000021E700001EEB00001AEB000017
          DF0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000006E00062DE3000430EB000020E200001EE2000027
          EB000019DF0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006E000C35E4000E3CEB00052BDC0000006E0000006E00001F
          DC00002AEB00001CDF0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000006E001442E4001645EB00092ED90000006E00FF00FF00FF00FF000000
          6E000020D900012CEB00001FE20000006E00FF00FF00FF00FF00FF00FF00FF00
          FF0000006E001C4BE7001037DB0000006E00FF00FF00FF00FF00FF00FF00FF00
          FF0000006E000022DC000027E40000006E00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006E0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000006E0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BFBFBF005858580038383800383838005858
          5800BFBFBF000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF007070700090909000A8A8A800A8A8A8009090
          900070707000BFBFBF0000000000000000000000000000000000000000000000
          000000000000DFDFDF005858580090909000C0C0C000C0C0C000C0C0C000C0C0
          C0009090900058585800DFDFDF00000000000000000000000000000000000000
          000000000000DFDFDF0038383800A8A8A800C0C0C000C0C0C000C0C0C000C0C0
          C000A8A8A80038383800DFDFDF00000000000000000000000000000000000000
          000000000000DFDFDF0038383800A8A8A800C0C0C000C0C0C000C0C0C000C0C0
          C000A8A8A80038383800DFDFDF00000000000000000000000000000000000000
          000000000000DFDFDF005858580090909000C0C0C000C0C0C000C0C0C000C0C0
          C0009090900058585800DFDFDF00000000000000000000000000000000000000
          00000000000000000000BFBFBF007070700090909000A8A8A800A8A8A8009090
          900070707000BFBFBF0000000000000000000000000000000000000000000000
          0000000000000000000000000000BFBFBF005858580038383800383838005858
          5800BFBFBF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        MaskColor = clBlack
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000160903475D30
          15C2774824F8734422F54A2812B80C0402330000000000000000000000000000
          0000000000000000000000000000000000000000000028140865AE6D3AFDBC73
          3CF4934922B6975528BCC07940F9754726F70D05023A00000000000000000000
          0000000000000000000000000000000000001F0E054CCA7E44FB7B4A25CA0702
          011700000000000000000D08042BCE8647EE572D14C400000000000000000000
          00000000000000000000000000000B060334C2773FF392552BD6070201160000
          00000000000000000000000000006A45249691572DFA00000000000000000000
          0000000000000000000008040222B66E39E8A26131E15B2C119993592EF4804D
          27EC2310055C0000000000000000905D2EB08B5229E500000000000000000000
          00000000000005020113A96231D9B46D39EA673516A0E08B4CFF713F1EAB955B
          2DC47E4C27F300000000381E0D64F2A056FE361A0A8200000000000000000000
          000002010109895129C5C67A40F16634159EE6904DFE542A12980302010FA367
          34C793582DE84B281175EF9851FE5E3317AD0000000000000000000000000000
          000075431FADD88748F76633159DEA934FFD572C149A04020112A56433C8C277
          3EF28F5127C4ED9853FF4E271195000000000000000000000000000000005F30
          1792E4944FFB6733159FEA9651FA5C30159C05020114AB6A37CBBC733DEE985B
          2BCBE69651FE2F190B790000000000000000000000000000000000000000965D
          2FBA6D3718A4EA9A53F7613518A608030117BE713ACFB5713AEAA56431D2DC90
          4DFA2511065F0000000000000000000000000000000000000000000000000F08
          0435E79D53F266391BA808030119C07A3FD2B36F38E8B17137D8CE8747F31E0B
          0448000000000000000000000000000000000000000000000000000000009759
          2DAF8F5529D200000000B97A3DCAAD6C38E5BD7E3FDDBD7A40E80A0502330000
          000000000000000000000000000000000000000000000000000000000000321E
          0E62CF8246FC7E4924C4713B199FCA8E49E3A76A36DA07030123000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000120903318C5228B8E39850F97C4E26BC0502011500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FF030000FE010000FC310000F8790000F0190000E0110000C003
          0000C0070000800F0000801F0000803F0000907F000080FF0000C1FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000101010D010101160101011F01010109000000000000
          00000000000000000000000000000101010B010101140101011E010101280505
          0542141616673236358D4F5654A7727D79C25C6563B401010114092C147F0728
          12820D2715902034279934423A9F474E4CA16D7875BF9AA9A4DBCEE0DBF6E2F5
          EFFFE2F5EFFFE2F5F0FFD4ECE1FFD2EADEFFADBBB7E40101011790D7A7FFD0EC
          E0FFE2F5F0FFE2F5F0FFE1F5EEFFDDF2EBFFC1E2D2FFA8D3B9FF93C5A3FFC4E2
          D2FF7CB488FF51975BFF498F51FF8EBC96FFC1CFCAED0101011F90D7A7FF9BCF
          B5FFA9D9C2FF75BC95FF61B082FFAAD7BFFF7AB990FF58A470FF56A06AFFA7D0
          B5FF7BB387FF4D9558FF4A9052FF84B58BFFE9F8F3FF0101012190D7A7FF6DB5
          8DFFADDBC5FF66B589FF63B183FF98CCAEFF98CAABFF71B286FF80B991FFBBDC
          C8FFBFDDCAFFB2D5BCFFC6E0CEFFDDEFE5FFECF9F5FF0303033390D7A7FF479D
          6CFFD8F0E6FFBFE3D2FFD0EADDFFE1F3ECFFECF9F5FFD0E5DAFFA9C5B2FFD9E9
          E1FFB2D5BDFF6EA978FF58985FFF6CA472FFEEFAF6FF0708084390D7A7FF318B
          56FFEBF8F4FFB1DBC6FF98CDAFFF84C09BFF52996BFF014C15FF14551CFFCFE6
          D8FFB5D6BEFF51975CFF4F9356FF619C66FFF1FAF8FF1414145C90D7A7FF4691
          62FFDEEFE7FFD7EDE3FF7ABD95FF5AA778FF106731FF125A26FFB3D1BCFFDAEC
          E1FFE4F2EAFFB7D5BEFFC8DFCEFFD5E7DAFFF4FBF9FF1A1B1A6990D7A7FF5D9A
          73FFC4DDCFFFF3FBF9FFEDF7F4FF34895BFF0A622CFF458D5AFFBBDAC4FFF5FC
          FAFFE6F3ECFF6BA775FF599A60FF4E9052FFECF6EFFF2E2F2F8190D7A7FF75A5
          84FFB3D0BEFFF6FDFAFF95C8AFFF167745FF55966FFF64A977FF5BA06BFF9BC4
          A3FFF1F9F5FF569960FF539559FF509153FFE5F0E7FF3F4040938BD1A1FC98B9
          A2FFAFCAB7FFE9F5F1FF63AF8BFF74AE8FFFEFF7F3FFDFEEE4FFBFDBC6FFBED9
          C4FFE2EEE4FFD3E4D6FFE7F1E9FFF2F8F3FFFDFEFEFF4344448739744CC6CBDA
          CFFFAFC7B5FFF3F7F5FFF0F6F3FFE9EFEBFFE3ECE6FFDEE8E1FFD5E2D8FFD3DF
          D6FFC8D7CBFFC2D1C5FFDDE5DFFF1C3E278F0404041B00000000040F0749B6E1
          C3FFC8D6CBFFBFD0C3FFBFD0C3FFBFD0C3FFBFD0C3FFBFD0C3FFBFCFC2FFBECE
          C2FFBECDC0FFBECCC0FFDEE5DFFF092C147F0000000000000000000000000D2A
          167BB9E2C5FFE7ECE7FFDCE4DDFFD9E2DAFFD9E2DAFFD9E2DAFFD7E1D9FFD7E1
          D9FFD7E0D9FFD7E0D9FFEBEFECFF092C147F0000000000000000000000000000
          0000040F07493B744DC68CD1A1FC90D7A7FF90D7A7FF90D7A7FF90D7A7FF90D7
          A7FF90D7A7FF90D7A7FF90D7A7FF092C147F0000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF00000F800000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000100000003000080030000C003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000106011E030A0341080A084F080A084F080A084F0709074F0709074F0608
          064F0507054D0108013C0108013C0108013C010301170000000000000000031D
          09401BA236F42F9D46FF99AA9DFF81B58CFF88BD95FFE7E7E7FFEDEDEDFFD5D5
          D5FF949D96FF26B94DFF28BA50FF3CC461FF199331EE01030118030B052A20AE
          3FF51FB73FFF33A44BFF6FA17AFF21B942FF22BA44FFCCCCCCFFF5F5F5FFECEC
          ECFFA6AFA8FF29C152FF2AC256FF3FCB67FF2BBF56FF0109014305130A431EB6
          3DFF1CB43AFF34A54AFF7DAF87FF1EB63EFF1FB740FFB9B9B9FFDFDFDFFFF5F5
          F5FFB9C2BBFF27BF4FFF29C152FF3DCA64FF29BE53FF0109014305130A431CB4
          39FF1AB235FF34A548FF98BB9FFF47B15CFF43AC58FFA7A7A7FFC5C5C5FFDDDD
          DDFFB8C1BAFF25BD4BFF27BF4FFF3CC861FF28BC50FF0109014305130A431AB2
          34FF18B030FF29A83EFF81B989FF7AB283FF6EA779FF659E70FF69A174FF6EA7
          7BFF609E6EFF1FB140FF21B343FF2CBE52FF27BB4EFF0109014305130A4317AF
          2FFF15AD2CFF16AE2DFF17AF2FFF18B031FF19B134FF1AB236FF1CB43AFF1EB6
          3DFF20B841FF22BA45FF24BC49FF26BE4DFF25BA4BFF0109014305130A4316AE
          2BFF13AB27FF14AC28FF15AD2AFF16AE2DFF17AF30FF19B133FF1AB236FF1CB4
          3AFF1EB63EFF20B842FF22BA46FF25BD4AFF24B849FF0109014305130A4313AB
          27FF11A922FF4BAE57FF79BA81FF79BB82FF7ABB83FF7ABB84FF79BA83FF78B9
          83FF76B883FF75B682FF4FB265FF24BC48FF23B747FF0109014305130A4311A9
          22FF0EA61DFF7FBB84FFE6E6E6FFE6E6E6FFE3E3E3FFE1E1E1FFDFDFDFFFDCDC
          DCFFDADADAFFD6D6D6FF7AB687FF22BA46FF22B645FF0109014305130A430FA7
          1DFF0CA419FF81BE86FFEDEDEDFFE3E3E3FFD2D2D2FFD2D2D2FFD2D2D2FFD1D1
          D1FFD7D7D7FFDADADAFF7BB788FF21B944FF21B643FF0109014305130A430CA4
          19FF0AA214FF83C088FFF3F3F3FFEDEDEDFFDFDFDFFFDEDEDEFFDCDCDCFFD9D9
          D9FFDCDCDCFFDDDDDDFF7DB988FF21B943FF20B542FF0109014305130A430AA2
          15FF08A010FF85C289FFF8F8F8FFF3F3F3FFE7E7E7FFE5E5E5FFE2E2E2FFDEDE
          DEFFDFDFDFFFDEDEDEFF7DB989FF20B942FF20B542FF0109014305130A4308A0
          10FF069E0CFF86C38AFFF9F9F9FFEDEDEDFFD5D5D5FFD4D4D4FFD3D3D3FFD2D2
          D2FFDADADAFFDFDFDFFF7EBA89FF1A9334FF1EA83DFF020B02430206031A17AA
          2EF1079F0EFF86C38AFFF6F6F6FFF8F8F8FFF4F4F4FFF1F1F1FFECECECFFE6E6
          E6FFE2E2E2FFDEDEDEFF7EBA89FF1FB23FFF1CA239F10104021A000000000206
          041C06140B480F16114F14161553141615531416155314151453131514531314
          135312141353121312530C130E4F041208490205021C00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C00100008000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000A04012A0E07024B0C0908520C0908520C0908520B0907520A0807520907
          0652090605510F0501490F0501490F0501490803012200000000000000002A13
          0152BA661DF9AA6F35FFACA39AFFB99E83FFC1A68BFFE7E7E7FFEDEDEDFFD5D5
          D5FF9E9A95FFCF8531FFD18733FFD89241FFBB6D24F6080201240F080137BE69
          1CFBC27226FFAD7138FFA58A72FFC47628FFC67829FFCCCCCCFFF5F5F5FFECEC
          ECFFB0ABA7FFCF8532FFD28834FFD99342FFD58E37FF10050150160B0150BE6C
          22FFBF6D23FFAD7139FFB39880FFC17125FFC37327FFB9B9B9FFDFDFDFFFF5F5
          F5FFC3BEBAFFCD8130FFCF8532FFD79040FFD38B35FF10050150160C0150BB67
          1FFFBB6820FFAC6E38FFBDAA99FFB87F4CFFB37B47FFA7A7A7FFC5C5C5FFDDDD
          DDFFC2BDB9FFCA7F2DFFCD8130FFD58D3EFFD18733FF10050150160C0150B863
          1CFFB8631DFFB0692DFFBD9C82FFB6967CFFAA8B71FFA18267FFA5876BFFAB8D
          71FFA38263FFBD6D26FFBF7029FFCB8132FFCF8532FF10050150160C0150B55E
          19FFB55F1AFFB6601BFFB7621CFFB8641EFFBA671FFFBC6921FFBE6D23FFC170
          25FFC37427FFC6782AFFC97C2CFFCC802EFFCD8230FF10050150160C0150B25A
          16FFB25A18FFB35B18FFB45D19FFB6601BFFB8631DFFBA661FFFBC6921FFBF6D
          23FFC17125FFC47528FFC7792AFFCA7E2DFFCC812FFF10060150160C0150AE55
          13FFAF5515FFB3784EFFBD967BFFBE987CFFBF997CFFBF9A7CFFBE997BFFBD99
          7BFFBC9979FFBB9878FFBA8654FFC87B2BFFCA7E2DFF10060150170C0150AC50
          11FFAB5012FFBD9981FFE6E6E6FFE6E6E6FFE3E3E3FFE1E1E1FFDFDFDFFFDCDC
          DCFFDADADAFFD6D6D6FFBB9B7DFFC7792AFFC97C2CFF10060150170C0150A94B
          0EFFA84C0FFFC09A82FFEDEDEDFFE3E3E3FFD2D2D2FFD2D2D2FFD2D2D2FFD1D1
          D1FFD7D7D7FFDADADAFFBC9C7FFFC57729FFC87B2BFF11060150170C0150A647
          0BFFA5470CFFC29C84FFF3F3F3FFEDEDEDFFDFDFDFFFDEDEDEFFDCDCDCFFD9D9
          D9FFDCDCDCFFDDDDDDFFBD9D7FFFC47628FFC7792AFF11060150170C0150A242
          08FFA2430AFFC49D86FFF8F8F8FFF3F3F3FFE7E7E7FFE5E5E5FFE2E2E2FFDEDE
          DEFFDFDFDFFFDEDEDEFFBE9D80FFC47528FFC6782AFF11060150170C01509F3E
          05FFA03F07FFC59E87FFF9F9F9FFEDEDEDFFD5D5D5FFD4D4D4FFD3D3D3FFD2D2
          D2FFDADADAFFDFDFDFFFBE9E80FF9E5E20FFB56D26FF1107014F0B060123A848
          02F5A03F05FFC49D86FFF6F6F6FFF8F8F8FFF4F4F4FFF1F1F1FFECECECFFE6E6
          E6FFE2E2E2FFDEDEDEFFBE9D80FFBD6F24FFB56219F509030122000000000905
          011F150B014916110C4F16151453161514531615135315141353151413531413
          12531413125313121153140F0A4F130901490804011F00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C00100008000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002218034D7253
          22AA725322AA725322AA725221AA725221AA725221AA725120AA725120AA7251
          20AA72511FAA72501FAA724F1EAA724F1EAA724F1EAA2318044D6C4E1DAAFFF5
          F8FFFFF2F4FFFFF1F3FFFFF0F2FFFFEEF0FFFFECEFFFFFEAECFFFFE8EAFFFFE6
          E8FFFFE2E4FFFFDEE0FFFFD9DBFFFFD5D7FFFFD1D5FF724F1DAA6C4E1CAAFFF8
          F9FFFFF5F5FFFFF4F4FFFFF3F3FFFFF1F1FFFFEFEFFFFFEDEDFFFFEAEAFFFFE7
          E7FFFFE4E4FFFFE0E0FFFFDCDCFFFFD7D7FFFFD3D5FF724F1DAA6C4F1DAAFFFB
          FBFFFFF9F9FFFFF8F8FFFFF6F6FFFFF4F4FFFFF2F2FFFFF0F0FFFFEDEDFFFFEA
          EAFFFFE7E7FFFFE4E4FFFFDFDFFFFFDADAFFFFD6D8FF724F1EAA6C4F1EAAFFFE
          FEFFFFFDFDFFFFFBFBFFFFFAFAFFFFF7F7FFE7DEDEFFEDE2E2FFFFEFEFFFFFEC
          ECFFFFE9E9FFFFE6E6FFFFE2E2FFFFDDDDFFFFD9DBFF724F1EAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFEFEFFFFFDFDFFFFFBFBFF898889FFCEC8C9FFFFF2F2FFFFEE
          EEFFFFEBEBFFFFE8E8FFFFE4E4FFFFDFDFFFFFDBDDFF724F1EAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF8BADB1FF359D4FFF51A85AFFF2EB
          E5FFFFEDEDFFFFE9E9FFFFE6E6FFFFE1E1FFFFDDDFFF72501EAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BDAA5FF60F58FFF44CB66FF57A7
          5DFFF9ECE9FFFFEBEBFFFFE7E7FFFFE3E3FFFFDEE0FF72501FAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF5E2FF58E783FF5EF28BFF3EC1
          5CFF6AAC6CFFFEEBEBFFFFE8E8FFFFE4E4FFFFDFE1FF72501FAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFBEECCBFF57ED84FF5BED
          87FF37B651FF81B47EFFFFE8E8FFFFE4E4FFFFE0E2FF72501FAA6C5020AAF6E9
          D5FFF6E9D5FFF6E9D5FFF6E9D5FFF6E9D5FFF6E9D5FFF6E8D4FF96D593FF5BF3
          8AFF5CDC81FF6B8C70FFBFB1ABFFF6D4C3FFF6D1C1FF6F4F1FAA714701AAF891
          01FFF89101FFF89101FFF89101FFF89101FFF89101FFF89101FFF79101FF82BE
          50FFC9D5CDFFAEB6D9FF313EB3FFC17325FFF89201FF714701AA6B470EA4E59B
          4BFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE39F
          54FFB5B3C7FF4872F7FF263ECDFF63467DFFE59B4BFF6B470EA4110C03306C52
          29A470572DAA70572DAA70572DAA70572DAA70572DAA70572DAA70572DAA7057
          2DAA5C4831AA2034B2E30F1385CD61492BAA6C5229A4110C0330000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000010104130208
          408101010A23000000000101050F0101215A0101030E00000000000000000000
          00000000000000000000000000000000000000000000000000000F14488C2358
          F1FF112FBEF3342E57AA1222A3D6103EE6FF0F1A95DA6F532BAA725120AA7251
          20AA72511FAA72501FAA724F1EAA724F1EAA724F1EAA2318044D473D43AA295D
          F2FF2B60FEFF1B43DAFF2055FEFF194FFEFF2D43D3FFEDDDE9FFFFE8EAFFFFE6
          E8FFFFE2E4FFFFDEE0FFFFD9DBFFFFD5D7FFFFD1D5FF724F1DAA6D5020AAABB0
          EDFF3561ECFF2D63FFFF2559FAFF3E52D8FFEEE2EDFFFFEDEDFFFFEAEAFFFFE7
          E7FFFFE4E4FFFFE0E0FFFFDCDCFFFFD7D7FFFFD3D5FF724F1DAA6C4F1DAAF0EF
          FAFF335CECFF3367FDFF2E65FBFF243FC8FFE4DCEEFFFFF0F0FFFFEDEDFFFFEA
          EAFFFFE7E7FFFFE4E4FFFFDFDFFFFFDADAFFFFD6D8FF724F1EAA6C4F1EAA9BA8
          F2FF4376FDFF3E5CE5FF4C6AE5FF295DF2FF4F5ECDFFFEF2F3FFFFEFEFFFFFEC
          ECFFFFE9E9FFFFE6E6FFFFE2E2FFFFDDDDFFFFD9DBFF724F1EAA6C4F1EAAA1B2
          F9FF3361F1FFBBC2F4FFEDEDFAFF3D5FE4FF2644DAFFDED8EEFFFFF2F2FFFFEE
          EEFFFFEBEBFFFFE8E8FFFFE4E4FFFFDFDFFFFFDBDDFF724F1EAA6C4F1EAAFFFF
          FFFFEDEFFDFFFFFFFFFFFFFFFFFFE9EAF9FFF7F4F9FFFFF7F7FFFFF4F4FFFFF0
          F0FFFFEDEDFFFFE9E9FFFFE6E6FFFFE1E1FFFFDDDFFF72501EAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFFFF9F9FFFFF5F5FFFFF2
          F2FFFFEEEEFFFFEBEBFFFFE7E7FFFFE3E3FFFFDEE0FF72501FAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFBFBFFFFF7F7FFFFF3
          F3FFFFEFEFFFFFECECFFFFE8E8FFFFE4E4FFFFDFE1FF72501FAA6C4F1EAAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFCFCFFFFF8F8FFFFF4
          F4FFFFF0F0FFFFECECFFFFE8E8FFFFE4E4FFFFE0E2FF72501FAA6C5020AAF6E9
          D5FFF6E9D5FFF6E9D5FFF6E9D5FFF6E9D5FFF6E9D5FFF6E8D4FFF6E5D2FFF6E2
          D0FFF6DFCDFFF6DBCAFFF6D8C7FFF6D4C3FFF6D1C1FF6F4F1FAA714701AAF891
          01FFF89101FFF89101FFF89101FFF89101FFF89101FFF89101FFF89101FFF891
          01FFF89101FFF89101FFF89101FFF89201FFF89201FF714701AA6B470EA4E59B
          4BFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B
          4AFFE59B4AFFE59B4AFFE59B4AFFE59B4AFFE59B4BFF6B470EA4110C03306C52
          29A470572DAA70572DAA70572DAA70572DAA70572DAA70572DAA70572DAA7057
          2DAA70572DAA70572DAA70572DAA70572DAA6C5229A4110C0330000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0011FF00000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000916529AEC69750D4251502470000000000000000000000000000
          000029170452C99B56DA7E53209D000000000000000000000000000000000000
          000000000000BF8F46CCF7EBB1FFF1D694FE84541AA3060301170A05011D8C5C
          21AFF1D898FEF7EAB0FFAA7836BB000000000000000000000000000000000000
          0000000000006B461794F1D899FFEFD291FFEED08DFFE0AB5BF6E2AE61F8EECF
          8DFFEFD18FFFF1D798FF4E300F82000000000000000000000000000000000000
          0000000000002712014BEAC27BFFE8BE78FFE7BB73FFE6B970FFE6B870FFE7BA
          72FFE8BD76FFE8BC72FF180D013C000000000000000000000000000000000000
          0000000000000905011AE4A64FFFE2AB5EFFE1A758FFE0A555FFE0A555FFE0A7
          57FFE2AA5DFFDF9E46FE0403010B000000000000000000000000000000000000
          0000000000005030077EE7B575FFE7B980FFE1A963FFD9913BFFD99039FFDA92
          3CFFDB9642FFDC9841FE4125046B000000000000000000000000000000000000
          0000703C0C85EAC08CFEEAC396FFE8BE8EFFE7BA87FFE3AE75FFD78A36FFD37E
          20FFD48227FFD78A31FFD98F34FE482906750000000000000000000000007A4D
          1292EDC899FFECC79EFFE9C094FFE7BA8CFFE6B685FFE4B381FFE4B180FFE0A3
          67FFDC9752FFDE9E5BFFE4B279FFE6B57BFE5D380B8200000000140C013EEFC9
          9BFFEECEAAFFEBC69FFFE9C096FFE6BB91FFE4B78EFFE2B48BFFE2B288FFE2B1
          85FFE3B182FFE4B281FFE6B684FFE8BB8BFFE6B375FE0E08012C00000000492D
          0770774F1E9FAC7329B5BE8034CADA9D5AF2E3BB9CFFE0B797FFE0B594FFE0B4
          91FFD3914AEEB8772DCA97641EAF5B3912934125056900000000000000000000
          0000000000000000000000000000130B012AE0AD7CFDE0BCA4FFDFBAA1FFD89D
          64F5090501190000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000966226B6E1C2B2FFE0C0AFFF8353
          18A2000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000028170148E1BCA2FFE0B897FE190F
          0137000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B87A2EC5976424B50000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E3C70000E0070000E0070000E0070000E0070000E0070000C003
          0000800100000000000080010000F81F0000FC3F0000FC3F0000FE7F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000036223440975992B2995A94B29A5C96B28A59
          86A5130D13150000000000000000000000000000000000000000000000000000
          00000000000000000000000000008A2E82AAFC46EEFFFF51F5FFFF5CFBFFDD5A
          DCFF5B38585E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000892B80AAF339E3FFFA44ECFFFF4FF4FFDF4E
          DAFF5B37585E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000862979AAE62ECFFFF037E0FFF942EAFFDE43
          D3FF5B36585E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000802571AAD626AFFFE42DC9FFEF36DEFFD838
          CAFF5B34575E00000000000000000000000000000000000000002B1E2A345533
          515E5533505E5532505E5531505E9B3D8CC9C72096FFD425ABFFE22CC5FFCE2E
          BEFF91528C965A34575E5B36585E5B36585E5B36585E130C1315A03F97F18C1D
          78FE871A6CFE891868FE8F196AFE9B1A71FEBB1D86FFC41F92FFD224A7FFD729
          B9FFCE2FBDFED637C9FEDC3FD0FEDE48D6FEDC52D9FE8A5986A5C23EB7FFC029
          AFFFB6239DFFA91D87FF9F1976FFA11973FFA91A79FFB61C82FFC31F91FFD023
          A4FFDF2ABEFFEB32D7FFF53CE6FFFC48EFFFFF53F7FF9A5B96B2C641BCFFC62E
          B8FFC02AB1FFB7239FFFAB1E89FF9F1977FF921668FF8E1462FF96166AFFA71A
          7BFFBD2094FFD528B4FFE830D3FFF43BE4FFFC47EEFF995A94B2C644BEFFCA33
          BDFFC62EB8FFC12AB2FFB824A1FFAC1E8BFFA01A79FF941669FF8D1461FF8D14
          61FF911566FF9D1975FFAB1D88FFBD25A4FFCE2FBDFF92578DB253255073842E
          7EAA822D7DAA812B79AA7F2975AA9D328EE2AD1F8DFFA11A7AFF96176CFF7E14
          56FF8E3D82C96F205FAA742365AA77236AAA79246DAA331E3140000000000000
          00000000000000000000000000007F2A77AABA25A5FFB02091FFA31A7DFF8316
          5EFF5434505E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000822C7BAAC22BB4FFBC26A8FFB22094FF8F19
          6FFF5535515E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000832D7DAAC730BAFFC42CB5FFBD27ABFF9C1E
          83FF5636535E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000842E7FAACB35BFFFC931BCFFC52DB6FFA725
          97FF5637545E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000052244F73C646BEFFC944C0FFC641BDFFA943
          A1F12C1E2B340000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F81F0000F81F0000F81F0000F81F000000000000000000000000
          0000000000000000000000000000F81F0000F81F0000F81F0000F81F0000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000049474455877451AA87724FAA85714EAA8171
          54AA1B1B1B1C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000877451AAB26303FFA15A02FF8F5101FF8B66
          1FFF4B443A550000000000000000000000000000000000000000000000000000
          00000000000000000000000000008A7551AAC0700AFFB46604FFA55C02FF9F6B
          1EFF4B443A550000000000000000000000000000000000000000000000000000
          00000000000000000000000000008B7954AACA8615FFC2740CFFB76705FFB274
          1FFF4B443A550000000000000000000000000000000000000000000000000000
          00000000000000000000000000008A7D58AAD3A422FFCC8C17FFC4760DFFC07F
          24FF4B443A550000000000000000000000000000000000000000343230384B44
          3A554B443A554B443A554B443A55978756C6DBB730FFD4A724FFCD8F18FFC98C
          2CFF705D428D4B443A554B443A554B443A554B443A551B1B1B1CA79353FFD5BF
          6DFFD5CB72FFD6D071FFD6D06BFFD7CD5FFFDDC43BFFDCBA32FFD6AA26FFCE99
          23FFC88D2BFFC08024FFB6771FFFA8701EFF966A20FF817154AAB08838FFD495
          35FFDAA73FFFDDBB4DFFDACA59FFD9CE59FFDBCC4FFFDDC641FFDCBC33FFD7AD
          28FFCE971BFFC77E10FFBD6D08FFAF6203FF9D5701FF86714EAAAD8334FFCF8C
          30FFD39335FFDAA53EFFDCB94AFFDAC95AFFD7D56AFFD6D971FFD8D466FFD9C9
          53FFD9B53AFFD29C24FFC98113FFBE6F09FFB06304FF88734FAAA98134FFCA86
          2CFFCF8C30FFD39234FFD8A33DFFDCB74AFFDAC758FFD7D468FFD6DA72FFD6DA
          72FFD7D66CFFD9CA5CFFDCBA4BFFD7A139FFCD8A29FF887957AA6965578D7F71
          51AA7F7251AA807353AA817554AAA19356E2DCB548FFDBC657FFD7D266FFCFDE
          85FF928962C6888367AA888265AA888161AA887F5FAA4A484455000000000000
          0000000000000000000000000000807453AAD8A03BFFDBB245FFDCC454FFD1D8
          7EFF45423A550000000000000000000000000000000000000000000000000000
          00000000000000000000000000007F7351AAD29033FFD69C39FFDBAF44FFD5CB
          6DFF45423A550000000000000000000000000000000000000000000000000000
          00000000000000000000000000007F7151AACD8A2FFFD18E32FFD69938FFD5B9
          5EFF45423A550000000000000000000000000000000000000000000000000000
          00000000000000000000000000007E7150AAC8832BFFCC882DFFD08D31FFD1A6
          51FF45423A550000000000000000000000000000000000000000000000000000
          00000000000000000000000000006965598DA68134FFAA8131FFAD8334FFA38B
          4AFF323230380000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F81F0000F81F0000F81F0000F81F000000000000000000000000
          0000000000000000000000000000F81F0000F81F0000F81F0000F81F0000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000011282F6A244850B7081015390000000000000000000000000000
          00000B0E10422C4143BB13171A5E000000000000000000000000000000000000
          00000000000029606CBC9EFFFFFF57AEBBFD153039940305060F040708141A2F
          369F5FB4BDFEA1FFFFFF283C41AD000000000000000000000000000000000000
          0000000000001033408F74FDFFFF6FFCFFFF62E9FBFF327886EC367C8BF066EF
          FFFF71FEFFFF72F7FFFF141E2280000000000000000000000000000000000000
          000000000000071C224846C2D9FF50EBFFFF4CE9FFFF4DEFFFFF4EEFFFFF4EE8
          FFFF54EFFFFF48B1C5FF0A111338000000000000000000000000000000000000
          00000000000002070A102699B5FE31E3FFFF2CDBFFFF2FDBFFFF2FDBFFFF32DC
          FFFF3AE9FFFF30869BFA00000000000000000000000000000000000000000000
          000000000000072B376846BCD7FE64E7FFFF3EDBFFFF08D0FFFF11D2FFFF19D3
          FFFF20DEFFFF27A3C0FE0E1D2258000000000000000000000000000000000000
          0000083B4A736AC0DDFE85E5FFFF7BE0FFFF7FE3FDFF69E0FEFF0CCDFCFF01C8
          FDFF01CDFFFF08DDFFFF169CBEFC0F242C640000000000000000000000000841
          567F71C4EEFE64ACFFFF4885FEFF6EC3FDFF67B9FAFF80D8F7FF89E0F7FF67D8
          F7FF49D5F9FF4FDBFFFF79F1FFFF69BED4FD0F28306F000000000000000056AB
          D4FE78BBFFFF4695FFFF54B2FFFF449DFEFF396CFBFF70B7F5FF8ADAF1FF8CDD
          F6FF90E5FDFF8EEAFFFF89F0FFFF93FFFFFF4F93A7F800000000000000000130
          6A7E063FD8E255DAF9FB1DE5FFFF57EAFDFF55B0FEFF6CAEF6FF93D5F1FF99DC
          F0FF408CA2EB337489C7245A6CAC163F4C90071F274F0000000000000000010D
          42413779D2D250E6F8F801CDFFFF3AE9FCFC2578F8FF608BF7FFA4D7F2FF58A0
          B9F401090D140000000000000000000000000000000000000000000000000C1A
          34330121A1A12C80E1E15DF2F9F960D4F1F1145CE5EE8BAFF7FFC2E3F4FF1256
          6C9E000000000000000000000000000000000000000000000000000000000102
          0908010D49480B32A3A32A67CBCB0124B1B127609AA093C1E7FF96C8DCFE011C
          2632000000000000000000000000000000000000000000000000000000000000
          00000102090813253938010A3D3C010A33320104141317647D9E165A71920000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E3C70000E0070000E0070000E0070000E00F0000E0070000C003
          0000800100008001000080010000801F0000803F0000803F0000C07F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008D8D
          8DFF8A8A8AFF878787FF858585FF828282FF808080FF7E7E7EFF7B7B7BFF7878
          78FF757575FFABABABFF7F9EDDFF958F88FF9D9B98FF00000000000000008E8E
          8EFFFFDFDFFFFFDFDFFFFFDFDFFFB39C9CFFFFDDDDFFFFDCDCFFFFDBDBFFFFD9
          D9FFD4C5C5FFA1B8F6FF3B84FEFF80DEFFFF9B948AFF00000000000000008F8F
          8FFFFFE2E2FFFFE2E2FFFFE2E2FFB39E9EFFFFECECFFFFF0F0FFFFF1F1FFFFEF
          EFFF8FA8DEFF3681FEFF72E1FFFF398CFEFF7195E0FF00000000000000008F8F
          8FFFFFE5E5FFFFE5E5FFFFE5E5FFDCD3D3FFA8A4A4FF7F7E7FFF777675FF817F
          7FFF908E8BFF8CC5D6FF3788FEFF98B4F7FFAEAEAEFF00000000000000009090
          90FFB3A2A2FFB3A2A2FFD3C9C9FFA09E9EFFBEAC92FFFFD184FFFED085FFFED6
          98FF9A948BFF8F8E8BFF8BA6E2FFD6C7C7FF6C6C6CFF00000000000000009191
          91FFFFEAEAFFFFEAEAFFFFF6F6FF807E7CFFFFDD97FFF2D598FFEFCD90FFF1C8
          82FFFED99DFF868485FFFFEFEFFFFFD9D9FF6D6D6DFF00000000000000009191
          91FFFFEDEDFFFFEDEDFFFFF8F8FF7C7974FFFFEEBDFFF8E8BBFFF4DDA9FFF0D0
          94FFFFD590FF7B7A79FFFFF0F0FFFFDBDBFF6D6D6DFF00000000000000009292
          92FFFFF0F0FFFFF0F0FFFFF8F8FF82817DFFFFFFEAFFFFFEEFFFF9EDC2FFF6DA
          A0FFFFDA96FF858384FFFFEFEFFFFFDCDCFF6E6E6EFF00000000000000009393
          93FFFFF3F3FFFFF3F3FFFFF8F8FFA3A2A3FFDEDAC4FFFFFFF2FFFFF7CBFFFFE7
          A6FFB5A897FFABA7A7FFFFECECFFFFDDDDFF6F6F6FFF00000000000000009393
          93FFB3ADADFFB3ADADFFB3ACACFFDEDBDBFFA4A3A3FF817F7EFF7C7A76FF7F7E
          7DFFA2A0A0FFDCD3D3FFB39E9EFFB39C9CFF6F6F6FFF00000000000000009494
          94FFFFF9F9FFFFF9F9FFFFF7F7FFB3ACACFFFFF8F8FFFFF8F8FFFFF8F8FFFFF6
          F6FFD3C9C9FFFFE5E5FFFFE2E2FFFFDFDFFF707070FF00000000000000009595
          95FFFFFCFCFFFFFBFBFFFFF9F9FFB3ADADFFFFF3F3FFFFF0F0FFFFEDEDFFFFEA
          EAFFB3A2A2FFFFE5E5FFFFE2E2FFFFDFDFFF717171FF00000000000000009696
          96FFFFFFFFFFFFFCFCFFFFF9F9FFB3ADADFFFFF3F3FFFFF0F0FFFFEDEDFFFFEA
          EAFFB3A2A2FFFFE5E5FFFFE2E2FFFFDFDFFF717171FF00000000000000009696
          96FF939393FF909090FF8D8D8DFF8A8A8AFF878787FF858585FF828282FF8080
          80FF7E7E7EFF7B7B7BFF787878FF757575FF727272FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008001000080010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020203140C0C17A20B0A11BE0201014F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000111831B91A4D96FF1E4B92FF151D39F102010159000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000006050D6D2E5EA0FD4F98DFFF166EDEFF1657BEFF0B0C17BE000000000000
          0000000000000000000000000000000000000000000000000000000000000202
          0312152F5FE55DA2E3FFB6DFFDFFBEDFFFFF4B73B9FE03040C7F000000000000
          0000000000000000000000000000000000000000000000000000000000000908
          16813A77BDFF97D0FDFFDDFCFFFFB4BECFFF1A1820AB00000000000000000000
          0000000000000000000000000000000000000000000000000000030103191D3B
          6EEC7BBEF7FFC7F3FFFF95B9D8FF141A2BBB0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B1631BE5398
          DBFFADE7FFFF73A8D7FF0F1930C3010101020000000000000000000000000202
          021B010101480101010C000000000000000000000000080816982B6FB8FE9BE1
          FFFF7DB5E3FF071732CC010101080000000000000000000000000202022E4241
          40E34F4F4EFC0303039C00000000000000000A0916972566AFFE7FCDFFFF9FDB
          FEFF234068EF0101012A00000000000000000000000000000000474646D7D6CF
          CDFFB8B4B2FF3A3B3BF801010161070A14972067B4FE6BC2FFFFA8E6FFFF4D7C
          ACFE010107760000000000000000000000000000000000000000716E6EECD7D2
          D3FFCBC9CAFF8E8F8EFF44413FFB6E6F75FE5495C9FF81D3FFFF77B2E0FF0A13
          2AC40000000000000000000000000000000000000000000000000A0A0A3A3636
          36CB878787FDACACABFFAAA9A7FFBEB7B1FFB6B0AAFF739DBDFF233F60EA0101
          0121000000000000000000000000000000000000000000000000000000000000
          0000222222ADA4A3A0FFCCCAC7FFC5C1BFFFCDC6C3FF7B7371FF070607A30000
          00000000000001010104010101140101010C0000000000000000000000000000
          00000707072A626160F1D1CFCDFFE6E3E1FFB3B1B0FF706F6DFF434342F9292A
          2AE42D2D2DDB434343E8353535E5030303480000000000000000000000000000
          0000000000000B0B0B46555554E7C2C0BDFFD6D3D1FFACA9A9FFA8A7A6FFAFAD
          ACFFBBB9B8FF999998FE2A2A2AB80101010C0000000000000000000000000000
          000000000000000000000404041922212198686665E5969292F99E9A99FC8A87
          86F6595757D91313137100000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFE10000FFE00000FFC00000FF800000FF810000FF030000FF0300008E07
          00000C0F0000001F0000003F0000003F0000C0630000C0030000E0030000F00F
          0000}
      end>
  end
  object dsLocPark: TDataSource
    DataSet = cdsLocPark
    Left = 872
    Top = 360
  end
  object cdsLocPark: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 304
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 936
    Top = 360
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 936
    Top = 304
  end
  object tmr: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrTimer
    Left = 16
    Top = 432
  end
  object bpmLocPark: TdxBarPopupMenu
    BarManager = bmLocPark
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'btnViltrLRZ'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = True
    Left = 184
    Top = 360
  end
  object cdsLocSer: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1000
    Top = 304
  end
  object dsLocSer: TDataSource
    DataSet = cdsLocSer
    Left = 1000
    Top = 360
  end
  object dsDepoList: TDataSource
    DataSet = cdsDepoList
    Left = 1072
    Top = 360
  end
  object cdsDepoList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1072
    Top = 304
  end
  object imlFirmTreeState: TcxImageList
    FormatVersion = 1
    DesignInfo = 25034830
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C000508A89000000800000008000000080000000
          8000508A8900C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B00000080000000800000008000000080000000
          8000000080004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D00000080000000800000008000000080000000
          800000008000304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D00000080000000800000008000000080000000
          800000008000304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B00000080000000800000008000000080000000
          8000000080004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C000508A89000000800000008000000080000000
          8000508A8900C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C000508A89004080FF004080FF004080FF004080
          FF00508A8900C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B004080FF004080FF004080FF004080FF004080
          FF004080FF004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D004080FF004080FF004080FF004080FF004080
          FF004080FF00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D004080FF004080FF004080FF004080FF004080
          FF004080FF00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B004080FF004080FF004080FF004080FF004080
          FF004080FF004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C000508A89004080FF004080FF004080FF004080
          FF00508A8900C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD004263420021422100214221004263
          4200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD004284420000BD000000DE000000DE000000BD
          000042844200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE004263420000BD000000FF000000FF000000FF000000FF
          000000BD000042634200DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE002142210000DE000000FF000000FF000000FF000000FF
          000000DE000021422100DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE002142210000DE000000FF000000FF000000FF000000FF
          000000DE000021422100DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE004263420000BD000000FF000000FF000000FF000000FF
          000000BD000042634200DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD004284420000BD000000DE000000DE000000BD
          000042844200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD004263420021422100214221004263
          4200BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C000508A8900FFAEAE00FFAEAE00FFAEAE00FFAE
          AE00508A8900C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B00FFAEAE00FFAEAE00FFAEAE00FFAEAE00FFAE
          AE00FFAEAE004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D00FFAEAE00FFAEAE00FFAEAE00FFAEAE00FFAE
          AE00FFAEAE00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D00FFAEAE00FFAEAE00FFAEAE00FFAEAE00FFAE
          AE00FFAEAE00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B00FFAEAE00FFAEAE00FFAEAE00FFAEAE00FFAE
          AE00FFAEAE004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C000508A8900FFAEAE00FFAEAE00FFAEAE00FFAE
          AE00508A8900C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C0004F8B8A0000DBD30000FFFF0000FFFF0000DB
          D3004F8B8A00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B0000DBD30000FFFD0000FFFD0000FFFD0000FF
          FD0000DBD3004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D0000FFFF0000FFFD0000FFFD0000FFFD0000FF
          FD0000FFFF00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF00304E4D0000FFFF0000FFFD0000FFFD0000FFFD0000FF
          FD0000FFFF00304E4D00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DFDFDF004F6C6B0000DBD30000FFFD0000FFFD0000FFFD0000FF
          FD0000DBD3004F6C6B00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0C0C0004F8B8A0000DBD30000FFFF0000FFFF0000DB
          D3004F8B8A00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C0C0C0004F6C6B00304E4D00304E4D004F6C
          6B00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BFBFBF005858580038383800383838005858
          5800BFBFBF000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBF007070700090909000A8A8A800A8A8A8009090
          900070707000BFBFBF0000000000000000000000000000000000000000000000
          000000000000DFDFDF005858580090909000C0C0C000C0C0C000C0C0C000C0C0
          C0009090900058585800DFDFDF00000000000000000000000000000000000000
          000000000000DFDFDF0038383800A8A8A800C0C0C000C0C0C000C0C0C000C0C0
          C000A8A8A80038383800DFDFDF00000000000000000000000000000000000000
          000000000000DFDFDF0038383800A8A8A800C0C0C000C0C0C000C0C0C000C0C0
          C000A8A8A80038383800DFDFDF00000000000000000000000000000000000000
          000000000000DFDFDF005858580090909000C0C0C000C0C0C000C0C0C000C0C0
          C0009090900058585800DFDFDF00000000000000000000000000000000000000
          00000000000000000000BFBFBF007070700090909000A8A8A800A8A8A8009090
          900070707000BFBFBF0000000000000000000000000000000000000000000000
          0000000000000000000000000000BFBFBF005858580038383800383838005858
          5800BFBFBF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DFDFDF00DFDFDF00DFDFDF00DFDF
          DF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        MaskColor = clBlack
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD003B35AC0021208300212083003B35
          AC00BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD001C1DD6000E2B9200150CD200150CD2000E2B
          92001C1DD600BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE003B35AC000E2B92001900FF001900FF001900FF001900
          FF000E2B92003B35AC00DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE0021208300150CD2001900FF001900FF001900FF001900
          FF00150CD20021208300DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE0021208300150CD2001900FF001900FF001900FF001900
          FF00150CD20021208300DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DEDEDE003B35AC000E2B92001900FF001900FF001900FF001900
          FF000E2B92003B35AC00DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDBDBD001C1DD6000E2B9200150CD200150CD2000E2B
          92001C1DD600BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BDBDBD003B35AC0021208300212083003B35
          AC00BDBDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end>
  end
  object stlrpEditing: TcxStyleRepository
    Left = 79
    Top = 432
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 6583436
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6583436
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 8224125
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16770005
      TextColor = clBlack
    end
    object stlGrayFont: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 10003638
    end
    object stlshtVG: TcxVerticalGridStyleSheet
      Styles.Content = cxStyle4
      Styles.Category = cxStyle8
      Styles.Header = cxStyle5
      BuiltIn = True
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Styles.Content = cxStyle4
      Styles.Footer = cxStyle3
      Styles.Group = cxStyle3
      Styles.Header = cxStyle5
      Styles.BandHeader = cxStyle6
      BuiltIn = True
    end
    object stlshtTL_: TcxTreeListStyleSheet
      Styles.Content = cxStyle4
      Styles.Inactive = cxStyle10
      Styles.Selection = cxStyle10
      Styles.HotTrack = cxStyle7
      BuiltIn = True
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 172
    Top = 438
  end
end
