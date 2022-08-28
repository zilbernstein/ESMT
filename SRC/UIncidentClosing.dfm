object frmIncidentClosing: TfrmIncidentClosing
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1051#1056
  ClientHeight = 241
  ClientWidth = 609
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
  object vg: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 609
    Height = 179
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
    OptionsView.ShowEditButtons = ecsbAlways
    OptionsView.GridLineColor = 11842740
    OptionsView.RowHeaderWidth = 142
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    ParentFont = False
    Styles.Content = DMMain.cxStyle212
    Styles.Category = DMMain.cxStyle227
    Styles.Header = DMMain.cxStyle219
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = -6
    ExplicitHeight = 188
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
    object rwReason: TcxEditorRow
      Height = 25
      Properties.Caption = #1050#1086#1076' '#1079#1072#1082#1088#1099#1090#1080#1103
      Properties.Hint = #1050#1083#1072#1089#1089#1080#1092#1080#1094#1080#1088#1086#1074#1072#1085#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1083#1080#1089#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = '0'
      Styles.Header = DMMain.stlAttention_Edit_Loc
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwDescr: TcxEditorRow
      Height = 54
      Properties.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Properties.Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1082' '#1079#1072#1082#1088#1099#1090#1080#1102' '#1083#1080#1089#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.MaxLength = 1024
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object vgCategoryRow1: TcxCategoryRow
      Properties.Caption = 
        #1055#1086#1089#1083#1077' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1083#1102#1073#1099#1077' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1089' '#1051#1080#1089#1090#1086#1084' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1048#1085#1094#1080#1076#1077#1085#1090#1072' '#1073#1091#1076 +
        #1091#1090' '#1085#1077#1076#1086#1089#1090#1091#1087#1085#1099'.'
      Properties.ImageIndex = 19
      Styles.Header = DMMain.stlAttention
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 179
    Width = 609
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object cxButton6: TcxButton
      Left = 449
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
      ExplicitLeft = 494
    end
    object cxButton7: TcxButton
      Left = 289
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
      ExplicitLeft = 299
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 218
    Width = 609
    Height = 23
    Images = DMMain.iml
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
        PanelStyle.ImageIndex = 12
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = '- '#1087#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 220
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container2
        Fixed = False
        Width = 300
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
    object dxStatusBar1Container2: TdxStatusBarContainerControl
      Left = 322
      Top = 3
      Width = 286
      Height = 19
      object pbLoading: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        Properties.BarStyle = cxbsGradient
        Properties.EndColor = 16766935
        Properties.Max = 2.000000000000000000
        Properties.OverloadBeginColor = clWhite
        Properties.OverloadEndColor = clWhite
        Properties.OverloadValue = 2.000000000000000000
        Properties.PeakColor = clWhite
        Properties.PeakValue = 2.000000000000000000
        Properties.SolidTextColor = True
        Style.BorderColor = clBtnFace
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.Shadow = False
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
  end
  object al: TActionList
    Images = DMMain.iml
    Left = 192
    Top = 144
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 56
      OnExecute = aSaveExecute
    end
    object aFillReason: TAction
      Caption = 'aFillReason'
      ImageIndex = 83
      OnExecute = aFillReasonExecute
    end
  end
  object tmr: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrTimer
    Left = 160
    Top = 144
  end
end
