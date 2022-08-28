object frm_Edit_Reason: Tfrm_Edit_Reason
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
  ClientHeight = 282
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pc: TcxPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 282
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsEdit
    Properties.CustomButtons.Buttons = <>
    ExplicitHeight = 341
    ClientRectBottom = 275
    ClientRectLeft = 4
    ClientRectRight = 722
    ClientRectTop = 27
    object tsEdit: TcxTabSheet
      Caption = 'tsEdit'
      ImageIndex = 0
      ExplicitHeight = 307
      object vg: TcxVerticalGrid
        Left = 0
        Top = 0
        Width = 718
        Height = 209
        BorderStyle = cxcbsNone
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        Images = DMMain.imlSmall
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
        Styles.Category = DMMain.cxStyle144
        Styles.Header = DMMain.cxStyle141
        TabOrder = 0
        ExplicitHeight = 266
        Version = 1
        object rwNameReason: TcxEditorRow
          Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1080#1095#1080#1085#1099'/'#1075#1088#1091#1087#1087#1099
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
          Properties.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
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
        object rwDescr: TcxEditorRow
          Height = 50
          Properties.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object rwReasonParentTree: TcxEditorRow
          Properties.Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1072#1103' '#1087#1088#1080#1095#1080#1085#1072
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
          Properties.EditProperties.PopupControl = pnlFirmTree
          Properties.EditProperties.OnChange = aLoadReasonTreeExecute
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 209
        Width = 718
        Height = 39
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        ExplicitTop = 210
        object btnSave: TcxButton
          Left = 396
          Top = 2
          Width = 160
          Height = 35
          Align = alRight
          Action = aSave
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 456
          ExplicitHeight = 37
        end
        object btnCancel: TcxButton
          Left = 556
          Top = 2
          Width = 160
          Height = 35
          Align = alRight
          Action = aCancel
          Cancel = True
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 586
          ExplicitHeight = 37
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitHeight = 307
      object pnlFirmTree: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 473
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object tlReason_Tree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 421
          Height = 446
          BorderStyle = cxcbsNone
          Align = alClient
          Bands = <
            item
            end>
          DataController.ParentField = 'parent_reason_id'
          DataController.KeyField = 'reason_id'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Navigator.Buttons.CustomButtons = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.HotTrack = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = clmnReasonName
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExtPaintStyle = True
          OptionsView.GridLines = tlglVert
          OptionsView.Headers = False
          RootValue = -1
          StateImages = DMMain.imlFirmTreeState
          TabOrder = 0
          OnDblClick = aSelect_ReasonTreeExecute
          OnKeyPress = tlReason_TreeKeyPress
          object clmnReasonName: TcxDBTreeListColumn
            DataBinding.FieldName = 'reason_name'
            Width = 340
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object clmnParentReasonID: TcxDBTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Visible = False
            DataBinding.FieldName = 'parent_reason_id'
            Width = 81
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object clmnReasonID: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'reason_id'
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
      ExplicitHeight = 249
      DesignSize = (
        718
        248)
      object gbLoading: TcxGroupBox
        Left = 210
        Top = 100
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
        ExplicitTop = 101
        Height = 49
        Width = 297
        object pb: TcxProgressBar
          Left = 3
          Top = 20
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
    Left = 504
    Top = 189
  end
  object dsReasonTreeParent: TDataSource
    DataSet = cdsReasonTreeParent
    Left = 64
    Top = 176
  end
  object cdsReasonTreeParent: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 224
  end
  object ActionList: TActionList
    Images = DMMain.iml
    Left = 504
    Top = 144
    object aSelect_ReasonTree: TAction
      Caption = 'aSelect_ReasonTree'
      ImageIndex = 0
      OnExecute = aSelect_ReasonTreeExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aLoadReasonTree: TAction
      Caption = 'aLoadReasonTree'
      ImageIndex = 12
      OnExecute = aLoadReasonTreeExecute
    end
    object aLoadFields: TAction
      Caption = 'aLoadFields'
      ImageIndex = 12
      OnExecute = aLoadFieldsExecute
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
    Left = 352
    Top = 176
  end
  object cdsTCHR: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 224
  end
end
