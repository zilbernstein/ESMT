object frmKiparPrognos: TfrmKiparPrognos
  Left = 0
  Top = 0
  Caption = #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1077' '#1076#1077#1087#1086
  ClientHeight = 535
  ClientWidth = 1151
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
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 512
    Width = 1151
    Height = 23
    Images = DMMain.imlSmall
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.KeyboardStates = [dxksCapsLock, dxksNumLock, dxksInsert]
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'INS'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'OVR'
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clNavy
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = #1053#1077#1088#1077#1076#1072#1082#1090#1080#1088#1091#1077#1084#1099#1077' '#1087#1086#1083#1103
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 12
        Text = '- '#1087#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 220
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 47
        Text = ', * - '#1085#1077#1089#1086#1093#1088#1072#1085#1077#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        Width = 180
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taRightJustify
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = 22784
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
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
  object pc: TcxPageControl
    Left = 0
    Top = 0
    Width = 1151
    Height = 512
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsMain
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 505
    ClientRectLeft = 4
    ClientRectRight = 1144
    ClientRectTop = 27
    object tsMain: TcxTabSheet
      Caption = 'tsMain'
      ImageIndex = 0
      object grdKipar_Prognos: TcxGrid
        Left = 0
        Top = 93
        Width = 1140
        Height = 357
        Cursor = crHandPoint
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '5'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.Style = 9
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        RootLevelOptions.TabsForEmptyDetails = False
        object btvKipar_Prognos: TcxGridDBBandedTableView
          PopupMenu = pmIncident
          OnDblClick = ShowEdit_Kip_ProgExecute
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Position = fpTop
          DataController.KeyFieldNames = 'isn'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#####'
              Kind = skCount
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
              Format = '#####0'
              Kind = skCount
              Column = clmnNumLocom
            end
            item
              Format = #1042#1089#1077#1075#1086':'
              Kind = skCount
              Column = clmnSerLocom
            end>
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
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
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
          Styles.Background = DMMain.cxStyle31
          Styles.Content = DMMain.cxStyle4
          Styles.FilterBox = DMMain.cxStyle6
          Styles.Selection = DMMain.stlSelection
          Styles.Footer = DMMain.stlGroup
          Styles.Group = DMMain.stlGroup
          Styles.GroupFooterSortedSummary = DMMain.cxStyle16
          Styles.GroupSortedSummary = DMMain.cxStyle31
          Styles.GroupSummary = DMMain.cxStyle5
          Styles.Header = DMMain.cxStyle5
          Styles.StyleSheet = DMMain.cxGridBandedTableViewStyleSheet1
          Bands = <
            item
              Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1048#1085#1094#1080#1076#1077#1085#1090
              Options.HoldOwnColumnsOnly = True
            end>
          object clmnFile: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            DataBinding.FieldName = 'cnt_attach'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0001000000040000000B0000000E0000000B0000000400000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0006150B043D5B2F0FC76A3612E45A2D0EC9150B034E00000013000000060000
              0000000000000000000000000000000000000000000000000000000000041A0E
              05436B3714E0351C097D1A0E04472C17086D793E15FF1F100566000000160000
              0006000000000000000000000000000000000000000000000000000000086737
              14D32916086200000009000000040905021B211106567C4016FF201006660000
              0013000000060000000000000000000000000000000000000000060301167A44
              1AF40402011400000001000000030000000900000011211207587D4218FF2011
              06640000001200000006000000000000000000000000000000000201000B7D46
              1DF40503011500000003050301125F3415C481471BFF301A0A71221207597F44
              19FF211107630000001200000006000000000000000000000000000000045330
              14A542261086000000082D190A6084491EFF0F09043583481DFF311B0B702213
              085781471BFF2112076200000011000000060000000000000000000000010201
              000A884F22FF321C0D67180E06396A3C19CD4B2B129A10090431844A1EFF321C
              0B6F2314085683481DFF22120861000000140000000600000000000000000000
              00010201000A8B5224FF331E0D660000000D894F22FF4D2C13991009042F874D
              20FF321D0C6D23140853844A1EFF221308610000001000000001000000000000
              0000000000010201000A8E5527FF331E0E65140C05318C5225FF4E2E14981009
              042D895022FF0000000A2415094F864D20FF2113085900000004000000000000
              0000000000000000000102010009905829FF35200F65150D062F8D5527FF4F2F
              15970000000900000002000000041D1107417C4820EA0201000A000000000000
              000000000000000000000000000102010108935B2BFF35211063130C062B8F58
              29FF221509450000000400000003100A0426865024F505030110000000000000
              00000000000000000000000000000000000100000004955C2EFF00000004160E
              072C925B2CFF352110631D120839523218964D2F168F00000003000000000000
              0000000000000000000000000000000000000000000100000002000000010000
              0001170F072B5E3A1DA57A4C24D3472C157F0000000300000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000010000000200000002000000020000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowCaption = False
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnSerLocom: TcxGridDBBandedColumn
            Caption = #1057#1077#1088#1080#1103
            DataBinding.FieldName = 'ser_name'
            HeaderAlignmentHorz = taCenter
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnNumLocom: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1058#1055#1045
            DataBinding.FieldName = 'locnum'
            HeaderAlignmentHorz = taCenter
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object clmnSectLocom: TcxGridDBBandedColumn
            Caption = #1057#1077#1082#1094#1080#1103
            DataBinding.FieldName = 'secind'
            HeaderAlignmentHorz = taCenter
            Width = 87
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object clmnFil: TcxGridDBBandedColumn
            Caption = #1060#1080#1083#1080#1072#1083
            DataBinding.FieldName = 'filial_firm_name'
            HeaderAlignmentHorz = taCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object clmnSLD: TcxGridDBBandedColumn
            Caption = #1057#1051#1044
            DataBinding.FieldName = 'department_firm_name'
            HeaderAlignmentHorz = taCenter
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object clmnNumListReg: TcxGridDBBandedColumn
            Caption = #8470' '#1051#1056
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object clmnBsCmpnSO: TcxGridDBBandedColumn
            Caption = #1041#1072#1079#1086#1074#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
            DataBinding.FieldName = 'repair_base_firm_name'
            HeaderAlignmentHorz = taCenter
            Width = 107
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object clmnFIOOprtrPstDgnstcs: TcxGridDBBandedColumn
            Caption = #1060#1048#1054' '#1086#1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1089#1090#1072' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1080
            DataBinding.FieldName = 'operatorname'
            HeaderAlignmentHorz = taCenter
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object clmnTpScr: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072
            DataBinding.FieldName = 'source_type'
            HeaderAlignmentHorz = taCenter
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object clmnDtTmIncident: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            DataBinding.FieldName = 'incidenttime'
            HeaderAlignmentHorz = taCenter
            Width = 139
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnDtTmDgnstcstMsg: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            DataBinding.FieldName = 'created'
            HeaderAlignmentHorz = taCenter
            Width = 153
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object clmnFctIncdnt: TcxGridDBBandedColumn
            Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            DataBinding.FieldName = 'fullname'
            HeaderAlignmentHorz = taCenter
            Width = 127
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object clmnPlcEmrgnc: TcxGridDBBandedColumn
            Caption = #1052#1077#1089#1090#1086' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103
            DataBinding.FieldName = 'placecodename'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object clmnCritcl: TcxGridDBBandedColumn
            Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'critlvl'
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object clmnCatgr: TcxGridDBBandedColumn
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            DataBinding.FieldName = 'cat'
            HeaderAlignmentHorz = taCenter
            Width = 102
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object clmnFullName: TcxGridDBBandedColumn
            Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077
            DataBinding.FieldName = 'incidentcontent'
            HeaderAlignmentHorz = taCenter
            Width = 158
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object clmnDepoName: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103
            DataBinding.FieldName = 'deponame'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 137
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object clmnIncidentID: TcxGridDBBandedColumn
            Caption = #8470' '#1051#1056
            DataBinding.FieldName = 'isn'
            HeaderAlignmentHorz = taCenter
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnNode: TcxGridDBBandedColumn
            Caption = #1044#1080#1072#1075#1085#1086#1089#1090#1080#1088#1091#1077#1084#1099#1081' '#1091#1079#1077#1083
            DataBinding.FieldName = 'node'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 128
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object btvIncidentChild: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'parent_sheet_id'
          DataController.KeyFieldNames = 'sheet_id'
          DataController.MasterKeyFieldNames = 'sheet_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#####'
              Kind = skCount
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1042#1089#1077#1075#1086':'
              Kind = skCount
              Column = clmnIncidentChild_Criticality
            end
            item
              Kind = skCount
              Column = btvIncidentChildColumn1
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.IgnoreTimeForFiltering = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = btvIncidentChildColumn1
          OptionsBehavior.BestFitMaxRecordCount = 20
          OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
          OptionsCustomize.BandSizing = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = 
            #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1044#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' <'#1054 +
            #1073#1085#1086#1074#1080#1090#1100'>'
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GridLineColor = clBtnShadow
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.BandHeaderEndEllipsis = True
          OptionsView.FixedBandSeparatorWidth = 0
          Styles.Selection = DMMain.stlSelection
          Styles.StyleSheet = DMMain.stlshtBTV
          Bands = <
            item
              Caption = #1054#1090#1084#1077#1090#1082#1080
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1048#1085#1094#1080#1076#1077#1085#1090
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1055#1086#1077#1079#1076
              Options.HoldOwnColumnsOnly = True
            end
            item
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
              Options.HoldOwnColumnsOnly = True
            end>
          object btvIncidentChildColumn1: TcxGridDBBandedColumn
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
          object btvIncidentChildColumn2: TcxGridDBBandedColumn
            Caption = #1053#1072#1095#1072#1083#1086
            DataBinding.FieldName = 'date_fail'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 90
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn3: TcxGridDBBandedColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'date_close'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 90
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn4: TcxGridDBBandedColumn
            Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' ('#1089#1091#1090'.)'
            DataBinding.FieldName = 'incident_time'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 94
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn5: TcxGridDBBandedColumn
            Caption = #1044#1086#1088#1086#1075#1072
            DataBinding.FieldName = 'service_firm_road'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 53
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn6: TcxGridDBBandedColumn
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1057#1050'*'
            DataBinding.FieldName = 'service_firm_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 136
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn7: TcxGridDBBandedColumn
            Caption = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
            DataBinding.FieldName = 'base_firm_repair_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 157
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn8: TcxGridDBBandedColumn
            Caption = #1052#1077#1089#1090#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            DataBinding.FieldName = 'fail_place_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 161
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object clmnIncidentChild_Criticality: TcxGridDBBandedColumn
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
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn10: TcxGridDBBandedColumn
            AlternateCaption = ' '
            Caption = #1057#1090#1072#1090#1091#1089
            DataBinding.FieldName = 'state_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Styles.Content = DMMain.stlBackgroundLight
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn11: TcxGridDBBandedColumn
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            DataBinding.FieldName = 'category_name'
            Visible = False
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            Width = 65
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn12: TcxGridDBBandedColumn
            Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            DataBinding.FieldName = 'source_info_pred_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 167
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn13: TcxGridDBBandedColumn
            Caption = #1042#1080#1076' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            DataBinding.FieldName = 'system_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 153
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn14: TcxGridDBBandedColumn
            Caption = #1057#1077#1088#1080#1103
            DataBinding.FieldName = 'ser_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 71
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn15: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'nom_object'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 60
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn16: TcxGridDBBandedColumn
            Caption = #1052#1072#1096#1080#1085#1080#1089#1090
            DataBinding.FieldName = 'brig_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 149
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn17: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
            DataBinding.FieldName = 'brig_depo_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 114
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn18: TcxGridDBBandedColumn
            Caption = #8470' '#1087#1086#1077#1079#1076#1072
            DataBinding.FieldName = 'train_num'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 59
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn19: TcxGridDBBandedColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'weight'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 41
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn20: TcxGridDBBandedColumn
            Caption = #1054#1089#1080
            DataBinding.FieldName = 'axes'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 40
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn21: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1079#1072#1084#1077#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'note_type_name'
            Visible = False
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Width = 90
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnIncidentChild_Create_Mode: TcxGridDBBandedColumn
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
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn23: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1087#1080#1089#1082#1072
            DataBinding.FieldName = 'loc_prip_name'
            HeaderAlignmentHorz = taCenter
            Width = 151
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn24: TcxGridDBBandedColumn
            DataBinding.FieldName = 'state_id'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn25: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'change_user_fio'
            HeaderAlignmentHorz = taCenter
            Width = 105
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn26: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'date_change'
            HeaderAlignmentHorz = taCenter
            Width = 89
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnIncidentChild_Can_Delete: TcxGridDBBandedColumn
            DataBinding.FieldName = 'can_delete'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn28: TcxGridDBBandedColumn
            AlternateCaption = #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            Caption = #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072
            DataBinding.FieldName = 'source_type_name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Styles.Content = DMMain.stlBackgroundLight
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn29: TcxGridDBBandedColumn
            AlternateCaption = #1058#1103#1075#1072
            Caption = #1058#1103#1075#1072
            DataBinding.FieldName = 'tjaga_name'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn30: TcxGridDBBandedColumn
            Caption = #1042#1080#1085#1072
            DataBinding.FieldName = 'responsible_name'
            HeaderAlignmentHorz = taCenter
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object lvlKipar_Prognos: TcxGridLevel
          Tag = 1
          Caption = #1048#1085#1094#1080#1076#1077#1085#1090#1099
          GridView = btvKipar_Prognos
          Options.TabsForEmptyDetails = False
        end
      end
      object pnlGridTitle: TPanel
        Left = 0
        Top = 68
        Width = 1140
        Height = 25
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object lblNeed2Refresh: TcxLabel
        Left = 0
        Top = 46
        Align = alTop
        Caption = #1059#1089#1083#1086#1074#1080#1103' '#1074#1099#1073#1086#1088#1082#1080' '#1073#1099#1083#1080' '#1080#1079#1084#1077#1085#1077#1085#1099'. '#1053#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' "'#1054#1073#1085#1086#1074#1080#1090#1100'"!'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        StyleFocused.TextColor = clWindowText
        StyleHot.TextColor = clBlue
        Visible = False
      end
      object dxBarDockControl1: TdxBarDockControl
        AlignWithMargins = True
        Left = 0
        Top = 10
        Width = 1140
        Height = 33
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Align = dalTop
        BarManager = bmIncident
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 450
        Width = 1140
        Height = 28
        ParentCustomHint = False
        Align = dalBottom
        BarManager = bmIncident
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
        Left = 0
        Top = 91
        Width = 449
        Height = 473
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object dxStatusBar4: TdxStatusBar
          Left = 2
          Top = 448
          Width = 445
          Height = 23
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              Text = #1042#1099#1073#1086#1088' '#1089#1090#1088#1086#1082#1080' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082' '#1084#1099#1096#1080' '#1080#1083#1080' '#1085#1072#1078#1072#1090#1080#1077' Enter'
              Width = 400
            end>
          PaintStyle = stpsUseLookAndFeel
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
        object tlFirmTree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 445
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
          StateImages = DMMain.imlFirmTreeState
          TabOrder = 1
          OnDblClick = aSelect_FirmTreeExecute
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
      end
      object pnlConditions: TPanel
        Left = 0
        Top = 47
        Width = 662
        Height = 31
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object cbFirmTree_: TcxPopupEdit
          Left = 2
          Top = 3
          ParentFont = False
          Properties.PopupControl = pnlFirmTree
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
          Width = 269
        end
        object cbLocSer: TcxImageComboBox
          Left = 277
          Top = 3
          Hint = #1042#1099#1073#1086#1088' '#1089#1077#1088#1080#1080
          EditValue = '0'
          ParentFont = False
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
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
          TabOrder = 1
          OnClick = cbLocSerClick
          Width = 108
        end
        object cbDepoList: TcxImageComboBox
          Left = 391
          Top = 3
          Hint = #1042#1099#1073#1086#1088' '#1076#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
          EditValue = '0'
          ParentFont = False
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Properties.OnChange = cbDepoListPropertiesChange
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
          Width = 267
        end
      end
    end
  end
  object bmIncident: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = RUSSIAN_CHARSET
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
    ImageOptions.Images = DMMain.imlSmall
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = False
    Left = 506
    Top = 366
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
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnFilter_Period'
        end
        item
          Visible = True
          ItemName = 'deDateBegin'
        end
        item
          Visible = True
          ItemName = 'deDateFinish'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
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
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
      ItemLinks = <>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton3: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 6
      PaintStyle = psCaptionGlyph
      ShortCut = 8307
    end
    object deDateBegin: TdxBarDateCombo
      Category = 0
      Hint = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      OnChange = deDateBeginChange
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
    object deDateFinish: TdxBarDateCombo
      Category = 0
      Hint = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      OnChange = deDateFinishChange
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
    object dxBarStatic1: TdxBarStatic
      Caption = '* - '#1057#1077#1088#1074#1080#1089#1085#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
      Category = 0
      Hint = '* - '#1057#1077#1088#1074#1080#1089#1085#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':'
      Category = 0
      Hint = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':'
      Style = DMMain.stlHeader
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103':'
      Category = 0
      Hint = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' ('#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1080#1083#1080' '#1074#1088#1091#1095#1085#1091#1102')'
      Visible = ivAlways
      ImageIndex = 43
    end
    object dxBarStatic4: TdxBarStatic
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      Category = 0
      Hint = 
        #1048#1085#1094#1080#1076#1077#1085#1090#1099', '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1077' '#1080#1079' '#1076#1088#1091#1075#1080#1093' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1099#1093' '#1089#1080 +
        #1089#1090#1077#1084
      Visible = ivAlways
      ImageIndex = 30
    end
    object dxBarStatic5: TdxBarStatic
      Caption = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076
      Category = 0
      Hint = #1048#1085#1094#1080#1076#1077#1085#1090#1099', '#1074#1074#1077#1076#1077#1085#1085#1099#1077' '#1074#1088#1091#1095#1085#1091#1102' '#1074' '#1045#1057#1052#1058
      Visible = ivAlways
      ImageIndex = 46
    end
    object dxBarStatic6: TdxBarStatic
      Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077
      Category = 0
      Hint = #1059#1088#1086#1074#1077#1085#1100' '#1082#1088#1080#1090#1080#1095#1085#1086#1089#1090#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' '#1085#1080#1079#1082#1080#1081': '#1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 45
    end
    object dxBarStatic7: TdxBarStatic
      Caption = #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077
      Category = 0
      Hint = #1059#1088#1086#1074#1077#1085#1100' '#1082#1088#1080#1090#1080#1095#1085#1086#1089#1090#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' '#1089#1088#1077#1076#1085#1080#1081': '#1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 44
    end
    object dxBarStatic8: TdxBarStatic
      Caption = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081
      Category = 0
      Hint = #1059#1088#1086#1074#1077#1085#1100' '#1082#1088#1080#1090#1080#1095#1085#1086#1089#1090#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' '#1074#1099#1089#1086#1082#1080#1081': '#1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081
      Visible = ivAlways
      ImageIndex = 51
    end
    object dxBarStatic9: TdxBarStatic
      Caption = #1042' '#1089#1090#1072#1090#1091#1089#1077' "'#1053#1086#1074#1099#1081'" '#1073#1086#1083#1077#1077' 3 '#1089#1091#1090#1086#1082
      Category = 0
      Hint = 
        #1048#1085#1094#1080#1076#1077#1085#1090#1099', '#1085#1072#1093#1086#1076#1103#1097#1080#1077#1089#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1077' "'#1053#1086#1074#1099#1081'" '#1080#1083#1080' "'#1057#1082#1083#1072#1076'" '#1073#1086#1083#1077#1077' 3 '#1089#1091#1090 +
        #1086#1082
      Style = DMMain.stlAttention
      Visible = ivAlways
    end
    object btnFilter_Period: TdxBarButton
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Hint = 
        #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1080#1085#1094#1080#1076#1077#1085#1090#1099', '#1074#1082#1083#1102#1095#1072#1103' '#1079#1072#1082#1088#1099#1090#1099#1077', '#1074#1086#1079#1085#1080#1082#1096#1080#1077' '#1074' '#1091#1082#1072#1079#1072#1085#1085#1086#1084' '#1087 +
        #1077#1088#1080#1086#1076#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 0
      PaintStyle = psCaption
      UnclickAfterDoing = False
    end
    object cbProfile: TcxBarEditItem
      Category = 0
      Enabled = False
      Hint = #1057#1086#1093#1088#1072#1085#1077#1085#1085#1099#1077' '#1087#1088#1086#1092#1080#1083#1080' ('#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1090#1072#1073#1083#1080#1094#1099' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074')'
      Visible = ivNever
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
    end
    object dxBarStatic10: TdxBarStatic
      Caption = '- '#1050#1086#1083'-'#1074#1086' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Category = 0
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Visible = ivAlways
      ImageIndex = 53
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1088#1080#1083#1086#1078#1080#1090#1100' '#1092#1072#1081#1083
      Category = 0
      Hint = #1055#1088#1080#1083#1086#1078#1080#1090#1100' '#1092#1072#1081#1083' '#1082' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1048#1085#1094#1080#1076#1077#1085#1090#1091' ('#1075#1088#1091#1087#1087#1077' '#1048#1085#1094#1080#1076#1077#1085#1090#1086#1074')'
      Visible = ivAlways
      ImageIndex = 53
    end
    object dxBarStatic11: TdxBarStatic
      Caption = ' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090' ('#1050#1086#1084#1072#1085#1076#1072'/'#1056#1072#1073#1086#1090#1072')'
      Category = 0
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090', '#1091#1082#1072#1079#1072#1085#1085#1099#1093' '#1074' '#1088#1072#1079#1076#1077#1083#1077' '#1050#1086#1084#1072#1085#1076#1072'/'#1056#1072#1073#1086#1090#1072
      Visible = ivAlways
      ImageIndex = 64
    end
    object dxBarButton12: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1082#1072#1082' '#1085#1077#1086#1090#1088#1072#1073#1086#1090#1072#1085#1085#1099#1081
      Category = 0
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Caption = #1040#1091#1076#1080#1090' '#1051#1056
      Category = 0
      Visible = ivAlways
      ImageIndex = 63
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = pnlConditions
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxCheckComboBoxProperties'
      Properties.Items = <>
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxExtLookupComboBoxProperties'
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxComboBoxProperties'
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxShellComboBoxProperties'
    end
    object dxBarContainerItem1: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cxBarEditItem5: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxComboBoxProperties'
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ItemIndex = -1
    end
    object dxBarCombo2: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ItemIndex = -1
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxBarEditItem6: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTrackBarProperties'
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxBarEditItem7: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxCalcEditProperties'
    end
    object dxBarSpinEdit1: TdxBarSpinEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object btnRefresh: TdxBarButton
      Action = aRefresh
      Category = 0
      ButtonStyle = bsChecked
      Down = True
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = aExport
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object GridViewRepository: TcxGridViewRepository
    Left = 656
    Top = 368
    object chvRcvDynamic: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'dt'
      DiagramLine.Active = True
      DiagramLine.Legend.Position = cppNone
      DiagramLine.AxisCategory.GridLines = False
      DiagramLine.AxisValue.GridLines = False
      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DiagramLine.AxisValue.MinMaxValues = mmvAuto
      DiagramLine.Styles.ValueCaptions = DMMain.stlContent8
      DiagramLine.Styles.Values = DMMain.stlLineSeries_1
      DiagramLine.Styles.CategoryAxis = DMMain.stlContent
      DiagramLine.Styles.ValueAxis = DMMain.stlContent
      DiagramLine.Values.CaptionPosition = ldvcpAbove
      DiagramLine.Values.LineWidth = 3
      DiagramLine.Values.MarkerSize = 4
      DiagramLine.Values.MarkerStyle = cmsCircle
      OptionsBehavior.ValueHotTrack = vhAlways
      OptionsCustomize.DataDrillDown = False
      object chvRcvDynamicSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'cnt'
      end
    end
  end
  object pmIncident: TdxBarPopupMenu
    BarManager = bmIncident
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = True
    Left = 656
    Top = 416
  end
  object cdsIncident: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 860
    Top = 371
  end
  object dsIncident: TDataSource
    DataSet = cdsIncident
    Left = 860
    Top = 427
  end
  object ActionList: TActionList
    Images = DMMain.imlSmall
    Left = 364
    Top = 339
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
      ImageIndex = 4
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aExport: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1089#1087#1080#1089#1082#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074' '#1074' Excel'
      ImageIndex = 54
      OnExecute = aExportExecute
    end
    object aLoad_NSI_FirmTree: TAction
      Caption = 'aLoad_NSI_FirmTree'
      ImageIndex = 13
      OnExecute = aLoad_NSI_FirmTreeExecute
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
    object aFilter_Period: TAction
      Caption = 'aFilter_Period'
      ImageIndex = 0
      OnExecute = aFilter_PeriodExecute
    end
    object ShowEdit_Kip_Prog: TAction
      Caption = 'ShowEdit_Kip_Prog'
      OnExecute = ShowEdit_Kip_ProgExecute
    end
    object aSelect_FirmTree: TAction
      Caption = 'aSelect_FirmTree'
      ImageIndex = 0
      OnExecute = aSelect_FirmTreeExecute
    end
    object aSetForm: TAction
      Caption = 'aSetForm'
      OnExecute = aSetFormExecute
    end
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 936
    Top = 371
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 936
    Top = 427
  end
  object tmr: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrTimer
    Left = 580
    Top = 371
  end
end
