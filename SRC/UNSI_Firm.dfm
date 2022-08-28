object frmNSI_Firm: TfrmNSI_Firm
  Left = 0
  Top = 0
  Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
  ClientHeight = 708
  ClientWidth = 900
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
    Width = 900
    Height = 56
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = dalTop
    BarManager = bmNSI_Firm
    SunkenBorder = False
    UseOwnSunkenBorder = True
  end
  object tlFirmTree: TcxDBTreeList
    Left = 0
    Top = 66
    Width = 900
    Height = 642
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
    PopupMenu = pmFirmTree
    RootValue = -1
    StateImages = DMMain.imlFirmTreeState
    Styles.Content = DMMain.stlContent9
    Styles.Inactive = DMMain.cxStyle22
    Styles.Selection = DMMain.cxStyle22
    Styles.ColumnHeader = DMMain.cxStyle38
    Styles.HotTrack = DMMain.cxStyle12
    TabOrder = 5
    object clmn_FirmName: TcxDBTreeListColumn
      Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DataBinding.FieldName = 'firm_name_full'
      Width = 269
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmn_FirmTypeMnemo: TcxDBTreeListColumn
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.Alignment.Horz = taLeftJustify
      Caption.Text = #1058#1080#1087
      DataBinding.FieldName = 'firm_type_mnemo'
      Width = 74
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmn_FirmType: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'kod_firm_type'
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object tlFirmTreecxDBTreeListColumn1: TcxDBTreeListColumn
      Caption.Text = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
      DataBinding.FieldName = 'depot_name'
      Width = 431
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmn_KodFirm: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'kod_firm'
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object bmNSI_Firm: TdxBarManager
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
    ImageOptions.Images = DMMain.imlSmall
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 18
    Top = 230
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
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
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
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 1163
      FloatTop = 8
      FloatClientWidth = 194
      FloatClientHeight = 143
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
      Visible = False
      WholeRow = True
    end
    object dxBarButton2: TdxBarButton
      Action = aFirmTreeExpand
      Category = 0
      ImageIndex = 66
    end
    object dxBarButton3: TdxBarButton
      Action = aFirmTreeCollapse
      Category = 0
      ImageIndex = 67
    end
    object dxBarButton6: TdxBarButton
      Action = aRefresh
      Category = 0
      ImageIndex = 4
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = aAddLrg
      Category = 0
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 5
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = aRefreshLrg
      Category = 0
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 4
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = aEditLrg
      Category = 0
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 6
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = aDeleteLrg
      Category = 0
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 7
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object ActionList1: TActionList
    Images = DMMain.imlSmall
    Left = 24
    Top = 384
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = aRefreshExecute
    end
    object aAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = aAddExecute
    end
    object aEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = aDeleteExecute
    end
    object aFirmTreeExpand: TAction
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      ImageIndex = 67
      OnExecute = aFirmTreeExpandExecute
    end
    object aFirmTreeCollapse: TAction
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      ImageIndex = 66
      OnExecute = aFirmTreeCollapseExecute
    end
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 480
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 24
    Top = 432
  end
  object pmFirmTree: TdxBarPopupMenu
    BarManager = bmNSI_Firm
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = True
    Left = 16
    Top = 176
  end
  object ActionList2: TActionList
    Images = DMMain.imlMain32
    Left = 88
    Top = 384
    object aRefreshLrg: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = aRefreshExecute
    end
    object aAddLrg: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 10
      OnExecute = aAddExecute
    end
    object aEditLrg: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 11
      OnExecute = aEditExecute
    end
    object aDeleteLrg: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 12
      OnExecute = aDeleteExecute
    end
  end
end
