object frmEditKiparPrognos: TfrmEditKiparPrognos
  Left = 0
  Top = 0
  Caption = #1050#1080#1087#1072#1088#1080#1089' / '#1055#1088#1086#1075#1085#1086#1079
  ClientHeight = 754
  ClientWidth = 1096
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pcCommon: TcxPageControl
    Left = 0
    Top = 0
    Width = 1096
    Height = 692
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsRSh_Common_New
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    Properties.OwnerDraw = True
    Properties.Style = 9
    Properties.TabSlants.Positions = [spLeft, spRight]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabSlants.Positions = [spLeft, spRight]
    ClientRectBottom = 692
    ClientRectRight = 1096
    ClientRectTop = 23
    object tsRSh_Common_New: TcxTabSheet
      Tag = 16
      Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      object Panel27: TPanel
        Left = 0
        Top = 0
        Width = 1096
        Height = 669
        Align = alClient
        AutoSize = True
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object vgCommon: TcxVerticalGrid
          Left = 2
          Top = 2
          Width = 1092
          Height = 463
          BorderStyle = cxcbsNone
          Align = alTop
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = []
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          OptionsView.CellAutoHeight = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ShowEditButtons = ecsbAlways
          OptionsView.GridLineColor = 11842740
          OptionsView.RowHeaderWidth = 324
          OptionsBehavior.AlwaysShowEditor = False
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.GoToNextCellOnTab = True
          ParentFont = False
          Styles.Content = DMMain.stlContent
          Styles.Category = DMMain.stlCategory
          Styles.Header = DMMain.stlBandHeader
          TabOrder = 0
          Version = 1
          object vgCommonCategoryRowSrcDt: TcxCategoryRow
            Properties.Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object vgSerLocom: TcxEditorRow
            Properties.Caption = #1057#1077#1088#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object vgNumLocom: TcxEditorRow
            Properties.Caption = #1053#1086#1084#1077#1088' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object vgSectLocom: TcxEditorRow
            Properties.Caption = #1057#1077#1082#1094#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object vgFil: TcxEditorRow
            Properties.Caption = #1060#1080#1083#1080#1072#1083
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 4
            ParentID = -1
            Index = 4
            Version = 1
          end
          object vgSLD: TcxEditorRow
            Properties.Caption = #1057#1051#1044
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 5
            ParentID = -1
            Index = 5
            Version = 1
          end
          object vgBsCmpnSO: TcxEditorRow
            Properties.Caption = #1041#1072#1079#1086#1074#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1057#1054
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 6
            ParentID = -1
            Index = 6
            Version = 1
          end
          object vgFIOOprtrPstDgnstcs: TcxEditorRow
            Properties.Caption = #1060#1048#1054' '#1086#1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1089#1090#1072' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1080
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 7
            ParentID = -1
            Index = 7
            Version = 1
          end
          object vgTpScr: TcxEditorRow
            Properties.Caption = #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 8
            ParentID = -1
            Index = 8
            Version = 1
          end
          object vgRowNull: TcxEditorRow
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 9
            ParentID = -1
            Index = 9
            Version = 1
          end
          object vgCommonCategoryRowIncdnt: TcxCategoryRow
            Properties.Caption = #1048#1085#1094#1080#1076#1077#1085#1090
            ID = 10
            ParentID = -1
            Index = 10
            Version = 1
          end
          object vgDtTmIncdnt: TcxEditorRow
            Properties.Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 11
            ParentID = -1
            Index = 11
            Version = 1
          end
          object vgDtTmDgnstcsMsg: TcxEditorRow
            Properties.Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 12
            ParentID = -1
            Index = 12
            Version = 1
          end
          object vgFctIncdnt: TcxEditorRow
            Properties.Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 13
            ParentID = -1
            Index = 13
            Version = 1
          end
          object vgMessg: TcxEditorRow
            Properties.Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 14
            ParentID = -1
            Index = 14
            Version = 1
          end
          object vgDeptEmrgnc: TcxEditorRow
            Properties.Caption = #1044#1077#1087#1086' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 15
            ParentID = -1
            Index = 15
            Version = 1
          end
          object vgPlcEmrgn: TcxEditorRow
            Properties.Caption = #1052#1077#1089#1090#1086' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 16
            ParentID = -1
            Index = 16
            Version = 1
          end
          object vgCriticl: TcxEditorRow
            Properties.Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 17
            ParentID = -1
            Index = 17
            Version = 1
          end
          object vgCatgr: TcxEditorRow
            Properties.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 18
            ParentID = -1
            Index = 18
            Version = 1
          end
          object vgNode: TcxEditorRow
            Properties.Caption = #1044#1080#1072#1075#1085#1086#1089#1090#1080#1088#1091#1077#1084#1099#1081' '#1091#1079#1077#1083
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 19
            ParentID = -1
            Index = 19
            Version = 1
          end
        end
        object grdKiparPrognos: TcxGrid
          Left = 2
          Top = 504
          Width = 1092
          Height = 163
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          object btvKiparPronos: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.KeyFieldNames = 'attach_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Content = stlContent
            Styles.Footer = stlGroup
            Styles.Group = stlGroup
            Styles.GroupSummary = stlHeader
            Styles.Header = stlHeader
            Styles.StyleSheet = stlshtBTV
            Bands = <
              item
                Caption = ' '#1055#1088#1080#1083#1086#1078#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
                HeaderAlignmentHorz = taLeftJustify
                Styles.Header = DMMain.stlGroup11
              end>
            object clmnDtTm: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
              DataBinding.FieldName = 'date_change'
              HeaderAlignmentHorz = taCenter
              Width = 176
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
          object lvlKiparPrognos: TcxGridLevel
            GridView = btvKiparPronos
          end
        end
        object Panel26: TPanel
          Left = 2
          Top = 465
          Width = 1092
          Height = 39
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object btnAddFile: TcxButton
            Left = 7
            Top = 2
            Width = 90
            Height = 34
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            OptionsImage.ImageIndex = 5
            OptionsImage.Images = DMMain.iml
            TabOrder = 0
            OnClick = aAddFileExecute
          end
          object btnDeleteFile: TcxButton
            Left = 103
            Top = 2
            Width = 90
            Height = 34
            Action = aDeleteFile
            Caption = #1059#1076#1072#1083#1080#1090#1100
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            OptionsImage.ImageIndex = 9
            OptionsImage.Images = DMMain.iml
            TabOrder = 1
          end
        end
      end
    end
    object tsRSh_Result: TcxTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1080
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1096
        Height = 669
        Align = alClient
        AutoSize = True
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object grdPrognoz: TcxGrid
          Left = 2
          Top = 2
          Width = 1092
          Height = 665
          Cursor = crHandPoint
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.SkinName = 'Caramel'
          RootLevelOptions.TabsForEmptyDetails = False
          object btvPrognoz: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Position = fpTop
            DataController.KeyFieldNames = 'isn'
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
            Styles.Content = DMMain.stlHeader8
            Styles.FilterBox = stlBandHeader
            Styles.Selection = DMMain.stlSelection
            Styles.GroupFooterSortedSummary = stlAttention
            Styles.GroupSummary = stlHeader
            Styles.Header = DMMain.stlHeader9
            Styles.StyleSheet = stlshtBTV
            Bands = <
              item
              end>
            object btvPrognozColumn1: TcxGridDBBandedColumn
              Caption = #8470' '#1051#1056
              DataBinding.FieldName = 'isn'
              HeaderAlignmentHorz = taCenter
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvPrognozColumn2: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
              DataBinding.FieldName = 'incidenttime'
              HeaderAlignmentHorz = taCenter
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvPrognozColumn3: TcxGridDBBandedColumn
              Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
              DataBinding.FieldName = 'fullname'
              HeaderAlignmentHorz = taCenter
              Width = 250
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvPrognozColumn4: TcxGridDBBandedColumn
              Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077
              DataBinding.FieldName = 'incidentcontent'
              HeaderAlignmentHorz = taCenter
              Width = 250
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object btvPrognozColumn5: TcxGridDBBandedColumn
              Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'critlvl'
              HeaderAlignmentHorz = taCenter
              Width = 160
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object btvPrognozColumn6: TcxGridDBBandedColumn
              Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
              DataBinding.FieldName = 'cat'
              HeaderAlignmentHorz = taCenter
              Width = 160
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object btvPrognozColumn7: TcxGridDBBandedColumn
              Caption = #1059#1079#1077#1083
              DataBinding.FieldName = 'node'
              HeaderAlignmentHorz = taCenter
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object lvlPrognoz: TcxGridLevel
            GridView = btvPrognoz
          end
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 692
    Width = 1096
    Height = 39
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 1
    object btnClose: TcxButton
      Left = 934
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = DMMain.iml
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = aCloseExecute
    end
    object btnExcel: TcxButton
      Left = 774
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Cancel = True
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 54
      OptionsImage.Images = DMMain.iml
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = aExpExcelExecute
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 731
    Width = 1096
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
  object stlrpEditing: TcxStyleRepository
    Left = 852
    Top = 352
    PixelsPerInch = 96
    object stlBackground: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object stlGroup: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 6583436
    end
    object stlContent: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlHeader: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Font.Style = []
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
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlGreenFont: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 21248
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
      AssignedValues = [svTextColor]
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
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stlRowDisabled: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 8224125
    end
    object stlNavy: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clNavy
    end
    object stlDeviationOver: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object stlRedBoldFont: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object stlSelection: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSkyBlue
      TextColor = clNavy
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stlNotEditable9: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
    object stlNavyBold11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stlBackGroundLightBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16708066
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlBackGroundLight: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlshtVG: TcxVerticalGridStyleSheet
      Styles.Content = stlContent
      Styles.Category = stlCategory
      Styles.Header = stlHeader
      BuiltIn = True
    end
    object stlshtBTV: TcxGridBandedTableViewStyleSheet
      Styles.Content = stlContent
      Styles.Footer = stlGroup
      Styles.Group = stlGroup
      Styles.Header = stlHeader
      Styles.BandHeader = stlBandHeader
      BuiltIn = True
    end
    object stlshtTL: TcxTreeListStyleSheet
      Styles.Content = stlContent
      Styles.Inactive = stlSelection
      Styles.Selection = stlSelection
      Styles.HotTrack = stlHotTrack
      BuiltIn = True
    end
  end
  object ActionList: TActionList
    Left = 584
    Top = 223
    object aClose: TAction
      OnExecute = aCloseExecute
    end
    object aAddFile: TAction
      OnExecute = aAddFileExecute
    end
    object aDeleteFile: TAction
      Enabled = False
      OnExecute = aDeleteFileExecute
    end
    object aRefresh: TAction
      OnExecute = aRefreshExecute
    end
    object aLoadAttach: TAction
      Caption = 'aLoadAttach'
      OnExecute = aLoadAttachExecute
    end
    object aAttach_Show: TAction
      Caption = 'aAttach_Show'
      OnExecute = aAttach_ShowExecute
    end
    object aLoad_Prognoz: TAction
      Caption = 'aLoad_Prognoz'
      OnExecute = aLoad_PrognozExecute
    end
    object aExpExcel: TAction
      Caption = 'aExpExcel'
      OnExecute = aExpExcelExecute
    end
  end
  object cldskipProgDocum: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 279
  end
  object dskipProgDocum: TDataSource
    DataSet = cldskipProgDocum
    Left = 504
    Top = 223
  end
  object cdsPrognoz: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 792
    Top = 135
  end
  object dsPrognoz: TDataSource
    DataSet = cdsPrognoz
    Left = 792
    Top = 183
  end
  object tmr: TTimer
    Interval = 500
    Left = 504
    Top = 343
  end
end
