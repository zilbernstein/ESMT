object frmSearchLoc: TfrmSearchLoc
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight]
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082' '#1089#1077#1082#1094#1080#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1087#1086' '#1085#1086#1084#1077#1088#1091
  ClientHeight = 639
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object grdSearchLoc: TcxGrid
    Left = 0
    Top = 33
    Width = 941
    Height = 575
    Cursor = crHandPoint
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LevelTabs.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object btvSearchLoc: TcxGridDBBandedTableView
      OnDblClick = aSelectExecute
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = btvSearchLocCustomDrawCell
      DataController.KeyFieldNames = 'id_object'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #1050#1086#1083'-'#1074#1086': ##### '
          Kind = skCount
        end
        item
          Format = ' '
          Kind = skMax
          Position = spFooter
          FieldName = 'repair_sorting'
          Sorted = True
          VisibleForCustomization = False
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #1042#1089#1077#1075#1086':'
          Kind = skCount
        end
        item
          Kind = skCount
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = #1042#1089#1077#1075#1086': ########'
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = 
        #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1044#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' <'#1054 +
        #1073#1085#1086#1074#1080#1090#1100'>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.FixedBandSeparatorWidth = 0
      Styles.StyleSheet = DMMain.stlshtBTV9
      Bands = <
        item
          Caption = #1057#1077#1082#1094#1080#1080
        end
        item
          Caption = #1055#1088#1080#1087#1080#1089#1082#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
        end
        item
          Caption = #1057#1077#1088#1074#1080#1089
        end>
      object btvSearchLocColumn1: TcxGridDBBandedColumn
        Caption = #8470' '#1087'/'#1087
        DataBinding.FieldName = 'rn'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvSearchLocColumn3: TcxGridDBBandedColumn
        Caption = #1057#1077#1088#1080#1103
        DataBinding.FieldName = 'ser_name'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvSearchLocColumn8: TcxGridDBBandedColumn
        Caption = #8470' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
        DataBinding.FieldName = 'nom_tpe'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 108
        OnCompareRowValuesForCellMerging = btvSearchLocColumn8CompareRowValuesForCellMerging
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvSearchLocColumn2: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088' '#1089#1077#1082#1094#1080#1080
        DataBinding.FieldName = 'section_name'
        HeaderAlignmentHorz = taCenter
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvSearchLocColumn4: TcxGridDBBandedColumn
        Caption = #1044#1086#1088#1086#1075#1072
        DataBinding.FieldName = 'road_mnemo'
        HeaderAlignmentHorz = taCenter
        Width = 54
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvSearchLocColumn5: TcxGridDBBandedColumn
        Caption = #1044#1077#1087#1086
        DataBinding.FieldName = 'depo_name'
        HeaderAlignmentHorz = taCenter
        Width = 178
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object clmnServiceFirmID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kod_firm_service'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvSearchLocColumn7: TcxGridDBBandedColumn
        Caption = #1060#1080#1083#1080#1072#1083
        DataBinding.FieldName = 'service_firm_name'
        HeaderAlignmentHorz = taCenter
        Width = 119
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvSearchLocColumn6: TcxGridDBBandedColumn
        Caption = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
        DataBinding.FieldName = 'repair_base_firm_name'
        HeaderAlignmentHorz = taCenter
        Width = 183
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvSearchLocColumn9: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id_object'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object btvSearchLocColumn10: TcxGridDBBandedColumn
        Caption = #1057#1051#1044
        DataBinding.FieldName = 'department_firm_name'
        HeaderAlignmentHorz = taCenter
        Width = 95
        Position.BandIndex = 2
        Position.ColIndex = 1
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
    object lvlSearchLoc: TcxGridLevel
      Tag = 1
      Caption = '  '#1042#1089#1077' '#1088#1077#1084#1086#1085#1090#1099'  '
      GridView = btvSearchLoc
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 941
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object cxLabel8: TcxLabel
      Left = 0
      Top = 0
      Hint = #1059#1082#1072#1078#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1080#1089#1082#1086#1084#1086#1081' '#1089#1077#1082#1094#1080#1080
      Align = alLeft
      Caption = #1053#1086#1084#1077#1088
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 17
    end
    object cxButton1: TcxButton
      Left = 181
      Top = 2
      Width = 116
      Height = 30
      Action = aSearch
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
    end
    object eNumLoc: TcxSpinEdit
      Left = 54
      Top = 4
      Properties.AssignedValues.EditFormat = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 9999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.SpinButtons.Visible = False
      Properties.ZeroIncrement = True
      Properties.ZeroLargeIncrement = True
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
      TabOrder = 2
      Value = 1
      OnKeyPress = eNumLocKeyPress
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 608
    Width = 941
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object cxButton2: TcxButton
      Left = 602
      Top = 0
      Width = 339
      Height = 31
      Align = alRight
      Action = aSelect
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Images = DMMain.imlSmall
    Left = 616
    object aSearch: TAction
      Caption = #1053#1072#1081#1090#1080
      ImageIndex = 11
      OnExecute = aSearchExecute
    end
    object aSelect: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ImageIndex = 8
      OnExecute = aSelectExecute
    end
  end
  object cdsLoc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 88
  end
  object dsLoc: TDataSource
    DataSet = cdsLoc
    Left = 32
    Top = 144
  end
end
