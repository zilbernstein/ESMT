object frmReport_Interactive: TfrmReport_Interactive
  Left = 0
  Top = 0
  Caption = #1048#1085#1090#1077#1088#1072#1082#1090#1080#1074#1085#1099#1077' '#1086#1090#1095#1077#1090#1099
  ClientHeight = 742
  ClientWidth = 1191
  Color = 14148590
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl: TcxPageControl
    Left = 0
    Top = 0
    Width = 1191
    Height = 742
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsInteractiveReport
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 742
    ClientRectRight = 1191
    ClientRectTop = 23
    object tsInteractiveReport: TcxTabSheet
      Caption = 'tsInteractiveReport'
      ImageIndex = 0
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1185
        Height = 41
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 0
        object btnCurrentDay: TcxButton
          Left = 2
          Top = 2
          Width = 75
          Height = 37
          Align = alLeft
          Action = aCurrentDay
          Colors.Default = 14148590
          Colors.Pressed = 7318783
          Colors.PressedText = clGreen
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          SpeedButtonOptions.GroupIndex = 1
          TabOrder = 0
          WordWrap = True
        end
        object btnCurrentMonth: TcxButton
          Left = 77
          Top = 2
          Width = 75
          Height = 37
          Align = alLeft
          Action = aCurrentMonth
          Colors.Default = 14148590
          Colors.Pressed = 7318783
          Colors.PressedText = clGreen
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          SpeedButtonOptions.GroupIndex = 1
          SpeedButtonOptions.Down = True
          TabOrder = 1
          WordWrap = True
        end
        object btnPeriod: TcxButton
          Left = 239
          Top = 2
          Width = 99
          Height = 37
          Align = alLeft
          Action = aPeriod
          Colors.Default = 14148590
          Colors.Pressed = 7318783
          Colors.PressedText = clGreen
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          SpeedButtonOptions.GroupIndex = 1
          TabOrder = 2
          WordWrap = True
        end
        object cxButton1: TcxButton
          Left = 1103
          Top = 2
          Width = 40
          Height = 37
          Align = alRight
          Action = aPrintPreview
          LookAndFeel.Kind = lfStandard
          LookAndFeel.SkinName = 'MySkin_Caramel'
          PaintStyle = bpsGlyph
          TabOrder = 3
          WordWrap = True
        end
        object cxButton2: TcxButton
          Left = 1143
          Top = 2
          Width = 40
          Height = 37
          Align = alRight
          Action = aExportXLS
          PaintStyle = bpsGlyph
          TabOrder = 4
        end
        object btnCurrentYear: TcxButton
          Left = 152
          Top = 2
          Width = 87
          Height = 37
          Align = alLeft
          Action = aCurrentYear
          Colors.Default = 14148590
          Colors.Pressed = 7318783
          Colors.PressedText = clGreen
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          SpeedButtonOptions.GroupIndex = 1
          TabOrder = 5
          WordWrap = True
        end
        object Panel2: TPanel
          Left = 338
          Top = 2
          Width = 514
          Height = 37
          Align = alLeft
          BevelEdges = [beLeft, beRight]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 6
          DesignSize = (
            514
            37)
          object deDateBegin: TcxDateEdit
            Left = 6
            Top = 7
            EditValue = 0d
            Properties.DateButtons = [btnToday]
            Properties.DateOnError = deToday
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.YearsInMonthList = False
            Properties.OnChange = deDateBeginPropertiesChange
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
            TabOrder = 0
            Width = 119
          end
          object deDateFinish: TcxDateEdit
            Left = 124
            Top = 7
            EditValue = 0d
            Properties.DateButtons = [btnToday]
            Properties.DateOnError = deToday
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.YearsInMonthList = False
            Properties.OnChange = deDateFinishPropertiesChange
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
            TabOrder = 1
            Width = 116
          end
          object cbFirmTree_: TcxLookupComboBox
            Left = 239
            Top = 7
            Anchors = [akLeft, akTop, akRight]
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 25
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'kod_firm'
            Properties.ListColumns = <
              item
                FieldName = 'firm_name'
              end>
            Properties.ListOptions.ShowHeader = False
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
            TabOrder = 2
            Width = 269
          end
        end
        object cxButton3: TcxButton
          Left = 852
          Top = 2
          Width = 97
          Height = 37
          Align = alLeft
          Action = aRefresh
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 7
        end
      end
      object pcReport: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 50
        Width = 1185
        Height = 666
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = tsFilial_Seria
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 9
        Properties.TabSlants.Positions = [spLeft, spRight]
        LookAndFeel.SkinName = 'Caramel'
        TabSlants.Positions = [spLeft, spRight]
        OnChange = pcReportChange
        ClientRectBottom = 666
        ClientRectRight = 1185
        ClientRectTop = 23
        object tsFilial_Eq: TcxTabSheet
          Caption = ' '#1060#1080#1083#1080#1072#1083'-'#1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' '
          ImageIndex = 0
          TabVisible = False
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdReport: TcxGrid
            Left = 0
            Top = 0
            Width = 1185
            Height = 643
            Align = alClient
            TabOrder = 0
            object btv_Filial_Eq_: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
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
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.StyleSheet = DMMain.stlshtGrdTV_11
              object btv_Filial_Eq_Column1: TcxGridDBColumn
                DataBinding.FieldName = 'row_field_name'
              end
              object btv_Filial_Eq_Column2: TcxGridDBColumn
                DataBinding.FieldName = 'diesel'
              end
              object btv_Filial_Eq_Column3: TcxGridDBColumn
                DataBinding.FieldName = 'diesel_perc'
              end
              object btv_Filial_Eq_Column4: TcxGridDBColumn
                DataBinding.FieldName = 'auxiliary_diesel'
              end
              object btv_Filial_Eq_Column5: TcxGridDBColumn
                DataBinding.FieldName = 'auxiliary_diesel_perc'
              end
              object btv_Filial_Eq_Column6: TcxGridDBColumn
                DataBinding.FieldName = 'brake_equipment'
              end
              object btv_Filial_Eq_Column7: TcxGridDBColumn
                DataBinding.FieldName = 'brake_equipment_perc'
              end
              object btv_Filial_Eq_Column8: TcxGridDBColumn
                DataBinding.FieldName = 'safety_device'
              end
              object btv_Filial_Eq_Column9: TcxGridDBColumn
                DataBinding.FieldName = 'safety_device_perc'
              end
              object btv_Filial_Eq_Column10: TcxGridDBColumn
                DataBinding.FieldName = 'electrical_equipment'
              end
              object btv_Filial_Eq_Column11: TcxGridDBColumn
                DataBinding.FieldName = 'electrical_equipment_perc'
              end
              object btv_Filial_Eq_Column12: TcxGridDBColumn
                DataBinding.FieldName = 'mechanical_equipment'
              end
              object btv_Filial_Eq_Column13: TcxGridDBColumn
                DataBinding.FieldName = 'mechanical_equipment_perc'
              end
              object btv_Filial_Eq_Column14: TcxGridDBColumn
                DataBinding.FieldName = 'electric_machine'
              end
              object btv_Filial_Eq_Column15: TcxGridDBColumn
                DataBinding.FieldName = 'electric_machine_perc'
              end
              object btv_Filial_Eq_Column16: TcxGridDBColumn
                DataBinding.FieldName = 'diagnostic_equipment'
              end
              object btv_Filial_Eq_Column17: TcxGridDBColumn
                DataBinding.FieldName = 'diagnostic_equipment_perc'
              end
              object btv_Filial_Eq_Column18: TcxGridDBColumn
                DataBinding.FieldName = 'total'
              end
              object btv_Filial_Eq_Column19: TcxGridDBColumn
                DataBinding.FieldName = 'tjaga_name'
                GroupIndex = 0
              end
            end
            object btv_Filial_Eq: TcxGridDBBandedTableView
              OnDblClick = aShowDetail_Filial_EqExecute
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = ' '
                  Kind = skMax
                  FieldName = 'kod_firm_service'
                  Sorted = True
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #1048#1090#1086#1075#1086
                  Kind = skCount
                  Column = btv_Filial_EqColumn2
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn3
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn5
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn7
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn9
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn11
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn13
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn15
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn17
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn19
                end
                item
                  Format = '#######'
                  Kind = skSum
                  Column = btv_Filial_EqColumn20
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.BandHeaderEndEllipsis = True
              Styles.StyleSheet = DMMain.stlshtBTV11
              Bands = <
                item
                  Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                  HeaderAlignmentHorz = taRightJustify
                  Width = 172
                end
                item
                  Caption = #1042#1089#1077#1075#1086
                  Width = 50
                end
                item
                  Caption = #1044#1080#1079#1077#1083#1100
                  Width = 101
                end
                item
                  Caption = #1042#1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1086#1077
                  Width = 101
                end
                item
                  Caption = #1058#1086#1088#1084#1086#1079#1085#1086#1077
                  Width = 102
                end
                item
                  Caption = #1055#1088#1080#1073#1086#1088#1099' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
                  Width = 101
                end
                item
                  Caption = #1069#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1086#1077
                  Width = 102
                end
                item
                  Caption = #1052#1077#1093#1072#1085#1080#1095#1077#1089#1082#1086#1077
                  Width = 102
                end
                item
                  Caption = #1069#1083#1077#1082#1090#1088#1086#1084#1072#1096#1080#1085#1099
                  Width = 100
                end
                item
                  Caption = #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1077
                  Width = 102
                end
                item
                  Caption = #1053#1077' '#1091#1082#1072#1079#1072#1085#1086
                  Visible = False
                  Width = 102
                end>
              object btv_Filial_EqColumn1: TcxGridDBBandedColumn
                Caption = ' '
                DataBinding.FieldName = 'tjaga_name'
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn2: TcxGridDBBandedColumn
                Tag = -100
                Caption = #1060#1080#1083#1080#1072#1083
                DataBinding.FieldName = 'row_field_name'
                HeaderAlignmentHorz = taCenter
                Width = 150
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn3: TcxGridDBBandedColumn
                Tag = 3
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'diesel'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDataText = btv_Filial_EqColumn3GetDataText
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn4: TcxGridDBBandedColumn
                Tag = 3
                AlternateCaption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1090' '#1086#1073#1097#1077#1075#1086' '#1095#1080#1089#1083#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
                Caption = '%'
                DataBinding.FieldName = 'diesel_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn5: TcxGridDBBandedColumn
                Tag = 4
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'auxiliary_diesel'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDataText = btv_Filial_EqColumn3GetDataText
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn6: TcxGridDBBandedColumn
                Tag = 4
                Caption = '%'
                DataBinding.FieldName = 'auxiliary_diesel_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn7: TcxGridDBBandedColumn
                Tag = 8
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'brake_equipment'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 4
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn8: TcxGridDBBandedColumn
                Tag = 8
                Caption = '%'
                DataBinding.FieldName = 'brake_equipment_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 4
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn9: TcxGridDBBandedColumn
                Tag = 9
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'safety_device'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 5
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn10: TcxGridDBBandedColumn
                Tag = 9
                Caption = '%'
                DataBinding.FieldName = 'safety_device_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 5
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn11: TcxGridDBBandedColumn
                Tag = 6
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'electrical_equipment'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 6
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn12: TcxGridDBBandedColumn
                Tag = 6
                Caption = '%'
                DataBinding.FieldName = 'electrical_equipment_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 6
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn13: TcxGridDBBandedColumn
                Tag = 7
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'mechanical_equipment'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 7
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn14: TcxGridDBBandedColumn
                Tag = 7
                Caption = '%'
                DataBinding.FieldName = 'mechanical_equipment_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 7
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn15: TcxGridDBBandedColumn
                Tag = 5
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'electric_machine'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 8
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn16: TcxGridDBBandedColumn
                Tag = 5
                Caption = '%'
                DataBinding.FieldName = 'electric_machine_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 8
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn17: TcxGridDBBandedColumn
                Tag = 10
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'diagnostic_equipment'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 9
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn18: TcxGridDBBandedColumn
                Tag = 10
                Caption = '%'
                DataBinding.FieldName = 'diagnostic_equipment_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 9
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn19: TcxGridDBBandedColumn
                Tag = -1
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'total'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn20: TcxGridDBBandedColumn
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'none_equipment'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '#######'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 60
                Position.BandIndex = 10
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btv_Filial_EqColumn21: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'none_equipment_perc'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = '########'
                OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = DMMain.stlFormatPerc
                Width = 60
                Position.BandIndex = 10
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object lvl_Filial_Eq: TcxGridLevel
              Caption = '  '#1060#1080#1083#1080#1072#1083'-'#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077'  '
              GridView = btv_Filial_Eq
            end
          end
        end
        object tsDepo_Eq: TcxTabSheet
          Caption = ' '#1044#1077#1087#1086'-'#1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' '
          ImageIndex = 1
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pcFilial_Eq: TcxPageControl
            Left = 0
            Top = 0
            Width = 1185
            Height = 643
            Align = alClient
            Color = 14148590
            ParentBackground = False
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Properties.ActivePage = tsFilial_Eq_Graph
            Properties.CustomButtons.Buttons = <>
            Properties.HotTrack = True
            Properties.Images = DMMain.imlMain24
            Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
            Properties.Style = 9
            Properties.TabHeight = 40
            Properties.TabSlants.Positions = [spLeft, spRight]
            LookAndFeel.NativeStyle = False
            TabSlants.Positions = [spLeft, spRight]
            ClientRectBottom = 643
            ClientRectRight = 1185
            ClientRectTop = 41
            object tsFilial_Eq_Graph: TcxTabSheet
              Caption = '   '#1044#1080#1072#1075#1088#1072#1084#1084#1072'   '
              ImageIndex = 2
              OnShow = tsFilial_Eq_GraphShow
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object lblEq_Graph: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitTop = -6
                ExplicitWidth = 1193
              end
              object dxStatusBar4: TdxStatusBar
                Left = 0
                Top = 579
                Width = 1185
                Height = 23
                Images = DMMain.imlSmall
                Panels = <
                  item
                    PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
                    PanelStyle.Color = clBtnFace
                    PanelStyle.Font.Charset = DEFAULT_CHARSET
                    PanelStyle.Font.Color = clRed
                    PanelStyle.Font.Height = -13
                    PanelStyle.Font.Name = 'Tahoma'
                    PanelStyle.Font.Style = []
                    PanelStyle.ParentFont = False
                    Text = #1052#1077#1090#1086#1076' '#1072#1085#1072#1083#1080#1079#1072' - "80/20"'
                    Width = 200
                  end>
                PaintStyle = stpsFlat
                SizeGrip = False
                LookAndFeel.Kind = lfFlat
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
              end
              object dxNavBar3: TdxNavBar
                Left = 0
                Top = 28
                Width = 1185
                Height = 551
                Align = alClient
                ActiveGroupIndex = 1
                TabOrder = 1
                View = 14
                OptionsStyle.DefaultStyles.GroupHeader.BackColor = clBtnFace
                OptionsStyle.DefaultStyles.GroupHeader.BackColor2 = clBtnFace
                OptionsStyle.DefaultStyles.GroupHeader.Font.Charset = DEFAULT_CHARSET
                OptionsStyle.DefaultStyles.GroupHeader.Font.Color = clBtnText
                OptionsStyle.DefaultStyles.GroupHeader.Font.Height = -15
                OptionsStyle.DefaultStyles.GroupHeader.Font.Name = 'Tahoma'
                OptionsStyle.DefaultStyles.GroupHeader.Font.Style = [fsBold]
                OptionsStyle.DefaultStyles.GroupHeader.AssignedValues = [savBackColor, savBackColor2, savFont]
                object dxNavBarGroup5: TdxNavBarGroup
                  Caption = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                  SelectedLinkIndex = -1
                  TopVisibleLinkIndex = 0
                  OptionsGroupControl.AllowControlResizing = True
                  OptionsGroupControl.ShowControl = True
                  OptionsGroupControl.UseControl = True
                  Links = <>
                end
                object dxNavBarGroup4: TdxNavBarGroup
                  Caption = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                  SelectedLinkIndex = -1
                  TopVisibleLinkIndex = 0
                  OptionsGroupControl.AllowControlResizing = True
                  OptionsGroupControl.ShowControl = True
                  OptionsGroupControl.UseControl = True
                  Links = <>
                end
                object dxNavBarGroup6: TdxNavBarGroup
                  Caption = #1042#1089#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1099
                  SelectedLinkIndex = -1
                  TopVisibleLinkIndex = 0
                  UseRestSpace = True
                  OptionsGroupControl.AllowControlResizing = True
                  OptionsGroupControl.ShowControl = True
                  OptionsGroupControl.UseControl = True
                  Links = <>
                end
                object dxNavBarGroupControl5: TdxNavBarGroupControl
                  Left = 14
                  Top = 42
                  Width = 1140
                  Height = 200
                  Caption = 'dxNavBar1Group2Control'
                  TabOrder = 1
                  GroupIndex = 0
                  OriginalHeight = 200
                  object grdEq_Electro_Graph: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1140
                    Height = 200
                    Cursor = crHandPoint
                    Align = alClient
                    TabOrder = 0
                    LevelTabs.Slants.Positions = [spLeft, spRight]
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    LookAndFeel.SkinName = 'Caramel'
                    object btvEq_Electro_Graph: TcxGridDBChartView
                      Categories.DataBinding.FieldName = 'system_name'
                      Categories.DisplayText = #1042#1080#1076#1099' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
                      DiagramArea.Enabled = False
                      DiagramBar.Legend.Position = cppBottom
                      DiagramColumn.Active = True
                      DiagramColumn.Legend.Position = cppNone
                      DiagramColumn.Styles.ValueCaptions = cxStyle1
                      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                      DiagramLine.Enabled = False
                      DiagramLine.Legend.Position = cppBottom
                      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                      DiagramLine.AxisValue.MinMaxValues = mmvAuto
                      DiagramLine.Styles.ValueCaptions = cxStyle1
                      DiagramLine.Values.VaryColorsByCategory = True
                      DiagramLine.Values.CaptionPosition = ldvcpAbove
                      DiagramLine.Values.HotSpotSize = 10
                      DiagramLine.Values.LineWidth = 3
                      DiagramLine.Values.MarkerSize = 10
                      DiagramLine.Values.MarkerStyle = cmsCircle
                      DiagramPie.Enabled = False
                      OptionsBehavior.ValueHotTrack = vhAlways
                      OptionsCustomize.DataDrillDown = False
                      Styles.Title = DMMain.stlGroup11
                      ToolBox.Border = tbNone
                      ToolBox.CustomizeButton = True
                      ToolBox.DataLevelsInfoVisible = dlivNever
                      ToolBox.DiagramSelector = True
                      ToolBox.Visible = tvAlways
                      OnGetValueHint = btvEq_GraphGetValueHint
                      OnValueClick = btvEq_Electro_GraphValueClick
                      object btvEq_Electro_Graph_datagroup_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Electro_Graph_datagroup_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_total'
                        DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Electro_Graph_datagroup_pers_of_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_of_total'
                        DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Electro_Graph_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Electro_Graph_GroupClassID: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'group_class_id'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Electro_Graph_KodTjaga: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'kod_tjaga'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Electro_Graph_SystemName: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'system_name'
                        SortOrder = soNone
                        Visible = False
                      end
                      object cxGridDBChartSeries38: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt'
                        DisplayText = #1042#1089#1077#1075#1086
                        Styles.Values = stl1
                        OnCustomDrawValue = btvseries_T_ReasonCustomDrawValue
                      end
                    end
                    object cxGridLevel17: TcxGridLevel
                      Tag = 1
                      Caption = #1044#1077#1087#1086'-'#1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                      GridView = btvEq_Electro_Graph
                    end
                  end
                end
                object dxNavBarGroupControl4: TdxNavBarGroupControl
                  Left = 14
                  Top = 289
                  Width = 1140
                  Height = 200
                  Caption = 'dxNavBar1Group1Control'
                  TabOrder = 0
                  GroupIndex = 1
                  OriginalHeight = 200
                  object grdEq_Teplo_Graph: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1140
                    Height = 200
                    Cursor = crHandPoint
                    Align = alClient
                    TabOrder = 0
                    LevelTabs.Slants.Positions = [spLeft, spRight]
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    LookAndFeel.SkinName = 'Caramel'
                    object btvEq_Teplo_Graph: TcxGridDBChartView
                      Categories.DataBinding.FieldName = 'system_name'
                      Categories.DisplayText = #1042#1080#1076#1099' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
                      DiagramArea.Enabled = False
                      DiagramBar.Legend.Position = cppBottom
                      DiagramColumn.Active = True
                      DiagramColumn.Legend.Position = cppNone
                      DiagramColumn.Styles.ValueCaptions = cxStyle1
                      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                      DiagramLine.Enabled = False
                      DiagramLine.Legend.Position = cppBottom
                      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                      DiagramLine.AxisValue.MinMaxValues = mmvAuto
                      DiagramLine.Styles.ValueCaptions = cxStyle1
                      DiagramLine.Values.VaryColorsByCategory = True
                      DiagramLine.Values.CaptionPosition = ldvcpAbove
                      DiagramLine.Values.HotSpotSize = 10
                      DiagramLine.Values.LineWidth = 3
                      DiagramLine.Values.MarkerSize = 10
                      DiagramLine.Values.MarkerStyle = cmsCircle
                      DiagramPie.Enabled = False
                      OptionsBehavior.ValueHotTrack = vhAlways
                      OptionsCustomize.DataDrillDown = False
                      Styles.Title = DMMain.stlGroup11
                      ToolBox.Border = tbNone
                      ToolBox.CustomizeButton = True
                      ToolBox.DataLevelsInfoVisible = dlivNever
                      ToolBox.DiagramSelector = True
                      ToolBox.Visible = tvAlways
                      OnGetValueHint = btvEq_GraphGetValueHint
                      OnValueClick = btvEq_Teplo_GraphValueClick
                      object btvEq_Teplo_Graph_datagroup_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Teplo_Graph_datagroup_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_total'
                        DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Teplo_Graph_datagroup_pers_of_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_of_total'
                        DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Teplo_Graph_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Teplo_Graph_GroupClassID: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'group_class_id'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Teplo_Graph_KodTjaga: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'kod_tjaga'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Teplo_Graph_SystemName: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'system_name'
                        SortOrder = soNone
                        Visible = False
                      end
                      object cxGridDBChartSeries35: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt'
                        DisplayText = #1042#1089#1077#1075#1086
                        Styles.Values = stl2
                        OnCustomDrawValue = btvseries_T_ReasonCustomDrawValue
                      end
                    end
                    object cxGridLevel16: TcxGridLevel
                      Tag = 1
                      Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                      GridView = btvEq_Teplo_Graph
                    end
                  end
                end
                object dxNavBarGroupControl6: TdxNavBarGroupControl
                  Left = 14
                  Top = 536
                  Width = 1140
                  Height = 200
                  Caption = 'dxNavBar1Group3Control'
                  TabOrder = 2
                  GroupIndex = 2
                  OriginalHeight = 200
                  object grdEq_Graph: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1140
                    Height = 200
                    Cursor = crHandPoint
                    Align = alClient
                    TabOrder = 0
                    LevelTabs.Slants.Positions = [spLeft, spRight]
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    LookAndFeel.SkinName = 'Caramel'
                    object btvEq_Graph: TcxGridDBChartView
                      Categories.DataBinding.FieldName = 'system_name'
                      Categories.DisplayText = #1042#1080#1076#1099' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
                      DiagramArea.Enabled = False
                      DiagramBar.Legend.Position = cppBottom
                      DiagramColumn.Active = True
                      DiagramColumn.Legend.Position = cppNone
                      DiagramColumn.Styles.ValueCaptions = cxStyle1
                      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                      DiagramLine.Enabled = False
                      DiagramLine.Legend.Position = cppBottom
                      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                      DiagramLine.AxisValue.MinMaxValues = mmvAuto
                      DiagramLine.Styles.ValueCaptions = cxStyle1
                      DiagramLine.Values.VaryColorsByCategory = True
                      DiagramLine.Values.CaptionPosition = ldvcpAbove
                      DiagramLine.Values.HotSpotSize = 10
                      DiagramLine.Values.LineWidth = 3
                      DiagramLine.Values.MarkerSize = 10
                      DiagramLine.Values.MarkerStyle = cmsCircle
                      DiagramPie.Enabled = False
                      OptionsBehavior.ValueHotTrack = vhAlways
                      OptionsCustomize.DataDrillDown = False
                      Styles.Title = DMMain.stlGroup11
                      ToolBox.Border = tbNone
                      ToolBox.CustomizeButton = True
                      ToolBox.DataLevelsInfoVisible = dlivNever
                      ToolBox.DiagramSelector = True
                      ToolBox.Visible = tvAlways
                      OnGetValueHint = btvEq_GraphGetValueHint
                      OnValueClick = btvEq_GraphValueClick
                      object btvEq_Graph_datagroup_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Graph_datagroup_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_total'
                        DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Graph_datagroup_pers_of_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_of_total'
                        DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvEq_Graph_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Graph_GroupClassID: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'group_class_id'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Graph_KodTjaga: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'kod_tjaga'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdgEq_Graph_SystemName: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'system_name'
                        SortOrder = soNone
                        Visible = False
                      end
                      object cxGridDBChartSeries41: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt'
                        DisplayText = #1042#1089#1077#1075#1086
                        Styles.Values = stl4
                        OnCustomDrawValue = btvseries_T_ReasonCustomDrawValue
                      end
                      object cxGridDBChartSeries42: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt_teplo'
                        DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                        Visible = False
                        Styles.Values = stl2
                      end
                      object cxGridDBChartSeries43: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt_electro'
                        DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                        Visible = False
                        Styles.Values = stl1
                      end
                    end
                    object cxGridLevel18: TcxGridLevel
                      Tag = 1
                      Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                      GridView = btvEq_Graph
                    end
                  end
                end
              end
            end
            object tsFilial_Eq_Table: TcxTabSheet
              Caption = #1058#1072#1073#1083#1080#1094#1072
              ImageIndex = 12
              OnShow = tsFilial_Eq_TableShow
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object lblEq_Table: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitTop = -6
                ExplicitWidth = 1193
              end
              object grd_Depo_Eq: TcxGrid
                Left = 0
                Top = 28
                Width = 1185
                Height = 574
                Align = alClient
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object cxGridDBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
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
                  OptionsData.Deleting = False
                  OptionsData.Inserting = False
                  OptionsSelection.InvertSelect = False
                  OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GroupByBox = False
                  Styles.StyleSheet = DMMain.stlshtGrdTV_11
                  object cxGridDBColumn1: TcxGridDBColumn
                    DataBinding.FieldName = 'row_field_name'
                  end
                  object cxGridDBColumn2: TcxGridDBColumn
                    DataBinding.FieldName = 'diesel'
                  end
                  object cxGridDBColumn3: TcxGridDBColumn
                    DataBinding.FieldName = 'diesel_perc'
                  end
                  object cxGridDBColumn4: TcxGridDBColumn
                    DataBinding.FieldName = 'auxiliary_diesel'
                  end
                  object cxGridDBColumn5: TcxGridDBColumn
                    DataBinding.FieldName = 'auxiliary_diesel_perc'
                  end
                  object cxGridDBColumn6: TcxGridDBColumn
                    DataBinding.FieldName = 'brake_equipment'
                  end
                  object cxGridDBColumn7: TcxGridDBColumn
                    DataBinding.FieldName = 'brake_equipment_perc'
                  end
                  object cxGridDBColumn8: TcxGridDBColumn
                    DataBinding.FieldName = 'safety_device'
                  end
                  object cxGridDBColumn9: TcxGridDBColumn
                    DataBinding.FieldName = 'safety_device_perc'
                  end
                  object cxGridDBColumn10: TcxGridDBColumn
                    DataBinding.FieldName = 'electrical_equipment'
                  end
                  object cxGridDBColumn11: TcxGridDBColumn
                    DataBinding.FieldName = 'electrical_equipment_perc'
                  end
                  object cxGridDBColumn12: TcxGridDBColumn
                    DataBinding.FieldName = 'mechanical_equipment'
                  end
                  object cxGridDBColumn13: TcxGridDBColumn
                    DataBinding.FieldName = 'mechanical_equipment_perc'
                  end
                  object cxGridDBColumn14: TcxGridDBColumn
                    DataBinding.FieldName = 'electric_machine'
                  end
                  object cxGridDBColumn15: TcxGridDBColumn
                    DataBinding.FieldName = 'electric_machine_perc'
                  end
                  object cxGridDBColumn16: TcxGridDBColumn
                    DataBinding.FieldName = 'diagnostic_equipment'
                  end
                  object cxGridDBColumn17: TcxGridDBColumn
                    DataBinding.FieldName = 'diagnostic_equipment_perc'
                  end
                  object cxGridDBColumn18: TcxGridDBColumn
                    DataBinding.FieldName = 'total'
                  end
                  object cxGridDBColumn19: TcxGridDBColumn
                    DataBinding.FieldName = 'tjaga_name'
                    GroupIndex = 0
                  end
                end
                object btv_Depo_Eq: TcxGridDBBandedTableView
                  OnDblClick = aDepo_Eq_DetailExecute
                  Navigator.Buttons.CustomButtons = <>
                  OnCustomDrawCell = btv_Depo_EqCustomDrawCell
                  DataController.Summary.DefaultGroupSummaryItems = <
                    item
                      Format = ' '
                      FieldName = 'kod_tjaga'
                      DisplayText = ' '
                    end
                    item
                      FieldName = 'kod_firm_service'
                      Sorted = True
                    end>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.CellHints = True
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GridLineColor = clGray
                  OptionsView.GroupByBox = False
                  OptionsView.BandHeaderEndEllipsis = True
                  Styles.StyleSheet = DMMain.stlshtBTV11
                  Bands = <
                    item
                      Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                      Width = 242
                    end
                    item
                      Caption = #1042#1089#1077#1075#1086
                      Width = 47
                    end
                    item
                      Caption = #1044#1080#1079#1077#1083#1100
                      Width = 92
                    end
                    item
                      Caption = #1042#1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1086#1077
                      Width = 93
                    end
                    item
                      Caption = #1058#1086#1088#1084#1086#1079#1085#1086#1077
                      Width = 93
                    end
                    item
                      Caption = #1055#1088#1080#1073#1086#1088#1099' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
                      Width = 94
                    end
                    item
                      Caption = #1069#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1086#1077
                      Width = 94
                    end
                    item
                      Caption = #1052#1077#1093#1072#1085#1080#1095#1077#1089#1082#1086#1077
                      Width = 93
                    end
                    item
                      Caption = #1069#1083#1077#1082#1090#1088#1086#1084#1072#1096#1080#1085#1099
                      Width = 92
                    end
                    item
                      Caption = #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1077
                      Width = 93
                    end
                    item
                      Caption = #1053#1077' '#1091#1082#1072#1079#1072#1085#1086
                      Visible = False
                      Width = 93
                    end>
                  object clmnDepoEq_Tjaga: TcxGridDBBandedColumn
                    Tag = -100
                    Caption = #1058#1103#1075#1072
                    DataBinding.FieldName = 'tjaga_name'
                    PropertiesClassName = 'TcxTextEditProperties'
                    OnCustomDrawCell = clmnDepoEq_TjagaCustomDrawCell
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    MinWidth = 75
                    Options.CellMerging = True
                    Options.HorzSizing = False
                    Width = 75
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object btv_Depo_EqColumn1: TcxGridDBBandedColumn
                    Tag = -100
                    Caption = #1060#1080#1083#1080#1072#1083
                    DataBinding.FieldName = 'row_group_name'
                    PropertiesClassName = 'TcxTextEditProperties'
                    OnCustomDrawCell = clmnDepoEq_TjagaCustomDrawCell
                    FooterAlignmentHorz = taCenter
                    Options.CellMerging = True
                    Width = 67
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                    Tag = -100
                    Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
                    DataBinding.FieldName = 'row_field_name'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 97
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn3: TcxGridDBBandedColumn
                    Tag = 3
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'diesel'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDataText = btv_Filial_EqColumn3GetDataText
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn4: TcxGridDBBandedColumn
                    Tag = 3
                    AlternateCaption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1090' '#1086#1073#1097#1077#1075#1086' '#1095#1080#1089#1083#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
                    Caption = '%'
                    DataBinding.FieldName = 'diesel_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 2
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn5: TcxGridDBBandedColumn
                    Tag = 4
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'auxiliary_diesel'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDataText = btv_Filial_EqColumn3GetDataText
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn6: TcxGridDBBandedColumn
                    Tag = 4
                    Caption = '%'
                    DataBinding.FieldName = 'auxiliary_diesel_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 3
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn7: TcxGridDBBandedColumn
                    Tag = 8
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'brake_equipment'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 4
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn8: TcxGridDBBandedColumn
                    Tag = 8
                    Caption = '%'
                    DataBinding.FieldName = 'brake_equipment_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 4
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn9: TcxGridDBBandedColumn
                    Tag = 9
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'safety_device'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 5
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn10: TcxGridDBBandedColumn
                    Tag = 9
                    Caption = '%'
                    DataBinding.FieldName = 'safety_device_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 5
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn11: TcxGridDBBandedColumn
                    Tag = 6
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'electrical_equipment'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 6
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn12: TcxGridDBBandedColumn
                    Tag = 6
                    Caption = '%'
                    DataBinding.FieldName = 'electrical_equipment_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 6
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn13: TcxGridDBBandedColumn
                    Tag = 7
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'mechanical_equipment'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 7
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn14: TcxGridDBBandedColumn
                    Tag = 7
                    Caption = '%'
                    DataBinding.FieldName = 'mechanical_equipment_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 7
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn15: TcxGridDBBandedColumn
                    Tag = 5
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'electric_machine'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 8
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn16: TcxGridDBBandedColumn
                    Tag = 5
                    Caption = '%'
                    DataBinding.FieldName = 'electric_machine_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 8
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn17: TcxGridDBBandedColumn
                    Tag = 10
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'diagnostic_equipment'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 9
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn18: TcxGridDBBandedColumn
                    Tag = 10
                    Caption = '%'
                    DataBinding.FieldName = 'diagnostic_equipment_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 9
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn19: TcxGridDBBandedColumn
                    Tag = -1
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'total'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn20: TcxGridDBBandedColumn
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'none_equipment'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 10
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn21: TcxGridDBBandedColumn
                    Caption = '%'
                    DataBinding.FieldName = 'none_equipment_perc'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 10
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object clmnDepoEq_Gid: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'gid'
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  Caption = #1044#1077#1087#1086'-'#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                  GridView = btv_Depo_Eq
                end
              end
            end
            object tsFilial_Eq_Graph_DrillDown: TcxTabSheet
              Caption = 'tsFilial_Eq_Graph_DrillDown'
              ImageIndex = 2
              TabVisible = False
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object cxGrid18: TcxGrid
                Left = 0
                Top = 0
                Width = 1185
                Height = 602
                Cursor = crHandPoint
                Align = alClient
                TabOrder = 0
                LevelTabs.Slants.Positions = [spLeft, spRight]
                LookAndFeel.Kind = lfOffice11
                object cxGridDBChartView1: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'cnt'
                  Categories.DisplayText = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramBar.Legend.Position = cppBottom
                  DiagramColumn.Active = True
                  DiagramColumn.Legend.Position = cppNone
                  DiagramColumn.Styles.ValueCaptions = cxStyle1
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramLine.Legend.Position = cppBottom
                  DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramLine.AxisValue.MinMaxValues = mmvAuto
                  DiagramLine.Styles.ValueCaptions = cxStyle1
                  DiagramLine.Values.VaryColorsByCategory = True
                  DiagramLine.Values.CaptionPosition = ldvcpAbove
                  DiagramLine.Values.HotSpotSize = 10
                  DiagramLine.Values.LineWidth = 3
                  DiagramLine.Values.MarkerSize = 10
                  DiagramLine.Values.MarkerStyle = cmsCircle
                  OptionsBehavior.ValueHotTrack = vhAlways
                  Styles.ActiveDataLevelInfo = DMMain.stlBackgroundLightRed
                  Styles.DataLevelActiveValueInfo = DMMain.stlBackgroundLightRed
                  Styles.DataLevelsInfo = DMMain.stlGroup11
                  Styles.Title = DMMain.stlGroup11
                  OnGetValueHint = btv_T_ReasonGetValueHint
                  object cxGridDBChartDataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_total'
                    DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup3: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_of_total'
                    DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup4: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartView1DataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'system_name'
                    DisplayText = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                  end
                  object cxGridDBChartView1DataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'firm_name'
                    DisplayText = #1060#1080#1083#1080#1072#1083
                  end
                  object cxGridDBChartView1DataGroup3: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'department_name'
                    DisplayText = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                  end
                  object cxGridDBChartSeries44: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt'
                    DisplayText = #1042#1089#1077#1075#1086
                    Styles.Values = stl1
                    OnCustomDrawValue = btvseries_T_ReasonCustomDrawValue
                  end
                  object cxGridDBChartSeries45: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt_teplo'
                    DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                    Visible = False
                    Styles.Values = stl2
                  end
                  object cxGridDBChartSeries46: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt_electro'
                    DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                    Visible = False
                    Styles.Values = stl4
                  end
                end
                object cxGridLevel19: TcxGridLevel
                  Tag = 1
                  Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                  GridView = cxGridDBChartView1
                end
              end
            end
          end
        end
        object tsNR_Dynamic: TcxTabSheet
          Caption = ' '#1044#1080#1085#1072#1084#1080#1082#1072' '#1053#1056' '
          ImageIndex = 2
          OnShow = tsNR_DynamicShow
          object Panel3: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 614
            Width = 1179
            Height = 29
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxLabel1: TcxLabel
              Left = 597
              Top = 2
              Align = alRight
              Caption = #1087#1086' '#1090#1077#1087#1083#1086#1074#1086#1079#1072#1084':'
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.TextColor = clBlue
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              ExplicitLeft = 574
              AnchorY = 15
            end
            object cxLabel2: TcxLabel
              Left = 773
              Top = 2
              Align = alRight
              Caption = #1087#1086' '#1101#1083#1077#1082#1090#1088#1086#1074#1086#1079#1072#1084':'
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.TextColor = clGreen
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              ExplicitLeft = 775
              AnchorY = 15
            end
            object cxLabel3: TcxLabel
              Left = 961
              Top = 2
              Align = alRight
              Caption = #1087#1086' '#1074#1089#1077#1084' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072#1084':'
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.TextColor = clBlack
              Properties.Alignment.Vert = taVCenter
              ExplicitLeft = 976
              AnchorY = 15
            end
            object cxLabel4: TcxLabel
              Left = 548
              Top = 2
              Align = alRight
              Caption = #1048#1058#1054#1043#1054':'
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.TextColor = clBlack
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              ExplicitLeft = 476
              AnchorY = 15
            end
            object cxDBLabel1: TcxDBLabel
              Left = 693
              Top = 2
              Align = alRight
              DataBinding.DataField = 'cnt_total_nr_teplo'
              DataBinding.DataSource = dsNR_Dynamic
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.TextColor = clBlue
              Height = 25
              Width = 80
              AnchorY = 15
            end
            object cxDBLabel2: TcxDBLabel
              Left = 881
              Top = 2
              Align = alRight
              DataBinding.DataField = 'cnt_total_nr_electro'
              DataBinding.DataSource = dsNR_Dynamic
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.TextColor = clGreen
              Height = 25
              Width = 80
              AnchorY = 15
            end
            object cxDBLabel3: TcxDBLabel
              Left = 1097
              Top = 2
              Align = alRight
              DataBinding.DataField = 'cnt_total_nr'
              DataBinding.DataSource = dsNR_Dynamic
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.TextColor = clBlack
              Height = 25
              Width = 80
              AnchorY = 15
            end
            object cxLabel7: TcxLabel
              Left = 2
              Top = 2
              Align = alClient
              Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103' '#1086#1090#1082#1088#1099#1074#1072#1077#1090#1089#1103' '#1086#1076#1080#1085#1086#1095#1085#1099#1084' '#1097#1077#1083#1095#1082#1086#1084' '#1085#1072' '#1079#1085#1072#1095#1077#1085#1080#1080
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clGray
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              AnchorY = 15
            end
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1179
            Height = 38
            Margins.Bottom = 0
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 14148590
            ParentBackground = False
            TabOrder = 1
            object rbDynamic_Value_Absolute: TcxRadioButton
              AlignWithMargins = True
              Left = 179
              Top = 5
              Width = 102
              Height = 28
              Margins.Left = 6
              Align = alLeft
              Caption = #1040#1073#1089#1086#1083#1102#1090#1085#1099#1077
              Checked = True
              TabOrder = 0
              TabStop = True
              OnEnter = rbDynamic_Value_AbsoluteEnter
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
            end
            object rbDynamic_Value_Relative: TcxRadioButton
              AlignWithMargins = True
              Left = 287
              Top = 5
              Width = 236
              Height = 28
              Align = alLeft
              Caption = #1055#1088#1080#1074#1077#1076#1077#1085#1085#1099#1077' '#1082' '#1089#1077#1088#1074#1080#1089#1085#1086#1084#1091' '#1087#1072#1088#1082#1091
              TabOrder = 1
              OnEnter = rbDynamic_Value_RelativeEnter
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
            end
            object cxLabel6: TcxLabel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Align = alLeft
              Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1076#1080#1072#1075#1088#1072#1084#1084#1077
              Style.TextStyle = [fsBold]
              Properties.Alignment.Vert = taVCenter
              AnchorY = 19
            end
          end
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 41
            Width = 1179
            Height = 573
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 2
            object grdNR_Dynamic: TcxGrid
              Left = 2
              Top = 2
              Width = 1175
              Height = 569
              Cursor = crHandPoint
              Align = alClient
              BorderStyle = cxcbsNone
              TabOrder = 0
              LevelTabs.Slants.Positions = [spLeft, spRight]
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              object btv_NR_Dynamic_Chart: TcxGridDBChartView
                Categories.DataBinding.FieldName = 'dt'
                Categories.DisplayText = #1042#1088#1077#1084#1077#1085#1085#1099#1077' '#1080#1085#1090#1077#1088#1074#1072#1083#1099
                DiagramBar.Legend.Position = cppBottom
                DiagramColumn.Legend.Position = cppNone
                DiagramColumn.Styles.ValueCaptions = cxStyle1
                DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                DiagramLine.Active = True
                DiagramLine.Legend.Position = cppBottom
                DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                DiagramLine.AxisValue.MinMaxValues = mmvAuto
                DiagramLine.Styles.ValueCaptions = cxStyle1
                DiagramLine.Values.VaryColorsByCategory = True
                DiagramLine.Values.CaptionPosition = ldvcpAbove
                DiagramLine.Values.HotSpotSize = 10
                DiagramLine.Values.LineWidth = 3
                DiagramLine.Values.MarkerSize = 10
                DiagramLine.Values.MarkerStyle = cmsCircle
                DiagramPie.Enabled = False
                OptionsBehavior.ValueHotTrack = vhAlways
                OptionsCustomize.DataDrillDown = False
                Styles.Title = DMMain.stlGroup11
                ToolBox.Border = tbNone
                ToolBox.CustomizeButton = True
                ToolBox.DataLevelsInfoVisible = dlivNever
                ToolBox.DiagramSelector = True
                ToolBox.Visible = tvAlways
                OnGetValueHint = btv_NR_Dynamic_ChartGetValueHint
                OnValueClick = btv_NR_Dynamic_ChartValueClick
                object btv_NR_Dynamic_ChartDataGroup2: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'date_begin'
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_ChartDataGroup3: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'date_finish'
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_ServiceParkTeplo: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_park_teplo'
                  DisplayText = #1057#1077#1088#1074#1080#1089#1085#1099#1081' '#1090#1077#1087#1083#1086#1074#1086#1079#1085#1099#1081' '#1087#1072#1088#1082
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_ServiceParkElectro: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_park_electro'
                  DisplayText = #1057#1077#1088#1074#1080#1089#1085#1099#1081' '#1101#1083#1077#1082#1090#1088#1086#1074#1086#1079#1085#1099#1081' '#1087#1072#1088#1082
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_AbsoluteTeplo: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_nr_teplo'
                  DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099': '#1040#1073#1089#1086#1083#1102#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_AbsoluteElectro: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_nr_electro'
                  DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099': '#1040#1073#1089#1086#1083#1102#1090#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_UnqSection: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_unq_loc'
                  DisplayText = #1059#1085#1080#1082#1072#1083#1100#1085#1099#1093' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086#1074
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_RelativeTeplo: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_relative_teplo'
                  DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099': '#1055#1088#1080#1074#1077#1076#1077#1085#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_RelativeElectro: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_relative_electro'
                  DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099': '#1087#1088#1080#1074#1077#1076#1077#1085#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_DT: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'dt'
                  DisplayText = #1058#1086#1095#1082#1072' '#1087#1077#1088#1080#1086#1076#1072
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_CntTotalTeplo: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_total_nr_teplo'
                  DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099': '#1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_DataGroup_CntTotalElectro: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'cnt_total_nr_electro'
                  DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099': '#1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  SortOrder = soNone
                  Visible = False
                end
                object btv_NR_Dynamic_Series_Avg_Teplo: TcxGridDBChartSeries
                  DataBinding.FieldName = 'cnt_avg_nr_teplo'
                  DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099': '#1057#1088#1077#1076#1085#1077#1077
                  Styles.Values = stl7
                  OnCustomDrawValue = btv_NR_Dynamic_Series_Avg_TeploCustomDrawValue
                end
                object btv_NR_Dynamic_Series_Avg_Electro: TcxGridDBChartSeries
                  DataBinding.FieldName = 'cnt_avg_nr_electro'
                  DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099': '#1057#1088#1077#1076#1085#1077#1077
                  Styles.Values = cxStyle2
                end
                object btv_NR_Dynamic_Series_Teplo: TcxGridDBChartSeries
                  Tag = 1
                  DataBinding.FieldName = 'cnt_nr_teplo'
                  DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                  Styles.Values = cxStyle1
                end
                object btv_NR_Dynamic_Series_Electro: TcxGridDBChartSeries
                  Tag = 2
                  DataBinding.FieldName = 'cnt_nr_electro'
                  DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                  Styles.Values = cxStyle3
                end
              end
              object lvlNR_Dynamic: TcxGridLevel
                Tag = 1
                Caption = #1044#1080#1085#1072#1084#1080#1082#1072'_'#1053#1056
                GridView = btv_NR_Dynamic_Chart
              end
            end
          end
        end
        object tsFilial_Reason: TcxTabSheet
          Caption = ' '#1055#1088#1080#1095#1080#1085#1099
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pcFilial_Reason: TcxPageControl
            Left = 0
            Top = 0
            Width = 1185
            Height = 643
            Align = alClient
            Color = 14148590
            ParentBackground = False
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Properties.ActivePage = tsFilial_Reason_Table
            Properties.CustomButtons.Buttons = <>
            Properties.HotTrack = True
            Properties.Images = DMMain.imlMain24
            Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
            Properties.Style = 9
            Properties.TabHeight = 40
            Properties.TabSlants.Positions = [spLeft, spRight]
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabSlants.Positions = [spLeft, spRight]
            ClientRectBottom = 643
            ClientRectRight = 1185
            ClientRectTop = 41
            object tsFilial_Reason_Graph: TcxTabSheet
              Caption = '   '#1044#1080#1072#1075#1088#1072#1084#1084#1072'   '
              ImageIndex = 2
              OnShow = tsFilial_Reason_GraphShow
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object lblReason_Graph: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 1360
              end
              object dxNavBar1: TdxNavBar
                Left = 0
                Top = 28
                Width = 1185
                Height = 551
                Align = alClient
                ActiveGroupIndex = 1
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                View = 14
                OptionsStyle.DefaultStyles.GroupHeader.BackColor = clBtnFace
                OptionsStyle.DefaultStyles.GroupHeader.BackColor2 = clBtnFace
                OptionsStyle.DefaultStyles.GroupHeader.Font.Charset = DEFAULT_CHARSET
                OptionsStyle.DefaultStyles.GroupHeader.Font.Color = clBtnText
                OptionsStyle.DefaultStyles.GroupHeader.Font.Height = -15
                OptionsStyle.DefaultStyles.GroupHeader.Font.Name = 'Tahoma'
                OptionsStyle.DefaultStyles.GroupHeader.Font.Style = [fsBold]
                OptionsStyle.DefaultStyles.GroupHeader.AssignedValues = [savBackColor, savBackColor2, savFont]
                object dxNavBar1Group2: TdxNavBarGroup
                  Caption = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                  SelectedLinkIndex = -1
                  TopVisibleLinkIndex = 0
                  OptionsGroupControl.AllowControlResizing = True
                  OptionsGroupControl.ShowControl = True
                  OptionsGroupControl.UseControl = True
                  Links = <>
                end
                object dxNavBar1Group1: TdxNavBarGroup
                  Caption = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                  SelectedLinkIndex = -1
                  TopVisibleLinkIndex = 0
                  OptionsGroupControl.AllowControlResizing = True
                  OptionsGroupControl.ShowControl = True
                  OptionsGroupControl.UseControl = True
                  Links = <>
                end
                object dxNavBar1Group3: TdxNavBarGroup
                  Caption = #1042#1089#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1099
                  SelectedLinkIndex = -1
                  TopVisibleLinkIndex = 0
                  UseRestSpace = True
                  OptionsGroupControl.AllowControlResizing = True
                  OptionsGroupControl.ShowControl = True
                  OptionsGroupControl.UseControl = True
                  Links = <>
                end
                object dxNavBar1Group2Control: TdxNavBarGroupControl
                  Left = 14
                  Top = 42
                  Width = 1140
                  Height = 200
                  Caption = 'dxNavBar1Group2Control'
                  TabOrder = 1
                  GroupIndex = 0
                  OriginalHeight = 200
                  object grd_E_Reason: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1140
                    Height = 200
                    Cursor = crHandPoint
                    Align = alClient
                    TabOrder = 0
                    LevelTabs.Slants.Positions = [spLeft, spRight]
                    LookAndFeel.Kind = lfOffice11
                    LookAndFeel.NativeStyle = False
                    object btv_E_Reason: TcxGridDBChartView
                      Categories.DataBinding.FieldName = 'reason_name'
                      Categories.DisplayText = #1055#1088#1080#1095#1080#1085#1099
                      DiagramBar.Legend.Position = cppBottom
                      DiagramColumn.Active = True
                      DiagramColumn.Legend.Position = cppNone
                      DiagramColumn.Styles.ValueCaptions = cxStyle1
                      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                      DiagramLine.Enabled = False
                      DiagramLine.Legend.Position = cppBottom
                      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                      DiagramLine.AxisValue.MinMaxValues = mmvAuto
                      DiagramLine.Styles.ValueCaptions = cxStyle1
                      DiagramLine.Values.VaryColorsByCategory = True
                      DiagramLine.Values.CaptionPosition = ldvcpAbove
                      DiagramLine.Values.HotSpotSize = 10
                      DiagramLine.Values.LineWidth = 3
                      DiagramLine.Values.MarkerSize = 10
                      DiagramLine.Values.MarkerStyle = cmsCircle
                      DiagramPie.Enabled = False
                      OptionsBehavior.ValueHotTrack = vhAlways
                      OptionsCustomize.DataDrillDown = False
                      Styles.Title = DMMain.stlGroup11
                      ToolBox.Border = tbNone
                      ToolBox.CustomizeButton = True
                      ToolBox.DataLevelsInfoVisible = dlivNever
                      ToolBox.DiagramSelector = True
                      ToolBox.Visible = tvAlways
                      OnGetValueHint = btv_E_ReasonGetValueHint
                      OnValueClick = btv_E_ReasonValueClick
                      object btvdg_E_Reason_cnt_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                        SortOrder = soNone
                        Visible = False
                        VisibleForCustomization = False
                      end
                      object btvdg_E_Reason_cnt_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_total'
                        DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        SortOrder = soNone
                        Visible = False
                        VisibleForCustomization = False
                      end
                      object btvdg_E_Reason_pers_of_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_of_total'
                        DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                        SortOrder = soNone
                        Visible = False
                        VisibleForCustomization = False
                      end
                      object btvdg_E_Reason_pers_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                        SortOrder = soNone
                        Visible = False
                        VisibleForCustomization = False
                      end
                      object btvdg_E_Reason_ReasonID: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'reason_id'
                        SortOrder = soNone
                        Visible = False
                        VisibleForCustomization = False
                      end
                      object btvdg_E_Reason_KodTjaga: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'kod_tjaga'
                        SortOrder = soNone
                        Visible = False
                        VisibleForCustomization = False
                      end
                      object btvdg_E_Reason_ReasonName: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'reason_name'
                        SortOrder = soNone
                        Visible = False
                        VisibleForCustomization = False
                      end
                      object btvseries_E_Reason: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt_by_reason'
                        DisplayText = #1042#1089#1077#1075#1086
                        Styles.Values = stl1
                        OnCustomDrawValue = btvseries_E_ReasonCustomDrawValue
                      end
                    end
                    object cxGridLevel10: TcxGridLevel
                      Tag = 1
                      Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                      GridView = btv_E_Reason
                    end
                  end
                end
                object dxNavBar1Group1Control: TdxNavBarGroupControl
                  Left = 14
                  Top = 289
                  Width = 1140
                  Height = 200
                  Caption = 'dxNavBar1Group1Control'
                  TabOrder = 0
                  GroupIndex = 1
                  OriginalHeight = 200
                  object grd_T_Reason: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1140
                    Height = 200
                    Cursor = crHandPoint
                    Align = alClient
                    TabOrder = 0
                    LevelTabs.Slants.Positions = [spLeft, spRight]
                    LookAndFeel.Kind = lfOffice11
                    LookAndFeel.NativeStyle = False
                    LookAndFeel.SkinName = 'Caramel'
                    object btv_T_Reason: TcxGridDBChartView
                      Categories.DataBinding.FieldName = 'reason_name'
                      Categories.DisplayText = #1055#1088#1080#1095#1080#1085#1099
                      DiagramBar.Legend.Position = cppBottom
                      DiagramColumn.Active = True
                      DiagramColumn.Legend.Position = cppNone
                      DiagramColumn.Styles.ValueCaptions = cxStyle1
                      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                      DiagramLine.Enabled = False
                      DiagramLine.Legend.Position = cppBottom
                      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                      DiagramLine.AxisValue.MinMaxValues = mmvAuto
                      DiagramLine.Styles.ValueCaptions = cxStyle1
                      DiagramLine.Values.VaryColorsByCategory = True
                      DiagramLine.Values.CaptionPosition = ldvcpAbove
                      DiagramLine.Values.HotSpotSize = 10
                      DiagramLine.Values.LineWidth = 3
                      DiagramLine.Values.MarkerSize = 10
                      DiagramLine.Values.MarkerStyle = cmsCircle
                      DiagramPie.Enabled = False
                      OptionsBehavior.ValueHotTrack = vhAlways
                      OptionsCustomize.DataDrillDown = False
                      Styles.Title = DMMain.stlGroup11
                      ToolBox.Border = tbNone
                      ToolBox.CustomizeButton = True
                      ToolBox.DataLevelsInfoVisible = dlivNever
                      ToolBox.DiagramSelector = True
                      ToolBox.Visible = tvAlways
                      OnGetValueHint = btv_T_ReasonGetValueHint
                      OnValueClick = btv_T_ReasonValueClick
                      object btvdg_T_Reason_cnt_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_T_Reason_cnt_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_total'
                        DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_T_Reason_pers_of_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_of_total'
                        DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_T_Reason_pers_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_T_Reason_ReasonID: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'reason_id'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_T_Reason_KodTjaga: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'kod_tjaga'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_T_Reason_ReasonName: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'reason_name'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvseries_T_Reason: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt_by_reason'
                        DisplayText = #1042#1089#1077#1075#1086
                        Styles.Values = stl2
                        OnCustomDrawValue = btvseries_T_ReasonCustomDrawValue
                      end
                    end
                    object cxGridLevel3: TcxGridLevel
                      Tag = 1
                      Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                      GridView = btv_T_Reason
                    end
                  end
                end
                object dxNavBar1Group3Control: TdxNavBarGroupControl
                  Left = 14
                  Top = 536
                  Width = 1140
                  Height = 200
                  Caption = 'dxNavBar1Group3Control'
                  TabOrder = 2
                  GroupIndex = 2
                  OriginalHeight = 200
                  object grd_Reason: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1140
                    Height = 200
                    Cursor = crHandPoint
                    Align = alClient
                    TabOrder = 0
                    LevelTabs.Slants.Positions = [spLeft, spRight]
                    LookAndFeel.Kind = lfOffice11
                    LookAndFeel.NativeStyle = False
                    object btv_Reason: TcxGridDBChartView
                      Categories.DataBinding.FieldName = 'reason_name'
                      Categories.DisplayText = #1055#1088#1080#1095#1080#1085#1099
                      DiagramBar.Legend.Position = cppBottom
                      DiagramColumn.Active = True
                      DiagramColumn.Legend.Position = cppNone
                      DiagramColumn.Styles.ValueCaptions = cxStyle1
                      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                      DiagramLine.Enabled = False
                      DiagramLine.Legend.Position = cppBottom
                      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                      DiagramLine.AxisValue.MinMaxValues = mmvAuto
                      DiagramLine.Styles.ValueCaptions = cxStyle1
                      DiagramLine.Values.VaryColorsByCategory = True
                      DiagramLine.Values.CaptionPosition = ldvcpAbove
                      DiagramLine.Values.HotSpotSize = 10
                      DiagramLine.Values.LineWidth = 3
                      DiagramLine.Values.MarkerSize = 10
                      DiagramLine.Values.MarkerStyle = cmsCircle
                      DiagramPie.Enabled = False
                      OptionsBehavior.ValueHotTrack = vhAlways
                      OptionsCustomize.DataDrillDown = False
                      Styles.Title = DMMain.stlGroup11
                      ToolBox.Border = tbNone
                      ToolBox.CustomizeButton = True
                      ToolBox.DataLevelsInfoVisible = dlivNever
                      ToolBox.DiagramSelector = True
                      ToolBox.Visible = tvAlways
                      OnGetValueHint = btv_ReasonGetValueHint
                      OnValueClick = btv_ReasonValueClick
                      object btvdg_Reason_cnt_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_Reason_cnt_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'cnt_total'
                        DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_Reason_pers_of_total: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_of_total'
                        DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_Reason_pers_cumulative: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'pers_cumulative'
                        DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_Reason_ReasonID: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'reason_id'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_Reason_KodTjaga: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'kod_tjaga'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvdg_Reason_ReasonName: TcxGridDBChartDataGroup
                        DataBinding.FieldName = 'reason_name'
                        SortOrder = soNone
                        Visible = False
                      end
                      object btvseries_Reason: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt_by_reason'
                        DisplayText = #1042#1089#1077#1075#1086
                        Styles.Values = stl4
                        OnCustomDrawValue = btvseries_ReasonCustomDrawValue
                      end
                      object btvseries_Reason_E: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt_electro'
                        DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                        Visible = False
                        Styles.Values = stl1
                      end
                      object btvseries_Reason_T: TcxGridDBChartSeries
                        DataBinding.FieldName = 'cnt_teplo'
                        DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                        Visible = False
                        Styles.Values = stl2
                      end
                    end
                    object cxGridLevel9: TcxGridLevel
                      Tag = 1
                      Caption = #1055#1088#1080#1095#1080#1085#1099
                      GridView = btv_Reason
                    end
                  end
                end
              end
              object StatusBar: TdxStatusBar
                Left = 0
                Top = 579
                Width = 1185
                Height = 23
                Images = DMMain.imlSmall
                Panels = <
                  item
                    PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
                    PanelStyle.Color = clBtnFace
                    PanelStyle.Font.Charset = DEFAULT_CHARSET
                    PanelStyle.Font.Color = clRed
                    PanelStyle.Font.Height = -13
                    PanelStyle.Font.Name = 'Tahoma'
                    PanelStyle.Font.Style = []
                    PanelStyle.ParentFont = False
                    Text = #1052#1077#1090#1086#1076' '#1072#1085#1072#1083#1080#1079#1072' - "80/20"'
                    Width = 200
                  end>
                PaintStyle = stpsFlat
                SizeGrip = False
                LookAndFeel.Kind = lfFlat
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
              end
            end
            object tsFilial_Reason_Table: TcxTabSheet
              Caption = #1058#1072#1073#1083#1080#1094#1072
              ImageIndex = 12
              OnShow = tsFilial_Reason_TableShow
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label1: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitTop = -6
                ExplicitWidth = 1059
              end
              object grd_Reason_Table: TcxGrid
                Left = 0
                Top = 28
                Width = 1185
                Height = 574
                Align = alClient
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object cxGridDBTableView2: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
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
                  OptionsData.Deleting = False
                  OptionsData.Inserting = False
                  OptionsSelection.InvertSelect = False
                  OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GroupByBox = False
                  Styles.StyleSheet = DMMain.stlshtGrdTV_11
                  object cxGridDBColumn20: TcxGridDBColumn
                    DataBinding.FieldName = 'row_field_name'
                  end
                  object cxGridDBColumn21: TcxGridDBColumn
                    DataBinding.FieldName = 'diesel'
                  end
                  object cxGridDBColumn22: TcxGridDBColumn
                    DataBinding.FieldName = 'diesel_perc'
                  end
                  object cxGridDBColumn23: TcxGridDBColumn
                    DataBinding.FieldName = 'auxiliary_diesel'
                  end
                  object cxGridDBColumn24: TcxGridDBColumn
                    DataBinding.FieldName = 'auxiliary_diesel_perc'
                  end
                  object cxGridDBColumn25: TcxGridDBColumn
                    DataBinding.FieldName = 'brake_equipment'
                  end
                  object cxGridDBColumn26: TcxGridDBColumn
                    DataBinding.FieldName = 'brake_equipment_perc'
                  end
                  object cxGridDBColumn27: TcxGridDBColumn
                    DataBinding.FieldName = 'safety_device'
                  end
                  object cxGridDBColumn28: TcxGridDBColumn
                    DataBinding.FieldName = 'safety_device_perc'
                  end
                  object cxGridDBColumn29: TcxGridDBColumn
                    DataBinding.FieldName = 'electrical_equipment'
                  end
                  object cxGridDBColumn30: TcxGridDBColumn
                    DataBinding.FieldName = 'electrical_equipment_perc'
                  end
                  object cxGridDBColumn31: TcxGridDBColumn
                    DataBinding.FieldName = 'mechanical_equipment'
                  end
                  object cxGridDBColumn32: TcxGridDBColumn
                    DataBinding.FieldName = 'mechanical_equipment_perc'
                  end
                  object cxGridDBColumn33: TcxGridDBColumn
                    DataBinding.FieldName = 'electric_machine'
                  end
                  object cxGridDBColumn34: TcxGridDBColumn
                    DataBinding.FieldName = 'electric_machine_perc'
                  end
                  object cxGridDBColumn35: TcxGridDBColumn
                    DataBinding.FieldName = 'diagnostic_equipment'
                  end
                  object cxGridDBColumn36: TcxGridDBColumn
                    DataBinding.FieldName = 'diagnostic_equipment_perc'
                  end
                  object cxGridDBColumn37: TcxGridDBColumn
                    DataBinding.FieldName = 'total'
                  end
                  object cxGridDBColumn38: TcxGridDBColumn
                    DataBinding.FieldName = 'tjaga_name'
                    GroupIndex = 0
                  end
                end
                object btvFilial_Reason_Table: TcxGridDBBandedTableView
                  OnDblClick = aReason_DetailExecute
                  Navigator.Buttons.CustomButtons = <>
                  OnCustomDrawCell = btvFilial_Reason_TableCustomDrawCell
                  DataController.Summary.DefaultGroupSummaryItems = <
                    item
                      Format = ' '
                      FieldName = 'kod_tjaga'
                      DisplayText = ' '
                    end
                    item
                      FieldName = 'kod_firm_service'
                      Sorted = True
                    end>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.CellHints = True
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
                  OptionsView.CellAutoHeight = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GridLineColor = clGray
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderAutoHeight = True
                  OptionsView.BandHeaderHeight = 90
                  Styles.StyleSheet = DMMain.stlshtBTV11
                  Bands = <
                    item
                      Caption = #1055#1088#1080#1095#1080#1085#1099
                      Options.HoldOwnColumnsOnly = True
                      Width = 225
                    end
                    item
                      Caption = #1042#1089#1077#1075#1086
                      Options.HoldOwnColumnsOnly = True
                      Width = 43
                    end
                    item
                      Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1055#1056#1040#1042#1048#1051' '#1069#1050#1057#1055#1051'.'
                      Options.HoldOwnColumnsOnly = True
                      Width = 76
                    end
                    item
                      Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1058#1045#1061#1053#1054#1051#1054#1043#1048#1048' '#1056#1045#1052#1054#1053#1058#1040', '#1048#1047#1043#1054#1058#1054#1042#1051#1045#1053#1048#1071', '#1052#1054#1053#1058#1040#1046#1040
                      Options.HoldOwnColumnsOnly = True
                      Width = 113
                    end
                    item
                      Caption = #1057#1058#1040#1056#1045#1053#1048#1045', '#1048#1047#1053#1054#1057', '#1050#1054#1056#1056#1054#1047#1048#1071', '#1059#1057#1058#1040#1051#1054#1057#1058#1068
                      Options.HoldOwnColumnsOnly = True
                      Width = 81
                    end
                    item
                      Caption = #1050#1054#1053#1057#1058#1056#1059#1050#1058#1048#1042#1053#1067#1049' '#1053#1045#1044#1054#1057#1058#1040#1058#1054#1050
                      Options.HoldOwnColumnsOnly = True
                      Width = 103
                    end
                    item
                      Caption = #1053#1045#1050#1040#1063#1045#1057#1058#1042#1045#1053#1053#1054#1045' '#1054#1041#1054#1056#1059#1044#1054#1042#1040#1053#1048#1045' '#1054#1058' '#1055#1054#1057#1058#1040#1042#1065#1048#1050#1054#1042
                      Options.HoldOwnColumnsOnly = True
                      Width = 117
                    end
                    item
                      Caption = #1053#1045#1050#1040#1063#1045#1057#1058#1042#1045#1053#1053#1067#1045' '#1047#1040#1055#1063#1040#1057#1058#1048', '#1052#1040#1058'-'#1051#1067', '#1050#1054#1052#1055#1051#1045#1050#1058#1059#1070#1065#1048#1045
                      Options.HoldOwnColumnsOnly = True
                      Width = 92
                    end
                    item
                      Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1059#1057#1051'. '#1061#1056#1040#1053#1045#1053#1048#1071
                      Options.HoldOwnColumnsOnly = True
                      Width = 68
                    end
                    item
                      Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1055#1056#1040#1042#1048#1051' '#1058#1056#1040#1053#1057#1055#1054#1056#1058#1048#1056#1054#1042#1050#1048', '#1050#1054#1053#1057#1045#1056#1042'.'
                      Options.HoldOwnColumnsOnly = True
                      Width = 76
                    end
                    item
                      Caption = #1053#1045#1059#1057#1058#1040#1053#1054#1042#1051#1045#1053#1053#1067#1045' '#1055#1056#1048#1063#1048#1053#1067
                      Options.HoldOwnColumnsOnly = True
                      Width = 99
                    end
                    item
                      Caption = #1055#1056#1054#1063#1048#1045' '#1055#1056#1048#1063#1048#1053#1067
                      Options.HoldOwnColumnsOnly = True
                      Width = 74
                    end>
                  object cxGridDBBandedColumn1: TcxGridDBBandedColumn
                    Tag = -100
                    Caption = #1058#1103#1075#1072
                    DataBinding.FieldName = 'tjaga_name'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    OnCustomDrawCell = clmnDepoEq_TjagaCustomDrawCell
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    MinWidth = 75
                    Options.CellMerging = True
                    Options.HorzSizing = False
                    Width = 75
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn22: TcxGridDBBandedColumn
                    Tag = -100
                    Caption = #1060#1080#1083#1080#1072#1083
                    DataBinding.FieldName = 'row_group_name'
                    PropertiesClassName = 'TcxTextEditProperties'
                    OnCustomDrawCell = clmnDepoEq_TjagaCustomDrawCell
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Options.CellMerging = True
                    Width = 92
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn23: TcxGridDBBandedColumn
                    Tag = -100
                    Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                    DataBinding.FieldName = 'row_field_name'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 95
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn24: TcxGridDBBandedColumn
                    Tag = 1
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_1'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDataText = btv_Filial_EqColumn3GetDataText
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn25: TcxGridDBBandedColumn
                    Tag = 1
                    AlternateCaption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1090' '#1086#1073#1097#1077#1075#1086' '#1095#1080#1089#1083#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
                    Caption = '%'
                    DataBinding.FieldName = 'perc_1'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 3
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn26: TcxGridDBBandedColumn
                    Tag = 2
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_2'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDataText = btv_Filial_EqColumn3GetDataText
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 7
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn27: TcxGridDBBandedColumn
                    Tag = 2
                    Caption = '%'
                    DataBinding.FieldName = 'perc_2'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 7
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn28: TcxGridDBBandedColumn
                    Tag = 3
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_3'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 6
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn29: TcxGridDBBandedColumn
                    Tag = 3
                    Caption = '%'
                    DataBinding.FieldName = 'perc_3'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 6
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn30: TcxGridDBBandedColumn
                    Tag = 4
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_4'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 5
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn31: TcxGridDBBandedColumn
                    Tag = 4
                    Caption = '%'
                    DataBinding.FieldName = 'perc_4'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 5
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn32: TcxGridDBBandedColumn
                    Tag = 5
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_5'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 43
                    Position.BandIndex = 4
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn33: TcxGridDBBandedColumn
                    Tag = 5
                    Caption = '%'
                    DataBinding.FieldName = 'perc_5'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 33
                    Position.BandIndex = 4
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn34: TcxGridDBBandedColumn
                    Tag = 6
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_6'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn35: TcxGridDBBandedColumn
                    Tag = 6
                    Caption = '%'
                    DataBinding.FieldName = 'perc_6'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 2
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn36: TcxGridDBBandedColumn
                    Tag = 7
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_7'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 8
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn37: TcxGridDBBandedColumn
                    Tag = 7
                    Caption = '%'
                    DataBinding.FieldName = 'perc_7'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 8
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn38: TcxGridDBBandedColumn
                    Tag = 8
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_8'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 9
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn39: TcxGridDBBandedColumn
                    Tag = 8
                    Caption = '%'
                    DataBinding.FieldName = 'perc_8'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 9
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn40: TcxGridDBBandedColumn
                    Tag = -1
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_total'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn41: TcxGridDBBandedColumn
                    Tag = 10
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_10'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '#######'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Width = 60
                    Position.BandIndex = 10
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn42: TcxGridDBBandedColumn
                    Tag = 10
                    Caption = '%'
                    DataBinding.FieldName = 'perc_10'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.DisplayFormat = '########'
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Styles.Content = DMMain.stlFormatPerc
                    Width = 60
                    Position.BandIndex = 10
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object clmnFilial_Reason_Table_Gid: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'gid'
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object btvFilial_Reason_TableColumn1: TcxGridDBBandedColumn
                    Tag = 11
                    Caption = #1050#1086#1083'-'#1074#1086
                    DataBinding.FieldName = 'cnt_11'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    OnGetDataText = btv_Filial_EqColumn3GetDataText
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    HeaderAlignmentHorz = taCenter
                    Width = 47
                    Position.BandIndex = 11
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object btvFilial_Reason_TableColumn2: TcxGridDBBandedColumn
                    Tag = 11
                    Caption = '%'
                    DataBinding.FieldName = 'perc_11'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                    HeaderAlignmentHorz = taCenter
                    Width = 35
                    Position.BandIndex = 11
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel4: TcxGridLevel
                  Caption = #1055#1088#1080#1095#1080#1085#1099
                  GridView = btvFilial_Reason_Table
                end
              end
            end
          end
        end
        object tsFilial_Seria: TcxTabSheet
          Caption = '   '#1057#1077#1088#1080#1080'   '
          Color = 14148590
          ParentColor = False
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1179
            Height = 38
            Margins.Bottom = 0
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 14148590
            ParentBackground = False
            TabOrder = 0
            object cxRadioButton1: TcxRadioButton
              AlignWithMargins = True
              Left = 179
              Top = 5
              Width = 102
              Height = 28
              Margins.Left = 6
              Align = alLeft
              Caption = #1040#1073#1089#1086#1083#1102#1090#1085#1099#1077
              Checked = True
              TabOrder = 0
              TabStop = True
              OnEnter = cxRadioButton1Enter
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
            end
            object cxRadioButton2: TcxRadioButton
              AlignWithMargins = True
              Left = 287
              Top = 5
              Width = 236
              Height = 28
              Align = alLeft
              Caption = #1055#1088#1080#1074#1077#1076#1077#1085#1085#1099#1077' '#1082' '#1089#1077#1088#1074#1080#1089#1085#1086#1084#1091' '#1087#1072#1088#1082#1091
              TabOrder = 1
              OnEnter = cxRadioButton2Enter
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
            end
            object cxLabel5: TcxLabel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Align = alLeft
              Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1076#1080#1072#1075#1088#1072#1084#1084#1077
              Style.TextStyle = [fsBold]
              Properties.Alignment.Vert = taVCenter
              AnchorY = 19
            end
          end
          object Panel5: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 41
            Width = 1179
            Height = 599
            Margins.Top = 0
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            object pcFilial_Seria: TcxPageControl
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 1169
              Height = 589
              Align = alClient
              Color = 14148590
              ParentBackground = False
              ParentColor = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Properties.ActivePage = tsSeria_Graph
              Properties.CustomButtons.Buttons = <>
              Properties.HideTabs = True
              Properties.HotTrack = True
              Properties.Images = DMMain.imlMain24
              Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
              Properties.Style = 9
              Properties.TabHeight = 20
              Properties.TabSlants.Positions = [spLeft, spRight]
              TabSlants.Positions = [spLeft, spRight]
              ClientRectBottom = 589
              ClientRectRight = 1169
              ClientRectTop = 0
              object tsSeria_Graph: TcxTabSheet
                Caption = '   '#1044#1080#1072#1075#1088#1072#1084#1084#1072'   '
                ImageIndex = 2
                OnShow = tsSeria_GraphShow
                object lblSeria_Graph: TLabel
                  Left = 0
                  Top = 0
                  Width = 1169
                  Height = 28
                  Align = alTop
                  Alignment = taCenter
                  AutoSize = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Layout = tlCenter
                  ExplicitLeft = -3
                  ExplicitTop = 64
                  ExplicitWidth = 1320
                end
                object dxStatusBar1: TdxStatusBar
                  AlignWithMargins = True
                  Left = 3
                  Top = 563
                  Width = 1163
                  Height = 23
                  Images = DMMain.imlSmall
                  Panels = <
                    item
                      PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
                      PanelStyle.Color = clBtnFace
                      PanelStyle.Font.Charset = DEFAULT_CHARSET
                      PanelStyle.Font.Color = clRed
                      PanelStyle.Font.Height = -13
                      PanelStyle.Font.Name = 'Tahoma'
                      PanelStyle.Font.Style = []
                      PanelStyle.ParentFont = False
                      Text = #1052#1077#1090#1086#1076' '#1072#1085#1072#1083#1080#1079#1072' - "80/20"'
                      Width = 200
                    end>
                  PaintStyle = stpsFlat
                  SizeGrip = False
                  LookAndFeel.Kind = lfFlat
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end
                object dxNavBar2: TdxNavBar
                  AlignWithMargins = True
                  Left = 3
                  Top = 31
                  Width = 1163
                  Height = 526
                  Align = alClient
                  BorderStyle = bsSingle
                  ActiveGroupIndex = 1
                  TabOrder = 1
                  View = 14
                  OptionsStyle.DefaultStyles.GroupHeader.BackColor = clBtnFace
                  OptionsStyle.DefaultStyles.GroupHeader.BackColor2 = clBtnFace
                  OptionsStyle.DefaultStyles.GroupHeader.Font.Charset = DEFAULT_CHARSET
                  OptionsStyle.DefaultStyles.GroupHeader.Font.Color = clBtnText
                  OptionsStyle.DefaultStyles.GroupHeader.Font.Height = -15
                  OptionsStyle.DefaultStyles.GroupHeader.Font.Name = 'Tahoma'
                  OptionsStyle.DefaultStyles.GroupHeader.Font.Style = [fsBold]
                  OptionsStyle.DefaultStyles.GroupHeader.AssignedValues = [savBackColor, savBackColor2, savFont]
                  OptionsStyle.DefaultStyles.Item.BackColor = 14148590
                  OptionsStyle.DefaultStyles.Item.BackColor2 = 14148590
                  OptionsStyle.DefaultStyles.Item.Font.Charset = DEFAULT_CHARSET
                  OptionsStyle.DefaultStyles.Item.Font.Color = clWindowText
                  OptionsStyle.DefaultStyles.Item.Font.Height = -15
                  OptionsStyle.DefaultStyles.Item.Font.Name = 'Tahoma'
                  OptionsStyle.DefaultStyles.Item.Font.Style = []
                  OptionsStyle.DefaultStyles.Item.AssignedValues = [savBackColor, savBackColor2, savFont]
                  OptionsView.ExplorerBar.SpaceBetweenGroups = 5
                  object dxNavBarGroup2: TdxNavBarGroup
                    Caption = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                    SelectedLinkIndex = -1
                    TopVisibleLinkIndex = 0
                    OptionsGroupControl.AllowControlResizing = True
                    OptionsGroupControl.ShowControl = True
                    OptionsGroupControl.UseControl = True
                    Links = <>
                  end
                  object dxNavBarGroup1: TdxNavBarGroup
                    Caption = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                    SelectedLinkIndex = -1
                    TopVisibleLinkIndex = 0
                    OptionsGroupControl.ShowControl = True
                    OptionsGroupControl.UseControl = True
                    Links = <>
                  end
                  object dxNavBarGroup3: TdxNavBarGroup
                    Caption = #1042#1089#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1099
                    SelectedLinkIndex = -1
                    TopVisibleLinkIndex = 0
                    UseRestSpace = True
                    OptionsGroupControl.ShowControl = True
                    OptionsGroupControl.UseControl = True
                    Links = <>
                  end
                  object dxNavBarGroupControl2: TdxNavBarGroupControl
                    Left = 14
                    Top = 42
                    Width = 1114
                    Height = 173
                    Caption = 'dxNavBar1Group2Control'
                    TabOrder = 0
                    GroupIndex = 0
                    OriginalHeight = 173
                    object grd_E_Seria: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 1114
                      Height = 173
                      Cursor = crHandPoint
                      Align = alClient
                      TabOrder = 0
                      LevelTabs.Slants.Positions = [spLeft, spRight]
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      LookAndFeel.SkinName = 'Caramel'
                      object btvSeria_Electro_Graph: TcxGridDBChartView
                        Categories.DataBinding.FieldName = 'ser_name'
                        Categories.DisplayText = #1057#1077#1088#1080#1080
                        DiagramBar.Legend.Position = cppBottom
                        DiagramColumn.Active = True
                        DiagramColumn.Legend.Position = cppNone
                        DiagramColumn.Styles.ValueCaptions = cxStyle1
                        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                        DiagramLine.Enabled = False
                        DiagramLine.Legend.Position = cppBottom
                        DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        DiagramLine.AxisValue.MinMaxValues = mmvAuto
                        DiagramLine.Styles.ValueCaptions = cxStyle1
                        DiagramLine.Values.VaryColorsByCategory = True
                        DiagramLine.Values.CaptionPosition = ldvcpAbove
                        DiagramLine.Values.HotSpotSize = 10
                        DiagramLine.Values.LineWidth = 3
                        DiagramLine.Values.MarkerSize = 10
                        DiagramLine.Values.MarkerStyle = cmsCircle
                        DiagramPie.Enabled = False
                        OptionsBehavior.ValueHotTrack = vhAlways
                        OptionsCustomize.DataDrillDown = False
                        Styles.Title = DMMain.stlGroup11
                        ToolBox.Border = tbNone
                        ToolBox.CustomizeButton = True
                        ToolBox.DataLevelsInfoVisible = dlivNever
                        ToolBox.DiagramSelector = True
                        ToolBox.Visible = tvAlways
                        OnGetValueHint = btvSeria_Electro_GraphGetValueHint
                        OnValueClick = btvSeria_Electro_GraphValueClick
                        object btv_Filial_Seria_E_datagroup_cumulative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_cumulative'
                          DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_E_datagroup_total: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_total'
                          DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_E_datagroup_pers_of_total: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'pers_of_total'
                          DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_E_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'pers_cumulative'
                          DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Electro_GraphDataGroup1: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'kod_ser'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Electro_Graph_SerName: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'ser_name'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Electro_Graph_CntPark: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_park'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Electro_Graph_Cnt: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Electro_Graph_CntRelative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_relative'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Electro_Graph_CntUnqLoc: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_unq_loc'
                          SortOrder = soNone
                          Visible = False
                        end
                        object cxGridDBChartSeries15: TcxGridDBChartSeries
                          DataBinding.FieldName = 'cnt'
                          DisplayText = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1048#1085#1094#1080#1076#1077#1085#1090#1086#1074
                          Styles.Values = stl1
                          OnCustomDrawValue = cxGridDBChartSeries15CustomDrawValue
                        end
                      end
                      object cxGridLevel8: TcxGridLevel
                        Tag = 1
                        Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                        GridView = btvSeria_Electro_Graph
                      end
                    end
                  end
                  object dxNavBarGroupControl1: TdxNavBarGroupControl
                    Left = 14
                    Top = 252
                    Width = 1114
                    Height = 214
                    Caption = 'dxNavBar1Group1Control'
                    TabOrder = 2
                    GroupIndex = 1
                    OriginalHeight = 214
                    object grd_T_Seria: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 1114
                      Height = 214
                      Cursor = crHandPoint
                      Align = alClient
                      TabOrder = 0
                      LevelTabs.Slants.Positions = [spLeft, spRight]
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      LookAndFeel.SkinName = 'Caramel'
                      object btvSeria_Teplo_Graph: TcxGridDBChartView
                        Categories.DataBinding.FieldName = 'ser_name'
                        Categories.DisplayText = #1057#1077#1088#1080#1080
                        DiagramBar.Legend.Position = cppBottom
                        DiagramColumn.Active = True
                        DiagramColumn.Legend.Position = cppNone
                        DiagramColumn.Styles.ValueCaptions = cxStyle1
                        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                        DiagramLine.Enabled = False
                        DiagramLine.Legend.Position = cppBottom
                        DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        DiagramLine.AxisValue.MinMaxValues = mmvAuto
                        DiagramLine.Styles.ValueCaptions = cxStyle1
                        DiagramLine.Values.VaryColorsByCategory = True
                        DiagramLine.Values.CaptionPosition = ldvcpAbove
                        DiagramLine.Values.HotSpotSize = 10
                        DiagramLine.Values.LineWidth = 3
                        DiagramLine.Values.MarkerSize = 10
                        DiagramLine.Values.MarkerStyle = cmsCircle
                        DiagramPie.Enabled = False
                        OptionsBehavior.ValueHotTrack = vhAlways
                        OptionsCustomize.DataDrillDown = False
                        Styles.Title = DMMain.stlGroup11
                        ToolBox.Border = tbNone
                        ToolBox.CustomizeButton = True
                        ToolBox.DataLevelsInfoVisible = dlivNever
                        ToolBox.DiagramSelector = True
                        ToolBox.Visible = tvAlways
                        OnGetValueHint = btvSeria_Electro_GraphGetValueHint
                        OnValueClick = btvSeria_Teplo_GraphValueClick
                        object btv_Filial_Seria_T_datagroup_cumulative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_cumulative'
                          DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_T_datagroup_total: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_total'
                          DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_T_datagroup_pers_of_total: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'pers_of_total'
                          DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_T_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'pers_cumulative'
                          DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Teplo_GraphDataGroup1: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'kod_ser'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Teplo_Graph_SerName: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'ser_name'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Teplo_Graph_CntPark: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_park'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Teplo_Graph_Cnt: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Teplo_Graph_CntRelative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_relative'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Teplo_Graph_CntUnqLoc: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_unq_loc'
                          SortOrder = soNone
                          Visible = False
                        end
                        object cxGridDBChartSeries12: TcxGridDBChartSeries
                          DataBinding.FieldName = 'cnt'
                          DisplayText = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1048#1085#1094#1080#1076#1077#1085#1090#1086#1074
                          Styles.Values = stl2
                          OnCustomDrawValue = cxGridDBChartSeries12CustomDrawValue
                        end
                      end
                      object cxGridLevel7: TcxGridLevel
                        Tag = 1
                        Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                        GridView = btvSeria_Teplo_Graph
                      end
                    end
                  end
                  object dxNavBarGroupControl3: TdxNavBarGroupControl
                    Left = 14
                    Top = 503
                    Width = 1114
                    Height = 85
                    Caption = 'dxNavBar1Group3Control'
                    TabOrder = 1
                    GroupIndex = 2
                    OriginalHeight = 85
                    object grd_Seria: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 1114
                      Height = 85
                      Cursor = crHandPoint
                      Align = alClient
                      TabOrder = 0
                      LevelTabs.Slants.Positions = [spLeft, spRight]
                      LookAndFeel.Kind = lfOffice11
                      LookAndFeel.NativeStyle = False
                      object btvSeria_Graph: TcxGridDBChartView
                        Categories.DataBinding.FieldName = 'ser_name'
                        Categories.DisplayText = #1057#1077#1088#1080#1080
                        DiagramBar.Legend.Position = cppBottom
                        DiagramColumn.Active = True
                        DiagramColumn.Legend.Position = cppNone
                        DiagramColumn.Styles.ValueCaptions = cxStyle1
                        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                        DiagramLine.Enabled = False
                        DiagramLine.Legend.Position = cppBottom
                        DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                        DiagramLine.AxisValue.MinMaxValues = mmvAuto
                        DiagramLine.Styles.ValueCaptions = cxStyle1
                        DiagramLine.Values.VaryColorsByCategory = True
                        DiagramLine.Values.CaptionPosition = ldvcpAbove
                        DiagramLine.Values.HotSpotSize = 10
                        DiagramLine.Values.LineWidth = 3
                        DiagramLine.Values.MarkerSize = 10
                        DiagramLine.Values.MarkerStyle = cmsCircle
                        DiagramPie.Enabled = False
                        OptionsBehavior.ValueHotTrack = vhAlways
                        OptionsCustomize.DataDrillDown = False
                        Styles.Title = DMMain.stlGroup11
                        ToolBox.Border = tbNone
                        ToolBox.CustomizeButton = True
                        ToolBox.DataLevelsInfoVisible = dlivNever
                        ToolBox.DiagramSelector = True
                        ToolBox.Visible = tvAlways
                        OnGetValueHint = btvSeria_Electro_GraphGetValueHint
                        OnValueClick = btvSeria_GraphValueClick
                        object btv_Filial_Seria_datagroup_cumulative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_cumulative'
                          DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_datagroup_total: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_total'
                          DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_datagroup_pers_of_total: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'pers_of_total'
                          DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                          SortOrder = soNone
                          Visible = False
                        end
                        object btv_Filial_Seria_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'pers_cumulative'
                          DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_GraphDataGroup1: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'kod_ser'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Graph_SerName: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'ser_name'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Graph_CntPark: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_park'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Graph_Cnt: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Graph_CntRelative: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_relative'
                          SortOrder = soNone
                          Visible = False
                        end
                        object btvSeria_Graph_CntUnqLoc: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'cnt_unq_loc'
                          SortOrder = soNone
                          Visible = False
                        end
                        object cxGridDBChartSeries9: TcxGridDBChartSeries
                          DataBinding.FieldName = 'cnt'
                          DisplayText = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1048#1085#1094#1080#1076#1077#1085#1090#1086#1074
                          Styles.Values = stl4
                          OnCustomDrawValue = cxGridDBChartSeries9CustomDrawValue
                        end
                      end
                      object cxGridLevel5: TcxGridLevel
                        Tag = 1
                        Caption = #1057#1077#1088#1080#1080
                        GridView = btvSeria_Graph
                      end
                    end
                  end
                end
              end
              object cxTabSheet5: TcxTabSheet
                Caption = #1058#1072#1073#1083#1080#1094#1072
                Enabled = False
                ImageIndex = 12
                ExplicitWidth = 0
                ExplicitHeight = 0
                object Label2: TLabel
                  Left = 0
                  Top = 0
                  Width = 1169
                  Height = 28
                  Align = alTop
                  Alignment = taCenter
                  AutoSize = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Layout = tlCenter
                  ExplicitWidth = 1360
                end
                object grd_Seria_Table: TcxGrid
                  Left = 0
                  Top = 28
                  Width = 1169
                  Height = 561
                  Align = alClient
                  TabOrder = 0
                  object cxGridDBTableView3: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
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
                    OptionsData.Deleting = False
                    OptionsData.Inserting = False
                    OptionsSelection.InvertSelect = False
                    OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.GroupByBox = False
                    Styles.StyleSheet = DMMain.stlshtGrdTV_11
                    object cxGridDBColumn39: TcxGridDBColumn
                      DataBinding.FieldName = 'row_field_name'
                    end
                    object cxGridDBColumn40: TcxGridDBColumn
                      DataBinding.FieldName = 'diesel'
                    end
                    object cxGridDBColumn41: TcxGridDBColumn
                      DataBinding.FieldName = 'diesel_perc'
                    end
                    object cxGridDBColumn42: TcxGridDBColumn
                      DataBinding.FieldName = 'auxiliary_diesel'
                    end
                    object cxGridDBColumn43: TcxGridDBColumn
                      DataBinding.FieldName = 'auxiliary_diesel_perc'
                    end
                    object cxGridDBColumn44: TcxGridDBColumn
                      DataBinding.FieldName = 'brake_equipment'
                    end
                    object cxGridDBColumn45: TcxGridDBColumn
                      DataBinding.FieldName = 'brake_equipment_perc'
                    end
                    object cxGridDBColumn46: TcxGridDBColumn
                      DataBinding.FieldName = 'safety_device'
                    end
                    object cxGridDBColumn47: TcxGridDBColumn
                      DataBinding.FieldName = 'safety_device_perc'
                    end
                    object cxGridDBColumn48: TcxGridDBColumn
                      DataBinding.FieldName = 'electrical_equipment'
                    end
                    object cxGridDBColumn49: TcxGridDBColumn
                      DataBinding.FieldName = 'electrical_equipment_perc'
                    end
                    object cxGridDBColumn50: TcxGridDBColumn
                      DataBinding.FieldName = 'mechanical_equipment'
                    end
                    object cxGridDBColumn51: TcxGridDBColumn
                      DataBinding.FieldName = 'mechanical_equipment_perc'
                    end
                    object cxGridDBColumn52: TcxGridDBColumn
                      DataBinding.FieldName = 'electric_machine'
                    end
                    object cxGridDBColumn53: TcxGridDBColumn
                      DataBinding.FieldName = 'electric_machine_perc'
                    end
                    object cxGridDBColumn54: TcxGridDBColumn
                      DataBinding.FieldName = 'diagnostic_equipment'
                    end
                    object cxGridDBColumn55: TcxGridDBColumn
                      DataBinding.FieldName = 'diagnostic_equipment_perc'
                    end
                    object cxGridDBColumn56: TcxGridDBColumn
                      DataBinding.FieldName = 'total'
                    end
                    object cxGridDBColumn57: TcxGridDBColumn
                      DataBinding.FieldName = 'tjaga_name'
                      GroupIndex = 0
                    end
                  end
                  object cxGridDBBandedTableView1: TcxGridDBBandedTableView
                    Navigator.Buttons.CustomButtons = <>
                    OnCustomDrawCell = btvFilial_Reason_TableCustomDrawCell
                    DataController.Summary.DefaultGroupSummaryItems = <
                      item
                        Format = ' '
                        FieldName = 'kod_tjaga'
                        DisplayText = ' '
                      end
                      item
                        FieldName = 'kod_firm_service'
                        Sorted = True
                      end>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.CellHints = True
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
                    OptionsView.CellAutoHeight = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.GridLineColor = clGray
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderAutoHeight = True
                    OptionsView.BandHeaderEndEllipsis = True
                    OptionsView.BandHeaderHeight = 80
                    Styles.StyleSheet = DMMain.stlshtBTV11
                    Bands = <
                      item
                        Caption = #1055#1088#1080#1095#1080#1085#1099
                        HeaderAlignmentHorz = taRightJustify
                        Options.HoldOwnColumnsOnly = True
                        Width = 232
                      end
                      item
                        Caption = #1042#1089#1077#1075#1086
                        Options.HoldOwnColumnsOnly = True
                        Width = 45
                      end
                      item
                        Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1055#1056#1040#1042#1048#1051' '#1069#1050#1057#1055#1051'.'
                        Options.HoldOwnColumnsOnly = True
                        Width = 78
                      end
                      item
                        Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1058#1045#1061#1053#1054#1051#1054#1043#1048#1048' '#1056#1045#1052#1054#1053#1058#1040', '#1048#1047#1043#1054#1058#1054#1042#1051#1045#1053#1048#1071', '#1052#1054#1053#1058#1040#1046#1040
                        Options.HoldOwnColumnsOnly = True
                        Width = 117
                      end
                      item
                        Caption = #1057#1058#1040#1056#1045#1053#1048#1045', '#1048#1047#1053#1054#1057', '#1050#1054#1056#1056#1054#1047#1048#1071', '#1059#1057#1058#1040#1051#1054#1057#1058#1068
                        Options.HoldOwnColumnsOnly = True
                        Width = 76
                      end
                      item
                        Caption = #1050#1054#1053#1057#1058#1056#1059#1050#1058#1048#1042#1053#1067#1049' '#1053#1045#1044#1054#1057#1058#1040#1058#1054#1050
                        Options.HoldOwnColumnsOnly = True
                        Width = 107
                      end
                      item
                        Caption = #1053#1045#1050#1040#1063#1045#1057#1058#1042#1045#1053#1053#1054#1045' '#1054#1041#1054#1056#1059#1044#1054#1042#1040#1053#1048#1045' '#1054#1058' '#1055#1054#1057#1058#1040#1042#1065#1048#1050#1054#1042
                        Options.HoldOwnColumnsOnly = True
                        Width = 100
                      end
                      item
                        Caption = #1053#1045#1050#1040#1063#1045#1057#1058#1042#1045#1053#1053#1067#1045' '#1047#1040#1055#1063#1040#1057#1058#1048', '#1052#1040#1058'-'#1051#1067', '#1050#1054#1052#1055#1051#1045#1050#1058#1059#1070#1065#1048#1045
                        Options.HoldOwnColumnsOnly = True
                        Width = 101
                      end
                      item
                        Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1059#1057#1051'. '#1061#1056#1040#1053#1045#1053#1048#1071
                        Options.HoldOwnColumnsOnly = True
                        Width = 76
                      end
                      item
                        Caption = #1053#1040#1056#1059#1064#1045#1053#1048#1045' '#1055#1056#1040#1042#1048#1051' '#1058#1056#1040#1053#1057#1055#1054#1056#1058#1048#1056#1054#1042#1050#1048', '#1050#1054#1053#1057#1045#1056#1042'.'
                        Options.HoldOwnColumnsOnly = True
                        Width = 82
                      end
                      item
                        Caption = #1053#1045#1059#1057#1058#1040#1053#1054#1042#1051#1045#1053#1053#1067#1045' '#1055#1056#1048#1063#1048#1053#1067
                        Options.HoldOwnColumnsOnly = True
                        Width = 108
                      end
                      item
                        Caption = #1055#1056#1054#1063#1048#1045' '#1055#1056#1048#1063#1048#1053#1067
                        Options.HoldOwnColumnsOnly = True
                        Width = 82
                      end>
                    object cxGridDBBandedColumn43: TcxGridDBBandedColumn
                      Tag = -100
                      Caption = #1058#1103#1075#1072
                      DataBinding.FieldName = 'tjaga_name'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Properties.Alignment.Horz = taLeftJustify
                      OnCustomDrawCell = clmnDepoEq_TjagaCustomDrawCell
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      MinWidth = 75
                      Options.CellMerging = True
                      Options.HorzSizing = False
                      Width = 75
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn44: TcxGridDBBandedColumn
                      Tag = -100
                      Caption = #1060#1080#1083#1080#1072#1083
                      DataBinding.FieldName = 'row_group_name'
                      PropertiesClassName = 'TcxTextEditProperties'
                      OnCustomDrawCell = clmnDepoEq_TjagaCustomDrawCell
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Options.CellMerging = True
                      Width = 92
                      Position.BandIndex = 0
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn45: TcxGridDBBandedColumn
                      Tag = -100
                      Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                      DataBinding.FieldName = 'row_field_name'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 95
                      Position.BandIndex = 0
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn46: TcxGridDBBandedColumn
                      Tag = 3
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_1'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDataText = btv_Filial_EqColumn3GetDataText
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 3
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn47: TcxGridDBBandedColumn
                      Tag = 3
                      AlternateCaption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1090' '#1086#1073#1097#1077#1075#1086' '#1095#1080#1089#1083#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074
                      Caption = '%'
                      DataBinding.FieldName = 'perc_1'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 3
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn48: TcxGridDBBandedColumn
                      Tag = 4
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_2'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDataText = btv_Filial_EqColumn3GetDataText
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 7
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn49: TcxGridDBBandedColumn
                      Tag = 4
                      Caption = '%'
                      DataBinding.FieldName = 'perc_2'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 7
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn50: TcxGridDBBandedColumn
                      Tag = 8
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_3'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 6
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn51: TcxGridDBBandedColumn
                      Tag = 8
                      Caption = '%'
                      DataBinding.FieldName = 'perc_3'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 6
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn52: TcxGridDBBandedColumn
                      Tag = 9
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_4'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 5
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn53: TcxGridDBBandedColumn
                      Tag = 9
                      Caption = '%'
                      DataBinding.FieldName = 'perc_4'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 5
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn54: TcxGridDBBandedColumn
                      Tag = 6
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_5'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 43
                      Position.BandIndex = 4
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn55: TcxGridDBBandedColumn
                      Tag = 6
                      Caption = '%'
                      DataBinding.FieldName = 'perc_5'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 33
                      Position.BandIndex = 4
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn56: TcxGridDBBandedColumn
                      Tag = 7
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_6'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 2
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn57: TcxGridDBBandedColumn
                      Tag = 7
                      Caption = '%'
                      DataBinding.FieldName = 'perc_6'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 2
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn58: TcxGridDBBandedColumn
                      Tag = 5
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_7'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 8
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn59: TcxGridDBBandedColumn
                      Tag = 5
                      Caption = '%'
                      DataBinding.FieldName = 'perc_7'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 8
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn60: TcxGridDBBandedColumn
                      Tag = 10
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_8'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 9
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn61: TcxGridDBBandedColumn
                      Tag = 10
                      Caption = '%'
                      DataBinding.FieldName = 'perc_8'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 9
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn62: TcxGridDBBandedColumn
                      Tag = -1
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_total'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 1
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn63: TcxGridDBBandedColumn
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_10'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '#######'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Width = 60
                      Position.BandIndex = 10
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn64: TcxGridDBBandedColumn
                      Caption = '%'
                      DataBinding.FieldName = 'perc_10'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      Properties.DisplayFormat = '########'
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Styles.Content = DMMain.stlFormatPerc
                      Width = 60
                      Position.BandIndex = 10
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn65: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'gid'
                      Visible = False
                      FooterAlignmentHorz = taCenter
                      Position.BandIndex = 0
                      Position.ColIndex = 3
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn66: TcxGridDBBandedColumn
                      Caption = #1050#1086#1083'-'#1074#1086
                      DataBinding.FieldName = 'cnt_11'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      OnGetDataText = btv_Filial_EqColumn3GetDataText
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      HeaderAlignmentHorz = taCenter
                      Width = 47
                      Position.BandIndex = 11
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridDBBandedColumn67: TcxGridDBBandedColumn
                      Caption = '%'
                      DataBinding.FieldName = 'perc_11'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.Alignment.Horz = taCenter
                      OnGetDisplayText = btv_Filial_EqColumn3GetDisplayText
                      HeaderAlignmentHorz = taCenter
                      Width = 35
                      Position.BandIndex = 11
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                  end
                  object cxGridLevel6: TcxGridLevel
                    Caption = '  '#1044#1077#1087#1086'-'#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077'  '
                    GridView = cxGridDBBandedTableView1
                  end
                end
              end
            end
          end
        end
        object tsFilial_State: TcxTabSheet
          Caption = #1057#1090#1072#1090#1091#1089#1099
          ImageIndex = 3
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pcFilial_State: TcxPageControl
            Left = 0
            Top = 0
            Width = 1185
            Height = 643
            Align = alClient
            Color = 14148590
            ParentBackground = False
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Properties.ActivePage = tsState_Graph
            Properties.CustomButtons.Buttons = <>
            Properties.HideTabs = True
            Properties.HotTrack = True
            Properties.Images = DMMain.imlMain24
            Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
            Properties.Style = 9
            Properties.TabHeight = 40
            Properties.TabSlants.Positions = [spLeft, spRight]
            LookAndFeel.NativeStyle = False
            TabSlants.Positions = [spLeft, spRight]
            ClientRectBottom = 643
            ClientRectRight = 1185
            ClientRectTop = 0
            object tsState_Graph: TcxTabSheet
              Caption = '   '#1044#1080#1072#1075#1088#1072#1084#1084#1072'   '
              ImageIndex = 2
              OnShow = tsState_GraphShow
              ExplicitWidth = 0
              ExplicitHeight = 0
              object lblState_Graph: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitTop = -6
                ExplicitWidth = 1229
              end
              object grd_T_State: TcxGrid
                Left = 450
                Top = 28
                Width = 450
                Height = 615
                Cursor = crHandPoint
                Align = alLeft
                TabOrder = 0
                LevelTabs.Slants.Positions = [spLeft, spRight]
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object btvState_Teplo_Graph: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'state_name'
                  Categories.DisplayText = #1057#1090#1072#1090#1091#1089#1099
                  DiagramBar.Legend.Position = cppBottom
                  DiagramColumn.Active = True
                  DiagramColumn.Legend.Position = cppNone
                  DiagramColumn.Styles.ValueCaptions = cxStyle1
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramLine.Enabled = False
                  DiagramLine.Legend.Position = cppBottom
                  DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramLine.AxisValue.MinMaxValues = mmvAuto
                  DiagramLine.Styles.ValueCaptions = cxStyle1
                  DiagramLine.Values.VaryColorsByCategory = True
                  DiagramLine.Values.CaptionPosition = ldvcpAbove
                  DiagramLine.Values.HotSpotSize = 10
                  DiagramLine.Values.LineWidth = 3
                  DiagramLine.Values.MarkerSize = 10
                  DiagramLine.Values.MarkerStyle = cmsCircle
                  DiagramPie.Enabled = False
                  OptionsBehavior.ValueHotTrack = vhAlways
                  OptionsCustomize.DataDrillDown = False
                  Styles.Title = DMMain.stlGroup11
                  Title.Text = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                  ToolBox.Border = tbNone
                  ToolBox.CustomizeButton = True
                  ToolBox.DataLevelsInfoVisible = dlivNever
                  ToolBox.DiagramSelector = True
                  ToolBox.Visible = tvAlways
                  OnGetValueHint = btvState_Teplo_GraphGetValueHint
                  OnValueClick = btvState_Teplo_GraphValueClick
                  object btvState_Teplo_Graph_datagroup_cumulative: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_Teplo_Graph_datagroup_total: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_total'
                    DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_Teplo_Graph_datagroup_pers_of_total: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_of_total'
                    DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_Teplo_Graph_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_Teplo_GraphDataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'state_id'
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_Teplo_GraphDataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'state_name'
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartSeries1: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt'
                    DisplayText = #1042#1089#1077#1075#1086
                    Styles.Values = stl2
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  Tag = 1
                  Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                  GridView = btvState_Teplo_Graph
                end
              end
              object grd_E_State: TcxGrid
                Left = 0
                Top = 28
                Width = 450
                Height = 615
                Cursor = crHandPoint
                Align = alLeft
                TabOrder = 1
                LevelTabs.Slants.Positions = [spLeft, spRight]
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object btvState_Electro_Graph: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'state_name'
                  Categories.DisplayText = #1057#1090#1072#1090#1091#1089#1099
                  DiagramBar.Legend.Position = cppBottom
                  DiagramColumn.Active = True
                  DiagramColumn.Legend.Position = cppNone
                  DiagramColumn.Styles.ValueCaptions = cxStyle1
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramLine.Enabled = False
                  DiagramLine.Legend.Position = cppBottom
                  DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramLine.AxisValue.MinMaxValues = mmvAuto
                  DiagramLine.Styles.ValueCaptions = cxStyle1
                  DiagramLine.Values.VaryColorsByCategory = True
                  DiagramLine.Values.CaptionPosition = ldvcpAbove
                  DiagramLine.Values.HotSpotSize = 10
                  DiagramLine.Values.LineWidth = 3
                  DiagramLine.Values.MarkerSize = 10
                  DiagramLine.Values.MarkerStyle = cmsCircle
                  DiagramPie.Enabled = False
                  OptionsBehavior.ValueHotTrack = vhAlways
                  OptionsCustomize.DataDrillDown = False
                  Styles.Title = DMMain.stlGroup11
                  Title.Text = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                  ToolBox.Border = tbNone
                  ToolBox.CustomizeButton = True
                  ToolBox.DataLevelsInfoVisible = dlivNever
                  ToolBox.DiagramSelector = True
                  ToolBox.Visible = tvAlways
                  OnGetValueHint = btvState_Teplo_GraphGetValueHint
                  OnValueClick = btvState_Electro_GraphValueClick
                  object cxGridDBChartDataGroup5: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup6: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_total'
                    DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup7: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_of_total'
                    DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup8: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_Electro_GraphDataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'state_id'
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_Electro_GraphDataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'state_name'
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartSeries4: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt'
                    DisplayText = #1042#1089#1077#1075#1086
                    Styles.Values = stl1
                  end
                end
                object cxGridLevel11: TcxGridLevel
                  Tag = 1
                  Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                  GridView = btvState_Electro_Graph
                end
              end
              object grd_State: TcxGrid
                Left = 900
                Top = 28
                Width = 285
                Height = 615
                Cursor = crHandPoint
                Align = alClient
                TabOrder = 2
                LevelTabs.Slants.Positions = [spLeft, spRight]
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object btvState_Graph: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'state_name'
                  Categories.DisplayText = #1057#1090#1072#1090#1091#1089#1099
                  DiagramBar.Legend.Position = cppBottom
                  DiagramColumn.Active = True
                  DiagramColumn.Legend.Position = cppNone
                  DiagramColumn.Styles.ValueCaptions = cxStyle1
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramLine.Enabled = False
                  DiagramLine.Legend.Position = cppBottom
                  DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramLine.AxisValue.MinMaxValues = mmvAuto
                  DiagramLine.Styles.ValueCaptions = cxStyle1
                  DiagramLine.Values.VaryColorsByCategory = True
                  DiagramLine.Values.CaptionPosition = ldvcpAbove
                  DiagramLine.Values.HotSpotSize = 10
                  DiagramLine.Values.LineWidth = 3
                  DiagramLine.Values.MarkerSize = 10
                  DiagramLine.Values.MarkerStyle = cmsCircle
                  DiagramPie.Enabled = False
                  OptionsBehavior.ValueHotTrack = vhAlways
                  OptionsCustomize.DataDrillDown = False
                  Styles.Title = DMMain.stlGroup11
                  Title.Text = #1042#1089#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1099
                  ToolBox.Border = tbNone
                  ToolBox.CustomizeButton = True
                  ToolBox.DataLevelsInfoVisible = dlivNever
                  ToolBox.DiagramSelector = True
                  ToolBox.Visible = tvAlways
                  OnGetValueHint = btvState_Teplo_GraphGetValueHint
                  OnValueClick = btvState_GraphValueClick
                  object cxGridDBChartDataGroup9: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup10: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_total'
                    DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup11: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_of_total'
                    DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup12: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_GraphDataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'state_id'
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvState_GraphDataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'state_name'
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartSeries7: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt'
                    DisplayText = #1042#1089#1077#1075#1086
                    Styles.Values = stl4
                  end
                  object cxGridDBChartSeries24: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt_teplo'
                    DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                    Visible = False
                    Styles.Values = stl2
                  end
                  object cxGridDBChartSeries25: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt_electro'
                    DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                    Visible = False
                    Styles.Values = stl1
                  end
                end
                object cxGridLevel12: TcxGridLevel
                  Tag = 1
                  Caption = #1057#1090#1072#1090#1091#1089#1099
                  GridView = btvState_Graph
                end
              end
            end
            object tsState_Table: TcxTabSheet
              Caption = #1058#1072#1073#1083#1080#1094#1072
              Enabled = False
              ImageIndex = 12
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label4: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 1360
              end
            end
          end
        end
        object tsFilial_Source: TcxTabSheet
          Caption = #1048#1089#1090#1086#1095#1085#1080#1082#1080' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
          ImageIndex = 4
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pcFilial_Source: TcxPageControl
            Left = 0
            Top = 0
            Width = 1185
            Height = 643
            Align = alClient
            Color = 14148590
            ParentBackground = False
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Properties.ActivePage = tsSource_Graph
            Properties.CustomButtons.Buttons = <>
            Properties.HideTabs = True
            Properties.HotTrack = True
            Properties.Images = DMMain.imlMain24
            Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
            Properties.Style = 9
            Properties.TabHeight = 40
            Properties.TabSlants.Positions = [spLeft, spRight]
            LookAndFeel.NativeStyle = False
            TabSlants.Positions = [spLeft, spRight]
            ClientRectBottom = 643
            ClientRectRight = 1185
            ClientRectTop = 0
            object tsSource_Graph: TcxTabSheet
              Caption = '   '#1044#1080#1072#1075#1088#1072#1084#1084#1072'   '
              ImageIndex = 2
              OnShow = tsSource_GraphShow
              ExplicitWidth = 0
              ExplicitHeight = 0
              object lblSource_Graph: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitTop = -6
                ExplicitWidth = 1229
              end
              object grd_T_SourceType: TcxGrid
                Left = 470
                Top = 28
                Width = 470
                Height = 615
                Cursor = crHandPoint
                Align = alLeft
                TabOrder = 0
                LevelTabs.Slants.Positions = [spLeft, spRight]
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object btvSource_Teplo_Graph: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'source_type_name'
                  Categories.DisplayText = #1058#1080#1087#1099' '#1080#1089#1090#1086#1095#1085#1080#1082#1086#1074' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
                  DiagramBar.Legend.Position = cppBottom
                  DiagramColumn.Active = True
                  DiagramColumn.Legend.Position = cppNone
                  DiagramColumn.Styles.ValueCaptions = cxStyle1
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramLine.Enabled = False
                  DiagramLine.Legend.Position = cppBottom
                  DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramLine.AxisValue.MinMaxValues = mmvAuto
                  DiagramLine.Styles.ValueCaptions = cxStyle1
                  DiagramLine.Values.VaryColorsByCategory = True
                  DiagramLine.Values.CaptionPosition = ldvcpAbove
                  DiagramLine.Values.HotSpotSize = 10
                  DiagramLine.Values.LineWidth = 3
                  DiagramLine.Values.MarkerSize = 10
                  DiagramLine.Values.MarkerStyle = cmsCircle
                  DiagramPie.Enabled = False
                  OptionsBehavior.ValueHotTrack = vhAlways
                  OptionsCustomize.DataDrillDown = False
                  Styles.Title = DMMain.stlGroup11
                  Title.Text = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                  ToolBox.Border = tbNone
                  ToolBox.CustomizeButton = True
                  ToolBox.DataLevelsInfoVisible = dlivNever
                  ToolBox.DiagramSelector = True
                  ToolBox.Visible = tvAlways
                  OnGetValueHint = btvState_Teplo_GraphGetValueHint
                  OnValueClick = btvSource_Teplo_GraphValueClick
                  object btvSource_Teplo_Graph_datagroup_cumulative: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Teplo_Graph_datagroup_total: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_total'
                    DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Teplo_Graph_datagroup_pers_of_total: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_of_total'
                    DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Teplo_Graph_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Teplo_GraphDataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'source_type_id'
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Teplo_GraphDataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'source_type_name'
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartSeries26: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt'
                    DisplayText = #1042#1089#1077#1075#1086
                    Styles.Values = stl2
                  end
                end
                object cxGridLevel13: TcxGridLevel
                  Tag = 1
                  Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                  GridView = btvSource_Teplo_Graph
                end
              end
              object grd_E_SourceType: TcxGrid
                Left = 0
                Top = 28
                Width = 470
                Height = 615
                Cursor = crHandPoint
                Align = alLeft
                TabOrder = 1
                LevelTabs.Slants.Positions = [spLeft, spRight]
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object btvSource_Electro_Graph: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'source_type_name'
                  Categories.DisplayText = #1058#1080#1087#1099' '#1080#1089#1090#1086#1095#1085#1080#1082#1086#1074' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
                  DiagramBar.Legend.Position = cppBottom
                  DiagramColumn.Active = True
                  DiagramColumn.Legend.Position = cppNone
                  DiagramColumn.Styles.ValueCaptions = cxStyle1
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramLine.Enabled = False
                  DiagramLine.Legend.Position = cppBottom
                  DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramLine.AxisValue.MinMaxValues = mmvAuto
                  DiagramLine.Styles.ValueCaptions = cxStyle1
                  DiagramLine.Values.VaryColorsByCategory = True
                  DiagramLine.Values.CaptionPosition = ldvcpAbove
                  DiagramLine.Values.HotSpotSize = 10
                  DiagramLine.Values.LineWidth = 3
                  DiagramLine.Values.MarkerSize = 10
                  DiagramLine.Values.MarkerStyle = cmsCircle
                  DiagramPie.Enabled = False
                  OptionsBehavior.ValueHotTrack = vhAlways
                  OptionsCustomize.DataDrillDown = False
                  Styles.Title = DMMain.stlGroup11
                  Title.Text = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                  ToolBox.Border = tbNone
                  ToolBox.CustomizeButton = True
                  ToolBox.DataLevelsInfoVisible = dlivNever
                  ToolBox.DiagramSelector = True
                  ToolBox.Visible = tvAlways
                  OnGetValueHint = btvState_Teplo_GraphGetValueHint
                  OnValueClick = btvSource_Electro_GraphValueClick
                  object btvSource_Electro_Graph_datagroup_cumulative: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Electro_Graph_datagroup_total: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_total'
                    DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Electro_Graph_datagroup_pers_of_total: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_of_total'
                    DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Electro_Graph_datagroup_pers_cumulative: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Electro_GraphDataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'source_type_id'
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_Electro_GraphDataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'source_type_name'
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartSeries29: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt'
                    DisplayText = #1042#1089#1077#1075#1086
                    Styles.Values = stl1
                  end
                end
                object cxGridLevel14: TcxGridLevel
                  Tag = 1
                  Caption = ' '#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '
                  GridView = btvSource_Electro_Graph
                end
              end
              object grd_SourceType: TcxGrid
                Left = 940
                Top = 28
                Width = 245
                Height = 615
                Cursor = crHandPoint
                Align = alClient
                TabOrder = 2
                LevelTabs.Slants.Positions = [spLeft, spRight]
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                object btvSource_Graph: TcxGridDBChartView
                  Categories.DataBinding.FieldName = 'source_type_name'
                  Categories.DisplayText = #1058#1080#1087#1099' '#1080#1089#1090#1086#1095#1085#1080#1082#1086#1074' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
                  DiagramBar.Legend.Position = cppBottom
                  DiagramColumn.Active = True
                  DiagramColumn.Legend.Position = cppNone
                  DiagramColumn.AxisCategory.Title.Text = #1048#1089#1090#1086#1095#1085#1080#1082#1080
                  DiagramColumn.Styles.ValueCaptions = cxStyle1
                  DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                  DiagramLine.Enabled = False
                  DiagramLine.Legend.Position = cppBottom
                  DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  DiagramLine.AxisValue.MinMaxValues = mmvAuto
                  DiagramLine.Styles.ValueCaptions = cxStyle1
                  DiagramLine.Values.VaryColorsByCategory = True
                  DiagramLine.Values.CaptionPosition = ldvcpAbove
                  DiagramLine.Values.HotSpotSize = 10
                  DiagramLine.Values.LineWidth = 3
                  DiagramLine.Values.MarkerSize = 10
                  DiagramLine.Values.MarkerStyle = cmsCircle
                  DiagramPie.Enabled = False
                  OptionsBehavior.ValueHotTrack = vhAlways
                  OptionsCustomize.DataDrillDown = False
                  Styles.Title = DMMain.stlGroup11
                  Title.Text = #1042#1089#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1099
                  ToolBox.Border = tbNone
                  ToolBox.CustomizeButton = True
                  ToolBox.DataLevelsInfoVisible = dlivNever
                  ToolBox.DiagramSelector = True
                  ToolBox.Visible = tvAlways
                  OnGetValueHint = btvState_Teplo_GraphGetValueHint
                  OnValueClick = btvSource_GraphValueClick
                  object cxGridDBChartDataGroup17: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup18: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'cnt_total'
                    DisplayText = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup19: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_of_total'
                    DisplayText = '% '#1086#1090' '#1086#1073#1097#1077#1075#1086
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartDataGroup20: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'pers_cumulative'
                    DisplayText = #1053#1072#1082#1086#1087#1083#1077#1085#1085#1099#1081' '#1087#1088#1086#1094#1077#1085#1090
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_GraphDataGroup1: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'source_type_id'
                    SortOrder = soNone
                    Visible = False
                  end
                  object btvSource_GraphDataGroup2: TcxGridDBChartDataGroup
                    DataBinding.FieldName = 'source_type_name'
                    SortOrder = soNone
                    Visible = False
                  end
                  object cxGridDBChartSeries32: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt'
                    DisplayText = #1042#1089#1077#1075#1086
                    Styles.Values = stl4
                  end
                  object cxGridDBChartSeries33: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt_teplo'
                    DisplayText = #1058#1077#1087#1083#1086#1074#1086#1079#1099
                    Visible = False
                    Styles.Values = stl2
                  end
                  object cxGridDBChartSeries34: TcxGridDBChartSeries
                    DataBinding.FieldName = 'cnt_electro'
                    DisplayText = #1069#1083#1077#1082#1090#1088#1086#1074#1086#1079#1099
                    Visible = False
                    Styles.Values = stl1
                  end
                end
                object cxGridLevel15: TcxGridLevel
                  Tag = 1
                  Caption = #1048#1089#1090#1086#1095#1085#1080#1082#1080' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
                  GridView = btvSource_Graph
                end
              end
            end
            object cxTabSheet4: TcxTabSheet
              Caption = #1058#1072#1073#1083#1080#1094#1072
              Enabled = False
              ImageIndex = 12
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label5: TLabel
                Left = 0
                Top = 0
                Width = 1185
                Height = 28
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 1360
              end
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object tlFirmTree: TcxDBTreeList
        Left = 96
        Top = 64
        Width = 425
        Height = 569
        Bands = <
          item
          end>
        DataController.ParentField = 'kod_firm_parent'
        DataController.KeyField = 'kod_firm'
        Images = DMMain.imlSmall
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.ExpandOnDblClick = False
        OptionsBehavior.ExpandOnIncSearch = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.HotTrack = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxDBTreeList1cxDBTreeListColumn1
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Headers = False
        RootValue = -1
        StateImages = DMMain.imlSmall
        Styles.StyleSheet = DMMain.stlshtTL
        TabOrder = 0
        OnDblClick = tlFirmTreeDblClick
        object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
          DataBinding.FieldName = 'firm_name'
          Width = 362
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 1028
    Top = 272
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1095
    Top = 272
  end
  object al: TActionList
    Images = DMMain.imlSmall
    Left = 932
    Top = 112
    object aCurrentDay: TAction
      Caption = #1058#1077#1082#1091#1097#1080#1077' '#1089#1091#1090#1082#1080
      OnExecute = aCurrentDayExecute
    end
    object aCurrentMonth: TAction
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1084#1077#1089#1103#1094
      OnExecute = aCurrentMonthExecute
    end
    object aCurrentYear: TAction
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1075#1086#1076
      OnExecute = aCurrentYearExecute
    end
    object aPeriod: TAction
      Caption = #1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
      OnExecute = aPeriodExecute
    end
    object aLoad_Firm_Tree: TAction
      Caption = 'aLoad_Firm_Tree'
      ImageIndex = 13
      OnExecute = aLoad_Firm_TreeExecute
    end
    object aLoad_Report_Tree: TAction
      Caption = 'aLoad_Report_Tree'
      ImageIndex = 13
    end
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1077#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1077
      ImageIndex = 4
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aRefresh_Filial_Eq: TAction
      Caption = 'aRefresh_Filial_Eq'
      ImageIndex = 4
      OnExecute = aRefresh_Filial_EqExecute
    end
    object aRefresh_Depo_Eq: TAction
      Caption = 'aRefresh_Depo_Eq'
      ImageIndex = 4
      OnExecute = aRefresh_Depo_EqExecute
    end
    object aShowDetail_Filial_Eq: TAction
      Caption = 'aShowDetail_Filial_Eq'
      ImageIndex = 40
      OnExecute = aShowDetail_Filial_EqExecute
    end
    object aExportXLS: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1074' Excel'
      ImageIndex = 54
      OnExecute = aExportXLSExecute
    end
    object aRefresh_NR_Dynamic: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1080#1085#1072#1084#1080#1082#1091' '#1087#1086#1089#1090#1072#1085#1086#1074#1086#1082' '#1074' '#1053#1056
      ImageIndex = 4
      OnExecute = aRefresh_NR_DynamicExecute
    end
    object aRefresh_Filial_Reason_Graph: TAction
      Caption = 'aRefresh_Filial_Reason_Graph'
      ImageIndex = 4
      OnExecute = aRefresh_Filial_Reason_GraphExecute
    end
    object aRefresh_Filial_Reason_Table: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aRefresh_Filial_Reason_TableExecute
    end
    object aRefresh_Seria_Graph: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 4
      OnExecute = aRefresh_Seria_GraphExecute
    end
    object aRefresh_State_Graph: TAction
      Caption = 'aRefresh_State_Graph'
      ImageIndex = 4
      OnExecute = aRefresh_State_GraphExecute
    end
    object aRefresh_Source_Graph: TAction
      Caption = 'aRefresh_Source_Graph'
      ImageIndex = 4
      OnExecute = aRefresh_Source_GraphExecute
    end
    object aRefresh_Filial_Eq_Graph: TAction
      Caption = 'aRefresh_Filial_Eq_Graph'
      ImageIndex = 4
      OnExecute = aRefresh_Filial_Eq_GraphExecute
    end
    object aDepo_Eq_Detail: TAction
      Caption = 'aDepo_Eq_Detail'
      ImageIndex = 40
      OnExecute = aDepo_Eq_DetailExecute
    end
    object aReason_Detail: TAction
      Caption = 'aReason_Detail'
      ImageIndex = 40
      OnExecute = aReason_DetailExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object aRefresh_Filial_Eq_Graph_: TAction
      Caption = 'aRefresh_Filial_Eq_Graph_'
    end
    object aPrintPreview: TAction
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1077#1088#1077#1076' '#1087#1077#1095#1072#1090#1100#1102
      ImageIndex = 63
      Visible = False
      OnExecute = aPrintPreviewExecute
    end
  end
  object dsFilial_Eq: TDataSource
    DataSet = cdsFilial_Eq
    Left = 1036
    Top = 320
  end
  object cdsFilial_Eq: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1095
    Top = 320
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    FileName = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
    Filter = #1060#1072#1081#1083' Excel (*.xls)|*.xls'
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
    Left = 927
    Top = 176
  end
  object dsDepo_Eq: TDataSource
    DataSet = cdsDepo_Eq
    Left = 1028
    Top = 360
  end
  object cdsDepo_Eq: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1095
    Top = 360
  end
  object GridViewRepository: TcxGridViewRepository
    Left = 927
    Top = 320
    object chvRcvDynamic: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'dt'
      DiagramLine.Active = True
      DiagramLine.Legend.Position = cppNone
      DiagramLine.AxisCategory.GridLines = False
      DiagramLine.AxisValue.GridLines = False
      DiagramLine.AxisValue.Title.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DiagramLine.AxisValue.MinMaxValues = mmvAuto
      DiagramLine.Styles.ValueCaptions = DMMain.stlContent8
      DiagramLine.Styles.Values = DMMain.stlLineSeries_1
      DiagramLine.Styles.CategoryAxis = DMMain.stlContent
      DiagramLine.Styles.ValueAxis = DMMain.stlContent
      DiagramLine.Values.CaptionPosition = ldvcpAbove
      DiagramLine.Values.LineWidth = 3
      DiagramLine.Values.MarkerSize = 4
      DiagramLine.Values.MarkerStyle = cmsCircle
      OptionsBehavior.ValueHotTrack = vhAlways
      OptionsCustomize.DataDrillDown = False
      object chvRcvDynamicSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'cnt'
      end
    end
  end
  object dsNR_Dynamic: TDataSource
    DataSet = cdsNR_Dynamic
    Left = 1028
    Top = 408
  end
  object cdsNR_Dynamic: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1095
    Top = 408
  end
  object stlrp: TcxStyleRepository
    Left = 924
    Top = 272
    PixelsPerInch = 96
    object stl1: TcxStyle
      AssignedValues = [svColor]
      Color = 16755080
    end
    object stl2: TcxStyle
      AssignedValues = [svColor]
      Color = 7526017
    end
    object stl3: TcxStyle
      AssignedValues = [svColor]
      Color = 49601
    end
    object stl4: TcxStyle
      AssignedValues = [svColor]
      Color = 9094655
    end
    object stl5: TcxStyle
      AssignedValues = [svColor]
      Color = clFuchsia
    end
    object stl6: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object stl7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14341818
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 11328429
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clGreen
    end
    object stlshtBTV: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
    object stlshtBTV9: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
    object stlshtBTV8: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
    object stlshtBTV11: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
  end
  object ds_Reason_Graph: TDataSource
    DataSet = cds_Reason_Graph
    Left = 20
    Top = 288
  end
  object cds_Reason_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 119
    Top = 288
  end
  object dsFilial_Reason_Table: TDataSource
    DataSet = cdsFilial_Reason_Table
    Left = 1031
    Top = 463
  end
  object cdsFilial_Reason_Table: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1098
    Top = 463
  end
  object dsSeria_Graph: TDataSource
    DataSet = cdsSeria_Graph
    Left = 1036
    Top = 520
  end
  object cdsSeria_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1103
    Top = 520
  end
  object dsSeria_Teplo_Graph: TDataSource
    DataSet = cdsSeria_Teplo_Graph
    Left = 1036
    Top = 568
  end
  object cdsSeria_Teplo_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1111
    Top = 568
  end
  object dsSeria_Electro_Graph: TDataSource
    DataSet = cdsSeria_Electro_Graph
    Left = 668
    Top = 312
  end
  object cdsSeria_Electro_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 735
    Top = 312
  end
  object ds_T_Reason_Graph: TDataSource
    DataSet = cds_T_Reason_Graph
    Left = 1028
    Top = 184
  end
  object cds_T_Reason_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1095
    Top = 184
  end
  object ds_E_Reason_Graph: TDataSource
    DataSet = cds_E_Reason_Graph
    Left = 1012
    Top = 232
  end
  object cds_E_Reason_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1095
    Top = 232
  end
  object dsState_Electro_Graph: TDataSource
    DataSet = cdsState_Electro_Graph
    Left = 844
    Top = 584
  end
  object dsState_Teplo_Graph: TDataSource
    DataSet = cdsState_Teplo_Graph
    Left = 844
    Top = 539
  end
  object dsState_Graph: TDataSource
    DataSet = cdsState_Graph
    Left = 844
    Top = 495
  end
  object cdsState_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 931
    Top = 495
  end
  object cdsState_Teplo_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 931
    Top = 539
  end
  object cdsState_Electro_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 931
    Top = 584
  end
  object dsSource_Graph: TDataSource
    DataSet = cdsSource_Graph
    Left = 844
    Top = 448
  end
  object cdsSource_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 931
    Top = 448
  end
  object cdsSource_Electro_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 931
    Top = 403
  end
  object dsSource_Electro_Graph: TDataSource
    DataSet = cdsSource_Electro_Graph
    Left = 844
    Top = 403
  end
  object dsSource_Teplo_Graph: TDataSource
    DataSet = cdsSource_Teplo_Graph
    Left = 844
    Top = 359
  end
  object cdsSource_Teplo_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 931
    Top = 359
  end
  object dsEq_Electro_Graph: TDataSource
    DataSet = cdsEq_Electro_Graph
    Left = 676
    Top = 416
  end
  object cdsEq_Electro_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 743
    Top = 416
  end
  object dsEq_Graph: TDataSource
    DataSet = cdsEq_Graph
    Left = 684
    Top = 464
  end
  object cdsEq_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 751
    Top = 464
  end
  object dsEq_Teplo_Graph: TDataSource
    DataSet = cdsEq_Teplo_Graph
    Left = 676
    Top = 368
  end
  object cdsEq_Teplo_Graph: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 743
    Top = 368
  end
  object prntr: TdxComponentPrinter
    CurrentLink = prntr_lnk_grdEq_Electro_Graph_
    Version = 0
    Left = 932
    Top = 224
    object prntr_lnk_grdEq_Electro_Graph_: TdxGridReportLink
      Component = grdEq_Electro_Graph
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object prntr_lnk_grdEq_Teplo_Graph: TdxGridReportLink
      Component = grdEq_Teplo_Graph
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object prntr_lnk_grdEq_Graph: TdxGridReportLink
      Component = grdEq_Graph
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object prntr_lnk_grd_Depo_Eq: TdxGridReportLink
      Component = grd_Depo_Eq
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ShrinkToPageWidth = True
      StyleManager = dxPrintStyleManager1
      BuiltInReportLink = True
    end
    object prntr_lnk_grdEq_Electro_Graph: TdxGridReportLink
      Component = grdEq_Electro_Graph
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
    object prntr_lnk_grdNR_Dynamic: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object dxPrintStyleManager1: TdxPrintStyleManager
    CurrentStyle = dxPrintStyleManager1Style1
    Version = 0
    Left = 720
    Top = 512
    object dxPrintStyleManager1Style1: TdxPSPrintStyle
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      StyleCaption = #1040#1083#1100#1073#1086#1084#1085#1072#1103', '#1074#1087#1080#1089#1072#1090#1100' '#1085#1072' 1 '#1089#1090#1088#1072#1085#1080#1094#1091' '#1087#1086' '#1096#1080#1088#1080#1085#1077
      BuiltInStyle = True
    end
  end
  object ds_Reason_Graph_E: TDataSource
    DataSet = cds_Reason_Graph_E
    Left = 20
    Top = 192
  end
  object cds_Reason_Graph_E: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 119
    Top = 192
  end
  object ds_Reason_Graph_T: TDataSource
    DataSet = cds_Reason_Graph_T
    Left = 20
    Top = 240
  end
  object cds_Reason_Graph_T: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 119
    Top = 240
  end
end
