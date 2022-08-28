object frmEdit_TeamLeader: TfrmEdit_TeamLeader
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1086#1084#1072#1085#1076#1072'. '#1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1080' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 658
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  object Panel6: TPanel
    Left = 0
    Top = 596
    Width = 668
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cxButton9: TcxButton
      Left = 508
      Top = 0
      Width = 160
      Height = 39
      Align = alRight
      Action = aCancel
      Cancel = True
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton10: TcxButton
      Left = 348
      Top = 0
      Width = 160
      Height = 39
      Align = alRight
      Action = aSave
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 635
    Width = 668
    Height = 23
    Images = DMMain.imlSmall
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.KeyboardStates = [dxksCapsLock, dxksNumLock, dxksInsert]
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'INS'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'OVR'
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Color = clBtnFace
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Fixed = False
        Text = #1055#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsFlat
    SizeGrip = False
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
  end
  object grd: TcxGrid
    Left = 0
    Top = 0
    Width = 668
    Height = 596
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object btvTeamLeader: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.DetailInSQLMode = True
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ' '
          Kind = skMax
          Position = spFooter
          FieldName = 'kod_road'
          DisplayText = ' '
          Sorted = True
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = btvTeamLeaderColumn1
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      Styles.StyleSheet = DMMain.stlshtGrdTV
      object clmnCheck: TcxGridDBColumn
        DataBinding.FieldName = 'checked'
        PropertiesClassName = 'TcxCheckBoxProperties'
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
        Width = 68
      end
      object btvTeamLeaderColumn1: TcxGridDBColumn
        Caption = #1060#1048#1054
        DataBinding.FieldName = 'fio'
        Options.Editing = False
        Width = 264
      end
      object btvTeamLeaderColumn2: TcxGridDBColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'dol_name'
        Options.Editing = False
        Width = 218
      end
      object btvTeamLeaderColumn3: TcxGridDBColumn
        Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
        DataBinding.FieldName = 'firm_name'
        Options.Editing = False
        Width = 116
      end
    end
    object lvl: TcxGridLevel
      GridView = btvTeamLeader
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 64
    Top = 496
  end
  object alTeamExecutor: TActionList
    Images = DMMain.imlSmall
    Left = 8
    Top = 496
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1085#1077#1089#1077#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 56
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086', '#1085#1077' '#1089#1086#1093#1088#1072#1085#1103#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aLoadLeader: TAction
      Caption = 'aLoadLeader'
      ImageIndex = 13
      OnExecute = aLoadLeaderExecute
    end
  end
end
