object frmEditRole: TfrmEditRole
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'frmEditRole'
  ClientHeight = 553
  ClientWidth = 1036
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  object pnlSvCn: TPanel
    Left = 0
    Top = 514
    Width = 1036
    Height = 39
    Align = alBottom
    TabOrder = 0
    ExplicitWidth = 1002
    object btnSave: TcxButton
      Left = 715
      Top = 1
      Width = 160
      Height = 37
      Align = alRight
      Action = aSave
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = DMMain.iml
      TabOrder = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 681
    end
    object btnCancel: TcxButton
      Left = 875
      Top = 1
      Width = 160
      Height = 37
      Align = alRight
      Action = aCancel
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = DMMain.iml
      TabOrder = 1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 841
    end
  end
  object pc: TcxPageControl
    Left = 0
    Top = 0
    Width = 1036
    Height = 514
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Properties.ActivePage = tsRole
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    Properties.OwnerDraw = True
    Properties.Style = 9
    Properties.TabSlants.Positions = [spLeft, spRight]
    TabSlants.Positions = [spLeft, spRight]
    ExplicitWidth = 1002
    ClientRectBottom = 514
    ClientRectRight = 1036
    ClientRectTop = 24
    object tsRole: TcxTabSheet
      Caption = #1056#1086#1083#1100
      ImageIndex = 0
      ExplicitWidth = 1002
      object vg: TcxVerticalGrid
        Left = 0
        Top = 0
        Width = 1036
        Height = 129
        Align = alTop
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Images = DMMain.iml
        OptionsView.ShowEditButtons = ecsbAlways
        OptionsView.RowHeaderWidth = 195
        ParentFont = False
        Styles.Content = DMMain.stlContent11
        Styles.StyleSheet = DMMain.stlshtVG
        Styles.Category = DMMain.stlNeed2Refresh
        TabOrder = 0
        ExplicitWidth = 1002
        Version = 1
        object rwRoleName: TcxEditorRow
          Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1086#1083#1080
          Properties.ImageIndex = 12
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object rwRoleNote: TcxEditorRow
          Height = 100
          Properties.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Properties.ImageIndex = 41
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 129
        Width = 1036
        Height = 361
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 1
        ExplicitLeft = 88
        ExplicitTop = 184
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Splitter1: TSplitter
          Left = 501
          Top = 1
          Width = 4
          Height = 359
        end
        object grdFnctSet: TcxGrid
          Left = 1
          Top = 1
          Width = 500
          Height = 359
          Align = alLeft
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 129
          ExplicitHeight = 361
          object btvFnctSet: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.KeyFieldNames = 'id_function'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.IgnoreTimeForFiltering = True
            OptionsBehavior.IncSearchItem = cxGridDBBandedColumn3
            OptionsBehavior.BestFitMaxRecordCount = 20
            OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = clBtnShadow
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            Styles.BandHeader = DMMain.stlCategory
            Bands = <
              item
                Caption = #1057#1087#1080#1089#1086#1082' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1093' '#1092#1091#1085#1082#1094#1080#1081
                HeaderAlignmentHorz = taLeftJustify
                Width = 424
              end>
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              Caption = #1043#1088#1091#1087#1087#1072
              DataBinding.FieldName = 'name_object'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Width = 141
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'name_function'
              Options.Editing = False
              Width = 378
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
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
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
          end
          object lvlFnctSet: TcxGridLevel
            GridView = btvFnctSet
            Options.TabsForEmptyDetails = False
          end
        end
        object Panel2: TPanel
          Left = 505
          Top = 1
          Width = 530
          Height = 359
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 1
          ExplicitLeft = 704
          ExplicitTop = 96
          ExplicitWidth = 185
          ExplicitHeight = 41
          object grdFnctGet: TcxGrid
            Left = 1
            Top = 1
            Width = 528
            Height = 357
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = -1
            ExplicitWidth = 527
            object btvFnctGet: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.KeyFieldNames = 'id_function'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                end>
              DataController.Summary.SummaryGroups = <>
              DateTimeHandling.IgnoreTimeForFiltering = True
              OptionsBehavior.IncSearchItem = clmnCheck
              OptionsBehavior.BestFitMaxRecordCount = 20
              OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.HeaderAutoHeight = True
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              Styles.BandHeader = DMMain.stlCategory
              Bands = <
                item
                  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1092#1091#1085#1082#1094#1080#1081
                  HeaderAlignmentHorz = taLeftJustify
                  Width = 424
                end>
              object btvFnctGetColumn1: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1087#1087#1072
                DataBinding.FieldName = 'o_name'
                Visible = False
                GroupIndex = 0
                Options.Editing = False
                Width = 141
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btvFnctGetColumn2: TcxGridDBBandedColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'f_name'
                Options.Editing = False
                Width = 378
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
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
                Width = 53
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
                IsCaptionAssigned = True
              end
            end
            object lvlFnctGet: TcxGridLevel
              GridView = btvFnctGet
              Options.TabsForEmptyDetails = False
            end
          end
        end
      end
    end
  end
  object al: TActionList
    Left = 376
    Top = 96
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      OnExecute = aCancelExecute
    end
    object aAddFuntion: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = aAddFuntionExecute
    end
    object aDeleteFunction: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = aDeleteFunctionExecute
    end
    object aLoadRole: TAction
      Caption = 'aLoadRole'
      OnExecute = aLoadRoleExecute
    end
    object aLoadFunctionGet: TAction
      Caption = 'aLoadFunctionGet'
      OnExecute = aLoadFunctionGetExecute
    end
    object aLoadFunctionSet: TAction
      Caption = 'aLoadFunctionSet'
      OnExecute = aLoadFunctionSetExecute
    end
    object aSaveInfoRole: TAction
      Caption = 'aSaveInfoRole'
      OnExecute = aSaveInfoRoleExecute
    end
    object aSaveClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1080' '#1086#1073#1085#1086#1074#1080#1090#1100
    end
    object aBegin: TAction
      Caption = 'aBegin'
      OnExecute = aBeginExecute
    end
  end
  object cdsFunctionGet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 272
  end
  object dsFunctionGet: TDataSource
    DataSet = cdsFunctionGet
    Left = 568
    Top = 320
  end
  object cdsFunctionSet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 272
  end
  object dsFunctionSet: TDataSource
    DataSet = cdsFunctionSet
    Left = 288
    Top = 320
  end
end
