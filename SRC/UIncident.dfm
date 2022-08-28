object frmIncident: TfrmIncident
  Left = 120
  Top = 0
  ClientHeight = 719
  ClientWidth = 1135
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object pc: TcxPageControl
    Left = 0
    Top = 0
    Width = 1135
    Height = 719
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tsMain
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 712
    ClientRectLeft = 4
    ClientRectRight = 1128
    ClientRectTop = 30
    object tsMain: TcxTabSheet
      Caption = 'tsMain'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        1124
        682)
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 560
        Align = alBottom
        Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
        PanelStyle.Active = True
        ParentFont = False
        Style.BorderStyle = ebsUltraFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 64
        Width = 1124
        object cxLabel7: TcxLabel
          Left = 2
          Top = 2
          Hint = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
          Align = alTop
          Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.StyleController = DMMain.stlctrlMandatoryEdit
          Style.TextColor = clBlue
          Style.TextStyle = [fsBold]
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
        end
        object mmIncident_Descr: TcxDBMemo
          Left = 2
          Top = 22
          Align = alClient
          DataBinding.DataField = 'incident_descr_e'
          DataBinding.DataSource = dsIncidentList
          Enabled = False
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = [fsBold]
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
          Height = 40
          Width = 1120
        end
      end
      object grdIncident: TcxGrid
        Left = 0
        Top = 339
        Width = 1124
        Height = 221
        Cursor = crHandPoint
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '5'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LevelTabs.Style = 9
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        RootLevelOptions.TabsForEmptyDetails = False
        object btvIncident: TcxGridDBBandedTableView
          PopupMenu = pmIncident
          OnDblClick = btvIncidentDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Position = fpTop
          OnCellClick = btvIncidentCellClick
          OnCellDblClick = btvIncidentCellDblClick
          OnCustomDrawCell = btvIncidentCustomDrawCell
          OnFocusedRecordChanged = btvIncidentFocusedRecordChanged
          DataController.KeyFieldNames = 'sheet_id'
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
              Column = btvIncidentColumn9
            end
            item
              Kind = skCount
              Column = btvIncidentColumn1
            end
            item
              Format = '#####'
              Kind = skSum
              Column = clmnchecked
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.IgnoreTimeForFiltering = True
          Filtering.ColumnFilteredItemsList = True
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = btvIncidentColumn1
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
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GridLineColor = clBtnShadow
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaderEndEllipsis = True
          OptionsView.FixedBandSeparatorWidth = 0
          Styles.Background = stlSystemInfo
          Styles.FilterBox = stlSystemInfo
          Styles.Selection = DMMain.stlSelection
          Styles.StyleSheet = stlshtBTV
          Bands = <
            item
              Caption = #1051#1056#1055
            end
            item
              Caption = #1054#1090#1084#1077#1090#1082#1080
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1048#1085#1094#1080#1076#1077#1085#1090
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
              Options.HoldOwnColumnsOnly = True
              Styles.Content = DMMain.stlBackgroundLight
            end
            item
              Caption = #1055#1088#1080#1095#1080#1085#1072' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
              Options.HoldOwnColumnsOnly = True
            end
            item
              Options.HoldOwnColumnsOnly = True
              Visible = False
              VisibleForCustomization = False
            end
            item
              Caption = #1055#1086#1077#1079#1076
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1041#1088#1080#1075#1072#1076#1072
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
              Options.HoldOwnColumnsOnly = True
              Styles.Content = DMMain.stlBackgroundLight
            end>
          object clmnchecked: TcxGridDBBandedColumn
            AlternateCaption = #1054#1090#1084#1077#1090#1082#1080
            DataBinding.FieldName = 'checked'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taLeftJustify
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
            Properties.OnEditValueChanged = clmncheckedPropertiesEditValueChanged
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
            Options.Sorting = False
            VisibleForCustomization = False
            Width = 20
            OnHeaderClick = clmncheckedHeaderClick
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object btvIncidentColumn1: TcxGridDBBandedColumn
            Caption = #8470' '#1051#1056
            DataBinding.FieldName = 'sheet_id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLight
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentColumn2: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103
            DataBinding.FieldName = 'date_fail'
            OnGetDisplayText = btvIncidentColumn2GetDisplayText
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 97
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentColumn3: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1079#1072#1082#1088#1099#1090#1080#1103
            DataBinding.FieldName = 'date_close'
            OnGetDisplayText = btvIncidentColumn2GetDisplayText
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 90
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object clmnIncidentTime: TcxGridDBBandedColumn
            Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' ('#1089#1091#1090'.)'
            DataBinding.FieldName = 'incident_time'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 94
            Position.BandIndex = 3
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvIncidentColumn6: TcxGridDBBandedColumn
            Caption = #1060#1080#1083#1080#1072#1083
            DataBinding.FieldName = 'service_firm_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvIncidentColumn7: TcxGridDBBandedColumn
            Caption = #1057#1054'/'#1057#1059
            DataBinding.FieldName = 'service_firm_name_3'
            Visible = False
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 157
            Position.BandIndex = 2
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object btvIncidentColumn8: TcxGridDBBandedColumn
            Caption = #1052#1077#1089#1090#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            DataBinding.FieldName = 'fail_place_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 161
            Position.BandIndex = 3
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object btvIncidentColumn9: TcxGridDBBandedColumn
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
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLight
            Width = 79
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvIncidentColumn11: TcxGridDBBandedColumn
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            DataBinding.FieldName = 'category_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            VisibleForCustomization = False
            Width = 74
            Position.BandIndex = 3
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object clmnIncident_StateName: TcxGridDBBandedColumn
            Caption = #1057#1090#1072#1090#1091#1089
            DataBinding.FieldName = 'state_name'
            DateTimeGrouping = dtgByDate
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 72
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentColumn12: TcxGridDBBandedColumn
            Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            DataBinding.FieldName = 'source_info_pred_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 167
            Position.BandIndex = 3
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object btvIncidentColumn13: TcxGridDBBandedColumn
            Caption = #1059#1079#1077#1083
            DataBinding.FieldName = 'unit_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 131
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentColumn14: TcxGridDBBandedColumn
            Caption = #1057#1077#1088#1080#1103
            DataBinding.FieldName = 'ser_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 71
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentColumn15: TcxGridDBBandedColumn
            Caption = #1057#1077#1082#1094#1080#1103
            DataBinding.FieldName = 'nom_object'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 60
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvIncidentColumn17: TcxGridDBBandedColumn
            Caption = #1052#1072#1096#1080#1085#1080#1089#1090
            DataBinding.FieldName = 'brig_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 149
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentColumn18: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
            DataBinding.FieldName = 'brig_depo_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 114
            Position.BandIndex = 8
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentColumn19: TcxGridDBBandedColumn
            Caption = #8470' '#1087#1086#1077#1079#1076#1072
            DataBinding.FieldName = 'train_num'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 59
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentColumn20: TcxGridDBBandedColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'weight'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 41
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentColumn21: TcxGridDBBandedColumn
            Caption = #1054#1089#1080
            DataBinding.FieldName = 'axes'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 40
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentColumn22: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1079#1072#1084#1077#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'note_type_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 90
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnIncident_Create_Mode: TcxGridDBBandedColumn
            AlternateCaption = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103
            Caption = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103
            DataBinding.FieldName = 'create_mode'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Images = DMMain.imlSmall
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Description = #1040#1042#1058#1054
                ImageIndex = 30
                Value = '0'
              end
              item
                Description = #1056#1059#1063#1053#1054#1049
                ImageIndex = 46
                Value = '1'
              end>
            Properties.ShowDescriptions = False
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
            Options.Editing = False
            Options.ShowCaption = False
            Styles.Content = DMMain.stlBackgroundLight
            Width = 34
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentColumn23: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1087#1080#1089#1082#1072
            DataBinding.FieldName = 'loc_prip_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 151
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object clmnStateID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'state_id'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 3
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object btvIncidentColumn4: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'change_user_fio'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 105
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentColumn24: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'date_change'
            OnGetDisplayText = btvIncidentColumn2GetDisplayText
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 89
            Position.BandIndex = 9
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnIncident_Can_Delete: TcxGridDBBandedColumn
            DataBinding.FieldName = 'can_delete'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 3
            Position.ColIndex = 13
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
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLight
            Width = 71
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentColumn10: TcxGridDBBandedColumn
            AlternateCaption = #1058#1103#1075#1072
            Caption = #1058#1103#1075#1072
            DataBinding.FieldName = 'tjaga_name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentColumn16: TcxGridDBBandedColumn
            Caption = #1042#1080#1085#1072
            DataBinding.FieldName = 'resp_name_full'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 67
            Position.BandIndex = 3
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object btvIncidentColumn25: TcxGridDBBandedColumn
            AlternateCaption = #1042#1088#1077#1084#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1077
            Caption = #1042#1088#1077#1084#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1077#10'('#1076#1076' '#1095#1095':'#1084#1084')'
            DataBinding.FieldName = 'state_lasting'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 101
            Position.BandIndex = 3
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object btvIncidentColumn26: TcxGridDBBandedColumn
            AlternateCaption = #1063#1080#1089#1083#1086' '#1079#1072#1074#1080#1089#1080#1084#1099#1093' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
            DataBinding.FieldName = 'cnt_child'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              000000000000130900001C090000000000000000000000000000000000000000
              000000000000160700000E000000000000000000000000000000000000000000
              000000000000D4933BAEEEB55FD4804705470000000000000000000000000000
              00007E440852EBB564DACC85329D000000000000000000000000000000000000
              000000000000EFB257CCF7EBB1FFF2D794FECE8328A3331B00174E24001DCC85
              2FAFF2D998FEF7EAB0FFE7A349BB000000000000000000000000000000000000
              000000000000B8782694F1D899FFEFD291FFEED08DFFE8B15EF6E8B363F8EECF
              8DFFEFD18FFFF1D798FF975D1B82000000000000000000000000000000000000
              000000000000833A014BEAC27AFFE8BE77FFE7BB72FFE6B96FFFE6B86FFFE7BA
              71FFE8BD75FFE8BC71FF6332003C000000000000000000000000000000000000
              000000000000512C001AE4A64EFFE2AB5DFFE1A757FFE0A554FFE0A554FFE0A7
              56FFE2AA5CFFE09E46FE4E28000B000000000000000000000000000000000000
              000000000000A05F0D7EE7B574FFE7B97FFFE1A962FFD9913AFFD99038FFDA92
              3BFFDB9641FFDD9841FE9A56066B000000000000000000000000000000001C15
              0000D6721585EBC18CFEEAC396FFE8BE8EFFE7BA87FFE3AE74FFD78A35FFD37D
              1FFFD48226FFD78A30FFDA8F33FE9C580A7500000000000000001B100001D485
              1D92EDC899FFECC79EFFE9C094FFE7BA8CFFE6B685FFE4B381FFE4B17FFFE0A3
              66FFDC9751FFDE9E5AFFE4B278FFE7B57BFEB56C13821C000000502D003EEFC9
              9BFFEECEAAFFEBC69FFFE9C096FFE6BB91FFE4B78EFFE2B48BFFE2B288FFE2B1
              85FFE3B182FFE4B280FFE6B684FFE8BB8BFFE7B375FE4928002C1C100007A465
              0E70BE7E2F9FF2A139B5EFA141CAE6A55EF2E3BB9CFFE0B797FFE0B594FFE0B4
              91FFE29B4FEEE89638CADC912AAF9C611D939D5709691A0D0002000000000000
              00000000000000000000000000006F3F002AE2AE7CFDE0BCA4FFDFBAA1FFE1A3
              67F54F2A00190000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D18934B6E1C2B2FFE0C0AFFFCE81
              25A2000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000894E0048E1BCA2FFE1B897FE6F40
              0037000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000001C0F0001EE9D3AC5D48C32B50000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000001C0E00001C1200000000
              0000000000000000000000000000000000000000000000000000}
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            VisibleForCustomization = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object btvIncidentColumn27: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1058#1055#1045
            DataBinding.FieldName = 'nom_tpe'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 77
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentColumn28: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1079#1072#1082#1088#1099#1090#1080#1103
            DataBinding.FieldName = 'close_reason_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 89
            Position.BandIndex = 3
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object btvIncidentColumn29: TcxGridDBBandedColumn
            Caption = #1057#1051#1044
            DataBinding.FieldName = 'service_podr_firm_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 129
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvIncidentColumn30: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            DataBinding.FieldName = 'cnt_attach'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000005F3B1F406E44
              24BD764A28F7704626F6633F20B8543118340000000000000000000000000000
              00000000000000000000000000000000000000000000A967385BBD753FFCD384
              47E2F0944F97FE9E549AD58647E97E4D2BF74C2F193B00000000000000000000
              000000000000000000000000000000000000B06A3742DE8A4AF8BB7440B19C5E
              1C090000000000000000FFD86B11F6A257D7684022C400000000000000000000
              0000000000000000000000000000A96A392DDB8A4BEFB9733DC054391C080000
              0000000000000000000000000000FFD57174955B32FA00000000000000000000
              000000000000000000009E64301CDC894AE3C0773FCD975E327A9B6034EA8F58
              2FE27D4E2A510000000000000000FFCF6D91A36637E100000000000000000000
              000000000000915B220FDE8A4BD1C97E43D9B7723E7EEB944FFDC6794493EE9B
              52AE89552DEB00000000FFB25F47FFAC5EF97B502B7A00000000000000000000
              0000AA733905DD884BBDDA8748E3B26C3C7AF29952FD8F5A337DAD661907FFAB
              5DB39E6435DDFFA75956FFA357F9AE6F3CA25200000300000000000000000000
              0001E8904EA3E8914EECB26F3B77FA9C54FA955D3480E57F3F08FFA359B4D384
              47EAC7824698FFA356FCAD6C388700000000000000000000000000000000E491
              4C87F69D53F3B2703D77FFA557F6A3643782E7903409FFA85BB8CF8345E3D48C
              4AA0FBA458FBA567366C0000000000000000000000000000000000000000F6A5
              58B2B6703E7BFFAC5DF1A467378DEA7C4D0AFFAE5EBCCB8147DCDF9851A9F7A1
              57F79D623453000000000000000000000000000000000000000000000000E48D
              4C2AFFB863EBC079418FD5973C0CFFB461C1C88045D6EAA557B2EE9F55EE945A
              2F3E00000000000000000000000000000000000000000000000000000000FFBD
              66ACBB783FB000000000FFC96EB7C78044D0F2AF5EBCE99C54E2884E2A2B0000
              000000000000000000000000000000000000000000000000000000000000FFBC
              6363C97E43FABE763D9BD0864777FEBD66C5E39853D37948241C000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000FFA95A32E38C4BB9F5A85AF8D6914DB354371B1000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowCaption = False
            Width = 34
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentColumn31: TcxGridDBBandedColumn
            Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085
            DataBinding.FieldName = 'date_create'
            OnGetDisplayText = btvIncidentColumn2GetDisplayText
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 99
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentColumn32: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
            DataBinding.FieldName = 'enter_depo_reason_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 81
            Position.BandIndex = 3
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object btvIncidentColumn34: TcxGridDBBandedColumn
            Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'system_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 122
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentColumn35: TcxGridDBBandedColumn
            Caption = #1058#1072#1073'. '#8470
            DataBinding.FieldName = 'brig_t_nom'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 84
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentColumn5: TcxGridDBBandedColumn
            AlternateCaption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090' '#1074' '#1088#1072#1079#1076#1077#1083#1077' "'#1050#1086#1084#1072#1085#1076#1072'/'#1056#1072#1073#1086#1090#1072'"'
            Caption = #1050#1086#1083'-'#1074#1086' '#1088#1072#1073#1086#1090
            DataBinding.FieldName = 'cnt_work'
            PropertiesClassName = 'TcxHyperLinkEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.AutoSelect = True
            Properties.ReadOnly = True
            Properties.SingleClick = True
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UsePrefix = upNever
            Properties.OnStartClick = btvIncidentColumn5PropertiesStartClick
            HeaderAlignmentHorz = taCenter
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000000000000000000000000000000000000B0C0C000808
              080000000000020203000B0911000D0912000D0912000D0912000D0912000D09
              12000E0A14000F0C1714121222A20D0C16BE0200004F000000000B0C0C000808
              08000000000000000000050103000D0309000C0308000C0308000C0308000B02
              07000E030700162043B9194C96FF1D4A92FF151E3BF1020000590B0C0C000808
              08000000000000000000060205000E050C000D050B000D050B000D050B000C02
              05000C091C6D2E5EA1FD4E98DFFF156DDEFF1556BEFF0D0F1EBE0B0C0C000808
              080000000000000000000B070D001A0F1F00170E1C00170E1C00170D1A00150A
              1712163369E55CA2E3FFB6DFFDFFBEDFFFFF4B73B9FE0506177F0B0C0C000808
              080000000000000000000302030012091500160A1A00150A190014061200100E
              2A813976BDFF97D0FDFFDDFCFFFFB4BECFFF25222EAB000000000B0C0C000808
              08000000000000000000000000000C050E001407160013071500110210191E3F
              76EC7ABEF7FFC7F3FFFF95B9D8FF1A223ABB00000000000000000B0C0C000808
              0800000000000000000000000000060309000F040D000E0105000E1C41BE5298
              DBFFADE7FFFF72A8D7FF12203EC3000000020000000000000000090A0A000505
              051B000000480000000C00000000060308000E0002000C0C24982A6FB8FE9BE1
              FFFF7CB5E3FF081C3ECC000000080000000000000000000000000405052E4948
              47E34F4F4EFC0404049C01000000070001000F0D24972466AFFE7ECDFFFF9FDB
              FEFF24436EEF0000002A02000000000001000000000000000000535252D7D6CF
              CDFFB8B4B2FF3B3C3CF8000000610A0F21971F67B4FE6AC2FFFFA8E6FFFF4D7C
              ACFE00000D760000000000000000000000000000000000000000797676ECD7D2
              D3FFCBC9CAFF8E8F8EFF44413FFB6E6F75FE5395C9FF80D3FFFF76B2E0FF0C17
              35C40000000000000000000000000000000000000000000000002828283A4343
              43CB888888FDACACABFFAAA9A7FFBEB7B1FFB6B0AAFF729DBDFF254468EA0000
              0021000000000000000000000000000000000000000000000000262626001D1D
              1D00313131ADA4A3A0FFCCCAC7FFC5C1BFFFCDC6C3FF7A7270FF090809A30000
              00000000000000000004000000140000000C0000000000000000272727002626
              26002222222A676665F1D1CFCDFFE6E3E1FFB3B1B0FF6F6E6CFF444443F92D2E
              2EE4333333DB494949E83A3A3AE5060606480404040005050500272727002727
              270026262600232323465D5D5CE7C2C0BDFFD6D3D1FFACA9A9FFA8A7A6FFAFAD
              ACFFBBB9B8FF999998FE393939B80303030C0505050006060600272727002727
              270028282800252526002020201937363698737170E5999595F99F9B9AFC8F8B
              8AF6686565D92929287101010100050505000606060006060600}
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebAlways
            Options.ShowCaption = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentColumn36: TcxGridDBBandedColumn
            Caption = #1056#1077#1078#1080#1084' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103
            DataBinding.FieldName = 'solution_type_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 77
            Position.BandIndex = 3
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvIncidentColumn33: TcxGridDBBandedColumn
            AlternateCaption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1080#1095#1080#1085
            Caption = #1043#1088#1091#1087#1087#1072
            DataBinding.FieldName = 'reason_name_root'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 145
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentColumn37: TcxGridDBBandedColumn
            AlternateCaption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099
            DataBinding.FieldName = 'p3'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 152
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentColumn38: TcxGridDBBandedColumn
            Caption = #1054#1090#1074#1077#1090#1089#1090#1074'. '#1079#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
            DataBinding.FieldName = 'owner_department_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentColumn39: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            DataBinding.FieldName = 'system_type'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 107
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentColumn40: TcxGridDBBandedColumn
            Caption = #1044#1086#1088#1086#1075#1072
            DataBinding.FieldName = 'prip_road_mnemo'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 69
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentColumn41: TcxGridDBBandedColumn
            Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            DataBinding.FieldName = 'incident_descr_e'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 228
            Position.BandIndex = 3
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object btvIncidentColumn42: TcxGridDBBandedColumn
            Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1040#1057#1059
            DataBinding.FieldName = 'incident_descr'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 212
            Position.BandIndex = 3
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object btvIncidentColumn43: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1087#1072#1091#1079#1099
            DataBinding.FieldName = 'reason_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 176
            Position.BandIndex = 3
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object btvIncidentColumn44: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099
            DataBinding.FieldName = 'action_descr'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 165
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object btvIncidentChild: TcxGridDBBandedTableView
          OnDblClick = btvIncidentChildDblClick
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = btvIncidentChildFocusedRecordChanged
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
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = btvIncidentChildColumn1
          OptionsBehavior.BestFitMaxRecordCount = 20
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
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 65
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn2: TcxGridDBBandedColumn
            Caption = #1053#1072#1095#1072#1083#1086
            DataBinding.FieldName = 'date_fail'
            OnGetDisplayText = btvIncidentColumn2GetDisplayText
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 90
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn3: TcxGridDBBandedColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'date_close'
            OnGetDisplayText = btvIncidentColumn2GetDisplayText
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
            Width = 151
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn24: TcxGridDBBandedColumn
            DataBinding.FieldName = 'state_id'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn25: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'change_user_fio'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 105
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn26: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'date_change'
            OnGetDisplayText = btvIncidentColumn2GetDisplayText
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 89
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnIncidentChild_Can_Delete: TcxGridDBBandedColumn
            DataBinding.FieldName = 'can_delete'
            Visible = False
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentChildColumn30: TcxGridDBBandedColumn
            Caption = #1042#1080#1085#1072
            DataBinding.FieldName = 'responsible_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object lvlIncident: TcxGridLevel
          Tag = 1
          Caption = #1048#1085#1094#1080#1076#1077#1085#1090#1099
          GridView = btvIncident
          Options.TabsForEmptyDetails = False
          object lvlIncidentChild: TcxGridLevel
            GridView = btvIncidentChild
            Options.TabsForEmptyDetails = False
          end
        end
      end
      object grdStatistic: TcxGrid
        Left = 0
        Top = 164
        Width = 1124
        Height = 144
        Cursor = crHandPoint
        Align = alTop
        TabOrder = 2
        LevelTabs.Style = 9
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        RootLevelOptions.DetailTabsPosition = dtpTop
        object lvlReceiveIncidentDynamic: TcxGridLevel
          Tag = 1
          Caption = #1044#1080#1085#1072#1084#1080#1082#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
          GridView = chvRcvDynamic
        end
      end
      object pnlGridTitle: TPanel
        Left = 0
        Top = 314
        Width = 1124
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
        TabOrder = 3
      end
      object lblNeed2Refresh: TcxLabel
        Left = 0
        Top = 142
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
      object spltrGraph: TcxSplitter
        Left = 0
        Top = 308
        Width = 1124
        Height = 6
        HotZoneClassName = 'TcxMediaPlayer9Style'
        HotZone.SizePercent = 50
        AlignSplitter = salTop
        Control = grdStatistic
        ExplicitWidth = 6
      end
      object dxBarDockControl1: TdxBarDockControl
        AlignWithMargins = True
        Left = 0
        Top = 10
        Width = 1124
        Height = 129
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Align = dalTop
        BarManager = bmIncident
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 624
        Width = 1124
        Height = 58
        ParentCustomHint = False
        Align = dalBottom
        BarManager = bmIncident
      end
      object gbPrograssAddProblem: TcxGroupBox
        Left = 383
        Top = 253
        Anchors = []
        Caption = #1055#1088#1086#1094#1077#1089#1089'...'
        PanelStyle.OfficeBackgroundKind = pobkStyleColor
        TabOrder = 8
        Visible = False
        Height = 49
        Width = 297
        object pgAddProblem: TcxProgressBar
          Left = 3
          Top = 17
          TabOrder = 0
          Width = 291
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
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
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
        Width = 588
        Height = 31
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object cbFirmTree_: TcxPopupEdit
          Left = 2
          Top = 3
          Properties.PopupControl = pnlFirmTree
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
          TabOrder = 0
          Width = 269
        end
        object cbSer: TcxImageComboBox
          Left = 277
          Top = 3
          Properties.Items = <>
          Properties.OnEditValueChanged = cbSerPropertiesEditValueChanged
          TabOrder = 1
          Width = 156
        end
        object cbNum: TcxLookupComboBox
          Left = 439
          Top = 3
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'id_object'
          Properties.ListColumns = <
            item
              FieldName = 'section_name'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsFiltr
          Properties.OnEditValueChanged = cbNumPropertiesEditValueChanged
          TabOrder = 2
          Width = 145
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
    Left = 26
    Top = 182
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
          ItemName = 'btnFilter_Active'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 177
          Visible = True
          ItemName = 'cbProfile'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cxBarEditItem1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 471
          Visible = True
          ItemName = 'bListDoc'
        end
        item
          Visible = True
          ItemName = 'btnDoc'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic6'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic11'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object btnRefresh: TdxBarButton
      Action = aRefresh
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = aNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = aEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aDetail
      Category = 0
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
    object btnFilter_Active: TdxBarButton
      Action = aFilter_Active
      Category = 0
      PaintStyle = psCaption
      UnclickAfterDoing = False
    end
    object btnFilter_Period: TdxBarButton
      Action = aFilter_Period
      Category = 0
      Hint = 
        #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1080#1085#1094#1080#1076#1077#1085#1090#1099', '#1074#1082#1083#1102#1095#1072#1103' '#1079#1072#1082#1088#1099#1090#1099#1077', '#1074#1086#1079#1085#1080#1082#1096#1080#1077' '#1074' '#1091#1082#1072#1079#1072#1085#1085#1086#1084' '#1087 +
        #1077#1088#1080#1086#1076#1077
      ButtonStyle = bsChecked
      GroupIndex = 1
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
      Properties.OnChange = aApplyProfileExecute
    end
    object dxBarButton6: TdxBarButton
      Action = aSaveProfile
      Category = 0
      Enabled = False
      Visible = ivNever
    end
    object dxBarButton9: TdxBarButton
      Action = aDeleteProfile
      Category = 0
      Enabled = False
      Visible = ivNever
    end
    object dxBarStatic10: TdxBarStatic
      Caption = '- '#1050#1086#1083'-'#1074#1086' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Category = 0
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Visible = ivAlways
      ImageIndex = 53
    end
    object dxBarButton10: TdxBarButton
      Action = aMultiAttach
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = aExport2Excel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarStatic11: TdxBarStatic
      Caption = ' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090' ('#1050#1086#1084#1072#1085#1076#1072'/'#1056#1072#1073#1086#1090#1072')'
      Category = 0
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090', '#1091#1082#1072#1079#1072#1085#1085#1099#1093' '#1074' '#1088#1072#1079#1076#1077#1083#1077' '#1050#1086#1084#1072#1085#1076#1072'/'#1056#1072#1073#1086#1090#1072
      Visible = ivAlways
      ImageIndex = 64
    end
    object dxBarButton12: TdxBarButton
      Action = aCloseHandly
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton13: TdxBarButton
      Action = aApplyProfile
      Category = 0
      Enabled = False
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1087#1088#1086#1092#1080#1083#1100
      Visible = ivNever
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Action = aAudit
      Category = 0
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
    object dxBarButton1: TdxBarButton
      Category = 0
      Visible = ivAlways
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
    object lblTemplateName: TcxBarEditItem
      Caption = #1055#1088#1080#1084#1077#1085#1105#1085' '#1096#1072#1073#1083#1086#1085': '
      Category = 0
      Hint = #1055#1088#1080#1084#1077#1085#1105#1085' '#1096#1072#1073#1083#1086#1085': '
      Style = DMMain.stlBandHeader9
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = DMMain.stlBandHeader9
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = ' '#1044#1086#1082#1091#1084#1077#1085#1090', '#1072#1082#1090', '#1087#1080#1089#1100#1084#1086': '
      Category = 0
      Hint = ' '#1044#1086#1082#1091#1084#1077#1085#1090', '#1072#1082#1090', '#1087#1080#1089#1100#1084#1086': '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object bListDoc: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
    end
    object btnDoc: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 65
      PaintStyle = psCaptionGlyph
      OnClick = aDocExecute
    end
    object dxBarButton15: TdxBarButton
      Action = aNewProblem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1086#1073#1083#1077#1084#1091' '#1087#1086' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1084
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1088#1086#1073#1083#1077#1084
      Category = 0
      Visible = ivNever
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'btnProblemIncident'
        end>
    end
    object btnProblemIncident: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1086#1073#1083#1077#1084#1091' '#1087#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072#1084
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1086#1073#1083#1077#1084#1091' '#1087#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072#1084
      Visible = ivAlways
      ImageIndex = 62
      OnClick = aProblemIncidentExecute
    end
    object dxBarButton16: TdxBarButton
      Action = aNewProblem
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object ActionList: TActionList
    Images = DMMain.imlSmall
    Left = 80
    Top = 184
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
      ImageIndex = 4
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aDetail: TAction
      Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1088#1086#1073#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080
      ImageIndex = 10
      ShortCut = 114
      OnExecute = aDetailExecute
    end
    object aNew: TAction
      Caption = #1053#1086#1074#1099#1081' '#1080#1085#1094#1080#1076#1077#1085#1090
      ImageIndex = 5
      ShortCut = 115
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Enabled = False
      ImageIndex = 6
      ShortCut = 8307
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
      OnExecute = aDeleteExecute
    end
    object aRefreshRcvDinamic: TAction
      Caption = 'aRefreshRcvDinamic'
      ImageIndex = 0
      OnExecute = aRefreshRcvDinamicExecute
    end
    object aFilter_Active: TAction
      Caption = #1040#1082#1090#1080#1074#1085#1099#1077
      Hint = #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1080#1085#1094#1080#1076#1077#1085#1090#1099', '#1085#1077#1079#1072#1082#1088#1099#1090#1099#1077' '#1085#1072' '#1090#1077#1082#1091#1097#1080#1081' '#1084#1086#1084#1077#1085#1090
      ImageIndex = 0
      OnExecute = aFilter_ActiveExecute
    end
    object aFilter_Period: TAction
      Caption = #1055#1077#1088#1080#1086#1076
      Hint = 
        #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1080#1085#1094#1080#1076#1077#1085#1090#1099', '#1074#1082#1083#1102#1095#1072#1103' '#1079#1072#1082#1088#1099#1090#1099#1077', '#1089#1086#1079#1076#1072#1085#1085#1099#1077' '#1074' '#1091#1082#1072#1079#1072#1085#1085#1086#1081' '#1087 +
        #1077#1088#1080#1086#1076#1077
      ImageIndex = 0
      OnExecute = aFilter_PeriodExecute
    end
    object aLoad_FTP_Params: TAction
      Caption = 'aLoad_FTP_Params'
      ImageIndex = 13
      OnExecute = aLoad_FTP_ParamsExecute
    end
    object aStore_Column_Customization: TAction
      Caption = 'aStore_Column_Customization'
      ImageIndex = 0
      OnExecute = aStore_Column_CustomizationExecute
    end
    object aRestore_Column_Customization: TAction
      Caption = 'aRestore_Column_Customization'
      ImageIndex = 0
      OnExecute = aRestore_Column_CustomizationExecute
    end
    object aSetAction: TAction
      Caption = 'aSetAction'
      ImageIndex = 0
      OnExecute = aSetActionExecute
    end
    object aExport2Excel: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1089#1087#1080#1089#1082#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074' '#1074' Excel'
      ImageIndex = 54
      OnExecute = aExport2ExcelExecute
    end
    object aFill_ProfileList: TAction
      Caption = 'aFill_ProfileList'
      ImageIndex = 0
      OnExecute = aFill_ProfileListExecute
    end
    object aSaveProfile: TAction
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103
      ImageIndex = 57
      OnExecute = aSaveProfileExecute
    end
    object aApplyProfile: TAction
      ImageIndex = 30
      OnExecute = aApplyProfileExecute
    end
    object aDeleteProfile: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1087#1088#1086#1092#1080#1083#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1091' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103
      ImageIndex = 58
      OnExecute = aDeleteProfileExecute
    end
    object aNewProblem: TAction
      Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1088#1086#1073#1083#1077#1084
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1085#1086#1074#1099#1081' '#1083#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' "'#1055#1088#1086#1073#1083#1077#1084#1072'"'
      ImageIndex = 62
      OnExecute = aProblemIncidentExecute
    end
    object aNewSystem: TAction
      Caption = #1057#1080#1089#1090#1077#1084#1072
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1085#1086#1074#1099#1081' '#1083#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' "'#1057#1080#1089#1090#1077#1084#1072'"'
      ImageIndex = 60
      OnExecute = aNewSystemExecute
    end
    object aNewInstr: TAction
      Caption = #1059#1095#1077#1073#1085#1099#1081
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1085#1086#1074#1099#1081' '#1083#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' "'#1059#1095#1077#1073#1085#1099#1081'"'
      ImageIndex = 61
      OnExecute = aNewInstrExecute
    end
    object aMultiAttach: TAction
      Caption = #1055#1088#1080#1083#1086#1078#1080#1090#1100' '#1092#1072#1081#1083
      Hint = #1055#1088#1080#1083#1086#1078#1080#1090#1100' '#1092#1072#1081#1083' '#1082' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1048#1085#1094#1080#1076#1077#1085#1090#1091' ('#1075#1088#1091#1087#1087#1077' '#1048#1085#1094#1080#1076#1077#1085#1090#1086#1074')'
      ImageIndex = 53
      OnExecute = aMultiAttachExecute
    end
    object aCloseHandly: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1082#1072#1082' '#1085#1077#1086#1090#1088#1072#1073#1086#1090#1072#1085#1085#1099#1081
      ImageIndex = 9
      OnExecute = aCloseHandlyExecute
    end
    object aAudit: TAction
      Caption = #1040#1091#1076#1080#1090' '#1051#1056
      ImageIndex = 63
    end
    object aLoad_NSI_FirmTree: TAction
      Caption = 'aLoad_NSI_FirmTree'
      ImageIndex = 13
      OnExecute = aLoad_NSI_FirmTreeExecute
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
    object Action1: TAction
      Caption = 'Action1'
    end
    object aProblemIncident: TAction
      Caption = 'aProblemIncident'
      OnExecute = aProblemIncidentExecute
    end
    object aLoadSer: TAction
      Caption = 'aLoadSer'
      OnExecute = aLoadSerExecute
    end
    object aLoadNum: TAction
      Caption = 'aLoadNum'
      OnExecute = aLoadNumExecute
    end
    object aActionFuntion: TAction
      Caption = 'aActionFuntion'
      OnExecute = aActionFuntionExecute
    end
  end
  object GridViewRepository: TcxGridViewRepository
    Left = 128
    Top = 184
    object chvRcvDynamic: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'dt'
      Categories.OnGetValueDisplayText = chvRcvDynamicCategoriesGetValueDisplayText
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
  object tmr: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrTimer
    Left = 200
    Top = 184
  end
  object dsIncidentList: TDataSource
    DataSet = cdsIncidentList
    Left = 272
    Top = 184
  end
  object cdsIncidentList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 232
  end
  object dsIncidentListChild: TDataSource
    DataSet = cdsIncidentListChild
    Left = 344
    Top = 184
  end
  object cdsIncidentListChild: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 232
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 224
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 872
    Top = 176
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
    Left = 824
    Top = 176
  end
  object dlgSave: TSaveDialog
    Left = 824
    Top = 224
  end
  object imlFirmTreeState: TcxImageList
    FormatVersion = 1
    DesignInfo = 15597606
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
  object stlrp: TcxStyleRepository
    Left = 108
    Top = 240
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
      AssignedValues = [svFont, svTextColor]
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
      AssignedValues = [svColor]
      Color = 8421631
    end
    object stlRunningYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object stlRunningGreen: TcxStyle
      AssignedValues = [svColor]
      Color = 7725974
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
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 844
    Top = 270
  end
  object alDoc: TActionList
    Left = 652
    Top = 190
    object aSelDoc: TAction
      Caption = 'aSelDoc'
    end
    object aDoc: TAction
      Caption = 'aDoc'
      OnExecute = aDocExecute
    end
    object aLoadDoc: TAction
      Caption = 'aLoadDoc'
      OnExecute = aLoadDocExecute
    end
  end
  object cdsFiltr: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 724
    Top = 318
  end
  object dsFiltr: TDataSource
    DataSet = cdsFiltr
    Left = 724
    Top = 366
  end
end
