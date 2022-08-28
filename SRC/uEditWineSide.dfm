object frmEditWineSide: TfrmEditWineSide
  Left = 0
  Top = 0
  Caption = 'frmEditWineSide'
  ClientHeight = 249
  ClientWidth = 721
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 210
    Align = alClient
    TabOrder = 0
    object pc: TcxPageControl
      Left = 1
      Top = 1
      Width = 719
      Height = 208
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsEdit
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 201
      ClientRectLeft = 4
      ClientRectRight = 712
      ClientRectTop = 27
      object tsEdit: TcxTabSheet
        Caption = 'tsEdit'
        ImageIndex = 0
        object vg: TcxVerticalGrid
          Left = 0
          Top = 0
          Width = 708
          Height = 174
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
          OptionsView.RowHeaderWidth = 241
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.GoToNextCellOnTab = True
          ParentFont = False
          Styles.Content = DMMain.cxStyle140
          Styles.Category = DMMain.stlCategory
          Styles.Header = DMMain.cxStyle141
          TabOrder = 0
          Version = 1
          object rwRoad: TcxEditorRow
            Properties.Caption = #1044#1086#1088#1086#1075#1072
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.Items = <>
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object rwTypeFirm: TcxEditorRow
            Properties.Caption = #1058#1080#1087' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103' '
            Properties.ImageIndex = 41
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.DropDownListStyle = lsFixedList
            Properties.EditProperties.KeyFieldNames = 'kod_firm_type'
            Properties.EditProperties.ListColumns = <
              item
                Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                FieldName = 'mnemo'
              end
              item
                Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                FieldName = 'firm_type_name'
              end>
            Properties.EditProperties.ListSource = dsFirm
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object rwName: TcxEditorRow
            Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Properties.ImageIndex = 41
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object rwShortName: TcxEditorRow
            Properties.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Properties.ImageIndex = 41
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object rwParent: TcxEditorRow
            Properties.Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1072#1103' '#1074#1080#1085#1086#1074#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
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
          object trWineSide: TcxDBTreeList
            Left = 2
            Top = 2
            Width = 421
            Height = 446
            BorderStyle = cxcbsNone
            Align = alClient
            Bands = <
              item
              end>
            DataController.ParentField = 'kod_firm_parent_new'
            DataController.KeyField = 'kod_firm_child'
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.HotTrack = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clmn_Name
            OptionsData.Editing = False
            OptionsData.Deleting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.ExtPaintStyle = True
            OptionsView.GridLines = tlglVert
            OptionsView.Headers = False
            RootValue = -1
            Styles.Content = DMMain.cxStyle140
            Styles.Inactive = DMMain.stlSelection
            Styles.Selection = DMMain.stlSelection
            Styles.HotTrack = DMMain.stlHotTrack
            TabOrder = 0
            OnDblClick = trWineSideDblClick
            object clmn_Name: TcxDBTreeListColumn
              DataBinding.FieldName = 'resp_name'
              Width = 340
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object clmn_parent_new: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Visible = False
              DataBinding.FieldName = 'kod_firm_parent_new'
              Width = 81
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
          708
          174)
        object gbLoading: TcxGroupBox
          Left = 205
          Top = 64
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
  end
  object pnlSaveCancel: TPanel
    Left = 0
    Top = 210
    Width = 721
    Height = 39
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 208
    object btnSave: TcxButton
      Left = 400
      Top = 1
      Width = 160
      Height = 37
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
    end
    object btnCancel: TcxButton
      Left = 560
      Top = 1
      Width = 160
      Height = 37
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
    end
  end
  object al: TActionList
    Left = 112
    Top = 152
    object aSave: TAction
      Caption = 'aSave'
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = 'aCancel'
      OnExecute = aCancelExecute
    end
    object aLoadRoad: TAction
      Caption = 'aLoadRoad'
      OnExecute = aLoadRoadExecute
    end
    object aLoadFirm: TAction
      Caption = 'aLoadFirm'
      OnExecute = aLoadFirmExecute
    end
    object aLoadParent: TAction
      Caption = 'aLoadParent'
      OnExecute = aLoadParentExecute
    end
    object aLoadRec: TAction
      Caption = 'aLoadRec'
      OnExecute = aLoadRecExecute
    end
  end
  object cdsFirm: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 152
  end
  object dsFirm: TDataSource
    DataSet = cdsFirm
    Left = 296
    Top = 152
  end
  object dsRoad: TDataSource
    DataSet = cdsRoad
    Left = 392
    Top = 152
  end
  object cdsRoad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 152
  end
  object dsParent: TDataSource
    DataSet = cdsParent
    Left = 200
    Top = 152
  end
  object cdsParent: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 152
  end
  object dsRec: TDataSource
    DataSet = cdsRec
    Left = 200
    Top = 200
  end
  object cdsRec: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 200
  end
end
