object frmWineSide: TfrmWineSide
  Left = 0
  Top = 0
  Caption = #1040#1085#1072#1083#1080#1079': '#1042#1080#1085#1086#1074#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
  ClientHeight = 637
  ClientWidth = 1360
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
    Width = 1360
    Height = 56
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = dalTop
    BarManager = bmWineSide
    SunkenBorder = False
    UseOwnSunkenBorder = True
  end
  object pnlWineSide: TPanel
    Left = 0
    Top = 66
    Width = 1360
    Height = 571
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'l'
    TabOrder = 1
    object tlWineSide: TcxDBTreeList
      Left = 2
      Top = 2
      Width = 1356
      Height = 567
      Align = alClient
      Bands = <
        item
        end>
      DataController.ParentField = 'kod_firm_parent'
      DataController.KeyField = 'kod_firm_child'
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.HotTrack = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = clmn_WineSide
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.ExtPaintStyle = True
      RootValue = -1
      StateImages = DMMain.imlFirmTreeState
      Styles.Content = DMMain.stlContent9
      Styles.Inactive = DMMain.cxStyle117
      Styles.Selection = DMMain.cxStyle117
      Styles.ColumnHeader = DMMain.cxStyle100
      Styles.HotTrack = DMMain.cxStyle107
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 3
      object clmn_WineSide: TcxDBTreeListColumn
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
        Width = 269
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clmn_parent_new: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'kod_firm_parent'
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clmn_child: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'kod_firm_child'
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  object bmWineSide: TdxBarManager
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
    Left = 282
    Top = 166
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
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
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
    object btnAdd: TdxBarLargeButton
      Action = aAddLrg
      Category = 0
      LargeImageIndex = 10
      AutoGrayScale = False
    end
    object btnRefresh: TdxBarLargeButton
      Action = aRefreshLrg
      Category = 0
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 4
    end
    object btnEdit: TdxBarLargeButton
      Action = aEditLrg
      Category = 0
      LargeImageIndex = 11
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 12
      OnClick = aQueryDeleteExecute
      AutoGrayScale = False
    end
  end
  object cdsWineSide: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 272
  end
  object dsWineSide: TDataSource
    DataSet = cdsWineSide
    Left = 280
    Top = 224
  end
  object al: TActionList
    Left = 376
    Top = 168
    object aRefreshLrg: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = aRefreshExecute
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
    object aQueryDelete: TAction
      Caption = 'aQueryDelete'
      OnExecute = aQueryDeleteExecute
    end
  end
end
