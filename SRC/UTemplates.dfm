object frmTemplates: TfrmTemplates
  Left = 0
  Top = 0
  Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088' '#1096#1072#1073#1083#1086#1085#1086#1074
  ClientHeight = 557
  ClientWidth = 1128
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
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1128
    Height = 56
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = dalTop
    BarManager = bmTemplate
    SunkenBorder = False
    UseOwnSunkenBorder = True
  end
  object grdUserTemplate: TcxGrid
    Left = 0
    Top = 56
    Width = 1128
    Height = 501
    Align = alClient
    TabOrder = 5
    object btvUserTemplate: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = btvUserTemplateFocusedRecordChanged
      DataController.KeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.IgnoreTimeForFiltering = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = clBtnShadow
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaderEndEllipsis = True
      Styles.Content = DMMain.cxStyle58
      Styles.Footer = DMMain.cxStyle57
      Styles.Group = DMMain.cxStyle57
      Styles.GroupSummary = DMMain.cxStyle59
      Styles.Header = DMMain.cxStyle59
      Styles.BandHeader = DMMain.cxStyle60
      Bands = <
        item
          Caption = #1064#1072#1073#1083#1086#1085#1099
        end>
      object clmnTemplateName: TcxGridDBBandedColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1096#1072#1073#1083#1086#1085#1072
        DataBinding.FieldName = 'name'
        HeaderAlignmentHorz = taCenter
        Width = 389
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnDateChange: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        DataBinding.FieldName = 'date_change'
        HeaderAlignmentHorz = taCenter
        Width = 148
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object clmnTemplate: TcxGridDBBandedColumn
        Caption = #1064#1072#1073#1083#1086#1085
        DataBinding.FieldName = 'template_c'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object clmnState: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'state_name'
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Options.SortByDisplayText = isbtOff
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object clmnType: TcxGridDBBandedColumn
        Caption = #1056#1072#1079#1076#1077#1083
        DataBinding.FieldName = 'type_name'
        HeaderAlignmentHorz = taCenter
        Width = 209
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvUserTemplateColumn1: TcxGridDBBandedColumn
        Caption = #1060#1048#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'create_fio'
        HeaderAlignmentHorz = taCenter
        Width = 363
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object lvlUserTemplate: TcxGridLevel
      GridView = btvUserTemplate
    end
  end
  object bmTemplate: TdxBarManager
    AllowReset = False
    AutoDockColor = False
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
    DockColor = clBtnFace
    ImageOptions.Images = DMMain.iml
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 32
    Top = 144
    DockControlHeights = (
      0
      0
      0
      0)
    object tbButtons: TdxBar
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
          ItemName = 'dxBarLargeButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Action = aRefreshTplList
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = aAddTpl
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = aEditTpl
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = aDeleteTpl
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = aPublish
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1085#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1077
      LargeImageIndex = 76
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 9
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = aCancelPublish
      Caption = #1054#1090#1084#1077#1085#1072
      Category = 0
      Hint = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103
      LargeImageIndex = 77
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 10
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = aPublishAdm
      Category = 0
      LargeImageIndex = 73
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 6
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = aCancelAdm
      Category = 0
      LargeImageIndex = 74
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 7
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = aApplyTpl
      Category = 0
      LargeImageIndex = 72
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 5
    end
  end
  object ActionList2: TActionList
    Images = DMMain.imlMain32
    Left = 104
    Top = 328
    object aRefreshTplList: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = aRefreshTplListExecute
    end
    object aAddTpl: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 10
      Visible = False
      OnExecute = aAddTplExecute
    end
    object aEditTpl: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 11
      OnExecute = aEditTplExecute
    end
    object aDeleteTpl: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 12
      OnExecute = aDeleteTplExecute
    end
    object aPublish: TAction
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1085#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1077
      OnExecute = aPublishExecute
    end
    object aCancelPublish: TAction
      Caption = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103
      OnExecute = aCancelPublishExecute
    end
    object aSetAction: TAction
      Caption = 'aSetAction'
      OnExecute = aSetActionExecute
    end
    object aChangeStatus: TAction
      Caption = 'aChangeStatus'
    end
    object aApplyTpl: TAction
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      OnExecute = aApplyTplExecute
    end
    object aPublishAdm: TAction
      Caption = #1054#1087#1091#1073#1083#1080#1082#1086#1074#1072#1090#1100
      Hint = #1054#1087#1091#1073#1083#1080#1082#1086#1074#1072#1090#1100
      OnExecute = aPublishAdmExecute
    end
    object aCancelAdm: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080
      OnExecute = aCancelAdmExecute
    end
  end
  object tmr: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrTimer
    Left = 104
    Top = 384
  end
  object cdsTemplateList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 489
  end
  object dsTemplateList: TDataSource
    DataSet = cdsTemplateList
    Left = 664
    Top = 489
  end
end
