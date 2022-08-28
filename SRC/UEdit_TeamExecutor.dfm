object frmEdit_TeamExecutor: TfrmEdit_TeamExecutor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1086#1084#1072#1085#1076#1072'. '#1056#1072#1073#1086#1090#1072' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 253
  ClientWidth = 675
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
    Top = 191
    Width = 675
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object cxButton9: TcxButton
      Left = 515
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
      Left = 355
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
    Top = 230
    Width = 675
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
        Text = #1055#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 200
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
    Width = 675
    Height = 191
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
    Styles.Header = DMMain.cxStyle141
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
    object rwExecutor: TcxEditorRow
      Properties.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      Properties.Hint = #1053#1077#1087#1086#1089#1088#1077#1076#1089#1090#1074#1077#1085#1085#1099#1081' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100' '#1088#1072#1073#1086#1090#1099
      Properties.EditPropertiesClassName = 'TcxExtLookupComboBoxProperties'
      Properties.EditProperties.DropDownAutoSize = True
      Properties.EditProperties.DropDownListStyle = lsFixedList
      Properties.EditProperties.DropDownRows = 25
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.View = DMMain.btvNSI_Team_Executors
      Properties.EditProperties.KeyFieldNames = 'employee_id'
      Properties.EditProperties.ListFieldItem = DMMain.btvNSI_Team_ExecutorsColumn1
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = '0'
      Styles.Header = DMMain.cxStyle47
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwWork: TcxEditorRow
      Properties.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
      Properties.Hint = #1043#1088#1091#1087#1087#1072' '#1074#1080#1076#1086#1074' '#1088#1072#1073#1086#1090
      Properties.EditPropertiesClassName = 'TcxExtLookupComboBoxProperties'
      Properties.EditProperties.DropDownAutoSize = True
      Properties.EditProperties.DropDownListStyle = lsFixedList
      Properties.EditProperties.DropDownRows = 25
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.View = DMMain.btvNSI_Team_Work
      Properties.EditProperties.KeyFieldNames = 'work_id'
      Properties.EditProperties.ListFieldItem = DMMain.btvNSI_Team_WorkColumn4
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = '0'
      Styles.Header = DMMain.cxStyle47
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rwDescr: TcxEditorRow
      Height = 100
      Properties.Caption = #1055#1086#1076#1088#1086#1073#1085#1086#1089#1090#1080' '#10'('#1093#1072#1088#1072#1082#1090#1077#1088' '#1088#1072#1073#1086#1090', '#10#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1087#1080#1089#1077#1084' '#1080' '#1090'.'#1076'.)'
      Properties.Hint = 
        #1058#1077#1082#1089#1090#1086#1074#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099#10'('#1093#1072#1088#1072#1082#1090#1077#1088' '#1087#1088#1086#1074#1086#1076#1080#1084#1086#1081' '#1088#1072#1073#1086#1090#1099'; '#10#1085#1086#1084#1077#1088#1072' '#1072 +
        #1082#1090#1086#1074', '#1087#1080#1089#1077#1084', '#1090#1077#1083#1077#1075#1088#1072#1084#1084'; '#10#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1082#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088#1089#1082#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1080' ' +
        #1080' '#1090'.'#1076'.)'
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.MaxLength = 256
      Properties.EditProperties.WantReturns = False
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object rwDateBegin: TcxEditorRow
      Properties.Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
      Properties.Hint = #1042#1088#1077#1084#1103' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1085#1072#1095#1072#1083#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090#1099
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DateButtons = [btnClear, btnNow]
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.Kind = ckDateTime
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '01.01.2013'
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 624
    Top = 88
  end
  object alTeamExecutor: TActionList
    Images = DMMain.imlSmall
    Left = 568
    Top = 88
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
    object aLoadExecutor: TAction
      Caption = 'aLoadExecutor'
      ImageIndex = 13
      OnExecute = aLoadExecutorExecute
    end
    object aLoadWork: TAction
      Caption = 'aLoadWork'
      ImageIndex = 13
      OnExecute = aLoadWorkExecute
    end
  end
end
