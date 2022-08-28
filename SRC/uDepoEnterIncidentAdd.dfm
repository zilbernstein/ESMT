object DepoEnterIncidentAdd: TDepoEnterIncidentAdd
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074' '#1074' '#1089#1087#1080#1089#1086#1082' '#1051#1056#1047
  ClientHeight = 387
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 347
    Width = 1041
    Height = 40
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 720
      Top = 1
      Width = 160
      Height = 38
      Align = alRight
      Action = aSelectIncidents
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 880
      Top = 1
      Width = 160
      Height = 38
      Align = alRight
      Action = aCancel
      TabOrder = 1
    end
  end
  object grdIncidentList: TcxGrid
    Left = 0
    Top = 0
    Width = 1041
    Height = 347
    Cursor = crHandPoint
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    RootLevelOptions.TabsForEmptyDetails = False
    object btvIncidentList: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.KeyFieldNames = 'sheet_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #1042#1089#1077#1075#1086':'
          Kind = skCount
          Column = btvIncidentListColumn1
        end
        item
          Format = '#####0'
          Kind = skCount
          Column = btvIncidentListColumn2
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.IgnoreTimeForFiltering = True
      Filtering.ColumnFilteredItemsList = True
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = btvIncidentListColumn1
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
      OptionsCustomize.BandSizing = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = 
        #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1044#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' <'#1054 +
        #1073#1085#1086#1074#1080#1090#1100'>'
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GridLineColor = clBtnShadow
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.FixedBandSeparatorWidth = 0
      Styles.Content = DMMain.stlHeaser11
      Styles.Selection = DMMain.stlSelection
      Styles.Footer = DMMain.cxStyle35
      Styles.Group = DMMain.cxStyle35
      Styles.GroupFooterSortedSummary = DMMain.stlAttention
      Styles.GroupSummary = DMMain.stlHeaser11
      Styles.Header = DMMain.cxStyle100
      Styles.BandHeader = DMMain.cxStyle100
      Bands = <
        item
          Caption = #1057#1087#1080#1089#1086#1082' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
          Styles.Header = DMMain.stlGroup11
          Width = 1250
        end>
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
          1800000000000006000000000000000000000000000000000000FF00FFFF00FF
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
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FF00FFFF00FF
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
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object btvIncidentListColumn1: TcxGridDBBandedColumn
        Caption = #8470' '#1051#1056#1048
        DataBinding.FieldName = 'sheet_id'
        HeaderAlignmentHorz = taCenter
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvIncidentListColumn2: TcxGridDBBandedColumn
        Caption = #1042#1088#1077#1084#1103' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103
        DataBinding.FieldName = 'date_fail'
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soDescending
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvIncidentListColumn3: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'state_name'
        HeaderAlignmentHorz = taCenter
        Width = 112
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object btvIncidentListColumn4: TcxGridDBBandedColumn
        Caption = #1057#1077#1088#1080#1103
        DataBinding.FieldName = 'ser_loc'
        HeaderAlignmentHorz = taCenter
        Width = 79
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object btvIncidentListColumn5: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088' '#1058#1055#1045
        DataBinding.FieldName = 'nom_tpe'
        HeaderAlignmentHorz = taCenter
        Width = 200
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object btvIncidentListColumn6: TcxGridDBBandedColumn
        Caption = #1057#1077#1082#1094#1080#1103
        DataBinding.FieldName = 'section_name'
        HeaderAlignmentHorz = taCenter
        Width = 108
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object btvIncidentListColumn7: TcxGridDBBandedColumn
        Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
        DataBinding.FieldName = 'depo_name'
        HeaderAlignmentHorz = taCenter
        Width = 277
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object btvIncidentListColumn8: TcxGridDBBandedColumn
        Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085
        DataBinding.FieldName = 'date_create'
        HeaderAlignmentHorz = taCenter
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvIncidentListColumn10: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
        DataBinding.FieldName = 'system_type'
        HeaderAlignmentHorz = taCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object btvIncidentListColumn9: TcxGridDBBandedColumn
        Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'system_name'
        HeaderAlignmentHorz = taCenter
        Width = 252
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object btvIncidentListColumn11: TcxGridDBBandedColumn
        Caption = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103
        DataBinding.FieldName = 'create_mode_name'
        HeaderAlignmentHorz = taCenter
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvIncidentListColumn12: TcxGridDBBandedColumn
        Caption = #1059#1089#1090#1088#1072#1085#1077#1085#1080#1077
        DataBinding.FieldName = 'depo_enter_close'
        HeaderAlignmentHorz = taCenter
        Width = 145
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object lvlIncidentList: TcxGridLevel
      GridView = btvIncidentList
      Options.TabsForEmptyDetails = False
    end
  end
  object ActionList: TActionList
    Images = DMMain.iml
    Left = 56
    Top = 184
    object aSelectIncidents: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1080#1085#1094#1080#1076#1077#1085#1090#1099' '#1074' '#1051#1056#1047
      ImageIndex = 18
      OnExecute = aSelectIncidentsExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1072
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aLoadIncidents: TAction
      Caption = 'aLoadIncidents'
      OnExecute = aLoadIncidentsExecute
    end
  end
  object cdsIncidentList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 184
  end
  object dsIncidentList: TDataSource
    DataSet = cdsIncidentList
    Left = 320
    Top = 184
  end
end
