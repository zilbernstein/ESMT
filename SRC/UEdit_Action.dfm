object frmEdit_Action: TfrmEdit_Action
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1052#1077#1088#1099' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 415
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
    Top = 353
    Width = 675
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
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
      ExplicitLeft = 575
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
      ExplicitLeft = 415
    end
  end
  object cxLabel8: TcxLabel
    Left = 8
    Top = 16
    Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Transparent = True
    Width = 85
  end
  object cbLeader: TcxExtLookupComboBox
    Left = 200
    Top = 13
    Properties.DropDownAutoSize = True
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 25
    Properties.DropDownSizeable = True
    Properties.ImmediatePost = True
    Properties.View = DMMain.btvNSI_Team_Executors
    Properties.KeyFieldNames = 'employee_id'
    Properties.ListFieldItem = DMMain.btvNSI_Team_ExecutorsColumn1
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
    Width = 469
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 51
    Caption = #1058#1080#1087' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1103
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Properties.WordWrap = True
    Transparent = True
    Width = 107
  end
  object cxLabel21: TcxLabel
    Left = 8
    Top = 166
    Caption = #1057#1088#1086#1082' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Transparent = True
  end
  object deDatePerformance: TcxDateEdit
    Left = 200
    Top = 163
    Properties.DateButtons = [btnNow]
    Properties.ImmediatePost = True
    Properties.InputKind = ikMask
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.TextStyle = []
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
    Width = 165
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 392
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
        Fixed = False
        Text = #1055#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
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
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 108
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1103
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Properties.WordWrap = True
    Transparent = True
    Width = 171
  end
  object mmActionDescr: TcxMemo
    Left = 200
    Top = 83
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.TextColor = clNavy
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Caramel'
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 8
    Height = 69
    Width = 468
  end
  object lblRating: TcxLabel
    Left = 8
    Top = 299
    Caption = #1054#1094#1077#1085#1082#1072' '#1101#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1080
    Enabled = False
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Style.TextColor = clWindowText
    Transparent = True
  end
  object cbRating: TcxImageComboBox
    Left = 200
    Top = 296
    EditValue = '0'
    Enabled = False
    Properties.Images = DMMain.imlSmall
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
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
        ImageIndex = 50
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
    TabOrder = 10
    Width = 467
  end
  object cxLabel4: TcxLabel
    Left = 8
    Top = 204
    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Properties.WordWrap = True
    Transparent = True
    Width = 142
  end
  object lblNonExecuteDescr: TcxLabel
    Left = 8
    Top = 250
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1085#1077#1074#1099#1087#1086#1083#1085#1080#1084#1086#1089#1090#1080
    Enabled = False
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Properties.WordWrap = True
    Transparent = True
    Width = 157
  end
  object mmNonExecuteDescr: TcxMemo
    Left = 199
    Top = 238
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.TextColor = clBtnShadow
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Caramel'
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 13
    Height = 43
    Width = 468
  end
  object cbActionType: TcxLookupComboBox
    Left = 200
    Top = 49
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 10
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListOptions.ShowHeader = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clNavy
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
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
    TabOrder = 14
    Width = 467
  end
  object cbResult: TcxImageComboBox
    Left = 200
    Top = 201
    EditValue = 62
    Properties.Images = DMMain.imlSmall
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
      item
        Description = #1042#1099#1087#1086#1083#1085#1077#1085#1086
        ImageIndex = 49
        Value = 59
      end
      item
        Description = #1053#1077#1074#1099#1087#1086#1083#1085#1080#1084#1086
        ImageIndex = 50
        Value = 60
      end
      item
        Description = #1042' '#1088#1072#1073#1086#1090#1077
        ImageIndex = 48
        Value = 61
      end
      item
        Description = #1042' '#1086#1078#1080#1076#1072#1085#1080#1080
        ImageIndex = 39
        Value = '146'
      end
      item
        Description = #1053#1077' '#1085#1072#1095#1080#1085#1072#1083#1086#1089#1100
        ImageIndex = 52
        Value = 62
      end>
    Properties.OnEditValueChanged = cbResultPropertiesEditValueChanged
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
    TabOrder = 15
    Width = 467
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 104
    Top = 152
  end
  object alAction: TActionList
    Images = DMMain.imlSmall
    Left = 32
    Top = 168
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
    object aLoadActionType: TAction
      Caption = 'aLoadActionType'
      ImageIndex = 13
      OnExecute = aLoadActionTypeExecute
    end
    object aLoadResult: TAction
      Caption = 'aLoadResult'
      ImageIndex = 13
      OnExecute = aLoadResultExecute
    end
  end
end
