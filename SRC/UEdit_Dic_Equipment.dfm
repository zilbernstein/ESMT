object frmEdit_Dic_Equipment: TfrmEdit_Dic_Equipment
  Left = 0
  Top = 0
  Caption = 'frmEdit_Dic_Equipment'
  ClientHeight = 196
  ClientWidth = 678
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
    Width = 678
    Height = 157
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsEdit
    Properties.CustomButtons.Buttons = <>
    ExplicitHeight = 155
    ClientRectBottom = 150
    ClientRectLeft = 4
    ClientRectRight = 671
    ClientRectTop = 27
    object tsEdit: TcxTabSheet
      Caption = 'tsEdit'
      ImageIndex = 0
      ExplicitHeight = 121
      object vg: TcxVerticalGrid
        Left = 0
        Top = 0
        Width = 667
        Height = 123
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
        OptionsView.RowHeaderWidth = 223
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.GoToNextCellOnTab = True
        ParentFont = False
        Styles.Content = DMMain.cxStyle140
        Styles.Category = DMMain.stlCategory
        Styles.Header = DMMain.cxStyle141
        TabOrder = 0
        ExplicitHeight = 121
        Version = 1
        object rwEqName: TcxEditorRow
          Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object rwEqSD: TcxEditorRow
          Properties.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077
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
        object rwEqtTree: TcxEditorRow
          Properties.Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
          Properties.EditProperties.PopupControl = pnlFirmTree
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitHeight = 121
      object pnlFirmTree: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 473
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object tlEqtTree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 421
          Height = 446
          BorderStyle = cxcbsNone
          Align = alClient
          Bands = <
            item
            end>
          DataController.DataSource = dsEqtTree
          DataController.ParentField = 'parent_class_id'
          DataController.KeyField = 'class_id'
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
          Styles.Inactive = DMMain.stlSelection
          Styles.Selection = DMMain.stlSelection
          Styles.HotTrack = DMMain.stlHotTrack
          TabOrder = 0
          OnDblClick = aSelect_EqTreeExecute
          object clmn_FirmName: TcxDBTreeListColumn
            DataBinding.FieldName = 'class_name'
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
            Visible = False
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
      ExplicitHeight = 121
      DesignSize = (
        667
        123)
      object gbLoading: TcxGroupBox
        Left = 185
        Top = 38
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
        ExplicitTop = 37
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
  object Panel1: TPanel
    Left = 0
    Top = 157
    Width = 678
    Height = 39
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnSave: TcxButton
      Left = 356
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = DMMain.iml
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = aSaveExecute
      ExplicitLeft = 403
      ExplicitHeight = 37
    end
    object btnCancel: TcxButton
      Left = 516
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = DMMain.iml
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = aCancelExecute
      ExplicitLeft = 563
      ExplicitHeight = 37
    end
  end
  object tmr: TTimer
    Enabled = False
    Interval = 200
    Left = 344
    Top = 98
  end
  object dsEqtTree: TDataSource
    DataSet = cdsEqtTree
    Left = 400
    Top = 96
  end
  object cdsEqtTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 96
  end
  object al: TActionList
    Left = 288
    Top = 98
    object aSelect_EqTree: TAction
      Caption = 'aSelect_EqTree'
      ImageIndex = 0
      OnExecute = aSelect_EqTreeExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 8
      OnExecute = aCancelExecute
    end
    object aLoadEqTree: TAction
      Caption = 'aLoadEqTree'
      ImageIndex = 12
      OnExecute = aLoadEqTreeExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 7
      ShortCut = 16467
      OnExecute = aSaveExecute
    end
    object aLoadRec: TAction
      Caption = 'aLoadRec'
      OnExecute = aLoadRecExecute
    end
    object aLoadLVL: TAction
      Caption = 'aLoadLVL'
      OnExecute = aLoadLVLExecute
    end
  end
end
