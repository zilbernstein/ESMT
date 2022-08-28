object frmFirmSelect: TfrmFirmSelect
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1042#1099#1073#1086#1088' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
  ClientHeight = 632
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 18
  object Panel6: TPanel
    Left = 0
    Top = 592
    Width = 779
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 1
    object cxButton9: TcxButton
      Left = 657
      Top = 2
      Width = 120
      Height = 36
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
      Left = 537
      Top = 2
      Width = 120
      Height = 36
      Align = alRight
      Action = aSelect
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      ExplicitTop = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 65
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object rgFirmGroup: TcxRadioGroup
      Left = 2
      Top = 2
      Hint = #1042#1099#1073#1086#1088' '#1075#1088#1091#1087#1087#1099' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081
      Align = alClient
      Caption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081
      Properties.Columns = 3
      Properties.DefaultValue = '45'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1055#1077#1088#1077#1075#1086#1085
          Value = '43'
        end
        item
          Caption = #1057#1090#1072#1085#1094#1080#1103
          Value = '44'
        end
        item
          Caption = #1044#1077#1087#1086
          Value = '45'
        end>
      Properties.OnChange = aFirmGroupChangeExecute
      ItemIndex = 2
      Style.BorderStyle = ebsNone
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
      Transparent = True
      Height = 61
      Width = 775
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 779
    Height = 527
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object grdFirmTree: TcxGrid
      Left = 2
      Top = 2
      Width = 775
      Height = 523
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
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
        DataController.KeyFieldNames = 'pred_id'
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ' '
            Kind = skMax
            Position = spFooter
            FieldName = 'kod_road'
            Column = clmnGrdCategory
            DisplayText = ' '
            Sorted = True
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
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
        object clmnGrdPredID: TcxGridDBColumn
          DataBinding.FieldName = 'pred_id'
          Visible = False
        end
        object clmnGrdName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'firm_name'
        end
        object clmnGrdCategory: TcxGridDBColumn
          AlternateCaption = ' '
          Caption = ' '
          DataBinding.FieldName = 'road_mnemo'
          Visible = False
          GroupIndex = 0
        end
        object clmnGrdCategoryAdd: TcxGridDBColumn
          DataBinding.FieldName = 'kod_road'
          Visible = False
        end
      end
      object grdFirmTreeLevel1: TcxGridLevel
        GridView = btvFirmTree
      end
    end
  end
  object al: TActionList
    Images = DMMain.iml
    Left = 40
    Top = 232
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 9
      OnExecute = aCancelExecute
    end
    object aSelect: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ImageIndex = 8
      ShortCut = 16467
      OnExecute = aSelectExecute
    end
    object aFirmGroupChange: TAction
      Caption = 'aFirmGroupChange'
      ImageIndex = 17
      OnExecute = aFirmGroupChangeExecute
    end
  end
end
