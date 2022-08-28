object frmStateHistory: TfrmStateHistory
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1085#1072#1093#1086#1078#1076#1077#1085#1080#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1072#1093
  ClientHeight = 428
  ClientWidth = 775
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
  object grdStateHistory: TcxGrid
    Left = 0
    Top = 0
    Width = 775
    Height = 389
    Cursor = crHandPoint
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LevelTabs.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object btvStateHistory: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #1050#1086#1083'-'#1074#1086': ##### '
          Kind = skCount
        end
        item
          Format = ' '
          Kind = skMax
          Position = spFooter
          FieldName = 'repair_sorting'
          Sorted = True
          VisibleForCustomization = False
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #1042#1089#1077#1075#1086':'
          Kind = skCount
        end
        item
          Kind = skCount
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = #1042#1089#1077#1075#1086': ########'
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = 
        #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100'. '#1044#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' <'#1054 +
        #1073#1085#1086#1074#1080#1090#1100'>'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.BandHeaders = False
      OptionsView.FixedBandSeparatorWidth = 0
      Styles.Content = DMMain.stlContent9
      Styles.Group = DMMain.stlGroup9
      Styles.Header = DMMain.stlHeader9
      Styles.BandHeader = DMMain.cxStyle101
      Bands = <
        item
        end>
      object btvStateHistoryColumn1: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'name'
        HeaderAlignmentHorz = taCenter
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object btvStateHistoryColumn2: TcxGridDBBandedColumn
        Caption = #1060#1048#1054' '#1080#1079#1084#1077#1085#1080#1074#1096#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        DataBinding.FieldName = 'fio'
        HeaderAlignmentHorz = taCenter
        Width = 243
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object btvStateHistoryColumn3: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'date_change'
        OnGetDisplayText = btvStateHistoryColumn3GetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 132
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object btvStateHistoryColumn4: TcxGridDBBandedColumn
        Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
        DataBinding.FieldName = 'firm_name'
        HeaderAlignmentHorz = taCenter
        Width = 131
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object btvStateHistoryColumn5: TcxGridDBBandedColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'dol_name'
        HeaderAlignmentHorz = taCenter
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object lvlStateHistory: TcxGridLevel
      Tag = 1
      Caption = '  '#1042#1089#1077' '#1088#1077#1084#1086#1085#1090#1099'  '
      GridView = btvStateHistory
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 389
    Width = 775
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object cxButton9: TcxButton
      Left = 615
      Top = 0
      Width = 160
      Height = 39
      Align = alRight
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = DMMain.iml
      TabOrder = 0
      OnClick = cxButton9Click
    end
  end
  object cdsStateHistory: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 20
    Top = 60
  end
  object dsStateHistory: TDataSource
    DataSet = cdsStateHistory
    Left = 24
    Top = 104
  end
end
