object frmIncidentExport: TfrmIncidentExport
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 512
  ClientWidth = 919
  Color = clBtnFace
  Constraints.MinWidth = 750
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 472
    Width = 919
    Height = 40
    Align = alBottom
    TabOrder = 0
    object btnCancel: TcxButton
      Left = 788
      Top = 1
      Width = 130
      Height = 38
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      ModalResult = 2
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = DMMain.imlSmall
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnExport: TcxButton
      Left = 658
      Top = 1
      Width = 130
      Height = 38
      Align = alRight
      Action = aExport
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Images = DMMain.imlSmall
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 472
    Align = alClient
    TabOrder = 1
    object pc: TcxPageControl
      Left = 1
      Top = 1
      Width = 917
      Height = 470
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = tsMain
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 463
      ClientRectLeft = 4
      ClientRectRight = 910
      ClientRectTop = 27
      object tsMain: TcxTabSheet
        Caption = 'tsMain'
        ImageIndex = 0
        object pnlConditions: TPanel
          Left = 0
          Top = 0
          Width = 906
          Height = 63
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object gbFirmTree: TGroupBox
            Left = 7
            Top = 3
            Width = 300
            Height = 53
            Caption = ' '#1057#1090#1088#1091#1082#1090#1091#1088#1072' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cbFirmTree: TcxPopupEdit
              Left = 7
              Top = 19
              ParentFont = False
              Properties.PopupControl = pnlFirmTree
              Properties.PopupHeight = 400
              Properties.PopupMinHeight = 400
              Properties.PopupMinWidth = 300
              Properties.PopupWidth = 300
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Caramel'
              Style.ButtonStyle = btsSimple
              Style.IsFontAssigned = True
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
              Width = 286
            end
          end
          object gbPeriod: TGroupBox
            Left = 313
            Top = 3
            Width = 292
            Height = 53
            Caption = ' '#1055#1077#1088#1080#1086#1076' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object deDateFrom: TcxDateEdit
              Left = 7
              Top = 19
              ParentFont = False
              Properties.InputKind = ikMask
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Caramel'
              Style.ButtonStyle = btsSimple
              Style.IsFontAssigned = True
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
              Width = 130
            end
            object deDateTo: TcxDateEdit
              Left = 145
              Top = 19
              ParentFont = False
              Properties.DateButtons = [btnToday]
              Properties.InputKind = ikMask
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Caramel'
              Style.ButtonStyle = btsSimple
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Caramel'
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Caramel'
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Caramel'
              TabOrder = 1
              Width = 140
            end
          end
          object gbLoc: TGroupBox
            Left = 611
            Top = 3
            Width = 284
            Height = 53
            Caption = ' '#1051#1086#1082#1086#1084#1086#1090#1080#1074' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object cbNum: TcxLookupComboBox
              Left = 147
              Top = 19
              ParentFont = False
              ParentShowHint = False
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'id_object'
              Properties.ListColumns = <
                item
                  FieldName = 'section_name'
                end>
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.OnEditValueChanged = cbNumPropertiesEditValueChanged
              ShowHint = True
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Caramel'
              Style.ButtonStyle = btsSimple
              Style.IsFontAssigned = True
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
              Width = 130
            end
            object cbSer: TcxImageComboBox
              Left = 7
              Top = 19
              ParentFont = False
              Properties.Items = <>
              Properties.OnEditValueChanged = cbSerPropertiesEditValueChanged
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Caramel'
              Style.ButtonStyle = btsSimple
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Caramel'
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Caramel'
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Caramel'
              TabOrder = 1
              Width = 130
            end
          end
        end
        object pnlColumns: TPanel
          Left = 0
          Top = 63
          Width = 906
          Height = 373
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object gbProgressBar: TcxGroupBox
            Left = 2
            Top = 318
            Align = alBottom
            Caption = 'gbProgressBar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Visible = False
            Height = 53
            Width = 902
            object pbProgressBar: TcxProgressBar
              Left = 3
              Top = 20
              Align = alClient
              ParentFont = False
              Properties.Max = 5.000000000000000000
              Properties.OverloadValue = 5.000000000000000000
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 896
            end
          end
          object grdColumns: TcxGrid
            Left = 2
            Top = 2
            Width = 902
            Height = 316
            Cursor = crHandPoint
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            RootLevelOptions.TabsForEmptyDetails = False
            object btvColumns: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.KeyFieldNames = 'column_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #1042#1089#1077#1075#1086':'
                  Kind = skCount
                  Column = btvColumnsColumn1
                end
                item
                  Format = '#####0'
                  Kind = skCount
                end>
              DataController.Summary.SummaryGroups = <>
              DateTimeHandling.IgnoreTimeForFiltering = True
              Filtering.ColumnFilteredItemsList = True
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.CellHints = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.IncSearchItem = btvColumnsColumn1
              OptionsBehavior.BestFitMaxRecordCount = 20
              OptionsCustomize.ColumnHidingOnGrouping = False
              OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.CellEndEllipsis = True
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.BandHeaderEndEllipsis = True
              Bands = <
                item
                  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1077#1081' '#1076#1083#1103' '#1074#1099#1073#1086#1088#1072
                  HeaderAlignmentHorz = taLeftJustify
                  Styles.Header = DMMain.stlGroup11
                  Width = 350
                end>
              object clmnCheck: TcxGridDBBandedColumn
                AlternateCaption = #1054#1090#1084#1077#1095#1077#1085#1086
                DataBinding.FieldName = 'checked'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayChecked = #1044#1072
                Properties.DisplayUnchecked = #1053#1077#1090
                Properties.DisplayGrayed = #1053#1077#1090
                Properties.FullFocusRect = True
                Properties.Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  1800000000000006000000000000000000000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809AD1809AD1809AD1809AD1809AD1809AD1809AD1809AD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600006600FF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
                  6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660031C24F22B7381AB02D21
                  B437006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
                  A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FF0066004FD67953DE7F31B54D006600FF00FF00
                  6600179D271EAE31006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
                  00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FF006600149D21006600FF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FF
                  FF00FFFF00FFAD1809AD1809AD1809AD1809AD1809AD1809AD1809AD1809AD18
                  09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600FF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                Properties.GlyphCount = 2
                Properties.ImmediatePost = True
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueGrayed = '0'
                Properties.ValueUnchecked = 0
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FF004B00004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B000F9E1C0F9D1E00
                  4B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FF004B001CB13511A4220C9C1911A021004B00FF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF004B002EC65224BC43139224004B000D
                  931A0E9D1D004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00
                  35CA5E39D4651CA134004B00FF00FF004B000A86150F991C004B00FF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF004B0029B548004B00FF00FFFF00FFFF
                  00FFFF00FF004B000C9518004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FF004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00098611004B
                  00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FF004B00004B00FF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FF004B00004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                HeaderGlyphAlignmentHorz = taCenter
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
                IsCaptionAssigned = True
              end
              object btvColumnsColumn1: TcxGridDBBandedColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1103
                DataBinding.FieldName = 'column_name'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 777
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object lvlColumns: TcxGridLevel
              GridView = btvColumns
              Options.TabsForEmptyDetails = False
            end
          end
        end
      end
      object tsOther: TcxTabSheet
        Caption = 'tsOther'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 912
        ExplicitHeight = 0
        object pnlFirmTree: TPanel
          Left = 0
          Top = 0
          Width = 906
          Height = 436
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          ExplicitWidth = 912
          object tlFirmTree: TcxDBTreeList
            Left = 2
            Top = 2
            Width = 902
            Height = 412
            BorderStyle = cxcbsNone
            Align = alClient
            Bands = <
              item
              end>
            DataController.ParentField = 'kod_firm_parent'
            DataController.KeyField = 'kod_firm'
            DataController.StateIndexField = 'state_index'
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.CellHints = True
            OptionsData.Editing = False
            OptionsData.Deleting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.ExtPaintStyle = True
            OptionsView.Headers = False
            RootValue = -1
            StateImages = DMMain.imlFirmTreeState
            TabOrder = 0
            OnDblClick = aSelect_FirmTreeExecute
            OnKeyDown = tlFirmTreeKeyDown
            OnKeyPress = tlFirmTreeKeyPress
            ExplicitWidth = 908
            object clmn_FirmName: TcxDBTreeListColumn
              DataBinding.FieldName = 'firm_name'
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object clmn_FirmTypeMnemo: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'firm_type_mnemo'
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
          object sbFirmTree: TdxStatusBar
            Left = 2
            Top = 414
            Width = 902
            Height = 20
            Panels = <
              item
                PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
                Text = #1042#1099#1073#1086#1088' '#1089#1090#1088#1086#1082#1080' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082' '#1084#1099#1096#1080' '#1080#1083#1080' '#1085#1072#1078#1072#1090#1080#1077' Enter'
                Width = 300
              end>
            PaintStyle = stpsUseLookAndFeel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ExplicitWidth = 908
          end
        end
      end
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'csv'
    Left = 349
    Top = 320
  end
  object ActionList: TActionList
    Images = DMMain.imlSmall
    Left = 350
    Top = 369
    object aExport: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
      ImageIndex = 54
      OnExecute = aExportExecute
    end
    object aLoadFirmTree: TAction
      Caption = 'aLoadFirmTree'
      ImageIndex = 13
      OnExecute = aLoadFirmTreeExecute
    end
    object aLoadSerList: TAction
      Caption = 'aLoadSerList'
      ImageIndex = 13
      OnExecute = aLoadSerListExecute
    end
    object aLoadNumList: TAction
      Caption = 'aLoadNumList'
      ImageIndex = 13
      OnExecute = aLoadNumListExecute
    end
    object aLoadColumns: TAction
      Caption = 'aLoadColumns'
      ImageIndex = 13
      OnExecute = aLoadColumnsExecute
    end
    object aSelect_FirmTree: TAction
      Caption = 'aSelect_FirmTree'
      OnExecute = aSelect_FirmTreeExecute
    end
  end
  object cdsExport: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 176
  end
  object dsExport: TDataSource
    DataSet = cdsExport
    Left = 352
    Top = 224
  end
  object tmrLoad: TTimer
    Interval = 500
    OnTimer = tmrLoadTimer
    Left = 349
    Top = 272
  end
end
