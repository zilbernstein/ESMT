object frmEdit_WeightCompensation: TfrmEdit_WeightCompensation
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1095#1077#1090' '#1053#1056' - '#1042#1086#1079#1084#1077#1097#1077#1085#1080#1077' '#1091#1097#1077#1088#1073#1072' - '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 165
  ClientWidth = 518
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
    Top = 109
    Width = 518
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cxButton9: TcxButton
      Left = 358
      Top = 0
      Width = 160
      Height = 33
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
      ExplicitLeft = 418
    end
    object cxButton10: TcxButton
      Left = 198
      Top = 0
      Width = 160
      Height = 33
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
      ExplicitLeft = 258
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 142
    Width = 518
    Height = 23
    Images = DMMain.imlSmall
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.KeyboardStates = [dxksCapsLock, dxksNumLock, dxksInsert]
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'INS'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'OVR'
        PanelStyle.ParentFont = False
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 109
    Align = alClient
    TabOrder = 2
    object cxLabel1: TcxLabel
      Left = 7
      Top = 38
      Caption = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.IsFontAssigned = True
    end
    object deFaultDate: TcxDateEdit
      Left = 161
      Top = 37
      Enabled = False
      ParentFont = False
      Properties.DateButtons = [btnToday]
      Properties.ImmediatePost = True
      Properties.InputKind = ikMask
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
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
      TabOrder = 1
      Width = 152
    end
    object cxLabel4: TcxLabel
      Left = 7
      Top = 10
      Caption = #1042#1080#1085#1072' '#1087#1088#1080#1079#1085#1072#1085#1072
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 7
      Top = 66
      Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1084#1077#1097#1077#1085#1080#1103
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.IsFontAssigned = True
    end
    object edCompenAmmount: TcxMaskEdit
      Left = 161
      Top = 65
      Enabled = False
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Text = '0'
      Width = 343
    end
    object edFault: TcxImageComboBox
      Left = 161
      Top = 8
      ParentFont = False
      Properties.Items = <
        item
          Description = #1053#1077#1090
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = #1044#1072
          Value = '1'
        end>
      Properties.OnEditValueChanged = edFaultPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 152
    end
  end
  object alWeightCompensation: TActionList
    Images = DMMain.imlSmall
    Left = 48
    Top = 96
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
    object aLoadInfo: TAction
      Caption = 'aLoadInfo'
      OnExecute = aLoadInfoExecute
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 128
    Top = 96
  end
  object dsRec: TDataSource
    DataSet = cdsRec
    Left = 392
    Top = 9
  end
  object cdsRec: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 57
  end
end
