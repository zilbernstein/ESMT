object frmReports: TfrmReports
  Left = 330
  Top = 240
  Caption = #1054#1073#1086#1079#1088#1077#1074#1072#1090#1077#1083#1100' '#1086#1090#1095#1077#1090#1086#1074
  ClientHeight = 605
  ClientWidth = 1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 18
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 1044
    Height = 581
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tsReportMain
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    Properties.TabSlants.Positions = [spRight]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabSlants.Positions = [spRight]
    ClientRectBottom = 581
    ClientRectRight = 1044
    ClientRectTop = 25
    object tsReportMain: TcxTabSheet
      Caption = 'tsReportMain'
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 69
        Width = 1044
        Height = 417
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1044
          Height = 417
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object grd: TcxGrid
            Left = 0
            Top = 0
            Width = 1044
            Height = 417
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            object btvReportTree: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = btvReportTreeCustomDrawCell
              DataController.DataModeController.DetailInSQLMode = True
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = ' '
                  Kind = skMax
                  Position = spFooter
                  FieldName = 'parent_report_id'
                  DisplayText = ' '
                  Sorted = True
                end>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsBehavior.IncSearchItem = btvReportTreeColumn1
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              Styles.StyleSheet = DMMain.stlshtGrdTV_11
              object clmnCheck: TcxGridDBColumn
                Caption = #1042#1099#1073#1086#1088
                DataBinding.FieldName = 'checked'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.Alignment = taCenter
                Properties.Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C30E0000C30E00000000000000000000FF00FFFF00FF
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
                Properties.ValueChecked = '1'
                Properties.ValueGrayed = '0'
                Properties.OnEditValueChanged = clmnCheckPropertiesEditValueChanged
                MinWidth = 55
                Options.HorzSizing = False
                Width = 55
              end
              object btvReportTreeColumn1: TcxGridDBColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
                DataBinding.FieldName = 'report_name'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 738
              end
              object btvReportTreeColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'parent_report_name'
                Visible = False
                GroupIndex = 0
                Options.Editing = False
                IsCaptionAssigned = True
              end
              object btvReportTreeColumn3: TcxGridDBColumn
                Caption = #1050#1086#1076' '#1086#1090#1095#1077#1090#1072
                DataBinding.FieldName = 'report_id'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                MinWidth = 172
                Options.Editing = False
                Options.HorzSizing = False
                Width = 172
              end
            end
            object lvl: TcxGridLevel
              GridView = btvReportTree
            end
          end
        end
      end
      object bdcReportCommon: TdxBarDockControl
        Left = 0
        Top = 44
        Width = 1044
        Height = 25
        Align = dalTop
        BarManager = brmngReports
        SunkenBorder = False
        UseOwnSunkenBorder = True
        Visible = False
      end
      object Panel6: TPanel
        Left = 0
        Top = 37
        Width = 1044
        Height = 7
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 0
        Top = 486
        Width = 1044
        Height = 70
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 3
        DesignSize = (
          1044
          70)
        object cxButton9: TcxButton
          Left = 879
          Top = 3
          Width = 165
          Height = 64
          Action = aPrepareReports
          Anchors = [akRight]
          Cancel = True
          Colors.Hot = 8966911
          Colors.Pressed = 5619711
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
        end
        object cxLabel18: TcxLabel
          Left = 7
          Top = 26
          Caption = #1042#1099#1073#1088#1072#1085#1086' '#1086#1090#1095#1077#1090#1086#1074
          Transparent = True
        end
        object eSelectedCount: TcxTextEdit
          Left = 135
          Top = 24
          Enabled = False
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.Color = clBtnFace
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
          Text = '0'
          Width = 50
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1044
        Height = 37
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 4
        object deDateFinish: TcxDateEdit
          Left = 127
          Top = 11
          EditValue = 0d
          Properties.DateButtons = [btnToday]
          Properties.DateOnError = deToday
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.YearsInMonthList = False
          Style.BorderStyle = ebsUltraFlat
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
          Width = 116
        end
        object deDateBegin: TcxDateEdit
          Left = 2
          Top = 11
          EditValue = 0d
          Properties.DateButtons = [btnToday]
          Properties.DateOnError = deToday
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.YearsInMonthList = False
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.ButtonStyle = btsDefault
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
          Width = 119
        end
        object cbFirmTree_: TcxLookupComboBox
          Left = 249
          Top = 11
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 15
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'kod_firm'
          Properties.ListColumns = <
            item
              FieldName = 'firm_name'
            end>
          Properties.ListOptions.ShowHeader = False
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
          TabOrder = 2
          Width = 384
        end
      end
    end
    object tsReportPreview: TcxTabSheet
      Caption = 'tsReportPreview'
      ImageIndex = 1
      inline fmePreviewReport: TfmePreview
        Left = 0
        Top = 0
        Width = 1044
        Height = 556
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 1044
        ExplicitHeight = 556
        inherited bdcPreviewCommon: TdxBarDockControl
          Width = 1044
          ExplicitWidth = 1044
        end
        inherited Panel1: TPanel
          Top = 515
          Width = 1044
          ExplicitTop = 515
          ExplicitWidth = 1044
          inherited pnlNumPage: TPanel
            inherited cxLabel1: TcxLabel
              Style.IsFontAssigned = True
              AnchorX = 28
              AnchorY = 9
            end
          end
          inherited pnlScale: TPanel
            inherited cxLabel2: TcxLabel
              Style.IsFontAssigned = True
              AnchorX = 33
              AnchorY = 9
            end
          end
        end
        inherited Panel2: TPanel
          Width = 1044
          Height = 460
          ExplicitWidth = 1044
          ExplicitHeight = 460
          inherited frxPreview: TfrxPreview
            Width = 1042
            Height = 458
            ExplicitWidth = 1042
            ExplicitHeight = 458
          end
        end
        inherited frxR: TfrxReport
          ReportOptions.LastChange = 41858.668592789300000000
          ScriptText.Strings = ()
        end
        inherited bmPreview: TdxBarManager
          DockControlHeights = (
            0
            0
            0
            0)
        end
        inherited imlSmall: TcxImageList
          FormatVersion = 1
        end
        inherited imlLarge: TcxImageList
          FormatVersion = 1
        end
      end
    end
    object tsOthers: TcxTabSheet
      Caption = 'tsOthers'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlPeriodConditions: TPanel
        Left = 3
        Top = 3
        Width = 191
        Height = 29
        BevelOuter = bvNone
        TabOrder = 0
        object bdcDateBegin: TcxDateEdit
          Left = 2
          Top = 3
          EditValue = 0d
          ParentFont = False
          Properties.DateButtons = [btnToday]
          Properties.DateOnError = deToday
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.YearsInMonthList = False
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.ButtonStyle = btsDefault
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
          Width = 89
        end
        object cxLabel3: TcxLabel
          Left = 91
          Top = 5
          Caption = '-'
          ParentFont = False
          Style.BorderColor = clMenuText
          Style.BorderStyle = ebsNone
          Style.Edges = [bLeft]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.Kind = lfUltraFlat
        end
        object bdcDateEnd: TcxDateEdit
          Left = 98
          Top = 3
          EditValue = 0d
          ParentFont = False
          Properties.DateButtons = [btnToday]
          Properties.DateOnError = deToday
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.YearsInMonthList = False
          Style.BorderStyle = ebsUltraFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
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
          TabOrder = 2
          Width = 89
        end
      end
      object pnlFuelConditions: TPanel
        Left = 6
        Top = 36
        Width = 291
        Height = 28
        BevelOuter = bvNone
        TabOrder = 1
        object cmFuel: TcxImageComboBox
          Left = 4
          Top = 3
          EditValue = '0'
          ParentFont = False
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
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
          Width = 281
        end
      end
      object cbFirmTree: TdxLookupTreeView
        Left = 3
        Top = 70
        Width = 414
        Height = 26
        CanSelectParents = True
        DropDownRows = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        TabStop = True
        Text = ''
        TreeViewColor = clWindow
        TreeViewCursor = crDefault
        TreeViewFont.Charset = DEFAULT_CHARSET
        TreeViewFont.Color = clWindowText
        TreeViewFont.Height = -15
        TreeViewFont.Name = 'Tahoma'
        TreeViewFont.Style = []
        TreeViewIndent = 19
        TreeViewReadOnly = True
        TreeViewShowButtons = True
        TreeViewShowHint = False
        TreeViewShowLines = True
        TreeViewShowRoot = True
        TreeViewSortType = stNone
        DisplayField = 'firm_name'
        DividedChar = '.'
        KeyField = 'kod_firm'
        ListField = 'firm_name'
        Options = [trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
        ParentField = 'kod_firm_parent'
        RootValue = Null
        TextStyle = tvtsFull
        Alignment = taLeftJustify
      end
    end
  end
  object stsCommon: TdxStatusBar
    Left = 0
    Top = 581
    Width = 1044
    Height = 24
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clNavy
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 500
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = 615681
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = stsCommonContainer1
        Width = 120
      end>
    PaintStyle = stpsFlat
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    object stsCommonContainer1: TdxStatusBarContainerControl
      Left = 709
      Top = 3
      Width = 318
      Height = 20
      object prgsMain: TcxProgressBar
        Left = 0
        Top = 3
        Align = alBottom
        ParentFont = False
        Properties.BarStyle = cxbsGradient
        Properties.EndColor = 16766935
        Properties.Max = 5.000000000000000000
        Properties.OverloadBeginColor = clWhite
        Properties.OverloadEndColor = clWhite
        Properties.OverloadValue = 5.000000000000000000
        Properties.PeakColor = clWhite
        Properties.PeakValue = 5.000000000000000000
        Properties.SolidTextColor = True
        Style.BorderColor = clBtnFace
        Style.BorderStyle = ebsOffice11
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.TextColor = clWindowText
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 0
        ExplicitTop = -1
        Width = 318
      end
    end
  end
  object alReports: TActionList
    Left = 431
    Top = 176
    object aGetTemplates: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1090#1095#1077#1090#1086#1074
      ImageIndex = 43
      OnExecute = aGetTemplatesExecute
    end
    object aPrepareOutParams: TAction
      Caption = 'aPrepareOutParams'
      ImageIndex = 14
      OnExecute = aPrepareOutParamsExecute
    end
    object aSimpleUpdateStatus: TAction
      Caption = 'aSimpleUpdateStatus'
      ImageIndex = 14
    end
    object aInitiatorUpdateStatus: TAction
      Caption = 'aInitiatorUpdateStatus'
      ImageIndex = 14
    end
    object aStoreIniSettings: TAction
      Caption = 'aStoreIniSettings'
      ImageIndex = 14
      OnExecute = aStoreIniSettingsExecute
    end
    object aRestoreIniSettings: TAction
      Caption = 'aRestoreIniSettings'
      ImageIndex = 14
      OnExecute = aRestoreIniSettingsExecute
    end
    object aExit: TAction
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 8
      OnExecute = aExitExecute
    end
    object aGetFirmList: TAction
      Caption = 'aGetFirmList'
      ImageIndex = 0
      OnExecute = aGetFirmListExecute
    end
    object aSelectFirm: TAction
      Caption = 'aSelectFirm'
      ImageIndex = 14
    end
    object aGetRepair: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1088#1077#1084#1086#1085#1090#1086#1074
      ImageIndex = 0
    end
    object aGetSeria: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1077#1088#1080#1081
      ImageIndex = 0
    end
    object aPrepareParam_Tjaga: TAction
      Caption = 'aPrepareParam_Tjaga'
      ImageIndex = 14
    end
    object aHelpSupport: TAction
      Caption = #1057#1087#1088#1072#1074#1082#1072' '#1080' '#1087#1086#1076#1076#1077#1088#1078#1082#1072' '
      Hint = #1057#1087#1088#1072#1074#1082#1072' '#1080' '#1087#1086#1076#1076#1077#1088#1078#1082#1072' '
      ImageIndex = 37
      OnExecute = aHelpSupportExecute
    end
    object aGoOnForum: TAction
      Caption = #1060#1086#1088#1091#1084
      Hint = #1054#1073#1089#1091#1076#1080#1090#1100' '#1085#1072' '#1092#1086#1088#1091#1084#1077
      ImageIndex = 39
      OnExecute = aGoOnForumExecute
    end
    object aViewHelp: TAction
      Caption = #1056#1091#1082#1086#1074#1086#1076#1089#1090#1074#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Hint = #1057#1087#1088#1072#1074#1082#1072' '#1080' on-line '#1087#1086#1076#1076#1077#1088#1078#1082#1072
      ImageIndex = 38
      Visible = False
      OnExecute = aViewHelpExecute
    end
    object aSendMail: TAction
      Caption = #1053#1072#1087#1080#1089#1072#1090#1100' '#1087#1080#1089#1100#1084#1086' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1084
      Hint = #1053#1072#1087#1080#1089#1072#1090#1100' '#1087#1080#1089#1100#1084#1086' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1084
      ImageIndex = 10
      OnExecute = aSendMailExecute
    end
    object aShowVersion: TAction
      Caption = #1042#1077#1088#1089#1080#1103
      Hint = #1042#1077#1088#1089#1080#1103' '#1084#1086#1076#1091#1083#1103
      ImageIndex = 14
    end
    object aLocSearch: TAction
      Caption = #1053#1072#1081#1090#1080' '#1089#1077#1082#1094#1080#1102
      ImageIndex = 34
    end
    object aPrepareFilterString: TAction
      Caption = 'aPrepareFilterString'
      ImageIndex = 14
    end
    object aFillFuelList: TAction
      Caption = 'aFillFuelList'
      ImageIndex = 43
    end
  end
  object tmrReports: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrReportsTimer
    Left = 375
    Top = 176
  end
  object brmngReports: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Group2')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    ImageOptions.Images = DMMain.imlSmall
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    MenuAnimations = maUnfold
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 551
    Top = 179
    DockControlHeights = (
      0
      0
      0
      0)
    object tbTools: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = #1042#1077#1088#1093#1085#1103#1103' '#1087#1072#1085#1077#1083#1100
      CaptionButtons = <>
      Color = clBtnFace
      DockControl = bdcReportCommon
      DockedDockControl = bdcReportCommon
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 199
      FloatTop = 208
      FloatClientWidth = 165
      FloatClientHeight = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 122
          Visible = True
          ItemName = 'deDateBegin_'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 133
          Visible = True
          ItemName = 'deDateFinish_'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object brmngReportBrowserBar2: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      Color = clBtnFace
      DockedDockingStyle = dsNone
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 199
      FloatTop = 208
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 24
          Visible = True
          ItemName = 'cxBarEditItem3'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem4'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = True
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = #1042#1080#1076' '#1055#1057
      Category = 0
      Hint = #1042#1080#1076' '#1055#1057
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.Alignment = taRightJustify
      Properties.UseAlignmentWhenInplace = True
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = #1058#1077#1087#1083#1086#1074#1086#1079#1099
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
          Value = '2'
        end>
      InternalEditValue = '1'
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = #1057#1077#1088#1080#1103
      Category = 0
      Hint = #1057#1077#1088#1080#1103
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.Alignment = taRightJustify
      Properties.UseAlignmentWhenInplace = True
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
    end
    object dxBarButton2: TdxBarButton
      Action = aGoOnForum
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = aViewHelp
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aSendMail
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Align = iaRight
      Caption = '   '#1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100'   '
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1086#1090#1095#1077#1090#1099
      Visible = ivAlways
      LargeImageIndex = 3
      ShortCut = 116
      AutoGrayScale = False
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077': '#1092#1080#1083#1080#1072#1083', '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      Visible = ivAlways
    end
    object deDateBegin_: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = #1053#1072#1095#1072#1083#1086' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowEditor = False
      ShowClearButton = False
      ShowDayText = False
    end
    object deDateFinish_: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowEditor = False
      ShowClearButton = False
      ShowDayText = False
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1054#1090#1095#1077#1090#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
      Category = 0
      Hint = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = '-'
      Category = 0
      Visible = ivAlways
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object alReportsLrg: TActionList
    Images = DMMain.imlMain32
    Left = 487
    Top = 178
    object aPrepareReports: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Enabled = False
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1086#1090#1095#1077#1090#1099
      ImageIndex = 5
      OnExecute = aPrepareReportsExecute
    end
  end
  object cdsR: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 32
  end
  object dsR: TDataSource
    DataSet = cdsR
    Left = 900
    Top = 32
  end
  object rprt: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39204.445795347200000000
    ReportOptions.LastChange = 41537.678151944440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.          ')
    OnStartReport = 'frxROnStartReport'
    Left = 936
    Top = 32
    Datasets = <
      item
        DataSet = fmePreview.frxDBNode
        DataSetName = 'frxDBNode'
      end
      item
        DataSet = fmePreview.frxDBNode
        DataSetName = 'frxDBNode'
      end>
    Variables = <
      item
        Name = ' RepVar'
        Value = Null
      end
      item
        Name = 'NameReport'
        Value = #39#1056#1072#1089#1087#1088#1077#1076'. '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074' '#1087#1086' '#1074#1080#1076#1072#1084' '#1086#1073#1086#1088'-'#1103#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      VGuides.Strings = (
        '0')
      object GroupHeader1: TfrxGroupHeader
        Top = 158.740260000000000000
        Width = 1084.725110000000000000
        Condition = '<NameReport>'
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 453.543600000000000000
        Width = 1084.725110000000000000
        object Memo21: TfrxMemoView
          Align = baClient
          Width = 1084.725110000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          HideZeros = True
          Memo.UTF8W = (
            #1045#1057#1052#1058)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677136060000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBNode."action_type_id"'
        OutlineText = 'frxDBNode."action_type_name"'
        object Memo27: TfrxMemoView
          Align = baWidth
          Width = 1084.725110000000000000
          Height = 22.677136060000000000
          ShowHint = False
          AllowHTMLTags = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 1.000000000000000000
          Memo.UTF8W = (
            '[frxDBNode."action_type_name"]')
          VAlign = vaCenter
        end
      end
      object hdrTeplo: TfrxHeader
        Height = 75.590575590000000000
        Top = 226.771800000000000000
        Width = 1084.725110000000000000
        ReprintOnNewPage = True
        object Memo22: TfrxMemoView
          Left = 816.378357950000000000
          Top = 37.795300000000000000
          Width = 113.385836540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1087#1080#1089#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Width = 26.456639210000000000
          Height = 75.590556060000000000
          ShowHint = False
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 559.370440000000000000
          Top = 37.795300000000000000
          Width = 196.535496540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 502.677490000000000000
          Top = 37.795300000000000000
          Width = 56.692886540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 502.677490000000000000
          Width = 253.228446540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1085#1094#1080#1076#1077#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 929.764380000000000000
          Width = 154.960666540000000000
          Height = 75.590548740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
            #1059#1079#1077#1083
            #1061#1072#1088#1072#1082#1090#1077#1088' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 755.906000000000000000
          Width = 173.858316540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1051#1086#1082#1086#1084#1086#1090#1080#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 755.906000000000000000
          Top = 37.795300000000000000
          Width = 60.472414090000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088#1080#1103', '#1085#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 26.456710000000000000
          Width = 41.574759210000000000
          Height = 75.590556060000000000
          ShowHint = False
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1051#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 68.031540000000000000
          Width = 94.488184090000000000
          Height = 75.590548740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1080#1083#1080#1072#1083
            #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 162.519790000000000000
          Width = 340.157636540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 162.519790000000000000
          Top = 37.795300000000000000
          Width = 188.976436540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 351.496290000000000000
          Top = 37.795300000000000000
          Width = 60.472416540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1088#1086#1082' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 411.968770000000000000
          Top = 37.795300000000000000
          Width = 90.708656540000000000
          Height = 37.795248740000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object md: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677167800000000000
        ParentFont = False
        Top = 325.039580000000000000
        Width = 1084.725110000000000000
        DataSet = fmePreview.frxDBNode
        DataSetName = 'frxDBNode'
        RowCount = 0
        Stretched = True
        object Memo116: TfrxMemoView
          Width = 26.456688030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Width = 41.574808030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."sheet_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 755.906000000000000000
          Width = 60.472458030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."tpe_name"]')
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 816.378480000000000000
          Width = 113.385878030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."firm_name_road"]')
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 502.677490000000000000
          Width = 56.692928030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 559.370440000000000000
          Width = 196.535538030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."incident_descr"]')
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 929.764380000000000000
          Width = 154.960708030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."system_name"]')
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 68.031540000000000000
          Width = 94.488228030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."service_firm_mnemo"]')
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 162.519790000000000000
          Width = 188.976478030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."action_descr"]')
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 351.496290000000000000
          Width = 60.472458030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."date_performance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 411.968770000000000000
          Width = 90.708698030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBNode."fio"]')
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo25: TfrxMemoView
          Align = baCenter
          Width = 1084.725110000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNode."rep_title"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baWidth
          Top = 56.692950000000000000
          Width = 1084.725110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085' [frxDBNode."rep_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 408.189240000000000000
        Width = 1084.725110000000000000
        object Memo18: TfrxMemoView
          Width = 1084.725088030000000000
          Height = 22.677167800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          Color = 16774617
          DataSet = fmePreview.frxDBNode
          DataSetName = 'frxDBNode'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086' [Line#]')
          VAlign = vaCenter
        end
      end
    end
  end
  object frxChartObject1: TfrxChartObject
    Left = 656
    Top = 185
  end
end
