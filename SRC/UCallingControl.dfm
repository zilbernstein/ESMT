object frmCallingControl: TfrmCallingControl
  Left = 0
  Top = 0
  Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1079#1072#1093#1086#1076#1086#1074'/'#1074#1099#1093#1086#1076#1086#1074
  ClientHeight = 597
  ClientWidth = 1081
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1081
    Height = 32
    Align = alTop
    AutoSize = True
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object dxBarDockControl1: TdxBarDockControl
      Left = 2
      Top = 2
      Width = 1077
      Height = 28
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Align = dalTop
      BarManager = bmCallingControl
    end
  end
  object pc: TcxPageControl
    Left = 0
    Top = 32
    Width = 1081
    Height = 565
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tsMain
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = 31
    ExplicitHeight = 566
    ClientRectBottom = 558
    ClientRectLeft = 4
    ClientRectRight = 1074
    ClientRectTop = 27
    object tsMain: TcxTabSheet
      Caption = 'tsMain'
      ImageIndex = 0
      object grdCallingControl: TcxGrid
        Left = 0
        Top = 0
        Width = 1070
        Height = 531
        Cursor = crHandPoint
        Touch.ParentTabletOptions = False
        Touch.TabletOptions = [toPressAndHold]
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        RootLevelOptions.TabsForEmptyDetails = False
        object btvCallingControl: TcxGridDBBandedTableView
          OnDblClick = btvCallingControlDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Position = fpTop
          DataController.KeyFieldNames = 'row_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#####'
              Kind = skCount
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1042#1089#1077#1075#1086':'
              Kind = skCount
              Column = btvCallingControlColumn2
            end
            item
              Format = '#####0'
              Kind = skCount
              Column = btvCallingControlColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.IgnoreTimeForFiltering = True
          Filtering.ColumnFilteredItemsList = True
          FilterRow.ApplyChanges = fracImmediately
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
          Styles.Background = DMMain.cxStyle31
          Styles.Content = DMMain.cxStyle149
          Styles.FilterBox = DMMain.cxStyle151
          Styles.Selection = DMMain.stlSelection
          Styles.Footer = DMMain.cxStyle148
          Styles.Group = DMMain.cxStyle148
          Styles.GroupFooterSortedSummary = DMMain.stlAttention
          Styles.GroupSortedSummary = DMMain.cxStyle31
          Styles.GroupSummary = DMMain.cxStyle150
          Styles.Header = DMMain.cxStyle150
          Styles.StyleSheet = DMMain.stlshtBTV
          Styles.BandHeader = DMMain.cxStyle151
          Bands = <
            item
              Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
            end
            item
              Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
              Visible = False
            end
            item
              Caption = #1047#1072#1093#1086#1076' '#1074' '#1076#1077#1087#1086
            end
            item
              Caption = #1057#1083#1077#1076#1091#1102#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
            end
            item
            end>
          object btvCallingControlColumn7: TcxGridDBBandedColumn
            Caption = 'RowID'
            DataBinding.FieldName = 'row_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 102
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.LineCount = 2
            Position.RowIndex = 0
          end
          object btvCallingControlColumn2: TcxGridDBBandedColumn
            Caption = #1057#1077#1088#1080#1103
            DataBinding.FieldName = 'ser_loc'
            HeaderAlignmentHorz = taCenter
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvCallingControlColumn3: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
            DataBinding.FieldName = 'nom_tpe'
            HeaderAlignmentHorz = taCenter
            Width = 166
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvCallingControlColumn8: TcxGridDBBandedColumn
            Caption = #1057#1077#1082#1094#1080#1103
            DataBinding.FieldName = 'section_name'
            HeaderAlignmentHorz = taCenter
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvCallingControlColumn4: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
            DataBinding.FieldName = 'depo_name'
            HeaderAlignmentHorz = taCenter
            Width = 219
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object clmnStatsBefrCondtn: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
            DataBinding.FieldName = 'prev_sost_name'
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnDepot: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086
            DataBinding.FieldName = 'depo_op_prev'
            HeaderAlignmentHorz = taCenter
            Width = 123
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnCodeConstn: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1089#1086#1073#1099#1090#1080#1103
            DataBinding.FieldName = 'date_prev_op'
            HeaderAlignmentHorz = taCenter
            Width = 130
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object clmnDeptOpertnInp: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086
            DataBinding.FieldName = 'depo_op'
            HeaderAlignmentHorz = taCenter
            Width = 109
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnCodStatusIn: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
            DataBinding.FieldName = 'sost_name'
            OnCustomDrawCell = clmnKodSostCustomDrawCell
            HeaderAlignmentHorz = taCenter
            Width = 103
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnDtOprtnIn: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1089#1086#1073#1099#1090#1080#1103
            DataBinding.FieldName = 'date_op'
            HeaderAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soDescending
            Width = 130
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object clmnDeptOpertnOut: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086
            DataBinding.FieldName = 'depo_op_next'
            HeaderAlignmentHorz = taCenter
            Width = 107
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnCodStatusOut: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
            DataBinding.FieldName = 'next_sost_name'
            HeaderAlignmentHorz = taCenter
            Width = 113
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnDtOprtnЩге: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1089#1086#1073#1099#1090#1080#1103
            DataBinding.FieldName = 'date_next_op'
            HeaderAlignmentHorz = taCenter
            Width = 130
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object clmnTmEcpt: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103
            DataBinding.FieldName = 'date_hr'
            HeaderAlignmentHorz = taCenter
            Width = 128
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnKodSost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kod_sost'
            Visible = False
            OnCustomDrawCell = clmnKodSostCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object clmnSheetID: TcxGridDBBandedColumn
            Caption = #8470' '#1051#1056#1048
            DataBinding.FieldName = 'sheet_id'
            HeaderAlignmentHorz = taCenter
            Width = 120
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object lvlCallingControl: TcxGridLevel
          GridView = btvCallingControl
        end
      end
    end
    object tsOther: TcxTabSheet
      Caption = 'tsOther'
      ImageIndex = 1
      ExplicitHeight = 532
      object pnl1: TPanel
        Left = 60
        Top = 72
        Width = 378
        Height = 361
        Caption = 'pnl1'
        TabOrder = 0
        object grdDepo: TcxGrid
          Left = 1
          Top = 1
          Width = 376
          Height = 359
          Align = alClient
          TabOrder = 0
          object btvDepo: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.KeyFieldNames = 'otr_kod'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Content = DMMain.cxStyle149
            Styles.Selection = DMMain.stlSelection
            Styles.Header = DMMain.stlGroup11
            object clmnChecked: TcxGridDBColumn
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
              Properties.OnChange = clmnCheckedPropertiesChange
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
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Sorting = False
              Width = 59
              OnHeaderClick = aCheckedAllNullExecute
              IsCaptionAssigned = True
            end
            object clmnDepo: TcxGridDBColumn
              Caption = ' '#1044#1077#1087#1086
              DataBinding.FieldName = 'sname2'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 410
            end
          end
          object lvlDepo: TcxGridLevel
            GridView = btvDepo
          end
        end
      end
      object peDepo: TcxPopupEdit
        Left = 61
        Top = 12
        ParentFont = False
        Properties.PopupControl = pnl1
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 380
      end
    end
  end
  object bmCallingControl: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Group')
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
    Left = 40
    Top = 296
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
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
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
          ItemName = 'cxBarEditItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
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
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object btnRefresh: TdxBarButton
      Action = aRefresh
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object deDateBegin: TdxBarDateCombo
      Category = 0
      Hint = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
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
    object deDateFinish: TdxBarDateCombo
      Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
      Category = 0
      Hint = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
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
    object dxBarButton1: TdxBarButton
      Action = aExport
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = peDepo
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = #1044#1077#1087#1086' '
      Category = 0
      Hint = #1044#1077#1087#1086' '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
  object ActionList: TActionList
    Images = DMMain.imlSmall
    Left = 40
    Top = 352
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aRefreshExecute
    end
    object aDetail: TAction
      Caption = 'aDetail'
    end
    object aExport: TAction
      ImageIndex = 54
      OnExecute = aExportExecute
    end
    object aSetForm: TAction
      Caption = 'aSetForm'
      OnExecute = aSetFormExecute
    end
    object aLoadDepo: TAction
      Caption = 'aLoadDepo'
      OnExecute = aLoadDepoExecute
    end
    object aCheckedAllNull: TAction
      OnExecute = aCheckedAllNullExecute
    end
  end
  object cdsCallingControl: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 912
    Top = 120
  end
  object dsCallingControl: TDataSource
    DataSet = cdsCallingControl
    Left = 912
    Top = 168
  end
  object cdsDepo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 120
  end
  object dsDepo: TDataSource
    DataSet = cdsDepo
    Left = 808
    Top = 168
  end
end
