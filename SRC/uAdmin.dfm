object frmAdmin: TfrmAdmin
  Left = 0
  Top = 0
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 561
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  DesignSize = (
    1111
    561)
  PixelsPerInch = 96
  TextHeight = 17
  object pnlMain: TPanel
    Left = 0
    Top = 553
    Width = 1111
    Height = 8
    Align = alBottom
    TabOrder = 0
  end
  object pc: TcxPageControl
    Left = 0
    Top = 27
    Width = 1111
    Height = 526
    Align = alClient
    BiDiMode = bdLeftToRight
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Properties.ActivePage = tbUsers
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    Properties.OwnerDraw = True
    Properties.Style = 9
    Properties.TabSlants.Positions = [spLeft, spRight]
    TabSlants.Positions = [spLeft, spRight]
    ClientRectBottom = 526
    ClientRectRight = 1111
    ClientRectTop = 24
    object tbUsers: TcxTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      ImageIndex = 0
      object grdAdmin: TcxGrid
        Left = 0
        Top = 70
        Width = 1111
        Height = 432
        Cursor = crHandPoint
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.Style = 9
        LookAndFeel.Kind = lfUltraFlat
        object grdAdminBandedTableView1: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
        end
        object grdAdminDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
              Caption = 'gbfh'
            end>
        end
        object grdAdminTableView1: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object btvAdmin: TcxGridDBBandedTableView
          OnDblClick = aEditExecute
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Position = fpTop
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
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
          Styles.Content = DMMain.cxStyle140
          Styles.BandHeader = DMMain.stlCategory
          Bands = <
            item
              Caption = #1051#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              Options.HoldOwnColumnsOnly = True
            end
            item
              Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Options.HoldOwnColumnsOnly = True
              Width = 500
            end
            item
              Caption = #1056#1086#1083#1100
            end>
          object btvAdminColumn8: TcxGridDBBandedColumn
            AlternateCaption = #1058#1072#1073'. '#8470
            Caption = #1058#1072#1073'. '#8470
            DataBinding.FieldName = 'TabNom'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvAdminColumn1: TcxGridDBBandedColumn
            AlternateCaption = #1060#1072#1084#1080#1083#1080#1103
            Caption = #1060#1072#1084#1080#1083#1080#1103
            DataBinding.FieldName = 'LastName'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 160
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvAdminColumn2: TcxGridDBBandedColumn
            AlternateCaption = #1048#1084#1103
            Caption = #1048#1084#1103
            DataBinding.FieldName = 'FirstName'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 160
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvAdminColumn3: TcxGridDBBandedColumn
            AlternateCaption = #1054#1090#1095#1077#1089#1090#1074#1086
            Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            DataBinding.FieldName = 'PatrName'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 160
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvAdminColumn6: TcxGridDBBandedColumn
            AlternateCaption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
            Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
            DataBinding.FieldName = 'FirmName'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvAdminColumn4: TcxGridDBBandedColumn
            AlternateCaption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'DolName'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvAdminColumn10: TcxGridDBBandedColumn
            AlternateCaption = 'E-Mail'
            Caption = 'E-Mail'
            DataBinding.FieldName = 'EMail'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 200
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvAdminColumn11: TcxGridDBBandedColumn
            AlternateCaption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
            Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
            DataBinding.FieldName = 'MPhone'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 180
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvAdminColumn9: TcxGridDBBandedColumn
            AlternateCaption = #1056#1072#1073#1086#1095#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
            Caption = #1056#1072#1073#1086#1095#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
            DataBinding.FieldName = 'WPhone'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 180
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvAdminColumn7: TcxGridDBBandedColumn
            Caption = #1051#1086#1075#1080#1085
            DataBinding.FieldName = 'uLogin'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvAdminColumn12: TcxGridDBBandedColumn
            Caption = #1055#1072#1088#1086#1083#1100
            DataBinding.FieldName = 'uPassword'
            Visible = False
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvAdminColumn13: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'RolName'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 250
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object lvlAdmin: TcxGridLevel
          GridView = btvAdmin
          Options.TabsForEmptyDetails = False
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1111
        Height = 70
        Align = alTop
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 7
          Top = 4
          Width = 929
          Height = 55
          Caption = ' '#1055#1086#1080#1089#1082' '
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object edLastName: TcxTextEdit
            Left = 98
            Top = 20
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnKeyPress = edLastNameKeyPress
            Width = 140
          end
          object edFirstName: TcxTextEdit
            Left = 310
            Top = 20
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            OnKeyPress = edLastNameKeyPress
            Width = 140
          end
          object edPatrName: TcxTextEdit
            Left = 552
            Top = 20
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            OnKeyPress = edLastNameKeyPress
            Width = 140
          end
          object edLogin: TcxTextEdit
            Left = 767
            Top = 20
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            OnKeyPress = edLastNameKeyPress
            Width = 140
          end
          object cxLabel1: TcxLabel
            Left = 19
            Top = 21
            Caption = #1060#1072#1084#1080#1083#1080#1103': '
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel2: TcxLabel
            Left = 263
            Top = 21
            Caption = #1048#1084#1103': '
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel3: TcxLabel
            Left = 710
            Top = 21
            Caption = #1051#1086#1075#1080#1085': '
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel4: TcxLabel
            Left = 468
            Top = 21
            Caption = #1054#1090#1095#1077#1089#1090#1074#1086': '
            ParentFont = False
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
        end
        object btnRefreshUsers: TcxButton
          Left = 942
          Top = 13
          Width = 130
          Height = 45
          Action = aLoadUsers
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.SkinName = 'Caramel'
          OptionsImage.Images = DMMain.iml
          TabOrder = 1
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object tbRole: TcxTabSheet
      Caption = #1056#1086#1083#1080
      ImageIndex = 1
      object gdRole: TcxGrid
        Left = 0
        Top = 60
        Width = 1111
        Height = 442
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object btvRole: TcxGridDBTableView
          OnDblClick = aEditExecute
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Indicator = True
          Styles.Content = DMMain.cxStyle140
          Styles.Header = DMMain.stlCategory
          object btvRoleColumn1: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'name'
            Options.Editing = False
            Width = 500
          end
          object btvRoleColumn2: TcxGridDBColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            DataBinding.FieldName = 'descr'
            Options.Editing = False
            Width = 700
          end
        end
        object lvlRole: TcxGridLevel
          GridView = btvRole
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1111
        Height = 60
        Align = alTop
        TabOrder = 1
        object btnRefreshRoles: TcxButton
          Left = 10
          Top = 12
          Width = 130
          Height = 38
          Action = aLoadRole
          OptionsImage.Images = DMMain.iml
          TabOrder = 0
        end
      end
    end
  end
  object gbProcess: TcxGroupBox
    Left = 400
    Top = 204
    Anchors = []
    Caption = #1047#1072#1075#1088#1091#1079#1082#1072' . . .'
    TabOrder = 2
    Visible = False
    Height = 54
    Width = 377
    object pg: TcxProgressBar
      Left = 3
      Top = 21
      TabOrder = 0
      Width = 371
    end
  end
  object ActionList: TActionList
    Images = DMMain.iml
    Left = 976
    Top = 296
    object aLoadUsers: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aLoadUsersExecute
    end
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = aRefreshExecute
    end
    object aAdd: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100
      OnExecute = aAddExecute
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = aDeleteExecute
    end
    object aExport: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
      OnExecute = aExportExecute
    end
    object aLoadRole: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aLoadRoleExecute
    end
    object aUserDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      OnExecute = aUserDeleteExecute
    end
    object aSetForm: TAction
      Caption = 'aSetForm'
      OnExecute = aSetFormExecute
    end
    object aRoleDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1086#1083#1100
      OnExecute = aRoleDeleteExecute
    end
  end
  object cdsUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 336
  end
  object dsUsers: TDataSource
    DataSet = cdsUsers
    Left = 104
    Top = 384
  end
  object bm: TdxBarManager
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
    ImageOptions.Images = DMMain.iml
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 968
    Top = 152
    DockControlHeights = (
      0
      0
      27
      0)
    object bmAdminBar1: TdxBar
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      Color = clBtnFace
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1093
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExport'
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
      ImageIndex = 5
      PaintStyle = psCaptionGlyph
    end
    object btnEdit: TdxBarButton
      Action = aEdit
      Category = 0
      ImageIndex = 6
      PaintStyle = psCaptionGlyph
    end
    object btnDelete: TdxBarButton
      Action = aDelete
      Category = 0
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
    end
    object btnExport: TdxBarButton
      Action = aExport
      Category = 0
      ImageIndex = 54
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsRole: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 336
  end
  object dsRole: TDataSource
    DataSet = cdsRole
    Left = 232
    Top = 384
  end
end
