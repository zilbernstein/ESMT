object frmUsers: TfrmUsers
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1076#1088#1077#1089#1085#1072#1103' '#1082#1085#1080#1075#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  ClientHeight = 744
  ClientWidth = 1106
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
  object grdUsers: TcxGrid
    Left = 0
    Top = 0
    Width = 1106
    Height = 704
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
    object btvUsers: TcxGridDBBandedTableView
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
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = clmnSurname
      OptionsBehavior.BestFitMaxRecordCount = 20
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100
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
      Styles.BandHeader = DMMain.cxStyle60
      Bands = <
        item
        end>
      object clmnSurname: TcxGridDBBandedColumn
        Caption = #1060#1072#1084#1080#1083#1080#1103
        DataBinding.FieldName = 'last_name'
        HeaderAlignmentHorz = taCenter
        Width = 103
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnName: TcxGridDBBandedColumn
        Caption = #1048#1084#1103
        DataBinding.FieldName = 'first_name'
        HeaderAlignmentHorz = taCenter
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object clmMiddleName: TcxGridDBBandedColumn
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'patr_name'
        HeaderAlignmentHorz = taCenter
        Width = 103
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object clmnComp_Filal: TcxGridDBBandedColumn
        Caption = #1050#1086#1084#1087#1072#1085#1080#1103'/'#1060#1080#1083#1080#1072#1083
        DataBinding.FieldName = 'firm_name_new'
        HeaderAlignmentHorz = taCenter
        Width = 172
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object clmnPost: TcxGridDBBandedColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'dol_name'
        HeaderAlignmentHorz = taCenter
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object clmnPhone: TcxGridDBBandedColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'phone'
        HeaderAlignmentHorz = taCenter
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object clmnMail: TcxGridDBBandedColumn
        Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
        DataBinding.FieldName = 'email'
        HeaderAlignmentHorz = taCenter
        Width = 143
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object clmnSLD: TcxGridDBBandedColumn
        Caption = #1057#1051#1044
        DataBinding.FieldName = 'firm_name_sld'
        HeaderAlignmentHorz = taCenter
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object clmnCO_CY: TcxGridDBBandedColumn
        Caption = #1057#1054'/'#1057#1059
        DataBinding.FieldName = 'firm_name_sosu'
        HeaderAlignmentHorz = taCenter
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object lvlUsers: TcxGridLevel
      Tag = 1
      Caption = '  '#1042#1089#1077' '#1088#1077#1084#1086#1085#1090#1099'  '
      GridView = btvUsers
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 704
    Width = 1106
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object btnCancel: TcxButton
      Left = 946
      Top = 0
      Width = 160
      Height = 40
      Align = alRight
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000A0A
        1E10111157850707184300000000000000000000000000000000000000000000
        00000000000000000000111140570F0F459300000110000000000D0D290D1313
        A5C80202C0FF0D0DA4EC07071746000000000000000000000000000000000000
        00000000000013134B6106069EFB02029DFF111155AE0000010F1E1EB69A0202
        D9FF0202D0FF0202C5FF0D0DA6EC070717460000000000000000000000000000
        0000131351650606A6FC0101A3FF0101A0FF02029EFE0F0F44862828EA9A0202
        E4FF0202DEFF0202D5FF0202CCFF0D0DA9EB0707174500000000000000001313
        52680606AEFC0101ABFF0101A8FF0101A5FF0505A2FC181855502F2FA6052222
        ECAF0303E7FF0202E2FF0202DBFF0202D2FF0D0DAEEB070718441313586C0606
        B7FC0202B4FF0202B0FF0101ADFF0505AAFD1A1A6B6400000000000000002E2E
        A6052222EDAF0303E9FF0303E5FF0202DFFF0202D7FF0C0CBCF10606C3FD0202
        BDFF0202B9FF0202B6FF0505B3FE1B1B756B0000000000000000000000000000
        00002D2D9C052121EDAD0303EAFF0303E8FF0202E3FF0202DCFF0202D4FF0202
        CAFF0202C0FF0505BCFE1B1B7A71000000000000000000000000000000000000
        0000000000002C2C9A052020E7AC0303EAFF0303EAFF0303E6FF0202E1FF0202
        D9FF0404D1FE1B1B867800000000000000000000000000000000000000000000
        000000000000000000001E1E806B2424ECFF0A0AEBFF0303EAFF0303E9FF0202
        E4FF0909CDF403031B4200000000000000000000000000000000000000000000
        0000000000001B1B6A674A4AE5FC5151ECFF5353EFFF4343EFFF3030EEFF2121
        ECFF1717E9FF1414BEE90303143F000000000000000000000000000000000000
        00001D1D68665252E1FC5B5BE7FF6060E9FF6262ECFF6363EEFF6363F0FF6262
        F1FF5E5EF1FF5A5AF0FF3D3DC1E70303133C0000000000000000000000001F1F
        67665959DFFC6363E4FF6767E6FF6A6AE8FF6969E8FE3131A07A4C4CDEA86C6C
        F0FF6A6AF1FF6666F1FF6060F1FF3F3FBFE5020211390000000021216E635C5C
        DBFC6767E2FF6D6DE4FF7171E6FF7070E6FE323294780000000026268C035151
        E2A57373F0FF7070F1FF6A6AF1FF6363F1FF3F3FBDE3020210325151D3D46A6A
        DFFF7070E2FF7474E3FF7373E3FE31318D740000000000000000000000002828
        8C035454E1A27777EFFF7272F0FF6C6CF1FF6363F1FF24247A914141C8486969
        DCF67676E1FF7575E1FE32328A72000000000000000000000000000000000000
        00002A2A8B025555DF9F7878EDFF7272EFFF5252D3DB1212541C000000004646
        CA4A6565D9DD39399A6B00000000000000000000000000000000000000000000
        0000000000002C2C8B025353DE935A5AD8CD1818621E00000000}
      TabOrder = 0
      OnClick = aCloseExecute
    end
    object btnExpExcel: TcxButton
      Left = 786
      Top = 0
      Width = 160
      Height = 40
      Align = alRight
      Cancel = True
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 54
      OptionsImage.Images = DMMain.imlSmall
      TabOrder = 1
      OnClick = aExpExcelExecute
    end
  end
  object cdsUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 28
    Top = 60
  end
  object dsUsers: TDataSource
    DataSet = cdsUsers
    Left = 24
    Top = 104
  end
  object al: TActionList
    Left = 136
    Top = 104
    object aLoadInfo: TAction
      Caption = 'aLoadInfo'
      OnExecute = aLoadInfoExecute
    end
    object aClose: TAction
      Caption = 'aClose'
      OnExecute = aCloseExecute
    end
    object aExpExcel: TAction
      Caption = 'aExpExcel'
      OnExecute = aExpExcelExecute
    end
  end
end
