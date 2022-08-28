object frm_Reason: Tfrm_Reason
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1087#1088#1080#1095#1080#1085#1072#1084' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
  ClientHeight = 640
  ClientWidth = 1049
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
    Width = 1049
    Height = 56
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = dalTop
    BarManager = bm_Reason
    SunkenBorder = False
    UseOwnSunkenBorder = True
  end
  object pnlReasonTree: TPanel
    Left = 0
    Top = 66
    Width = 1049
    Height = 574
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'l'
    TabOrder = 5
    object tlReasonTree: TcxDBTreeList
      Left = 2
      Top = 2
      Width = 1045
      Height = 570
      Align = alClient
      Bands = <
        item
        end>
      DataController.ParentField = 'parent_reason_id'
      DataController.KeyField = 'reason_id'
      DataController.StateIndexField = 'state_index'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.HotTrack = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = clmn_NSI_ReasonName
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.ExtPaintStyle = True
      ParentFont = False
      PopupMenu = pm_reason
      RootValue = -1
      StateImages = DMMain.imlFirmTreeState
      Styles.Content = DMMain.stlContent9
      Styles.Inactive = DMMain.cxStyle117
      Styles.Selection = DMMain.cxStyle117
      Styles.HotTrack = DMMain.cxStyle107
      TabOrder = 0
      object clmn_NSI_ReasonName: TcxDBTreeListColumn
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099
        DataBinding.FieldName = 'reason_name'
        Width = 250
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clmn_NSI_ReasonMNEMO: TcxDBTreeListColumn
        Caption.Text = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'mnemo'
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clmn_NSI_ReasonDescr: TcxDBTreeListColumn
        Caption.Text = #1054#1087#1080#1089#1072#1085#1080#1077
        DataBinding.FieldName = 'descr'
        Width = 300
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  object bm_Reason: TdxBarManager
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
    Left = 298
    Top = 126
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
      Action = aQueryDelete
      Category = 0
      LargeImageIndex = 12
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 9
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
    Left = 384
    Top = 128
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aRefreshExecute
    end
    object aAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
    end
    object aEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 6
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
      OnExecute = aDeleteExecute
    end
    object aFirmTreeExpand: TAction
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      ImageIndex = 65
      OnExecute = aFirmTreeExpandExecute
    end
    object aFirmTreeCollapse: TAction
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      ImageIndex = 66
      OnExecute = aFirmTreeCollapseExecute
    end
    object aLoad_Reason: TAction
      Caption = 'aLoad_Reason'
    end
    object aSelect_for_Delete: TAction
      Caption = 'aSelect_for_Delete'
    end
    object aQueryDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
      OnExecute = aQueryDeleteExecute
    end
  end
  object cdsReasonTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 272
  end
  object dsReasonTree: TDataSource
    DataSet = cdsReasonTree
    Left = 280
    Top = 224
  end
  object pm_reason: TdxBarPopupMenu
    BarManager = bm_Reason
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
    Left = 224
    Top = 128
  end
  object ActionList2: TActionList
    Images = DMMain.imlMain32
    Left = 456
    Top = 128
    object aRefreshLrg: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = aRefreshExecute
    end
    object aAddLrg: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 10
      OnExecute = aAddLrgExecute
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
