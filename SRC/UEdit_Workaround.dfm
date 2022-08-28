object frmEdit_Workaround: TfrmEdit_Workaround
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1073#1093#1086#1076#1085#1086#1077' '#1088#1077#1096#1077#1085#1080#1077' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 192
  ClientWidth = 547
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
    Top = 130
    Width = 547
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    object cxButton9: TcxButton
      Left = 387
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
      ExplicitLeft = 447
    end
    object cxButton10: TcxButton
      Left = 227
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
      ExplicitLeft = 287
    end
  end
  object cxLabel8: TcxLabel
    Left = 6
    Top = 49
    Caption = #1058#1080#1087
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Properties.WordWrap = True
    Width = 26
  end
  object cxLabel21: TcxLabel
    Left = 303
    Top = 16
    Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
    Style.TextColor = clWindowText
  end
  object deDateFinish: TcxDateEdit
    Left = 375
    Top = 13
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
    Top = 169
    Width = 547
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
  object cxLabel1: TcxLabel
    Left = 8
    Top = 16
    Caption = #1053#1072#1095#1072#1083#1086
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.StyleController = DMMain.stlctrlMandatoryEdit
  end
  object deDateBegin: TcxDateEdit
    Left = 71
    Top = 13
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
    TabOrder = 0
    Width = 165
  end
  object cbWAType: TcxLookupComboBox
    Left = 71
    Top = 47
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
    TabOrder = 7
    Width = 469
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 72
    Top = 80
  end
  object alWorkaround: TActionList
    Images = DMMain.imlSmall
    Left = 16
    Top = 80
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
    object aLoad_WA_Type: TAction
      Caption = 'aLoad_WA_Type'
      ImageIndex = 13
      OnExecute = aLoad_WA_TypeExecute
    end
  end
end
