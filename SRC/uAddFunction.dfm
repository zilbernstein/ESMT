object frmAddFunction: TfrmAddFunction
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1080#1089#1086#1082' '#1092#1091#1085#1082#1094#1080#1081
  ClientHeight = 501
  ClientWidth = 975
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
    975
    501)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFuncyion: TPanel
    Left = 0
    Top = 461
    Width = 975
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
      Left = 714
      Top = 1
      Width = 130
      Height = 38
      Align = alRight
      Action = aSave
      Caption = ' '#1044#1086#1073#1072#1074#1080#1090#1100
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
    object btnCancel: TcxButton
      Left = 844
      Top = 1
      Width = 130
      Height = 38
      Align = alRight
      Action = aCancel
      Caption = ' '#1054#1090#1084#1077#1085#1072
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
    Top = 28
    Width = 975
    Height = 433
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsMain
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = 26
    ExplicitHeight = 435
    ClientRectBottom = 429
    ClientRectLeft = 4
    ClientRectRight = 971
    ClientRectTop = 24
    object tsMain: TcxTabSheet
      Caption = 'tsMain'
      ImageIndex = 0
      ExplicitTop = 27
      ExplicitWidth = 964
      ExplicitHeight = 401
      object gdFunction: TcxGrid
        Left = 0
        Top = 0
        Width = 967
        Height = 405
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 964
        ExplicitHeight = 401
        object btvFunction: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          Styles.Selection = DMMain.stlSelection
          Styles.Header = DMMain.stlGroup11
          object btvFunctionColumn1: TcxGridDBColumn
            Caption = #1043#1088#1091#1087#1087#1072
            DataBinding.FieldName = 'object_name'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Width = 97
          end
          object btvFunctionColumn2: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1092#1091#1085#1082#1094#1080#1080
            DataBinding.FieldName = 'name'
            Options.Editing = False
            Width = 233
          end
          object btvFunctionColumn3: TcxGridDBColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1092#1091#1085#1082#1094#1080#1080
            DataBinding.FieldName = 'descr'
            Options.Editing = False
            Width = 309
          end
          object clmnFirm: TcxGridDBColumn
            Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1092#1091#1085#1082#1094#1080#1080
            DataBinding.FieldName = 'Firm'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.PopupControl = pnlFirm
            Width = 336
          end
          object clmnFirmId: TcxGridDBColumn
            DataBinding.FieldName = 'FirmId'
            Visible = False
            IsCaptionAssigned = True
          end
          object clmCheck: TcxGridDBColumn
            AlternateCaption = #1054#1090#1084#1077#1095#1077#1085#1085#1086
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
            Width = 37
            OnHeaderClick = clmCheckHeaderClick
            IsCaptionAssigned = True
          end
        end
        object lvlFunction: TcxGridLevel
          GridView = btvFunction
        end
      end
    end
    object tsOther: TcxTabSheet
      Caption = 'tsOther'
      ImageIndex = 1
      ExplicitTop = 27
      ExplicitWidth = 964
      ExplicitHeight = 401
      object pnlFirmTree: TPanel
        Left = 304
        Top = 3
        Width = 273
        Height = 33
        TabOrder = 0
        object cbFirmTree_: TcxPopupEdit
          Left = 5
          Top = 5
          ParentFont = False
          Properties.PopupControl = pnlFirm
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
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
          Width = 260
        end
      end
      object pnlFirm: TPanel
        Left = 8
        Top = 50
        Width = 425
        Height = 358
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object tlFirmTree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 421
          Height = 331
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
          OnDblClick = aSelect_FrimExecute
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
          Top = 333
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
  end
  object gb: TcxGroupBox
    Left = 368
    Top = 205
    Anchors = []
    Caption = #1047#1072#1075#1088#1091#1079#1082#1072'...'
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Visible = False
    Height = 57
    Width = 313
    object pb: TcxProgressBar
      Left = 3
      Top = 23
      TabOrder = 0
      Width = 307
    end
  end
  object al: TActionList
    Left = 136
    Top = 344
    object aSave: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      OnExecute = aCancelExecute
    end
    object aLoadFunction: TAction
      Caption = 'aLoadFunction'
      OnExecute = aLoadFunctionExecute
    end
    object aLoadFirmTree: TAction
      Caption = 'aLoadFirmTree'
      OnExecute = aLoadFirmTreeExecute
    end
    object aSelect_Frim: TAction
      Caption = 'aSelect_Frim'
      OnExecute = aSelect_FrimExecute
    end
    object aChekedAll: TAction
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      OnExecute = aChekedAllExecute
    end
  end
  object cdsFunctionTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 144
  end
  object dsFunctionTree: TDataSource
    DataSet = cdsFunctionTree
    Left = 144
    Top = 192
  end
  object brm: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 136
    Top = 392
    DockControlHeights = (
      0
      0
      28
      0)
    object brmBar1: TdxBar
      Caption = #1060#1080#1088#1084#1072
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 625
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Hidden = True
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAllChecked'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object btnAllChecked: TdxBarButton
      Action = aChekedAll
      Align = iaRight
      Category = 0
      Description = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      Glyph.Data = {
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
      PaintStyle = psCaptionGlyph
    end
  end
  object dsFirmTree: TDataSource
    DataSet = cdsFirmTree
    Left = 219
    Top = 192
  end
  object cdsFirmTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 219
    Top = 144
  end
end
