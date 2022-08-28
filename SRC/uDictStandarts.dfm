object frmStandarts: TfrmStandarts
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1085#1086#1088#1084#1072#1090#1080#1074#1086#1074' '#1058#1054', '#1058#1056
  ClientHeight = 335
  ClientWidth = 1128
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
  object dxBarDockControl1: TdxBarDockControl
    AlignWithMargins = True
    Left = 0
    Top = 10
    Width = 1128
    Height = 56
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = dalTop
    BarManager = bm_Dict_Stand
    SunkenBorder = False
    UseOwnSunkenBorder = True
  end
  object pnlReasonTree: TPanel
    Left = 0
    Top = 66
    Width = 1128
    Height = 269
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'l'
    TabOrder = 1
    object grdStandart: TcxGrid
      Left = 2
      Top = 2
      Width = 1124
      Height = 265
      Cursor = crHandPoint
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object btvStandart: TcxGridDBBandedTableView
        OnDblClick = aEditExecute
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Position = fpTop
        DataController.DataSource = dsDict_Stand
        DataController.KeyFieldNames = 'st_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.IgnoreTimeForFiltering = True
        Filtering.ColumnFilteredItemsList = True
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = clmn_KM
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
        Styles.Content = DMMain.cxStyle99
        Styles.FilterBox = DMMain.cxStyle101
        Styles.Selection = DMMain.stlSelection
        Styles.Footer = DMMain.stlGroup
        Styles.Group = DMMain.stlGroup
        Styles.GroupFooterSortedSummary = DMMain.stlAttention
        Styles.GroupSortedSummary = DMMain.stlNeed2Refresh
        Styles.GroupSummary = DMMain.stlHeader
        Styles.Header = DMMain.stlHeader
        Styles.BandHeader = DMMain.cxStyle101
        Bands = <
          item
            Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          end
          item
            Caption = #1053#1086#1088#1084#1072#1090#1080#1074' '#1084#1077#1078#1088#1077#1084#1086#1085#1090#1085#1086#1075#1086' '#1087#1088#1086#1073#1077#1075#1072
            Width = 300
          end
          item
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          end>
        object clmn_KM: TcxGridDBBandedColumn
          Caption = #1050#1084
          DataBinding.FieldName = 'st_km'
          HeaderAlignmentHorz = taCenter
          HeaderHint = #1053#1086#1088#1084#1072#1090#1080#1074' '#1084#1077#1078#1088#1077#1084#1086#1085#1090#1085#1086#1075#1086' '#1087#1088#1086#1073#1077#1075#1072' '#1074' '#1050#1052
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clmn_HH: TcxGridDBBandedColumn
          Caption = #1063#1072#1089
          DataBinding.FieldName = 'st_hh'
          HeaderAlignmentHorz = taCenter
          HeaderHint = #1053#1086#1088#1084#1072#1090#1080#1074' '#1084#1077#1078#1088#1077#1084#1086#1085#1090#1085#1086#1075#1086' '#1087#1088#1086#1073#1077#1075#1072' '#1074' '#1063#1072#1089#1072
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clmn_Type_Repairs: TcxGridDBBandedColumn
          AlternateCaption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
          Caption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
          DataBinding.FieldName = 'td_descr'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          HeaderHint = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
          Width = 293
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clmnDepo: TcxGridDBBandedColumn
          Caption = #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1077' '#1076#1077#1087#1086
          DataBinding.FieldName = 'firm_name'
          HeaderAlignmentHorz = taCenter
          HeaderHint = #1044#1077#1087#1086
          Width = 204
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clmn_Ser_Nam: TcxGridDBBandedColumn
          Caption = #1057#1077#1088#1080#1103
          DataBinding.FieldName = 'SER_NAME'
          HeaderAlignmentHorz = taCenter
          HeaderHint = #1057#1077#1088#1080#1103
          Width = 119
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clmn_Exp_Depo: TcxGridDBBandedColumn
          Caption = #1069#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086#1077' '#1076#1077#1087#1086
          DataBinding.FieldName = 'fname'
          HeaderAlignmentHorz = taCenter
          HeaderHint = #1069#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086#1077' '#1076#1077#1087#1086
          Width = 213
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clmn_Lim: TcxGridDBBandedColumn
          Caption = '% '#1076#1086#1087#1091#1089#1082#1072' +/-'
          DataBinding.FieldName = 'st_lim'
          HeaderAlignmentHorz = taCenter
          HeaderHint = #1053#1086#1088#1084#1072#1090#1080#1074' '#1084#1077#1078#1088#1077#1084#1086#1085#1090#1085#1086#1075#1086' '#1087#1088#1086#1073#1077#1075#1072' '#1044#1086#1087#1091#1089#1082#1072' '#1074' %'
          Width = 120
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clmn_Note: TcxGridDBBandedColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'note'
          HeaderAlignmentHorz = taCenter
          HeaderHint = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Width = 200
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object lvlStandart: TcxGridLevel
        GridView = btvStandart
        Options.TabsForEmptyDetails = False
      end
    end
  end
  object bm_Dict_Stand: TdxBarManager
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
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 458
    Top = 6
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
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
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
    object dxBarButton2: TdxBarButton
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      Category = 0
      Visible = ivAlways
      ImageIndex = 65
    end
    object dxBarButton3: TdxBarButton
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      Category = 0
      Visible = ivAlways
      ImageIndex = 66
    end
    object dxBarButton6: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
    end
    object btnAdd: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 10
      OnClick = aAddExecute
      AutoGrayScale = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 0
      OnClick = aRefreshExecute
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 11
      OnClick = aEditExecute
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 12
      OnClick = aDeleteExecute
      AutoGrayScale = False
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object cdsDict_Stand: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 8
  end
  object dsDict_Stand: TDataSource
    DataSet = cdsDict_Stand
    Left = 536
    Top = 8
  end
  object ActionList: TActionList
    Left = 751
    Top = 18
    object aAdd: TAction
      Caption = 'aAdd'
      OnExecute = aAddExecute
    end
    object aEdit: TAction
      Caption = 'aEdit'
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = 'aDelete'
      OnExecute = aDeleteExecute
    end
    object aRefresh: TAction
      Caption = 'aRefresh'
      OnExecute = aRefreshExecute
    end
  end
end
