object frmEdit_Storage: TfrmEdit_Storage
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1082#1083#1072#1076' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 209
  ClientWidth = 571
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
    Top = 147
    Width = 571
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 142
    object cxButton9: TcxButton
      Left = 411
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
      ExplicitLeft = 468
      ExplicitTop = 3
      ExplicitHeight = 28
    end
    object cxButton10: TcxButton
      Left = 251
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
      ExplicitLeft = 311
      ExplicitHeight = 33
    end
  end
  object cxLabel8: TcxLabel
    Left = 6
    Top = 46
    Caption = #1052#1077#1089#1090#1086' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Transparent = True
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 186
    Width = 571
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
    ExplicitTop = 181
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 16
    Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
    ParentColor = False
    Style.Color = clBtnFace
    Transparent = True
  end
  object deDate_Receive: TcxDateEdit
    Left = 134
    Top = 13
    Properties.DateButtons = [btnToday]
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
    TabOrder = 0
    Width = 152
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 89
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Style.TextColor = clBlack
    Properties.WordWrap = True
    Transparent = True
    Width = 94
  end
  object mmDetail_Name: TcxMemo
    Left = 134
    Top = 72
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
    TabOrder = 6
    Height = 69
    Width = 434
  end
  object cbFirm: TcxLookupComboBox
    Left = 134
    Top = 44
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 10
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'kod_firm'
    Properties.ListColumns = <
      item
        FieldName = 'firm_name'
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
    TabOrder = 7
    Width = 434
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 472
  end
  object alStorage: TActionList
    Images = DMMain.imlSmall
    Left = 416
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
    object aLoad_Firm: TAction
      Caption = 'aLoad_Firm'
      ImageIndex = 13
      OnExecute = aLoad_FirmExecute
    end
  end
end
