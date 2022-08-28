object frmDepoEnter: TfrmDepoEnter
  Left = 0
  Top = 0
  Caption = #1047#1072#1093#1086#1076#1099' '#1074' '#1076#1077#1087#1086
  ClientHeight = 657
  ClientWidth = 1158
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 18
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 1158
    Height = 657
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsMain
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 650
    ClientRectLeft = 4
    ClientRectRight = 1151
    ClientRectTop = 32
    object tsMain: TcxTabSheet
      Caption = 'tsMain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object grdDepoEnter: TcxGrid
        Left = 0
        Top = 39
        Width = 1147
        Height = 549
        Cursor = crHandPoint
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object btvDepoEnter: TcxGridDBBandedTableView
          OnDblClick = btvDepoEnterDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Position = fpTop
          DataController.KeyFieldNames = 'row_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1042#1089#1077#1075#1086':'
              Kind = skCount
              Column = btvDepoEnterColumn1
            end
            item
              Format = '#####0'
              Kind = skCount
              Column = btvDepoEnterColumn2
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.IgnoreTimeForFiltering = True
          Filtering.ColumnFilteredItemsList = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = btvDepoEnterColumn1
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
          Styles.Content = DMMain.cxStyle99
          Styles.FilterBox = DMMain.cxStyle60
          Styles.Selection = DMMain.stlSelection
          Styles.Footer = DMMain.stlGroup
          Styles.Group = DMMain.stlGroup
          Styles.GroupFooterSortedSummary = DMMain.stlAttention
          Styles.GroupSortedSummary = DMMain.cxStyle31
          Styles.GroupSummary = DMMain.stlHeader
          Styles.Header = DMMain.stlHeader
          Styles.StyleSheet = DMMain.stlshtBTV
          Styles.BandHeader = DMMain.cxStyle60
          Bands = <
            item
              Caption = #1047#1072#1093#1086#1076' '#1074' '#1076#1077#1087#1086
              Width = 820
            end
            item
              Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
              Width = 665
            end>
          object btvDepoEnterColumn1: TcxGridDBBandedColumn
            Caption = #8470' '#1051#1056#1047
            DataBinding.FieldName = 'row_id'
            HeaderAlignmentHorz = taCenter
            HeaderHint = #8470' '#1051#1056#1047
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn2: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1093#1086#1076#1072
            DataBinding.FieldName = 'date_op'
            HeaderAlignmentHorz = taCenter
            HeaderHint = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1093#1086#1076#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1076#1077#1087#1086
            Width = 170
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn3: TcxGridDBBandedColumn
            Caption = #1057#1090#1072#1090#1091#1089' '#1051#1056#1047
            DataBinding.FieldName = 'status'
            HeaderAlignmentHorz = taCenter
            HeaderHint = #1057#1090#1072#1090#1091#1089' '#1051#1056#1047
            Width = 170
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn4: TcxGridDBBandedColumn
            Caption = #1057#1077#1088#1080#1103
            DataBinding.FieldName = 'ser_loc'
            HeaderAlignmentHorz = taCenter
            Width = 102
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn5: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1058#1055#1045
            DataBinding.FieldName = 'nom_tpe'
            HeaderAlignmentHorz = taCenter
            Width = 109
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn6: TcxGridDBBandedColumn
            Caption = #1057#1077#1082#1094#1080#1103
            DataBinding.FieldName = 'section_name'
            HeaderAlignmentHorz = taCenter
            Width = 147
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn7: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
            DataBinding.FieldName = 'depo_name'
            HeaderAlignmentHorz = taCenter
            Width = 300
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn8: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1099#1093#1086#1076#1072
            DataBinding.FieldName = 'date_next_op'
            HeaderAlignmentHorz = taCenter
            HeaderHint = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1099#1093#1086#1076#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1080#1079' '#1076#1077#1087#1086
            Width = 170
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn9: TcxGridDBBandedColumn
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
            HeaderAlignmentHorz = taCenter
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
            HeaderHint = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103
            Options.ShowCaption = False
            Styles.Content = DMMain.stlBackgroundLight
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn10: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1051#1056#1048
            DataBinding.FieldName = 'sheet_cnt'
            HeaderAlignmentHorz = taCenter
            HeaderHint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1051#1056#1048
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn11: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1080
            DataBinding.FieldName = 'depo_op'
            HeaderAlignmentHorz = taCenter
            HeaderHint = #1044#1077#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1080
            Width = 180
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn12: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103
            DataBinding.FieldName = 'date_hr'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvDepoEnterColumn13: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
            DataBinding.FieldName = 'sost_name'
            HeaderAlignmentHorz = taCenter
            HeaderHint = #1050#1086#1076' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object lvlDepoEnter: TcxGridLevel
          GridView = btvDepoEnter
          Options.TabsForEmptyDetails = False
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1147
        Height = 39
        Align = alTop
        AutoSize = True
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'Panel1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object dxBarDockControl1: TdxBarDockControl
          Left = 2
          Top = 2
          Width = 1143
          Height = 35
          Align = dalTop
          BarManager = bmDepoEnter
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 588
        Width = 1147
        Height = 30
        Align = alBottom
        AutoSize = True
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object dxBarDockControl2: TdxBarDockControl
          Left = 2
          Top = 2
          Width = 1143
          Height = 26
          Align = dalTop
          BarManager = bmDepoEnter
        end
      end
    end
    object tsOther: TcxTabSheet
      Caption = 'tsOther'
      ImageIndex = 1
      object pnlCombo: TPanel
        Left = 40
        Top = 40
        Width = 153
        Height = 31
        BevelOuter = bvNone
        TabOrder = 0
        object cbLocSer: TcxImageComboBox
          Left = 5
          Top = 3
          Hint = #1042#1099#1073#1086#1088' '#1089#1077#1088#1080#1080
          EditValue = '0'
          ParentShowHint = False
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Properties.OnEditValueChanged = cbLocSerPropertiesEditValueChanged
          ShowHint = True
          TabOrder = 0
          Width = 141
        end
      end
    end
  end
  object bmDepoEnter: TdxBarManager
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
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 100
    Top = 344
    DockControlHeights = (
      0
      0
      0
      0)
    object tbButtons: TdxBar
      AllowQuickCustomizing = False
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      Color = clBtnFace
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1192
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          BeginGroup = True
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
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
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
    object bmDepoEnterBar1: TdxBar
      AllowQuickCustomizing = False
      Caption = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103
      CaptionButtons = <>
      Color = clBtnFace
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1192
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
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
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = aRefresh
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1079#1072#1093#1086#1076#1086#1074
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
      ShortCut = 116
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object deDateBegin: TdxBarDateCombo
      Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
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
      Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
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
    object dxBarButton2: TdxBarButton
      Action = aExport
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = pnlCombo
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':'
      Category = 0
      Hint = #1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103':'
      Style = DMMain.stlHeader
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103':'
      Category = 0
      Hint = #1057#1087#1086#1089#1086#1073' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086':'
      Visible = ivAlways
      ImageIndex = 43
    end
    object dxBarStatic3: TdxBarStatic
      Caption = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076
      Category = 0
      Hint = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076
      Visible = ivAlways
      ImageIndex = 46
    end
    object dxBarStatic4: TdxBarStatic
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      Category = 0
      Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      Visible = ivAlways
      ImageIndex = 30
    end
    object dxBarButton3: TdxBarButton
      Action = aNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object ActionList: TActionList
    Images = DMMain.imlSmall
    Left = 99
    Top = 485
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Enabled = False
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aRefreshExecute
    end
    object aDetail: TAction
      Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1088#1086#1073#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080
      ImageIndex = 10
      OnExecute = aDetailExecute
    end
    object aNew: TAction
      Caption = #1053#1086#1074#1099#1081' '#1079#1072#1093#1086#1076
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1093#1086#1076
      ImageIndex = 5
      OnExecute = aNewExecute
    end
    object aExport: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Enabled = False
      ImageIndex = 54
      OnExecute = aExportExecute
    end
    object aLoadLocSer: TAction
      Caption = 'aLoadLocSer'
      ImageIndex = 13
      OnExecute = aLoadLocSerExecute
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Enabled = False
      ImageIndex = 6
      OnExecute = aEditExecute
    end
    object aSetForm: TAction
      OnExecute = aSetFormExecute
    end
  end
  object tmr: TTimer
    OnTimer = tmrTimer
    Left = 100
    Top = 304
  end
  object cdsDepoEnter: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 180
    Top = 304
  end
  object dsDepoEnter: TDataSource
    DataSet = cdsDepoEnter
    Left = 180
    Top = 360
  end
end
