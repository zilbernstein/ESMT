object frmDic_Equipment: TfrmDic_Equipment
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 613
  ClientWidth = 1061
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
    Width = 1061
    Height = 56
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = dalTop
    BarManager = bmEqwipment
    SunkenBorder = False
    UseOwnSunkenBorder = True
  end
  object tlEqwipmentTree: TcxDBTreeList
    Left = 0
    Top = 66
    Width = 1061
    Height = 547
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = dsEqwipmentTree
    DataController.ParentField = 'parent_class_id'
    DataController.KeyField = 'class_id'
    DataController.StateIndexField = 'lvl'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.CellHints = True
    OptionsBehavior.HotTrack = True
    OptionsBehavior.IncSearch = True
    OptionsBehavior.IncSearchItem = clmn_EqName
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsView.ColumnAutoWidth = True
    OptionsView.ExtPaintStyle = True
    PopupMenu = pmEqwipmentTree
    RootValue = -1
    StateImages = DMMain.imlFirmTreeState
    Styles.Content = DMMain.stlContent9
    Styles.Inactive = DMMain.cxStyle117
    Styles.Selection = DMMain.cxStyle117
    Styles.ColumnHeader = DMMain.cxStyle100
    Styles.HotTrack = DMMain.cxStyle107
    TabOrder = 1
    object clmn_EqName: TcxDBTreeListColumn
      Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      DataBinding.FieldName = 'class_name'
      Width = 659
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmn_EqSD: TcxDBTreeListColumn
      Caption.Text = #1050#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077
      DataBinding.FieldName = 'mnemo'
      Width = 400
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmn_EqId: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'class_id'
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object bmEqwipment: TdxBarManager
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
    Left = 98
    Top = 174
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
      Action = aRefreshLrg
      Category = 0
      ImageIndex = 4
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = aAddLrg
      Category = 0
      LargeImageIndex = 10
      AutoGrayScale = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = aRefreshLrg
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = aEditLrg
      Category = 0
      LargeImageIndex = 11
      AutoGrayScale = False
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = aDeleteLrg
      Category = 0
      LargeImageIndex = 12
      AutoGrayScale = False
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object ActionList1: TActionList
    Left = 24
    Top = 384
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
    end
    object aAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
    end
    object aEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 6
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
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
  end
  object cdsEqwipmentTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 304
  end
  object dsEqwipmentTree: TDataSource
    DataSet = cdsEqwipmentTree
    Left = 464
    Top = 256
  end
  object pmEqwipmentTree: TdxBarPopupMenu
    BarManager = bmEqwipment
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
    Left = 88
    Top = 384
    object aRefreshLrg: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = aRefreshLrgExecute
    end
    object aAddLrg: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 1
      OnExecute = aAddLrgExecute
    end
    object aEditLrg: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 2
      OnExecute = aEditLrgExecute
    end
    object aDeleteLrg: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 3
      OnExecute = aDeleteLrgExecute
    end
  end
end
