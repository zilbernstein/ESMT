object frmEdit_WeightChrono: TfrmEdit_WeightChrono
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1095#1077#1090' '#1053#1056' - '#1061#1088#1086#1085#1086#1083#1086#1075#1080#1103' - '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 194
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 132
    Width = 521
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 131
    ExplicitWidth = 571
    object cxButton9: TcxButton
      Left = 361
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
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 471
    end
    object cxButton10: TcxButton
      Left = 201
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
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 371
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 171
    Width = 521
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
    ExplicitTop = 177
  end
  object frmEdit_WeightChrono: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 132
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 571
    ExplicitHeight = 137
    object edChrono: TcxMemo
      Left = 1
      Top = 30
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 35
      ExplicitWidth = 569
      Height = 101
      Width = 519
    end
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 7
    Caption = #1061#1088#1086#1085#1086#1083#1086#1075#1080#1103
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clRed
    Style.IsFontAssigned = True
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 96
    Top = 43
  end
  object alWeightChrono: TActionList
    Images = DMMain.imlSmall
    Left = 24
    Top = 40
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
    object aLoad_Weight: TAction
      Caption = 'aLoad_Weight'
      ImageIndex = 13
    end
  end
end
