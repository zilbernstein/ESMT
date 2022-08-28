object frmEdit_Pause: TfrmEdit_Pause
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1072#1091#1079#1072' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 274
  ClientWidth = 854
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
    Top = 212
    Width = 854
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 209
    ExplicitWidth = 793
    object cxButton9: TcxButton
      Left = 694
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
      ExplicitLeft = 418
    end
    object cxButton10: TcxButton
      Left = 534
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
      ExplicitLeft = 258
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 251
    Width = 854
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
        PanelStyle.ImageIndex = 12
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Fixed = False
        Text = '- '#1087#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsFlat
    SizeGrip = False
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ExplicitTop = 232
    ExplicitWidth = 578
  end
  object vg: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 854
    Height = 212
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    Images = DMMain.imlSmall
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.ShowEditButtons = ecsbFocused
    OptionsView.GridLineColor = 11842740
    OptionsView.RowHeaderWidth = 139
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    ParentFont = False
    Styles.StyleSheet = DMMain.cxVerticalGridStyleSheet3
    TabOrder = 2
    ExplicitTop = -1
    ExplicitWidth = 578
    ExplicitHeight = 194
    Version = 1
    object cxCategoryRow1: TcxCategoryRow
      Options.Focusing = False
      Options.ShowExpandButton = False
      Properties.Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwFirm: TcxEditorRow
      Properties.Caption = #1059#1088#1086#1074#1077#1085#1100' '#1101#1089#1082#1072#1083#1072#1094#1080#1080
      Properties.Hint = #1059#1088#1086#1074#1077#1085#1100' '#1080#1077#1088#1072#1088#1093#1080#1080', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1101#1089#1082#1072#1083#1080#1088#1091#1077#1090#1089#1103' '#1048#1085#1094#1080#1076#1077#1085#1090
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ClearKey = 46
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = '0'
      Visible = False
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwUser: TcxEditorRow
      Properties.Caption = #1050#1086#1084#1091
      Properties.Hint = #1057#1086#1090#1088#1091#1076#1085#1080#1082', '#1085#1072' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1101#1089#1082#1072#1083#1080#1088#1091#1077#1090#1089#1103' '#1048#1085#1094#1080#1076#1077#1085#1090
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ClearKey = 46
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = '0'
      Visible = False
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rwDateBegin: TcxEditorRow
      Height = 25
      Properties.Caption = #1053#1072#1095#1072#1083#1086
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.ClearKey = 46
      Properties.EditProperties.Kind = ckDateTime
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = ''
      Styles.Header = DMMain.cxStyle202
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object rwDateEnd: TcxEditorRow
      Properties.Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.ClearKey = 46
      Properties.EditProperties.Kind = ckDateTime
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = ''
      Visible = False
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object rwReason: TcxEditorRow
      Height = 25
      Properties.Caption = #1055#1088#1080#1095#1080#1085#1072
      Properties.Hint = #1055#1088#1080#1095#1080#1085#1072' '#1101#1089#1082#1072#1083#1072#1094#1080#1080' '#1048#1085#1094#1080#1076#1077#1085#1090#1072
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ClearKey = 46
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = '0'
      Styles.Header = DMMain.cxStyle202
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object rwDescr: TcxEditorRow
      Height = 100
      Properties.Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072
      Properties.Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081', '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1080' '#1090'.'#1076'.'
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.ClearKey = 46
      Properties.EditProperties.MaxLength = 256
      Properties.EditProperties.WantReturns = False
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 88
    Top = 184
  end
  object alPause: TActionList
    Images = DMMain.imlSmall
    Left = 32
    Top = 184
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
    object aLoadReason: TAction
      Caption = 'aLoadReason'
      ImageIndex = 13
      OnExecute = aLoadReasonExecute
    end
  end
end
