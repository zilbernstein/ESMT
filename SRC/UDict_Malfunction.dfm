object frmDict_Malfunction: TfrmDict_Malfunction
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1080#1087' '#1088#1072#1073#1086#1090#1099
  ClientHeight = 404
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    AlignWithMargins = True
    Left = 0
    Top = 10
    Width = 942
    Height = 56
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = dalTop
    BarManager = bm_Dict_Malf
    SunkenBorder = False
    UseOwnSunkenBorder = True
  end
  object pnlReasonTree: TPanel
    Left = 0
    Top = 66
    Width = 942
    Height = 338
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'l'
    TabOrder = 1
    object grdMalfunction: TcxGrid
      Left = 2
      Top = 2
      Width = 938
      Height = 334
      Align = alClient
      TabOrder = 0
      object btvMalfunction: TcxGridDBTableView
        OnDblClick = aEditExecute
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsDict_Malf
        DataController.KeyFieldNames = 'm_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        Styles.Background = DMMain.cxStyle101
        Styles.Content = DMMain.cxStyle99
        Styles.Selection = DMMain.stlSelection
        Styles.Footer = DMMain.stlGroup
        Styles.Group = DMMain.stlGroup
        Styles.Header = DMMain.cxStyle60
        object btvMalfunctionColumn1: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'm_type_descr'
          HeaderAlignmentHorz = taCenter
          Width = 205
        end
        object btvMalfunctionColumn2: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          DataBinding.FieldName = 'm_descr'
          HeaderAlignmentHorz = taCenter
          Width = 705
        end
      end
      object lvlMalfunction: TcxGridLevel
        GridView = btvMalfunction
      end
    end
  end
  object bm_Dict_Malf: TdxBarManager
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
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 458
    Top = 6
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
    object dxBarButton2: TdxBarButton
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      Category = 0
      Visible = ivAlways
      ImageIndex = 65
    end
    object dxBarButton3: TdxBarButton
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      Category = 0
      Visible = ivAlways
      ImageIndex = 66
    end
    object dxBarButton6: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
    end
    object btnAdd: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 10
      OnClick = aAddExecute
      AutoGrayScale = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 0
      OnClick = aRefreshExecute
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 11
      OnClick = aEditExecute
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 12
      OnClick = aDeleteExecute
      AutoGrayScale = False
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object cdsDict_Malf: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 8
  end
  object dsDict_Malf: TDataSource
    DataSet = cdsDict_Malf
    Left = 536
    Top = 8
  end
  object ActionList1: TActionList
    Left = 816
    Top = 10
    object aAdd: TAction
      Caption = 'aAdd'
      OnExecute = aAddExecute
    end
    object aEdit: TAction
      Caption = 'aEdit'
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = 'aDelete'
      OnExecute = aDeleteExecute
    end
    object aRefresh: TAction
      Caption = 'aRefresh'
      OnExecute = aRefreshExecute
    end
  end
end
