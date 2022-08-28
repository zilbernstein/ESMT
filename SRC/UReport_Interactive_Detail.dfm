object frmReport_Interactive_Detail: TfrmReport_Interactive_Detail
  Left = 0
  Top = 0
  Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
  ClientHeight = 669
  ClientWidth = 1142
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object grdIncident: TcxGrid
    Left = 0
    Top = 0
    Width = 1142
    Height = 615
    Cursor = crHandPoint
    Align = alClient
    TabOrder = 0
    LevelTabs.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object btvReportDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = btvReportDetailCustomDrawCell
      DataController.KeyFieldNames = 'sheet_id'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#####'
          Kind = skCount
          Column = clmnIncident_StateName
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #1042#1089#1077#1075#1086':'
          Kind = skCount
          Column = btvReportDetailColumn23
        end
        item
          Kind = skCount
          Column = btvReportDetailColumn14
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.IgnoreTimeForFiltering = True
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = btvReportDetailColumn1
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = 
        #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1044#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' <'#1054 +
        #1073#1085#1086#1074#1080#1090#1100'>'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GridLineColor = clBtnShadow
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.FixedBandSeparatorWidth = 0
      Styles.StyleSheet = DMMain.stlshtBTV8
      Bands = <
        item
        end
        item
          Caption = #1054#1090#1084#1077#1090#1082#1080
          Options.HoldOwnColumnsOnly = True
          Position.BandIndex = 0
          Position.ColIndex = 2
        end
        item
          Caption = #1048#1085#1094#1080#1076#1077#1085#1090
          Options.HoldOwnColumnsOnly = True
          Position.BandIndex = 0
          Position.ColIndex = 1
        end
        item
          Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
          Options.HoldOwnColumnsOnly = True
          Position.BandIndex = 0
          Position.ColIndex = 0
        end
        item
          Options.HoldOwnColumnsOnly = True
          Position.BandIndex = 0
          Position.ColIndex = 3
          Visible = False
          VisibleForCustomization = False
        end
        item
          Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
          Options.HoldOwnColumnsOnly = True
          Position.BandIndex = 0
          Position.ColIndex = 4
          Styles.Content = DMMain.stlBackgroundLight
        end>
      object btvReportDetailColumn1: TcxGridDBBandedColumn
        Caption = #8470' '#1051#1056
        DataBinding.FieldName = 'sheet_id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Styles.Content = DMMain.stlBackgroundLightBlue
        Width = 65
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvReportDetailColumn2: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'date_fail'
        OnGetDisplayText = btvReportDetailColumn2GetDisplayText
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvReportDetailColumn3: TcxGridDBBandedColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'date_close'
        OnGetDisplayText = btvReportDetailColumn2GetDisplayText
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvReportDetailColumn6: TcxGridDBBandedColumn
        Caption = #1060#1080#1083#1080#1072#1083' '#1057#1050'*'
        DataBinding.FieldName = 'service_firm_name'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Width = 87
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvReportDetailColumn9: TcxGridDBBandedColumn
        Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'criticality_id'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DMMain.imlSmall
        Properties.Items = <
          item
            Description = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077
            ImageIndex = 45
            Value = '13'
          end
          item
            Description = #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077
            ImageIndex = 44
            Value = '12'
          end
          item
            Description = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081
            ImageIndex = 51
            Value = '11'
          end>
        Properties.ShowDescriptions = False
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Styles.Content = DMMain.stlBackgroundLight
        Width = 79
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object clmnIncident_StateName: TcxGridDBBandedColumn
        AlternateCaption = ' '
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'state_name'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Styles.Content = DMMain.stlBackgroundLight
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvReportDetailColumn14: TcxGridDBBandedColumn
        Caption = #1057#1077#1088#1080#1103
        DataBinding.FieldName = 'ser_name'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvReportDetailColumn15: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = 'nom_tpe'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object clmnIncident_Create_Mode: TcxGridDBBandedColumn
        Caption = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103
        DataBinding.FieldName = 'create_mode'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DMMain.imlSmall
        Properties.Items = <
          item
            Description = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
            ImageIndex = 30
            Value = '0'
          end
          item
            Description = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076
            ImageIndex = 46
            Value = '1'
          end>
        HeaderGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF90943A
          126DAC4514C6B14817E6AB4413C69539106D0000000000000000949090D79C98
          98FD9A9696FF999595FF989494FF989494F5979393F5D2D1D1FBAB6648FCD167
          37FFC86333FFD8AB94FFBE5826FFBF5420FEAF491BAB000000009B9797EFFAF6
          F4FFF7EFECFFF6EDEAFFF6ECE8FFF6ECE8FFFBF6F5FFCC9D8AFFDF774EFFE677
          4BFFD6805BFFFEFEFEFFC0663BFFBF4D16FFC0541EF9983B116E9D9898FEF9F3
          F0FFFC619EFFFC579AFFFB609CFFF4E7E2FFF1EEEDFFBC6A47FFE67854FFEB7C
          56FFE18C6BFFFEFEFEFFC86F46FFC14F19FFC05019FFAC4414C89F9B9BEFFAF6
          F4FFFD599DFFFBB1B8FFFD589CFFF6EBE7FFFBF5F3FFBC5B36FFDA694BFFE575
          53FFE38E71FFFEFEFEFFD57E5AFFCE5D2AFFC4531DFEB24917E9A09C9CEFFAF6
          F4FFFD599EFFFCB2B9FFFD599DFFF8EFEBFFF2F0EFFFB76342FFC85539FFD664
          46FFDC785AFFE5C5BAFFE37F59FFDF6F41FFD2622FFFAF4716CAA19D9DEFFAF6
          F4FFFD599EFFFCB2BAFFFD599DFFF9F0EDFFFCF8F7FFCD9E8BFFBD4E31FFC44F
          36FFCE6E57FFF2E3DFFFE38667FFEA7B52FFD86D3EFA9D3F1571A39E9EEFFAF6
          F4FFFD599EFFFCB2BAFFFD599EFFF9F1EEFFE2DEDCFFF2F0F0FFC67C61FFBB4D
          2EFFC1563EFFD69787FFDE7656FFDD754CFFB95428AEFFFFFF90A49F9FEFFAF6
          F4FFFD599EFFFCB2BAFFFD599EFFF9F1EEFFF9F1EEFFF9F1EEFFFCF9F8FFCE9F
          8CFFBA6543FFBA5732FFC06D4AFF986956F3FFFFFF9000000000A5A0A0EFFAF6
          F4FFFD64A1FFFD599EFFFD64A1FFF9F1EEFFE2DEDCFFE2DEDCFFE2DEDCFFF2F1
          F0FFF2F0F0FFF2F0EFFFFDFBFAFFD3D1D1F50000000000000000A6A1A1EFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F4FF959191E90000000000000000A6A2A2EFFAF6
          F4FFD8A44EFFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA2
          46FFDAA246FFD8A44EFFFAF6F4FF928E8EE90000000000000000A7A3A3EFFAF6
          F4FFDAA246FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B4
          91FFC9B491FFDAA246FFFAF6F4FF938E8EE10000000000000000A8A3A3EFFAF6
          F4FFD8A44EFFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA2
          46FFDAA246FFD8A44EFFFAF6F4FF938E8EE70000000000000000A9A4A4EFFBF9
          F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9
          F8FFFBF9F8FFFBF9F8FFFBF9F8FF938E8EE10000000000000000A49F9FD2A9A4
          A4FCA8A3A3FEA7A3A3FEA6A2A2FEA6A2A2EFA6A1A1EFA5A0A0EFA49F9FEFA39E
          9EEFA39E9EFDA39E9EF2938E8EE1938E8EE10000000000000000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.ShowCaption = False
        Styles.Content = DMMain.stlBackgroundLight
        Width = 26
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvReportDetailColumn23: TcxGridDBBandedColumn
        Caption = #1055#1088#1080#1087#1080#1089#1082#1072
        DataBinding.FieldName = 'loc_prip_name'
        HeaderAlignmentHorz = taCenter
        Width = 107
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnStateID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'state_id'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvReportDetailColumn4: TcxGridDBBandedColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'change_user_fio'
        HeaderAlignmentHorz = taCenter
        Width = 105
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvReportDetailColumn24: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'date_change'
        HeaderAlignmentHorz = taCenter
        Width = 89
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object clmnIncident_Info_Source_Type: TcxGridDBBandedColumn
        AlternateCaption = #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
        Caption = #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072
        DataBinding.FieldName = 'source_type_name'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Styles.Content = DMMain.stlBackgroundLight
        Width = 71
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvReportDetailColumn5: TcxGridDBBandedColumn
        Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
        DataBinding.FieldName = 'incident_descr'
        HeaderAlignmentHorz = taCenter
        Width = 395
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvReportDetailColumn7: TcxGridDBBandedColumn
        Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1057#1050'*'
        DataBinding.FieldName = 'department_firm_name'
        HeaderAlignmentHorz = taCenter
        Width = 128
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object btvReportDetailColumn8: TcxGridDBBandedColumn
        Caption = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
        DataBinding.FieldName = 'tchr_firm_name'
        HeaderAlignmentHorz = taCenter
        Width = 115
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object btvReportDetailColumn10: TcxGridDBBandedColumn
        Caption = #1055#1088#1080#1095#1080#1085#1072
        DataBinding.FieldName = 'reason_name'
        HeaderAlignmentHorz = taCenter
        Width = 140
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object clmn_repeatable: TcxGridDBBandedColumn
        Caption = #1055#1086#1074#1090#1086#1088#1103#1077#1084#1086#1089#1090#1100' '#1087#1086' '#1058#1055#1045
        DataBinding.FieldName = 'repeatable'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 126
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridDBBandedTableView9: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.BandHeaderHeight = 18
      Bands = <
        item
          Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
          FixedKind = fkLeft
          Options.Sizing = False
        end
        item
          Caption = #1055#1088#1086#1073#1077#1075
          Options.Sizing = False
        end
        item
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081
          Options.Sizing = False
          Position.BandIndex = 1
          Position.ColIndex = 0
        end
        item
          Caption = #1052#1051#1055
          Options.Sizing = False
          Position.BandIndex = 2
          Position.ColIndex = 0
        end
        item
          Caption = #1050#1056
          Options.Sizing = False
          Position.BandIndex = 2
          Position.ColIndex = 1
        end
        item
          Caption = #1057#1056
          Options.Sizing = False
          Position.BandIndex = 2
          Position.ColIndex = 2
        end
        item
          Caption = #1058#1056'-3'
          Options.Sizing = False
          Position.BandIndex = 2
          Position.ColIndex = 3
        end
        item
          Caption = #1054#1078#1080#1076#1072#1077#1084#1099#1081
          Options.Sizing = False
          Position.BandIndex = 1
          Position.ColIndex = 1
        end
        item
          Caption = #1052#1051#1055
          Options.Sizing = False
          Position.BandIndex = 7
          Position.ColIndex = 0
        end
        item
          Caption = #1050#1056
          Options.Sizing = False
          Position.BandIndex = 7
          Position.ColIndex = 1
        end
        item
          Caption = #1057#1056
          Options.Sizing = False
          Position.BandIndex = 7
          Position.ColIndex = 2
        end
        item
          Caption = #1058#1056'-3'
          Options.Sizing = False
          Position.BandIndex = 7
          Position.ColIndex = 3
        end
        item
          Caption = #1055#1083#1072#1085#1080#1088#1091#1077#1084#1099#1081' '#1082#1074#1072#1088#1090#1072#1083' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1074' '#1088#1077#1084#1086#1085#1090
          Options.Sizing = False
        end
        item
          Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077
          Options.Sizing = False
        end
        item
          Caption = #1058#1086#1083#1097#1080#1085#1072
          Options.Sizing = False
        end
        item
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          FixedKind = fkRight
        end>
      object cxGridDBBandedColumn181: TcxGridDBBandedColumn
        Caption = #8470' '#1087'/'#1087
        HeaderAlignmentHorz = taCenter
        MinWidth = 31
        Options.HorzSizing = False
        Width = 31
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn182: TcxGridDBBandedColumn
        Caption = #1057#1077#1088#1080#1103
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.HorzSizing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn183: TcxGridDBBandedColumn
        Caption = #8470
        HeaderAlignmentHorz = taCenter
        MinWidth = 49
        Options.HorzSizing = False
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn184: TcxGridDBBandedColumn
        Caption = #1044#1086#1088#1086#1075#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn185: TcxGridDBBandedColumn
        Caption = #1044#1077#1087#1086
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn186: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn187: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn188: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn189: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn190: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn191: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn192: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn193: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn194: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn195: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn196: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn197: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn198: TcxGridDBBandedColumn
        Caption = 'I'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn199: TcxGridDBBandedColumn
        Caption = 'II'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 12
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn200: TcxGridDBBandedColumn
        Caption = 'III'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 12
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn201: TcxGridDBBandedColumn
        Caption = 'IV'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 12
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn202: TcxGridDBBandedColumn
        Caption = #1058#1063
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.HorzSizing = False
        Width = 30
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn203: TcxGridDBBandedColumn
        Caption = #1058
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.HorzSizing = False
        Width = 30
        Position.BandIndex = 13
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn204: TcxGridDBBandedColumn
        Caption = #1062#1058
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.HorzSizing = False
        Width = 30
        Position.BandIndex = 13
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn205: TcxGridDBBandedColumn
        Caption = #1043#1088#1077#1073#1085#1103
        HeaderAlignmentHorz = taCenter
        MinWidth = 55
        Options.HorzSizing = False
        Width = 55
        Position.BandIndex = 14
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn206: TcxGridDBBandedColumn
        Caption = #1041#1072#1085#1076#1072#1078#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 55
        Options.HorzSizing = False
        Width = 55
        Position.BandIndex = 14
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn207: TcxGridDBBandedColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        HeaderAlignmentHorz = taCenter
        Options.ShowCaption = False
        Width = 130
        Position.BandIndex = 15
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn208: TcxGridDBBandedColumn
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridDBBandedTableView10: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.BandHeaderHeight = 18
      Bands = <
        item
          Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
          FixedKind = fkLeft
          Options.Sizing = False
          Width = 259
        end
        item
          Caption = #1055#1088#1086#1073#1077#1075
          Options.Sizing = False
          Width = 328
        end
        item
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081
          Options.Sizing = False
          Position.BandIndex = 1
          Position.ColIndex = 0
        end
        item
          Caption = #1058#1056'-2'
          Options.Sizing = False
          Position.BandIndex = 2
          Position.ColIndex = 0
        end
        item
          Caption = #1058#1056'-1'
          Options.Sizing = False
          Position.BandIndex = 2
          Position.ColIndex = 1
        end
        item
          Caption = #1054#1078#1080#1076#1072#1077#1084#1099#1081
          Options.Sizing = False
          Position.BandIndex = 1
          Position.ColIndex = 1
        end
        item
          Caption = #1058#1056'-2'
          Options.Sizing = False
          Position.BandIndex = 5
          Position.ColIndex = 0
        end
        item
          Caption = #1058#1056'-1'
          Options.Sizing = False
          Position.BandIndex = 5
          Position.ColIndex = 1
        end
        item
          Caption = #1055#1083#1072#1085#1080#1088#1091#1077#1084#1099#1081' '#1082#1074#1072#1088#1090#1072#1083' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1074' '#1088#1077#1084#1086#1085#1090
          Options.Sizing = False
          Width = 180
        end
        item
          Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077
          Options.Sizing = False
          Width = 90
        end
        item
          Caption = #1058#1086#1083#1097#1080#1085#1072
          Options.Sizing = False
          Width = 110
        end
        item
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          FixedKind = fkRight
          Width = 73
        end>
      object cxGridDBBandedColumn209: TcxGridDBBandedColumn
        Caption = #8470' '#1087'/'#1087
        HeaderAlignmentHorz = taCenter
        MinWidth = 31
        Options.HorzSizing = False
        Width = 31
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn210: TcxGridDBBandedColumn
        Caption = #1057#1077#1088#1080#1103
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.HorzSizing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn211: TcxGridDBBandedColumn
        Caption = #8470
        HeaderAlignmentHorz = taCenter
        MinWidth = 49
        Options.HorzSizing = False
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn212: TcxGridDBBandedColumn
        Caption = #1044#1086#1088#1086#1075#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 55
        Options.HorzSizing = False
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn213: TcxGridDBBandedColumn
        Caption = #1044#1077#1087#1086
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn214: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Width = 64
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn215: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn216: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Width = 64
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn217: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn218: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn219: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1073#1077#1075
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn220: TcxGridDBBandedColumn
        Caption = 'I'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn221: TcxGridDBBandedColumn
        Caption = 'II'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn222: TcxGridDBBandedColumn
        Caption = 'III'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 8
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn223: TcxGridDBBandedColumn
        Caption = 'IV'
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.HorzSizing = False
        Width = 45
        Position.BandIndex = 8
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn224: TcxGridDBBandedColumn
        Caption = #1058#1063
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.HorzSizing = False
        Width = 30
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn225: TcxGridDBBandedColumn
        Caption = #1058
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.HorzSizing = False
        Width = 30
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn226: TcxGridDBBandedColumn
        Caption = #1062#1058
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.HorzSizing = False
        Width = 30
        Position.BandIndex = 9
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn227: TcxGridDBBandedColumn
        Caption = #1043#1088#1077#1073#1085#1103
        HeaderAlignmentHorz = taCenter
        MinWidth = 55
        Options.HorzSizing = False
        Width = 55
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn228: TcxGridDBBandedColumn
        Caption = #1041#1072#1085#1076#1072#1078#1072
        HeaderAlignmentHorz = taCenter
        MinWidth = 55
        Options.HorzSizing = False
        Width = 55
        Position.BandIndex = 10
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn229: TcxGridDBBandedColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        HeaderAlignmentHorz = taCenter
        Options.ShowCaption = False
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn230: TcxGridDBBandedColumn
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object lvlIncident: TcxGridLevel
      Tag = 1
      Caption = '  '#1042#1089#1077' '#1088#1077#1084#1086#1085#1090#1099'  '
      GridView = btvReportDetail
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 615
    Width = 1142
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      1142
      31)
    object cxButton9: TcxButton
      Left = 980
      Top = 1
      Width = 160
      Height = 28
      Anchors = [akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000A0A
        1E10111157850707184300000000000000000000000000000000000000000000
        00000000000000000000111140570F0F459300000110000000000D0D290D1313
        A5C80202C0FF0D0DA4EC07071746000000000000000000000000000000000000
        00000000000013134B6106069EFB02029DFF111155AE0000010F1E1EB69A0202
        D9FF0202D0FF0202C5FF0D0DA6EC070717460000000000000000000000000000
        0000131351650606A6FC0101A3FF0101A0FF02029EFE0F0F44862828EA9A0202
        E4FF0202DEFF0202D5FF0202CCFF0D0DA9EB0707174500000000000000001313
        52680606AEFC0101ABFF0101A8FF0101A5FF0505A2FC181855502F2FA6052222
        ECAF0303E7FF0202E2FF0202DBFF0202D2FF0D0DAEEB070718441313586C0606
        B7FC0202B4FF0202B0FF0101ADFF0505AAFD1A1A6B6400000000000000002E2E
        A6052222EDAF0303E9FF0303E5FF0202DFFF0202D7FF0C0CBCF10606C3FD0202
        BDFF0202B9FF0202B6FF0505B3FE1B1B756B0000000000000000000000000000
        00002D2D9C052121EDAD0303EAFF0303E8FF0202E3FF0202DCFF0202D4FF0202
        CAFF0202C0FF0505BCFE1B1B7A71000000000000000000000000000000000000
        0000000000002C2C9A052020E7AC0303EAFF0303EAFF0303E6FF0202E1FF0202
        D9FF0404D1FE1B1B867800000000000000000000000000000000000000000000
        000000000000000000001E1E806B2424ECFF0A0AEBFF0303EAFF0303E9FF0202
        E4FF0909CDF403031B4200000000000000000000000000000000000000000000
        0000000000001B1B6A674A4AE5FC5151ECFF5353EFFF4343EFFF3030EEFF2121
        ECFF1717E9FF1414BEE90303143F000000000000000000000000000000000000
        00001D1D68665252E1FC5B5BE7FF6060E9FF6262ECFF6363EEFF6363F0FF6262
        F1FF5E5EF1FF5A5AF0FF3D3DC1E70303133C0000000000000000000000001F1F
        67665959DFFC6363E4FF6767E6FF6A6AE8FF6969E8FE3131A07A4C4CDEA86C6C
        F0FF6A6AF1FF6666F1FF6060F1FF3F3FBFE5020211390000000021216E635C5C
        DBFC6767E2FF6D6DE4FF7171E6FF7070E6FE323294780000000026268C035151
        E2A57373F0FF7070F1FF6A6AF1FF6363F1FF3F3FBDE3020210325151D3D46A6A
        DFFF7070E2FF7474E3FF7373E3FE31318D740000000000000000000000002828
        8C035454E1A27777EFFF7272F0FF6C6CF1FF6363F1FF24247A914141C8486969
        DCF67676E1FF7575E1FE32328A72000000000000000000000000000000000000
        00002A2A8B025555DF9F7878EDFF7272EFFF5252D3DB1212541C000000004646
        CA4A6565D9DD39399A6B00000000000000000000000000000000000000000000
        0000000000002C2C8B025353DE935A5AD8CD1818621E00000000}
      TabOrder = 0
      OnClick = cxButton9Click
    end
    object cxButton1: TcxButton
      Left = 0
      Top = 3
      Width = 160
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000B00000014000000190000001D000000230000002A000000320000
        003800000040000000470000004C0000003B0000002700000000000000000000
        000A00000026000000420000004E000000563E403F6B6467657E9CA29EA1ABB3
        AEAFBFC8C3C3D6E1DADDDFECE4E9CCD8D0C30000003D00000018106311FF1063
        11FC7B9D7CE8C2D0C4F7D4DED5FAFAFFFCFFF9FFFBFFF8FFFAFFF7FFFAFFF6FF
        F9FFF4FFF8FFF3FFF8FFF2FFF7FFC3D7C7F20000004000000019106311FF9BB9
        9DFFC3D0C5FFFDFFFDFFFCFFFDFFFBFFFCFFF9FFFBFFF7FEF9FFF6FEF8FF8BC0
        99FF0C6F32FF0C6F32FFE8F8EFFFD8E9DCFB000000430000001C126713FFB6CD
        B8FF82A285FFFDFFFEFFB9DDBBFF7DBF81FF6CB771FF6CB771FF60AE69FF1273
        36FF0C6F32FF58A668FFDCF2E0FFEEFBF3FE000000470000001E146A14FFBAD1
        BBFF3C7440FFFEFFFEFFFDFFFEFFBEE0C0FF6FB974FF6BB670FF207E3FFF0C6F
        32FF5FA377FF62AF6AFF9BCEA2FFF4FFF8FF4043415B00000020176D16FFBBD2
        BCFF1D5F22FFEAEFEBFFFEFFFEFFFDFFFEFFDDEFDEFF439658FF0C6F32FF1B7A
        3CFFB7DDBCFFF8FFFAFFF7FFFAFFF6FFF9FF6E737071000000221A7118FFBBD2
        BCFF1E6123FFB6CBB7FFFFFFFFFFFEFFFEFFC1DBCCFF0F7134FF0F7134FF5AA9
        65FF6CB771FFA1D2A5FFF5FDF7FFF7FFFAFF93989488000000241C751AFFBBD2
        BCFF1F6424FF88A98AFFFFFFFFFFEEF5F1FF0F7135FF0C6F32FF8EBDA0FFE1F0
        E2FF6CB771FF6CB771FF8AC68EFFE9F7EBFFADB3AF9A000000241F781BFFD0E3
        D1FF74AB77FF8AB38CFFFFFFFFFF3D8C5BFF2D834EFF5EA373FFFDFFFEFFFDFF
        FDFFFCFFFDFFFBFFFCFFFAFFFCFFF9FFFBFFCBD1CDA50000001F217C1DFFD5E6
        D5FF85BA87FF7FB281FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFF
        FEFFFDFFFDFFFCFFFDFFFBFFFCFFFAFFFCFFE9EFEBB00000001924801FFFCFE4
        CEFF9ACA9CFF82BB84FFD1E4D1FFCADFCBFFCBE0CBFFCBE2CCFFBBDABCFFB3D6
        B4FFA2CFA4FF95CA98FFD1E5D1FF6CB771FFFAFFFC2400000000278321A599C6
        97FFE5F2E6FF90C893FF90C893FF90C893FF90C893FF90C893FF90C893FF90C8
        93FF90C893FF94CA97FFEBF7EBFF2E8D25FF0000000000000000298622302986
        22FCC0DDBFFFE8F5E9FFAEDAB0FF9CD29FFF9CD29FFF9CD29FFF9CD29FFF9CD2
        9FFF9CD29FFF97CC9AFFEBF7EBFF2E8D25FF0000000000000000000000002B8A
        24602B8A24F693C590FFD7EBD6FFEBF7EBFFEBF7EBFFEBF7EBFFEBF7EBFFEBF7
        EBFFEBF7EBFFEBF7EBFFEBF7EBFF2E8D25FF0000000000000000000000000000
        00002E8D25212E8D25A52E8D25FF2E8D25FF2E8D25FF2E8D25FF2E8D25FF2E8D
        25FF2E8D25FF2E8D25FF2E8D25FF2E8D25FF0000000000000000}
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 646
    Width = 1142
    Height = 23
    Images = DMMain.imlSmall
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Color = clBtnFace
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = #1050#1088#1072#1089#1085#1099#1084' '#1096#1088#1080#1092#1090#1086#1084' - '#1055#1086#1074#1090#1086#1088#1103#1077#1084#1086#1089#1090#1100' '#1087#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1091' '#1073#1086#1083#1077#1077' 2 '#1088#1072#1079
        Width = 200
      end>
    PaintStyle = stpsFlat
    SizeGrip = False
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
  end
  object dsDetail: TDataSource
    DataSet = cdsDetail
    Left = 1008
    Top = 352
  end
  object cdsDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1008
    Top = 304
  end
  object dlgSave: TSaveDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 1008
    Top = 248
  end
end
