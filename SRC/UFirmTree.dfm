object frmFirmTree: TfrmFirmTree
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
  ClientHeight = 526
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel6: TPanel
    Left = 0
    Top = 496
    Width = 556
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cxButton9: TcxButton
      Left = 456
      Top = 0
      Width = 100
      Height = 30
      Align = alRight
      Action = aCancel
      Cancel = True
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
    end
    object cxButton10: TcxButton
      Left = 356
      Top = 0
      Width = 100
      Height = 30
      Align = alRight
      Action = aSelect
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
    end
  end
  object tlFirmTree: TcxDBTreeList
    Left = 0
    Top = 307
    Width = 556
    Height = 189
    Align = alBottom
    Bands = <
      item
      end>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.CellHints = True
    OptionsBehavior.IncSearch = True
    OptionsBehavior.IncSearchItem = clmnName
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsView.ColumnAutoWidth = True
    OptionsView.ExtPaintStyle = True
    OptionsView.Headers = False
    RootValue = -1
    TabOrder = 1
    OnDblClick = tlFirmTreeDblClick
    object clmnName: TcxDBTreeListColumn
      Width = 337
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmnCategory: TcxDBTreeListColumn
      Visible = False
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmnCategoryAdd: TcxDBTreeListColumn
      Visible = False
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object grdFirmTree: TcxGrid
    Left = 0
    Top = 28
    Width = 556
    Height = 281
    Align = alTop
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object btvFirmTree: TcxGridDBTableView
      OnDblClick = aSelectExecute
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataModeController.DetailInSQLMode = True
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ' '
          Kind = skMax
          Position = spFooter
          OnGetText = btvFirmTreeTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText
          FieldName = 'kod_road'
          Column = clmnGrdCategory
          DisplayText = ' '
          Sorted = True
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
      FilterRow.SeparatorWidth = 2
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = clmnGrdName
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      Styles.StyleSheet = DMMain.stlshtGrdTV
      object clmnGrdName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      object clmnGrdCategory: TcxGridDBColumn
        AlternateCaption = ' '
        Caption = ' '
        Visible = False
        GroupIndex = 0
      end
      object clmnGrdCategoryAdd: TcxGridDBColumn
        Visible = False
      end
    end
    object grdFirmTreeLevel1: TcxGridLevel
      GridView = btvFirmTree
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 556
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object teFilter: TcxTextEdit
      Left = 86
      Top = 3
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1087#1077#1088#1074#1099#1077' '#1073#1091#1082#1074#1099' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1103' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072
      Properties.CharCase = ecUpperCase
      Properties.OnChange = teFilterPropertiesChange
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
      Width = 467
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 4
      Caption = #1048#1089#1082#1072#1090#1100' '#1089#1083#1086#1074#1086
      Transparent = True
    end
  end
  object ActionList1: TActionList
    Images = DMMain.imlSmall
    Left = 48
    Top = 544
    object aSelect: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ImageIndex = 8
      OnExecute = aSelectExecute
    end
    object aRefresh: TAction
      Caption = 'aRefresh'
      ImageIndex = 13
      OnExecute = aRefreshExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 9
      OnExecute = aCancelExecute
    end
  end
end
