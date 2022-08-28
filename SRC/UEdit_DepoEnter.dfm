object frmEdit_DepoEnter: TfrmEdit_DepoEnter
  Left = 0
  Top = 0
  Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
  ClientHeight = 762
  ClientWidth = 1330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pcCommon: TcxPageControl
    Left = 0
    Top = 359
    Width = 1330
    Height = 307
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Properties.ActivePage = tsCommon
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.Style = 9
    Properties.TabSlants.Positions = [spLeft, spRight]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabSlants.Positions = [spLeft, spRight]
    ClientRectBottom = 307
    ClientRectRight = 1330
    ClientRectTop = 23
    object tsCommon: TcxTabSheet
      Caption = '1. '#1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object pnlIncidentList: TPanel
        Left = 0
        Top = 0
        Width = 1330
        Height = 36
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxButton10: TcxButton
          Left = 91
          Top = 1
          Width = 90
          Height = 34
          Align = alLeft
          Action = aIncidentListDel
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxButton11: TcxButton
          Left = 1
          Top = 1
          Width = 90
          Height = 34
          Align = alLeft
          Action = aIncidentListAdd
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object grdIncidentList: TcxGrid
        Left = 0
        Top = 36
        Width = 1330
        Height = 248
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
        object btvIncidentList: TcxGridDBBandedTableView
          OnDblClick = btvIncidentListDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Position = fpTop
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
              Column = btvIncidentListColumn9
              VisibleForCustomization = False
            end
            item
              Kind = skCount
              Column = btvIncidentListColumn1
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
          OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1053#1077#1090' '#1076#1072#1085#1085#1099#1093'.'
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GridLineColor = clBtnShadow
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaderEndEllipsis = True
          OptionsView.FixedBandSeparatorWidth = 0
          Styles.Background = DMMain.cxStyle107
          Styles.Content = DMMain.cxStyle190
          Styles.FilterBox = DMMain.cxStyle107
          Styles.Selection = DMMain.stlSelection
          Styles.Footer = DMMain.cxStyle57
          Styles.Group = DMMain.cxStyle57
          Styles.GroupSummary = DMMain.stlHeader9
          Styles.Header = DMMain.stlHeader9
          Styles.StyleSheet = DMMain.stlshtBTV
          Styles.BandHeader = DMMain.cxStyle101
          Bands = <
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
              Caption = #1059#1089#1090#1088#1072#1085#1077#1085#1080#1077
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
            end>
          object btvIncidentListColumn1: TcxGridDBBandedColumn
            Caption = #8470' '#1051#1056
            DataBinding.FieldName = 'sheet_id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLight
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentListColumn2: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103
            DataBinding.FieldName = 'date_fail'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 150
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn3: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1079#1072#1082#1088#1099#1090#1080#1103
            DataBinding.FieldName = 'date_close'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 90
            Position.BandIndex = 2
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
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvIncidentListColumn6: TcxGridDBBandedColumn
            Caption = #1060#1080#1083#1080#1072#1083
            DataBinding.FieldName = 'service_firm_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvIncidentListColumn7: TcxGridDBBandedColumn
            Caption = #1057#1054'/'#1057#1059
            DataBinding.FieldName = 'service_firm_name_3'
            Visible = False
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 157
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object btvIncidentListColumn8: TcxGridDBBandedColumn
            Caption = #1052#1077#1089#1090#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            DataBinding.FieldName = 'fail_place_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 161
            Position.BandIndex = 2
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object btvIncidentListColumn9: TcxGridDBBandedColumn
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
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvIncidentListColumn11: TcxGridDBBandedColumn
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            DataBinding.FieldName = 'category_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            VisibleForCustomization = False
            Width = 100
            Position.BandIndex = 2
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object clmnIncident_StateName: TcxGridDBBandedColumn
            Caption = #1057#1090#1072#1090#1091#1089
            DataBinding.FieldName = 'state_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentListColumn12: TcxGridDBBandedColumn
            Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            DataBinding.FieldName = 'source_info_pred_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 170
            Position.BandIndex = 2
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object btvIncidentListColumn13: TcxGridDBBandedColumn
            Caption = #1059#1079#1077#1083
            DataBinding.FieldName = 'unit_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentListColumn14: TcxGridDBBandedColumn
            Caption = #1057#1077#1088#1080#1103
            DataBinding.FieldName = 'ser_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 71
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentListColumn15: TcxGridDBBandedColumn
            Caption = #1057#1077#1082#1094#1080#1103
            DataBinding.FieldName = 'nom_object'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvIncidentListColumn17: TcxGridDBBandedColumn
            Caption = #1052#1072#1096#1080#1085#1080#1089#1090
            DataBinding.FieldName = 'brig_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 200
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn18: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
            DataBinding.FieldName = 'brig_depo_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
            Position.BandIndex = 8
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentListColumn19: TcxGridDBBandedColumn
            Caption = #8470' '#1087#1086#1077#1079#1076#1072
            DataBinding.FieldName = 'train_num'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn20: TcxGridDBBandedColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'weight'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentListColumn21: TcxGridDBBandedColumn
            Caption = #1054#1089#1080
            DataBinding.FieldName = 'axes'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentListColumn22: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1079#1072#1084#1077#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'note_type_name'
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 90
            Position.BandIndex = 5
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
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentListColumn23: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1087#1080#1089#1082#1072
            DataBinding.FieldName = 'loc_prip_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 151
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object clmnStateID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'state_id'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 2
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object btvIncidentListColumn4: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'change_user_fio'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn24: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'date_change'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 9
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnIncident_Can_Delete: TcxGridDBBandedColumn
            DataBinding.FieldName = 'can_delete'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 2
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
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentListColumn10: TcxGridDBBandedColumn
            AlternateCaption = #1058#1103#1075#1072
            Caption = #1058#1103#1075#1072
            DataBinding.FieldName = 'tjaga_name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            DateTimeGrouping = dtgByDate
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn16: TcxGridDBBandedColumn
            Caption = #1042#1080#1085#1072
            DataBinding.FieldName = 'resp_name_full'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object btvIncidentListColumn25: TcxGridDBBandedColumn
            AlternateCaption = #1042#1088#1077#1084#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1077
            Caption = #1042#1088#1077#1084#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1077#10'('#1076#1076' '#1095#1095':'#1084#1084')'
            DataBinding.FieldName = 'state_lasting'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object btvIncidentListColumn26: TcxGridDBBandedColumn
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
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object btvIncidentListColumn27: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1058#1055#1045
            DataBinding.FieldName = 'nom_tpe'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 77
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentListColumn28: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1079#1072#1082#1088#1099#1090#1080#1103
            DataBinding.FieldName = 'close_reason_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 89
            Position.BandIndex = 2
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object btvIncidentListColumn29: TcxGridDBBandedColumn
            Caption = #1057#1051#1044
            DataBinding.FieldName = 'service_podr_firm_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 129
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvIncidentListColumn30: TcxGridDBBandedColumn
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
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentListColumn31: TcxGridDBBandedColumn
            Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085
            DataBinding.FieldName = 'date_create'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvIncidentListColumn32: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
            DataBinding.FieldName = 'enter_depo_reason_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object btvIncidentListColumn34: TcxGridDBBandedColumn
            Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'system_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentListColumn35: TcxGridDBBandedColumn
            Caption = #1058#1072#1073'. '#8470
            DataBinding.FieldName = 'brig_t_nom'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentListColumn5: TcxGridDBBandedColumn
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
            Options.ShowEditButtons = isebAlways
            Options.ShowCaption = False
            Styles.Content = DMMain.stlBackgroundLightBlue
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentListColumn36: TcxGridDBBandedColumn
            Caption = #1056#1077#1078#1080#1084' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103
            DataBinding.FieldName = 'solution_type_name'
            HeaderAlignmentHorz = taCenter
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvIncidentListColumn33: TcxGridDBBandedColumn
            AlternateCaption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1080#1095#1080#1085
            Caption = #1043#1088#1091#1087#1087#1072
            DataBinding.FieldName = 'reason_name_root'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn37: TcxGridDBBandedColumn
            AlternateCaption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099
            DataBinding.FieldName = 'p3'
            HeaderAlignmentHorz = taCenter
            Width = 152
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentListColumn38: TcxGridDBBandedColumn
            Caption = #1054#1090#1074#1077#1090#1089#1090#1074'. '#1079#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
            DataBinding.FieldName = 'owner_department_name'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvIncidentListColumn39: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            DataBinding.FieldName = 'system_type'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn40: TcxGridDBBandedColumn
            Caption = #1044#1086#1088#1086#1075#1072
            DataBinding.FieldName = 'prip_road_mnemo'
            HeaderAlignmentHorz = taCenter
            Width = 90
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvIncidentListColumn41: TcxGridDBBandedColumn
            Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            DataBinding.FieldName = 'incident_descr_e'
            HeaderAlignmentHorz = taCenter
            Width = 250
            Position.BandIndex = 2
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object btvIncidentListColumn42: TcxGridDBBandedColumn
            Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1040#1057#1059
            DataBinding.FieldName = 'incident_descr'
            HeaderAlignmentHorz = taCenter
            Width = 250
            Position.BandIndex = 2
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object btvIncidentListColumn43: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1087#1072#1091#1079#1099
            DataBinding.FieldName = 'reason_name'
            HeaderAlignmentHorz = taCenter
            Width = 180
            Position.BandIndex = 2
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object btvIncidentListColumn44: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099
            DataBinding.FieldName = 'action_descr'
            HeaderAlignmentHorz = taCenter
            Width = 165
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvIncidentListColumn45: TcxGridDBBandedColumn
            Caption = #1059#1089#1090#1088#1072#1085#1077#1085#1080#1077
            DataBinding.FieldName = 'depo_enter_close'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvIncidentListColumn46: TcxGridDBBandedColumn
            Caption = #1057#1054'/'#1057#1059
            DataBinding.FieldName = 'service_firm_name_3'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object lvlIncidentList: TcxGridLevel
          Tag = 1
          GridView = btvIncidentList
          Options.TabsForEmptyDetails = False
        end
      end
    end
    object tsMalfunctionWorks: TcxTabSheet
      Caption = '2. '#1056#1072#1073#1086#1090#1099' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1077#1081' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object pnlMalfunction: TPanel
        Left = 0
        Top = 0
        Width = 1330
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object cxButton6: TcxButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aAddWork
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxButton7: TcxButton
          Left = 90
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aEditWork
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
        end
        object cxButton8: TcxButton
          Left = 180
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aDeleteWork
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
        end
      end
      object tlMalfuntionWorks: TcxDBTreeList
        Left = 0
        Top = 34
        Width = 1330
        Height = 250
        Align = alClient
        Bands = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Navigator.Buttons.CustomButtons = <>
        ParentFont = False
        RootValue = -1
        TabOrder = 1
      end
      object grdMalfunction: TcxGrid
        Left = 0
        Top = 34
        Width = 1330
        Height = 250
        Cursor = crHandPoint
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        RootLevelOptions.TabsForEmptyDetails = False
        object btvMalfunction: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Position = fpTop
          DataController.KeyFieldNames = 'malfunct_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1042#1089#1077#1075#1086':'
              Kind = skCount
            end
            item
              Format = '#####0'
              Kind = skCount
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
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1053#1077#1090' '#1076#1072#1085#1085#1099#1093'.'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GridLineColor = clBtnShadow
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.FixedBandSeparatorWidth = 0
          Styles.Background = DMMain.cxStyle107
          Styles.Content = DMMain.stlHeaser11
          Styles.Selection = DMMain.stlSelection
          Styles.Footer = DMMain.cxStyle35
          Styles.Group = DMMain.cxStyle35
          Styles.GroupFooterSortedSummary = DMMain.stlAttention
          Styles.GroupSummary = DMMain.stlHeaser11
          Styles.Header = DMMain.stlBandHeader
          Styles.StyleSheet = DMMain.stlshtBTV
          Styles.BandHeader = DMMain.cxStyle142
          Bands = <
            item
              Caption = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1077#1081
              Styles.Header = DMMain.stlGroup11
              Width = 1200
            end>
          object btvMalfunctionColumn1: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
            DataBinding.FieldName = 'create_date'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvMalfunctionColumn2: TcxGridDBBandedColumn
            Caption = #1060'.'#1048'.'#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'create_user_fio'
            HeaderAlignmentHorz = taCenter
            Width = 293
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvMalfunctionColumn3: TcxGridDBBandedColumn
            Caption = #1056#1072#1073#1086#1090#1072
            DataBinding.FieldName = 'mwork'
            HeaderAlignmentHorz = taCenter
            Width = 232
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvMalfunctionColumn4: TcxGridDBBandedColumn
            Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'mmalfunct'
            HeaderAlignmentHorz = taCenter
            Width = 236
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvMalfunctionColumn5: TcxGridDBBandedColumn
            Caption = #1062#1077#1093
            DataBinding.FieldName = 'mguild'
            HeaderAlignmentHorz = taCenter
            Width = 233
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object lvlMalfunction: TcxGridLevel
          GridView = btvMalfunction
          Options.TabsForEmptyDetails = False
        end
      end
    end
    object tsAttach: TcxTabSheet
      Caption = '3. '#1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086' '#1074#1099#1093#1086#1076#1091
      ImageIndex = 2
      object pnlAttach: TPanel
        Left = 0
        Top = 0
        Width = 1330
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aAddAttach
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxButton4: TcxButton
          Left = 90
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aEditAttach
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
        end
        object cxButton5: TcxButton
          Left = 180
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aDeleteAttach
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
        end
      end
      object grdDepoEnterAttach: TcxGrid
        Left = 0
        Top = 34
        Width = 1330
        Height = 250
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        ExplicitTop = 40
        object btvDepoEnterAttach: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.KeyFieldNames = 'attach_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1053#1077#1090' '#1076#1072#1085#1085#1099#1093'.'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = DMMain.cxStyle107
          Styles.Content = DMMain.stlContent
          Styles.Footer = DMMain.cxStyle35
          Styles.Group = DMMain.cxStyle35
          Styles.GroupSummary = DMMain.stlBandHeader
          Styles.Header = DMMain.stlBandHeader
          Styles.StyleSheet = DMMain.stlshtBTV
          Styles.BandHeader = DMMain.stlHeader
          Bands = <
            item
              Caption = ' '#1055#1088#1080#1083#1086#1078#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
              Styles.Header = DMMain.stlGroup11
            end>
          object clmnDtTm: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
            DataBinding.FieldName = 'create_date'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object clmnFIOPost: TcxGridDBBandedColumn
            Caption = #1060'.'#1048'.'#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'change_user_fio'
            HeaderAlignmentHorz = taCenter
            Width = 344
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object clmnDescription: TcxGridDBBandedColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            DataBinding.FieldName = 'descr'
            HeaderAlignmentHorz = taCenter
            Width = 143
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object clmnFiles: TcxGridDBBandedColumn
            Caption = #1057#1082#1072#1095#1072#1090#1100
            DataBinding.FieldName = 'file_name'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Caption = 'aEscalationAction_Show'
                Default = True
                ImageIndex = 0
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000066E0977066F0A7F0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000056F08753DC060FE3BBA5EFE056D
                  097E000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000066F0A714CE476FE59F28CFF4DD87CFF38B9
                  5BFE0569097A0000000000000000000000000000000000000000000000000000
                  00000000000000000000066D09704CE477FE5AF38DFF57F08AFF53ED87FF49D4
                  78FF35B759FE0567087900000000000000000000000000000000000000000000
                  000000000000056B096E4CE375FE5BF48EFF58F18BFF55EE88FF51EA84FF4EE7
                  81FF45D173FF32B455FE04630777000000000000000000000000000000000000
                  00000569086B4BE174FE5AF48DFF59F28CFF57EF89FF53EC86FF50E983FF4CE5
                  7FFF49E27CFF40CD6FFF2FB253FE046007740000000000000000000000000467
                  076948DD70FD65F294FF72F29DFF91F4B2FF5FED8EFF50E983FF4DE680FF4AE3
                  7DFF43D172FF44DB76FF38BD65FF2CB151FE035D0772000000000020000A005E
                  005F005C0060005B0060128D1DC37FF1A5FF5BEA8BFF4EE781FF4BE47EFF48E1
                  7BFF3CC269FF0F8B1AC800550060005300600054005F001D000D000000000000
                  00000000000000000000126F1D9E7CEEA2FF57E787FF4AE37DFF48E17BFF45DE
                  78FF3BC168FF0E8019A500000000000000000000000000000000000000000000
                  00000000000000000000116D1C9E77EB9EFF54E484FF47E07AFF45DE78FF43DC
                  76FF39C066FF0D7A18A300000000000000000000000000000000000000000000
                  000000000000000000000F6A1B9D74E99BFF50E181FF44DD77FF42DB75FF40D9
                  73FF37C065FF0C6017A100000000000000000000000000000000000000000000
                  000000000000000000000E67199B70E698FF4DDE7DFF41DA74FF3FD872FF3DD6
                  70FF35BF63FF0B5D159F00000000000000000000000000000000000000000000
                  000000000000000000000D64189B6CE394FF6CE293FF5CDD86FF4FD97DFF42D4
                  73FF33BD61FF0B5C16A100000000000000000000000000000000000000000000
                  0000000000000000000007590D9127AA43F129AA44F327A843F325A641F124A4
                  3FF01E9C39ED06660C9900000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Kind = bkGlyph
              end>
            Properties.ViewStyle = vsButtonsOnly
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebAlways
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object clmnFileName: TcxGridDBBandedColumn
            Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
            DataBinding.FieldName = 'file_name_short'
            HeaderAlignmentHorz = taCenter
            Width = 342
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object lvlDepoEnterAttach: TcxGridLevel
          GridView = btvDepoEnterAttach
        end
      end
    end
    object tsRunning: TcxTabSheet
      Caption = '4. '#1055#1088#1086#1073#1077#1075#1080' '#1085#1072' '#1084#1086#1084#1077#1085#1090' '#1079#1072#1093#1086#1076#1072
      ImageIndex = 3
      object vgRunningElder: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 521
        Height = 284
        Align = alLeft
        Enabled = False
        LayoutStyle = lsBandsView
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        OptionsView.RowHeaderWidth = 177
        OptionsView.ShowButtons = False
        Navigator.Buttons.CustomButtons = <>
        Styles.Background = DMMain.stlBackground
        Styles.Content = DMMain.stlContent
        Styles.StyleSheet = DMMain.stlshtVG
        Styles.Category = DMMain.stlCategory
        Styles.Header = DMMain.stlBandHeader
        TabOrder = 0
        Version = 1
        object vgRunningElderCategoryRow2: TcxCategoryRow
          Properties.Caption = #1050#1056
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vgRunningElderDBEditorRow5: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_kr_km'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object vgRunningElderCategoryRow3: TcxCategoryRow
          Properties.Caption = #1057#1056
          ID = 2
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vgRunningElderDBEditorRow8: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_sr_km'
          ID = 3
          ParentID = 2
          Index = 0
          Version = 1
        end
        object vgRunningElderCategoryRow4: TcxCategoryRow
          Properties.Caption = #1058#1056'-3'
          ID = 4
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vgRunningElderDBEditorRow11: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_tr3_km'
          ID = 5
          ParentID = 4
          Index = 0
          Version = 1
        end
      end
      object vgRunningJunior: TcxDBVerticalGrid
        Left = 521
        Top = 0
        Width = 809
        Height = 284
        Align = alClient
        Enabled = False
        LayoutStyle = lsBandsView
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        OptionsView.RowHeaderWidth = 170
        OptionsView.ShowButtons = False
        Navigator.Buttons.CustomButtons = <>
        Styles.Background = DMMain.stlBackground
        Styles.Content = DMMain.stlContent
        Styles.StyleSheet = DMMain.stlshtVG
        Styles.Category = DMMain.stlCategory
        Styles.Header = DMMain.stlBandHeader
        TabOrder = 1
        Version = 1
        object cxCategoryRow2: TcxCategoryRow
          Properties.Caption = #1058#1056'-2'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBEditorRow3: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_tr2_km'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object cxCategoryRow3: TcxCategoryRow
          Properties.Caption = #1058#1056'-1'
          ID = 2
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBEditorRow6: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_tr1_km'
          ID = 3
          ParentID = 2
          Index = 0
          Version = 1
        end
        object cxCategoryRow4: TcxCategoryRow
          Properties.Caption = #1058#1054'-3'
          ID = 4
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBEditorRow9: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_to3_km'
          ID = 5
          ParentID = 4
          Index = 0
          Version = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 722
    Width = 1330
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 1168
      Top = 2
      Width = 160
      Height = 36
      Align = alRight
      Action = aCancel
      Cancel = True
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Images = DMMain.iml
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnClose: TcxButton
      Left = 1008
      Top = 2
      Width = 160
      Height = 36
      Align = alRight
      Action = aCloseDepoEnter
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.SkinName = 'Caramel'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnSave: TcxButton
      Left = 848
      Top = 2
      Width = 160
      Height = 36
      Align = alRight
      Action = aSave
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object vgFrame: TcxDBVerticalGrid
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 1324
    Height = 182
    Margins.Top = 10
    BorderStyle = cxcbsNone
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LayoutStyle = lsBandsView
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.ScrollBars = ssNone
    OptionsView.BandsInterval = 5
    OptionsView.RowHeaderWidth = 452
    OptionsView.ShowButtons = False
    OptionsView.ValueWidth = 300
    OptionsBehavior.AlwaysShowEditor = False
    OptionsData.Appending = False
    OptionsData.Deleting = False
    OptionsData.Inserting = False
    Navigator.Buttons.CustomButtons = <>
    ParentFont = False
    Styles.Background = DMMain.cxStyle97
    Styles.Content = DMMain.cxStyle53
    Styles.Selection = DMMain.cxStyle53
    Styles.StyleSheet = DMMain.stlshtVG
    Styles.Category = DMMain.stlCategory
    Styles.Header = DMMain.cxStyle53
    TabOrder = 2
    Version = 1
    object vgFrameDBEditorRow1: TcxDBEditorRow
      Properties.Caption = #1053#1086#1084#1077#1088' '#1051#1056#1047
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'row_id'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object vgFrameDBEditorRow3: TcxDBEditorRow
      Properties.Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
      Properties.DataBinding.FieldName = 'loc_name'
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object vgFrameDBEditorRow2: TcxDBEditorRow
      Properties.Caption = #1057#1090#1072#1090#1091#1089
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'state_name'
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object vgFrameDBEditorRow4: TcxDBEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1051#1056#1047
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'create_date'
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object vgFrameDBEditorRow5: TcxDBEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'date_op'
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object vgFrameDBEditorRow6: TcxDBEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1076#1077#1087#1086
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'date_next_op'
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object vgFrameDBEditorRow7: TcxDBEditorRow
      Properties.Caption = #1054#1073#1097#1077#1077' '#1074#1088#1077#1084#1103' '#1087#1088#1086#1089#1090#1086#1103' '#1074' '#1076#1077#1087#1086
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'date_hr'
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
    object vgFrameDBEditorRow8: TcxDBEditorRow
      Height = 40
      Properties.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.VisibleLineCount = 3
      Properties.DataBinding.FieldName = 'reason'
      ID = 7
      ParentID = -1
      Index = 7
      Version = 1
    end
  end
  object vgFrameEdit: TcxVerticalGrid
    Left = 0
    Top = 225
    Width = 1330
    Height = 134
    BorderStyle = cxcbsNone
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    Images = DMMain.iml
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.ShowEditButtons = ecsbAlways
    OptionsView.GridLineColor = 11842740
    OptionsView.RowHeaderWidth = 276
    OptionsBehavior.AlwaysShowEditor = False
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    ParentFont = False
    Styles.Content = DMMain.stlContent
    Styles.StyleSheet = DMMain.stlshtVG
    Styles.Category = DMMain.stlCategory
    Styles.Header = DMMain.stlHeaser11
    TabOrder = 3
    Visible = False
    Version = 1
    object rwLocName: TcxEditorRow
      Properties.Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074', '#1089#1077#1082#1094#1080#1103
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
      Properties.EditProperties.Buttons = <
        item
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1077#1082#1094#1080#1102' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
          Default = True
          Kind = bkText
        end
        item
          Caption = #1057#1084#1077#1085#1080#1090#1100' '#1089#1077#1082#1094#1080#1102
          Kind = bkText
        end>
      Properties.EditProperties.ViewStyle = vsHideCursor
      Properties.EditProperties.OnButtonClick = rwLocNameEditPropertiesButtonClick
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '-'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwDateOp: TcxEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DateButtons = [btnNow]
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.Kind = ckDateTime
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwDateNextOp: TcxEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1076#1077#1087#1086
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DateButtons = [btnNow]
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.Kind = ckDateTime
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rwDepoEnterReason: TcxEditorRow
      Height = 40
      Properties.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.VisibleLineCount = 3
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
  end
  object ActionList: TActionList
    Images = DMMain.iml
    Left = 827
    Top = 131
    object aLoadIncidentList: TAction
      Caption = 'aLoadIncidentList'
      ImageIndex = 0
      OnExecute = aLoadIncidentListExecute
    end
    object aLoadAttach: TAction
      Caption = 'aLoadAttach'
      ImageIndex = 0
      OnExecute = aLoadAttachExecute
    end
    object aLoadFrame: TAction
      Caption = 'aLoadFrame'
      ImageIndex = 0
      OnExecute = aLoadFrameExecute
    end
    object aDetail: TAction
      Caption = 'aDetail'
      ImageIndex = 10
      OnExecute = aDetailExecute
    end
    object aLoadMalfunctList: TAction
      Caption = 'aLoadMalfunctList'
      ImageIndex = 0
      OnExecute = aLoadMalfunctListExecute
    end
    object aCloseDepoEnter: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Hint = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1079#1072#1093#1086#1076' '#1074' '#1076#1077#1087#1086' '#1074' '#1089#1090#1072#1090#1091#1089' '#1047#1072#1082#1088#1099#1090
      ImageIndex = 64
      OnExecute = aCloseDepoEnterExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1051#1056#1047
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aAddWork: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102
      ImageIndex = 5
      OnExecute = aAddWorkExecute
    end
    object aEditWork: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 6
      OnExecute = aEditWorkExecute
    end
    object aDeleteWork: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 7
      OnExecute = aDeleteWorkExecute
    end
    object aAddAttach: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
      OnExecute = aAddAttachExecute
    end
    object aEditAttach: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 6
      OnExecute = aEditAttachExecute
    end
    object aDeleteAttach: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 7
      OnExecute = aDeleteAttachExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 56
      OnExecute = aSaveExecute
    end
    object aIncidentListAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1085#1094#1080#1076#1077#1085#1090#1099' '#1074' '#1089#1087#1080#1089#1086#1082' '#1051#1056#1047
      ImageIndex = 5
      OnExecute = aIncidentListAddExecute
    end
    object aIncidentListDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1094#1080#1076#1077#1085#1090' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1051#1056#1047
      ImageIndex = 7
      OnExecute = aIncidentListDelExecute
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 6
      OnExecute = aEditExecute
    end
    object aLoadRunning: TAction
      Caption = 'aLoadRunning'
      ImageIndex = 0
      OnExecute = aLoadRunningExecute
    end
    object aSetAction: TAction
      Caption = 'aSetAction'
      OnExecute = aSetActionExecute
    end
  end
  object cdsIncidentList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 75
  end
  object dsIncidentList: TDataSource
    DataSet = cdsIncidentList
    Left = 312
    Top = 123
  end
  object cdsDepoEnterRecord: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 75
  end
  object dsDepoEnterRecord: TDataSource
    DataSet = cdsDepoEnterRecord
    Left = 441
    Top = 123
  end
  object cdsMalfunction: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 76
  end
  object dsMalfunction: TDataSource
    DataSet = cdsMalfunction
    Left = 600
    Top = 124
  end
  object cdsAttachDoc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 76
  end
  object dsAttachDoc: TDataSource
    DataSet = cdsAttachDoc
    Left = 688
    Top = 124
  end
  object bmEditDepoEnter: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DMMain.iml
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 776
    Top = 72
    DockControlHeights = (
      0
      0
      30
      56)
    object bmEditDepoEnterBar1: TdxBar
      AllowCustomizing = False
      Caption = #1075#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 530
      FloatTop = 191
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Hidden = True
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEditForm'
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
    object bmEditDepoEnterBar2: TdxBar
      Caption = 'InfoPanel'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 429
      FloatTop = 859
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Hidden = True
      Images = DMMain.imlSmall
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic2'
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
    object btnEditForm: TdxBarButton
      Action = aEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103': '
      Category = 0
      Hint = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103': '
      Style = DMMain.stlHeader
      Visible = ivAlways
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTrackBarProperties'
    end
    object dxBarStatic2: TdxBarStatic
      Caption = '* - '#1057#1077#1088#1074#1080#1089#1085#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
      Category = 0
      Hint = '* - '#1057#1077#1088#1074#1080#1089#1085#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103': '
      Category = 0
      Hint = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103': '
      Visible = ivAlways
      ImageIndex = 43
    end
    object dxBarStatic4: TdxBarStatic
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '
      Category = 0
      Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '
      Visible = ivAlways
      ImageIndex = 30
    end
    object dxBarStatic5: TdxBarStatic
      Caption = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076
      Category = 0
      Hint = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076
      Visible = ivAlways
      ImageIndex = 46
    end
    object dxBarStatic6: TdxBarStatic
      Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '
      Category = 0
      Hint = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '
      Visible = ivAlways
      ImageIndex = 45
    end
    object dxBarStatic7: TdxBarStatic
      Caption = #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077' '
      Category = 0
      Hint = #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077' '
      Visible = ivAlways
      ImageIndex = 44
    end
    object dxBarStatic8: TdxBarStatic
      Caption = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081
      Category = 0
      Hint = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081
      Visible = ivAlways
      ImageIndex = 51
    end
    object dxBarStatic9: TdxBarStatic
      Caption = '- '#1050#1086#1083'-'#1074#1086' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Category = 0
      Hint = '- '#1050#1086#1083'-'#1074#1086' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Visible = ivAlways
      ImageIndex = 53
    end
    object dxBarStatic10: TdxBarStatic
      Caption = ' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090' ('#1050#1086#1084#1072#1085#1076#1072'/'#1056#1072#1073#1086#1090#1072') '
      Category = 0
      Hint = ' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090' ('#1050#1086#1084#1072#1085#1076#1072'/'#1056#1072#1073#1086#1090#1072') '
      Visible = ivAlways
      ImageIndex = 64
    end
  end
  object cdsRunning: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 896
    Top = 70
  end
  object dsRunning: TDataSource
    DataSet = cdsRunning
    Left = 976
    Top = 70
  end
end
