object frmEdit_Work: TfrmEdit_Work
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1072#1073#1086#1090#1072' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 244
  ClientWidth = 342
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
    Top = 182
    Width = 342
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object cxButton9: TcxButton
      Left = 222
      Top = 0
      Width = 120
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
      Left = 102
      Top = 0
      Width = 120
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
    Top = 221
    Width = 342
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
  object vg: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 342
    Height = 182
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.ShowEditButtons = ecsbFocused
    OptionsView.GridLineColor = 11842740
    OptionsView.RowHeaderWidth = 182
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    ParentFont = False
    Styles.Content = DMMain.cxStyle58
    Styles.Category = DMMain.cxStyle144
    Styles.Header = DMMain.stlHeader_Edit_Loc
    TabOrder = 0
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
    object rwDateFinish: TcxEditorRow
      Properties.Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      Properties.Hint = #1042#1088#1077#1084#1103' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1085#1072#1095#1072#1083#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090#1099
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DateButtons = [btnClear, btnNow]
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.Kind = ckDateTime
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '01.01.2013'
      Styles.Header = DMMain.stlAttention_Edit_Loc
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwRate: TcxEditorRow
      Properties.Caption = #1054#1094#1077#1085#1082#1072
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Images = DMMain.imlSmall
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <
        item
          Description = #1054#1095#1077#1085#1100' '#1087#1083#1086#1093#1086
          ImageIndex = 50
          Value = '1'
        end
        item
          Description = #1055#1083#1086#1093#1086
          ImageIndex = 50
          Value = '2'
        end
        item
          Description = #1059#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
          ImageIndex = 48
          Value = '3'
        end
        item
          Description = #1061#1086#1088#1086#1096#1086
          ImageIndex = 48
          Value = '4'
        end
        item
          Description = #1054#1090#1083#1080#1095#1085#1086
          ImageIndex = 49
          Value = '5'
        end
        item
          Description = #1053#1077#1090
          Value = '0'
        end>
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 72
    Top = 72
  end
  object alWork: TActionList
    Images = DMMain.imlSmall
    Left = 16
    Top = 72
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
  end
end
