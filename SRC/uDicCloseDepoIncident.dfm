object frmDicCloseDepoIncident: TfrmDicCloseDepoIncident
  Left = 0
  Top = 0
  Caption = #1054#1073#1098#1077#1076#1080#1085#1077#1085#1085#1099#1081' '#1053#1057#1048
  ClientHeight = 624
  ClientWidth = 1433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grdThree: TcxGrid
    Left = 0
    Top = 29
    Width = 1433
    Height = 595
    Cursor = crHandPoint
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object btvThree: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.DataSource = dsThree
      DataController.KeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.IgnoreTimeForFiltering = True
      Filtering.ColumnFilteredItemsList = True
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
      OptionsCustomize.BandSizing = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
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
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.FixedBandSeparatorWidth = 0
      Styles.Background = DMMain.stlNeed2Refresh
      Styles.Content = DMMain.cxStyle4
      Styles.FilterBox = DMMain.cxStyle6
      Styles.Selection = DMMain.stlSelection
      Styles.Footer = DMMain.stlGroup9
      Styles.Group = DMMain.stlGroup9
      Styles.GroupFooterSortedSummary = DMMain.stlAttention
      Styles.GroupSortedSummary = DMMain.stlNeed2Refresh
      Styles.GroupSummary = DMMain.stlNotEditable9
      Styles.Header = DMMain.stlNotEditable9
      Styles.BandHeader = DMMain.cxStyle6
      Bands = <
        item
          Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        end>
      object clmnType: TcxGridDBBandedColumn
        AlternateCaption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
        Caption = #1058#1080#1087' '#1053#1057#1048
        DataBinding.FieldName = 'name_parent'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        HeaderHint = #1058#1080#1087' '#1053#1057#1048
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnName: TcxGridDBBandedColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 450
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object clmnNote: TcxGridDBBandedColumn
        Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'mnemo'
        HeaderAlignmentHorz = taCenter
        HeaderHint = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvThreeColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvThreeColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'parent_id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object lvlThree: TcxGridLevel
      GridView = btvThree
      Options.TabsForEmptyDetails = False
    end
  end
  object bmThree: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DMMain.imlSmall
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 1064
    Top = 184
    DockControlHeights = (
      0
      0
      29
      0)
    object bmThreeBar: TdxBar
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      Color = clBtnFace
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1069
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 395
          Visible = True
          ItemName = 'icbb'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnReshresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDelete'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object btnAdd: TdxBarButton
      Action = aAdd
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnEdit: TdxBarButton
      Action = aEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnDelete: TdxBarButton
      Action = aDelete
      Category = 0
      Enabled = False
      PaintStyle = psCaptionGlyph
    end
    object btnReshresh: TdxBarButton
      Action = aRefresh
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object icbb: TcxBarEditItem
      Caption = #1058#1080#1087' '#1053#1057#1048':'
      Category = 0
      Hint = #1058#1080#1087' '#1053#1057#1048':'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = #1042#1089#1077
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #1055#1088#1080#1095#1080#1085#1099' '#1079#1072#1093#1086#1076#1072' '#1083#1086#1082#1086#1084#1080#1074#1072' '#1074' '#1076#1077#1087#1086
          Value = 90
        end
        item
          Description = #1055#1088#1080#1095#1080#1085#1099' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1051#1056
          Value = 144
        end
        item
          Description = #1056#1077#1078#1080#1084' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
          Value = 173
        end>
      InternalEditValue = 0
    end
  end
  object al: TActionList
    Left = 1064
    Top = 312
    object aAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
      OnExecute = aAddExecute
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 6
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
      OnExecute = aDeleteExecute
    end
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aRefreshExecute
    end
  end
  object dsThree: TDataSource
    DataSet = cdsThree
    Left = 280
    Top = 224
  end
  object cdsThree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 272
  end
end
