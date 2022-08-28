object frmEdit_Department_TCHR: TfrmEdit_Department_TCHR
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
  ClientHeight = 554
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object pc: TcxPageControl
    Left = 0
    Top = 0
    Width = 608
    Height = 554
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsEdit
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 547
    ClientRectLeft = 4
    ClientRectRight = 601
    ClientRectTop = 30
    object tsEdit: TcxTabSheet
      Caption = 'tsEdit'
      ImageIndex = 0
      object vg: TcxVerticalGrid
        Left = 0
        Top = 0
        Width = 597
        Height = 478
        BorderStyle = cxcbsNone
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        Images = DMMain.iml
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        OptionsView.CellAutoHeight = True
        OptionsView.CellEndEllipsis = True
        OptionsView.ShowEditButtons = ecsbAlways
        OptionsView.GridLineColor = 11842740
        OptionsView.RowHeaderWidth = 246
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.GoToNextCellOnTab = True
        ParentFont = False
        Styles.Content = DMMain.cxStyle140
        Styles.StyleSheet = DMMain.stlshtVG
        Styles.Category = DMMain.cxStyle144
        Styles.Header = DMMain.cxStyle141
        TabOrder = 0
        Version = 1
        object rwFirmName: TcxEditorRow
          Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object rwMnemo: TcxEditorRow
          Properties.Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object rwFirmType: TcxEditorRow
          Properties.Caption = #1058#1080#1087' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = '0'
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object rwRoad: TcxEditorRow
          Properties.Caption = #1044#1086#1088#1086#1075#1072
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.ClearKey = 46
          Properties.EditProperties.DropDownRows = 17
          Properties.EditProperties.Items = <>
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = '0'
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object rwFirmTree: TcxEditorRow
          Properties.Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
          Properties.EditProperties.PopupControl = pnlFirmTree
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object vgCategoryRow1: TcxCategoryRow
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object rwTCHR: TcxEditorRow
          Properties.Caption = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056' ('#1055#1058#1054#1051', '#1058#1063#1062#1056', '#1058#1063#1055#1059')'
          Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.EditProperties.DropDownRows = 25
          Properties.EditProperties.KeyFieldNames = 'pred_id'
          Properties.EditProperties.ListColumns = <
            item
              FieldName = 'firm_name'
            end>
          Properties.EditProperties.ListOptions.ShowHeader = False
          Properties.EditProperties.ListSource = dsTCHR
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = '0'
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 478
        Width = 597
        Height = 39
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object cxButton1: TcxButton
          Left = 273
          Top = 2
          Width = 161
          Height = 35
          Align = alRight
          Action = aSave
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
        end
        object cxButton2: TcxButton
          Left = 434
          Top = 2
          Width = 161
          Height = 35
          Align = alRight
          Action = aCancel
          Cancel = True
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      object pnlFirmTree: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 473
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object tlFirmTree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 421
          Height = 446
          BorderStyle = cxcbsNone
          Align = alClient
          Bands = <
            item
            end>
          DataController.ParentField = 'kod_firm_parent'
          DataController.KeyField = 'kod_firm'
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
          OptionsView.GridLines = tlglVert
          OptionsView.Headers = False
          RootValue = -1
          StateImages = DMMain.imlFirmTreeState
          Styles.Content = DMMain.cxStyle140
          Styles.Inactive = DMMain.cxStyle146
          Styles.Selection = DMMain.cxStyle146
          Styles.StyleSheet = DMMain.stlshtTL
          Styles.HotTrack = DMMain.cxStyle143
          TabOrder = 0
          OnDblClick = aSelect_FirmTreeExecute
          OnKeyPress = tlFirmTreeKeyPress
          object clmn_FirmName: TcxDBTreeListColumn
            DataBinding.FieldName = 'firm_name'
            Width = 340
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object clmn_FirmTypeMnemo: TcxDBTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            DataBinding.FieldName = 'firm_type_mnemo'
            Width = 81
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object clmn_KodFirm: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'kod_firm'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object dxStatusBar4: TdxStatusBar
          Left = 2
          Top = 448
          Width = 421
          Height = 23
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              Text = #1042#1099#1073#1086#1088' '#1089#1090#1088#1086#1082#1080' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082' '#1084#1099#1096#1080' '#1080#1083#1080' '#1085#1072#1078#1072#1090#1080#1077' Enter'
              Width = 400
            end>
          PaintStyle = stpsUseLookAndFeel
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
    end
    object tsProgress: TcxTabSheet
      Caption = 'tsProgress'
      ImageIndex = 2
      DesignSize = (
        597
        517)
      object gbLoading: TcxGroupBox
        Left = 150
        Top = 235
        Anchors = []
        Caption = #1047#1072#1075#1088#1091#1079#1082#1072'...'
        PanelStyle.OfficeBackgroundKind = pobkStyleColor
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 0
        Height = 49
        Width = 297
        object pb: TcxProgressBar
          Left = 3
          Top = 17
          Align = alBottom
          Properties.BarStyle = cxbsGradient
          Properties.BeginColor = 16744703
          Properties.Max = 4.000000000000000000
          Properties.OverloadValue = 4.000000000000000000
          Properties.PeakValue = 4.000000000000000000
          Properties.ShowTextStyle = cxtsText
          Properties.SolidTextColor = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
          ExplicitTop = 18
          Width = 291
        end
      end
    end
  end
  object tmr: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrTimer
    Left = 16
    Top = 456
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 16
    Top = 264
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 312
  end
  object ActionList1: TActionList
    Images = DMMain.iml
    Left = 240
    Top = 336
    object aSelect_FirmTree: TAction
      Caption = 'aSelect_FirmTree'
      ImageIndex = 0
      OnExecute = aSelect_FirmTreeExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aLoadFirmType: TAction
      Caption = 'aLoadFirmType'
      ImageIndex = 13
      OnExecute = aLoadFirmTypeExecute
    end
    object aLoadRoad: TAction
      Caption = 'aLoadRoad'
      ImageIndex = 13
      OnExecute = aLoadRoadExecute
    end
    object aLoadTCHR: TAction
      Caption = 'aLoadTCHR'
      ImageIndex = 13
      OnExecute = aLoadTCHRExecute
    end
    object aLoadFirmTree: TAction
      Caption = 'aLoadFirmTree'
      ImageIndex = 13
      OnExecute = aLoadFirmTreeExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 56
      ShortCut = 16467
      OnExecute = aSaveExecute
    end
  end
  object dsTCHR: TDataSource
    DataSet = cdsTCHR
    Left = 80
    Top = 256
  end
  object cdsTCHR: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 304
  end
end
