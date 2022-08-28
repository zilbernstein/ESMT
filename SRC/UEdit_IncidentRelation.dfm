object frmIncident_Relation: TfrmIncident_Relation
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1074#1103#1079#1080' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 658
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  object Panel6: TPanel
    Left = 0
    Top = 596
    Width = 1106
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cxButton9: TcxButton
      Left = 946
      Top = 0
      Width = 160
      Height = 39
      Align = alRight
      Action = aCancel
      Cancel = True
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
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
      ExplicitLeft = 1006
    end
    object cxButton10: TcxButton
      Left = 786
      Top = 0
      Width = 160
      Height = 39
      Align = alRight
      Action = aSave
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 906
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 635
    Width = 1106
    Height = 23
    Images = DMMain.imlSmall
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
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
  object grd: TcxGrid
    Left = 0
    Top = 0
    Width = 1106
    Height = 596
    Cursor = crHandPoint
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = '5'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LevelTabs.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    ExplicitHeight = 602
    object btvRelation: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
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
        end
        item
          Kind = skCount
          Column = clmnSheetID
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.IgnoreTimeForFiltering = True
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = clmnSheetID
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GridLineColor = clBtnShadow
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.FixedBandSeparatorWidth = 0
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
          Visible = False
        end
        item
          Options.HoldOwnColumnsOnly = True
          Visible = False
          VisibleForCustomization = False
        end>
      object clmnSheetID: TcxGridDBBandedColumn
        Caption = #8470' '#1051#1056
        DataBinding.FieldName = 'sheet_id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = DMMain.stlBackgroundLightBlue
        Width = 56
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvRelationColumn2: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'date_fail'
        PropertiesClassName = 'TcxTextEditProperties'
        OnGetDisplayText = btvRelationColumn2GetDisplayText
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 98
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvRelationColumn6: TcxGridDBBandedColumn
        Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1057#1050
        DataBinding.FieldName = 'service_firm_name'
        PropertiesClassName = 'TcxTextEditProperties'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object btvRelationColumn7: TcxGridDBBandedColumn
        Caption = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
        DataBinding.FieldName = 'base_firm_repair_name'
        PropertiesClassName = 'TcxTextEditProperties'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 112
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object btvRelationColumn8: TcxGridDBBandedColumn
        Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
        DataBinding.FieldName = 'incident_descr'
        PropertiesClassName = 'TcxTextEditProperties'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 386
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object clmnIncident_StateName: TcxGridDBBandedColumn
        AlternateCaption = ' '
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'state_name'
        PropertiesClassName = 'TcxTextEditProperties'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = DMMain.stlBackgroundLight
        Width = 77
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvRelationColumn11: TcxGridDBBandedColumn
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        DataBinding.FieldName = 'category_name'
        Visible = False
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        VisibleForCustomization = False
        Width = 65
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object btvRelationColumn12: TcxGridDBBandedColumn
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
        DataBinding.FieldName = 'source_info_pred_name'
        PropertiesClassName = 'TcxTextEditProperties'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object btvRelationColumn14: TcxGridDBBandedColumn
        Caption = #1057#1077#1088#1080#1103
        DataBinding.FieldName = 'ser_name'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 71
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvRelationColumn15: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = 'nom_object'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvRelationColumn22: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1079#1072#1084#1077#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'note_type_name'
        DateTimeGrouping = dtgByDate
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 3
        Position.ColIndex = 0
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
        Width = 29
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvRelationColumn23: TcxGridDBBandedColumn
        Caption = #1055#1088#1080#1087#1080#1089#1082#1072
        DataBinding.FieldName = 'loc_prip_name'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 151
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnStateID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'state_id'
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object clmnIncident_Can_Delete: TcxGridDBBandedColumn
        DataBinding.FieldName = 'can_delete'
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 9
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
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object clmnCheck: TcxGridDBBandedColumn
        Caption = ' '
        DataBinding.FieldName = 'checked'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1072
        Properties.DisplayUnchecked = #1053#1077#1090
        Properties.DisplayGrayed = #1053#1077#1090
        Properties.FullFocusRect = True
        Properties.Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000C30E0000C30E00000000000000000000FF00FFFF00FF
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
        Properties.ValueChecked = '1'
        Properties.ValueGrayed = '0'
        Properties.OnEditValueChanged = clmnCheckPropertiesEditValueChanged
        HeaderGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000093F10160522091F0E5A1802000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001676233315A228EA0F841FD5041A081F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001F7F2D1B24AC37DF25B539FF1FB233FF09461289114D19070000
          0000000000000000000000000000000000000000000000000000000000000000
          0000267E330F2DA83FCC3CCF52FF37C94CFF31C346FF25AF39EF041506321E73
          2A01000000000000000000000000000000000000000000000000000000002B83
          381533A544C34EE265FF4ADE61FF37C94DE642D659FF3DD053FF176C23AC1039
          160D0000000000000000000000000000000000000000000000002D8E3B2640BC
          53D758EC70FF56EA6FFF3BB94ECF248532193ED053D949DD61FF41D758FA051E
          085723713003000000000000000000000000000000000000000033A543AA55E8
          6EFF58EC71FF3CB64EC62B8E3A150000000030B6435054E96CFF51E469FF30A5
          42D50A1F0D1C000000000000000000000000000000000000000036B0462B37B9
          48B52C973A8739B14B0A000000000000000038B84B0142D257B957EB70FF56ED
          6FFF144D1C8B1E5A270700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000037BC4A2752E66AF658EC
          71FF4AD761F3071E0A41246E2F02000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000036BE4A7651E3
          69FF55E86DFF2E963ECA0E2B1219000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003EC2510438C3
          4DC245D65DFF4BDF63FE134C1B8E15411B0A0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000032AC
          432346C558F242CA58FF38C44DF7041B07561B55240400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002C9F395E49C15BFF4CC45EFF36A345E3041306301D5C2601000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C9C399E42B853FF45BD57FF24792FC40E301316000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000034A7430A31A940CA3AB04BFF38B048F3113C171D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002A9A37132898357C22802E3400000000}
        HeaderGlyphAlignmentHorz = taCenter
        Width = 22
        Position.BandIndex = 0
        Position.ColIndex = 0
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
    object lvl: TcxGridLevel
      Tag = 1
      Caption = '  '#1042#1089#1077' '#1088#1077#1084#1086#1085#1090#1099'  '
      GridView = btvRelation
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 8
    Top = 544
  end
  object alRelation: TActionList
    Images = DMMain.imlSmall
    Left = 8
    Top = 496
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1085#1077#1089#1077#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 56
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086', '#1085#1077' '#1089#1086#1093#1088#1072#1085#1103#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aLoadIncident: TAction
      Caption = 'aLoadIncident'
      ImageIndex = 13
      OnExecute = aLoadIncidentExecute
    end
  end
  object dsRelationIncident: TDataSource
    DataSet = cdsRelationIncident
    Left = 80
    Top = 496
  end
  object cdsRelationIncident: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 544
  end
end
