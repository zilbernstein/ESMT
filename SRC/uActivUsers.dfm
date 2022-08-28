object frmActivUsers: TfrmActivUsers
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  ClientHeight = 442
  ClientWidth = 1153
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 402
    Width = 1153
    Height = 40
    Align = alBottom
    TabOrder = 0
    object btnExport: TcxButton
      Left = 832
      Top = 1
      Width = 160
      Height = 38
      Align = alRight
      Caption = #1069#1082#1089#1087#1086#1088#1090
      OptionsImage.ImageIndex = 54
      OptionsImage.Images = DMMain.imlSmall
      TabOrder = 0
      OnClick = aExportExecute
    end
    object btnCancel: TcxButton
      Left = 992
      Top = 1
      Width = 160
      Height = 38
      Align = alRight
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = DMMain.imlSmall
      TabOrder = 1
      OnClick = aExitExecute
    end
  end
  object grdActivUsers: TcxGrid
    Left = 0
    Top = 28
    Width = 1153
    Height = 374
    Cursor = crHandPoint
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    LevelTabs.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object btvActivUsers: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
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
      OptionsBehavior.IncSearch = True
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.BandHeaders = False
      OptionsView.FixedBandSeparatorWidth = 0
      Styles.Content = DMMain.cxStyle140
      Styles.Selection = DMMain.cxStyle52
      Styles.Footer = DMMain.cxStyle35
      Styles.Group = DMMain.cxStyle35
      Styles.GroupFooterSortedSummary = DMMain.stlAttention
      Styles.GroupSummary = DMMain.stlHeaser11
      Styles.Header = DMMain.cxStyle142
      Styles.StyleSheet = DMMain.stlshtBTV9
      Styles.BandHeader = DMMain.stlHeader
      Bands = <
        item
        end>
      object btvActivUsersColumn1: TcxGridDBBandedColumn
        Caption = #1050#1086#1084#1087#1072#1085#1080#1103'/'#1060#1080#1083#1080#1072#1083
        DataBinding.FieldName = 'firm_name_fil_kom'
        HeaderAlignmentHorz = taCenter
        Width = 229
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvActivUsersColumn2: TcxGridDBBandedColumn
        Caption = #1060#1048#1054
        DataBinding.FieldName = 'fio'
        HeaderAlignmentHorz = taCenter
        Width = 172
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvActivUsersColumn3: TcxGridDBBandedColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'dol_name'
        HeaderAlignmentHorz = taCenter
        Width = 167
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvActivUsersColumn4: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1089#1086#1073#1099#1090#1080#1103
        DataBinding.FieldName = 'date_s'
        HeaderAlignmentHorz = taCenter
        Width = 157
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvActivUsersColumn5: TcxGridDBBandedColumn
        Caption = #1057#1051#1044
        DataBinding.FieldName = 'firm_name_sld'
        HeaderAlignmentHorz = taCenter
        Width = 155
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object btvActivUsersColumn6: TcxGridDBBandedColumn
        Caption = #1057#1054'/'#1057#1059
        DataBinding.FieldName = 'firm_name_sosu'
        HeaderAlignmentHorz = taCenter
        Width = 134
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object btvActivUsersColumn7: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1089#1086#1073#1099#1090#1080#1103
        DataBinding.FieldName = 'type_s'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 137
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object lvlActivUsers: TcxGridLevel
      Tag = 1
      Caption = '  '#1042#1089#1077' '#1088#1077#1084#1086#1085#1090#1099'  '
      GridView = btvActivUsers
    end
  end
  object cdsActivUser: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 136
  end
  object dsActivUser: TDataSource
    DataSet = cdsActivUser
    Left = 288
    Top = 184
  end
  object al: TActionList
    Left = 288
    Top = 232
    object aLoadInfo: TAction
      Caption = 'aLoadInfo'
      OnExecute = aLoadInfoExecute
    end
    object aExit: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnExecute = aExitExecute
    end
    object aExport: TAction
      Caption = 'aExport'
      OnExecute = aExportExecute
    end
  end
  object bm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DMMain.imlSmall
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 328
    Top = 232
    DockControlHeights = (
      0
      0
      28
      0)
    object bmBar1: TdxBar
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 997
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Hidden = True
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 107
          Visible = True
          ItemName = 'dDateBegin'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 103
          Visible = True
          ItemName = 'bDateEnd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnRefresh'
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
    object cxBarEditItem1: TcxBarEditItem
      Caption = ' '#1055#1077#1088#1080#1086#1076' '
      Category = 0
      Hint = ' '#1055#1077#1088#1080#1086#1076' '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 150
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object btnRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = aLoadInfoExecute
    end
    object dDateBegin: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowEditor = False
      ShowClearButton = False
      ShowDayText = False
    end
    object bDateEnd: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowEditor = False
      ShowClearButton = False
      ShowDayText = False
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = ' - '
      Category = 0
      Hint = ' - '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
  end
end
