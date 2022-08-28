object frmAdminUserEdit: TfrmAdminUserEdit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frmAdminUserEdit'
  ClientHeight = 812
  ClientWidth = 1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  DesignSize = (
    1044
    812)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSave: TPanel
    Left = 0
    Top = 772
    Width = 1044
    Height = 40
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnSave: TcxButton
      Left = 723
      Top = 1
      Width = 160
      Height = 38
      Align = alRight
      Action = aSave
      Caption = ' '#1057#1086#1093#1088#1072#1085#1080#1090#1100
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = DMMain.iml
      TabOrder = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnCancel: TcxButton
      Left = 883
      Top = 1
      Width = 160
      Height = 38
      Align = alRight
      Action = aCancel
      Caption = ' '#1054#1090#1084#1077#1085#1072
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = DMMain.iml
      TabOrder = 1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object pc: TcxPageControl
    Left = 0
    Top = 0
    Width = 1044
    Height = 772
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    Properties.ActivePage = tsMain
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    Properties.OwnerDraw = True
    Properties.Style = 9
    Properties.TabSlants.Positions = [spLeft, spRight]
    TabSlants.Positions = [spLeft, spRight]
    ClientRectBottom = 772
    ClientRectRight = 1044
    ClientRectTop = 20
    object tsMain: TcxTabSheet
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      ImageIndex = 0
      object vg: TcxVerticalGrid
        Left = 0
        Top = 0
        Width = 1044
        Height = 420
        Align = alTop
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Images = DMMain.iml
        OptionsView.ShowEditButtons = ecsbAlways
        OptionsView.RowHeaderWidth = 239
        ParentFont = False
        Styles.Content = DMMain.stlContent11
        Styles.StyleSheet = DMMain.stlshtVG
        Styles.Category = DMMain.stlCategory
        TabOrder = 0
        Version = 1
        object vgCategoryRow3: TcxCategoryRow
          Properties.Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object rwULastName: TcxEditorRow
          Properties.Caption = #1060#1072#1084#1080#1083#1080#1103
          Properties.ImageIndex = 12
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object rwUFirstName: TcxEditorRow
          Properties.Caption = #1048#1084#1103
          Properties.ImageIndex = 41
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object rwUPatrName: TcxEditorRow
          Properties.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object rwUDol: TcxEditorRow
          Properties.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          Properties.ImageIndex = 12
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.ImmediatePost = True
          Properties.EditProperties.ImmediateUpdateText = True
          Properties.EditProperties.Items = <>
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object vgCategoryRow1: TcxCategoryRow
          Properties.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object rwUTypeFirm: TcxEditorRow
          Properties.Caption = #1058#1080#1087' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
          Properties.DataBinding.ValueType = 'String'
          Properties.Options.Editing = False
          Properties.Value = Null
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
        object rwUFirmTree: TcxEditorRow
          Properties.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          Properties.ImageIndex = 12
          Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
          Properties.EditProperties.PopupControl = pnlFirmTree
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 7
          ParentID = -1
          Index = 7
          Version = 1
        end
        object vgCategoryRow2: TcxCategoryRow
          Properties.Caption = #1050#1086#1085#1090#1072#1082#1090#1099
          ID = 8
          ParentID = -1
          Index = 8
          Version = 1
        end
        object rwUEMail: TcxEditorRow
          Properties.Caption = 'E-Mail'
          Properties.ImageIndex = 12
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 9
          ParentID = -1
          Index = 9
          Version = 1
        end
        object rwUMPhone: TcxEditorRow
          Properties.Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
          Properties.ImageIndex = 12
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 10
          ParentID = -1
          Index = 10
          Version = 1
        end
        object rwUWPhone: TcxEditorRow
          Properties.Caption = #1056#1072#1073#1086#1095#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
          Properties.ImageIndex = 12
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 11
          ParentID = -1
          Index = 11
          Version = 1
        end
        object vgCategoryRow4: TcxCategoryRow
          Properties.Caption = #1045#1057#1052#1058
          ID = 12
          ParentID = -1
          Index = 12
          Version = 1
        end
        object rwULogin: TcxEditorRow
          Properties.Caption = #1051#1086#1075#1080#1085
          Properties.ImageIndex = 12
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = ''
          ID = 13
          ParentID = -1
          Index = 13
          Version = 1
        end
        object rwUPassword: TcxEditorRow
          Properties.Caption = #1055#1072#1088#1086#1083#1100
          Properties.ImageIndex = 12
          Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
          Properties.EditProperties.Buttons = <
            item
              Action = aGenPas
              Default = True
              Kind = bkText
            end>
          Properties.DataBinding.ValueType = 'String'
          Properties.Options.ShowEditButtons = eisbAlways
          Properties.Value = ''
          ID = 14
          ParentID = -1
          Index = 14
          Version = 1
        end
        object vgCategoryRow5: TcxCategoryRow
          Properties.Caption = #1056#1086#1083#1100
          ID = 15
          ParentID = -1
          Index = 15
          Version = 1
        end
        object rwURole: TcxEditorRow
          Properties.Caption = #1056#1086#1083#1100
          Properties.ImageIndex = 12
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 16
          ParentID = -1
          Index = 16
          Version = 1
        end
        object rwUFirmRole: TcxEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1088#1086#1083#1080
          Properties.ImageIndex = 12
          Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
          Properties.EditProperties.PopupControl = pnlFirmRole
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 17
          ParentID = -1
          Index = 17
          Version = 1
        end
      end
      object pnlRole: TPanel
        Left = 0
        Top = 420
        Width = 456
        Height = 332
        Align = alClient
        TabOrder = 1
        object tlRole: TcxDBTreeList
          Left = 1
          Top = 1
          Width = 454
          Height = 330
          Align = alClient
          Bands = <
            item
            end>
          DataController.ParentField = 'pred_id'
          DataController.KeyField = 'child_id'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Navigator.Buttons.CustomButtons = <>
          OptionsBehavior.IncSearchItem = cxDBTreeListColumn4
          OptionsView.ColumnAutoWidth = True
          ParentFont = False
          RootValue = -1
          Styles.Selection = DMMain.stlSelection
          Styles.ColumnHeader = DMMain.stlCategory
          TabOrder = 0
          object cxDBTreeListColumn4: TcxDBTreeListColumn
            Caption.Text = #1060#1091#1085#1082#1094#1080#1080' '#1088#1086#1083#1080
            DataBinding.FieldName = 'full_struct'
            Options.Editing = False
            Width = 236
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
      object pnlFunction: TPanel
        Left = 456
        Top = 420
        Width = 588
        Height = 332
        Align = alRight
        Caption = 'pnlFunction'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object pnlFunctionAddDel: TPanel
          Left = 1
          Top = 1
          Width = 586
          Height = 40
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object btnAddFunction: TcxButton
            Left = 1
            Top = 1
            Width = 120
            Height = 38
            Align = alLeft
            Action = aAddFunction
            Caption = ' '#1044#1086#1073#1072#1074#1080#1090#1100
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.SkinName = 'Caramel'
            OptionsImage.ImageIndex = 5
            OptionsImage.Images = DMMain.iml
            TabOrder = 0
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object btnDeetelFunction: TcxButton
            Left = 121
            Top = 1
            Width = 120
            Height = 38
            Align = alLeft
            Action = aDeleteFunction
            Caption = ' '#1059#1076#1072#1083#1080#1090#1100
            LookAndFeel.SkinName = 'Caramel'
            OptionsImage.ImageIndex = 7
            OptionsImage.Images = DMMain.iml
            TabOrder = 1
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object grdFunction: TcxGrid
          Left = 1
          Top = 41
          Width = 586
          Height = 290
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object btvFunction: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsFunctionTree
            DataController.KeyFieldNames = 'id_o'
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
            object btvFunctionColumn1: TcxGridDBBandedColumn
              Caption = #1043#1088#1091#1087#1087#1072
              DataBinding.FieldName = 'uo_name'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Width = 141
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvFunctionColumn2: TcxGridDBBandedColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'f_name'
              Options.Editing = False
              Width = 298
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvFunctionColumn3: TcxGridDBBandedColumn
              Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
              DataBinding.FieldName = 'firm_name'
              Options.Editing = False
              Width = 225
              Position.BandIndex = 0
              Position.ColIndex = 2
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
              Options.Filtering = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Sorting = False
              Width = 44
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
          end
          object lvlFunction: TcxGridLevel
            GridView = btvFunction
            Options.TabsForEmptyDetails = False
          end
        end
      end
    end
    object tsOther: TcxTabSheet
      Caption = 'tsOther'
      ImageIndex = 1
      object pnlFirmTree: TPanel
        Left = 8
        Top = 8
        Width = 649
        Height = 473
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object tlFirmTree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 645
          Height = 446
          BorderStyle = cxcbsNone
          Align = alClient
          Bands = <
            item
            end>
          DataController.DataSource = dsFirmTree
          DataController.ParentField = 'kod_firm_parent'
          DataController.KeyField = 'kod_firm'
          DataController.StateIndexField = 'state_index'
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
          OptionsView.Headers = False
          RootValue = -1
          StateImages = DMMain.imlFirmTreeState
          Styles.Content = DMMain.stlContent
          Styles.Inactive = DMMain.stlSelection
          Styles.Selection = DMMain.stlSelection
          Styles.HotTrack = DMMain.stlHotTrack
          TabOrder = 0
          OnDblClick = aSelect_FirmExecute
          OnKeyPress = tlFirmTreeKeyPress
          object clmn_FirmName: TcxDBTreeListColumn
            DataBinding.FieldName = 'firm_name'
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
            DataBinding.FieldName = 'firm_type_mnemo'
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
          Width = 645
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
      object pnlFirmRole: TPanel
        Left = 16
        Top = 16
        Width = 649
        Height = 473
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object tlFirmRole: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 645
          Height = 446
          BorderStyle = cxcbsNone
          Align = alClient
          Bands = <
            item
            end>
          DataController.DataSource = dsFirmTree
          DataController.ParentField = 'kod_firm_parent'
          DataController.KeyField = 'kod_firm'
          DataController.StateIndexField = 'state_index'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Navigator.Buttons.CustomButtons = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.HotTrack = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxDBTreeListColumn7
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExtPaintStyle = True
          OptionsView.Headers = False
          RootValue = -1
          StateImages = DMMain.imlFirmTreeState
          Styles.Content = DMMain.stlContent
          Styles.Inactive = DMMain.stlSelection
          Styles.Selection = DMMain.stlSelection
          Styles.HotTrack = DMMain.stlHotTrack
          TabOrder = 0
          OnDblClick = aSelect_FirmRoleExecute
          OnKeyPress = tlFirmRoleKeyPress
          object cxDBTreeListColumn7: TcxDBTreeListColumn
            DataBinding.FieldName = 'firm_name'
            Width = 340
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn8: TcxDBTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Visible = False
            DataBinding.FieldName = 'firm_type_mnemo'
            Width = 81
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn9: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'kod_firm'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object dxStatusBar1: TdxStatusBar
          Left = 2
          Top = 448
          Width = 645
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
  end
  object gb: TcxGroupBox
    Left = 312
    Top = 240
    Anchors = []
    Caption = #1059#1076#1072#1083#1077#1085#1086'...'
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Visible = False
    Height = 57
    Width = 409
    object pb: TcxProgressBar
      Left = 3
      Top = 24
      TabOrder = 0
      Width = 403
    end
  end
  object al: TActionList
    Left = 856
    Top = 142
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      OnExecute = aCancelExecute
    end
    object aLoadDol: TAction
      Caption = 'aLoadDol'
      OnExecute = aLoadDolExecute
    end
    object aLoadAdmin: TAction
      Caption = 'aLoadAdmin'
    end
    object aLoadUser: TAction
      Caption = 'aLoadUser'
      OnExecute = aLoadUserExecute
    end
    object aLoadFirmTree: TAction
      Caption = 'aLoadFirmTree'
      OnExecute = aLoadFirmTreeExecute
    end
    object aSelect_Firm: TAction
      Caption = 'aSelect_Firm'
      OnExecute = aSelect_FirmExecute
    end
    object aGenPas: TAction
      Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
      OnExecute = aGenPasExecute
    end
    object aAddFunction: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = aAddFunctionExecute
    end
    object aLoadRole: TAction
      Caption = 'aLoadRole'
      OnExecute = aLoadRoleExecute
    end
    object aSelect_FirmRole: TAction
      Caption = 'aSelect_FirmRole'
      OnExecute = aSelect_FirmRoleExecute
    end
    object aLoadFirmRole: TAction
      Caption = 'aLoadFirmRole'
      OnExecute = aLoadFirmRoleExecute
    end
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1080' '#1086#1073#1085#1086#1074#1080#1090#1100
    end
    object aRole: TAction
      Caption = 'aRole'
      OnExecute = aRoleExecute
    end
    object aLoadFunctionTree: TAction
      Caption = 'aLoadFunctionTree'
      OnExecute = aLoadFunctionTreeExecute
    end
    object aDeleteFunction: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = aDeleteFunctionExecute
    end
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 896
    Top = 216
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 896
    Top = 264
  end
  object dsFirmTreeRole: TDataSource
    DataSet = cdsFirmTreeRole
    Left = 984
    Top = 216
  end
  object cdsFirmTreeRole: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 984
    Top = 264
  end
  object cdsRole: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 776
    Top = 264
  end
  object dsRole: TDataSource
    DataSet = cdsRole
    Left = 776
    Top = 216
  end
  object dsFunctionTree: TDataSource
    DataSet = cdsFunctionTree
    Left = 632
    Top = 280
  end
  object cdsFunctionTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 632
    Top = 224
  end
  object tmr: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tmrTimer
    Left = 784
    Top = 352
  end
end
