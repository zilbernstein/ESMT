object frmEdit_Weight: TfrmEdit_Weight
  Left = 0
  Top = 0
  Caption = #1042#1077#1089' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 390
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 328
    Width = 568
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object btnCancel: TcxButton
      Left = 408
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
      ExplicitLeft = 468
    end
    object btnSave: TcxButton
      Left = 248
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
      ExplicitLeft = 242
      ExplicitTop = -6
    end
    object btnCalc: TcxButton
      Left = 0
      Top = 0
      Width = 160
      Height = 39
      Align = alLeft
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1074#1077#1089
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = DMMain.imlSmall
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = aCalcWeightExecute
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 367
    Width = 568
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
    ExplicitTop = 358
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 328
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 325
    object deDateEnter: TcxDateEdit
      Left = 263
      Top = 6
      ParentFont = False
      Properties.DateButtons = [btnToday]
      Properties.ImmediatePost = True
      Properties.InputKind = ikMask
      Properties.Kind = ckDateTime
      Properties.UseNullString = True
      Properties.OnEditValueChanged = deDateExitPropertiesEditValueChanged
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
      TabOrder = 0
      Width = 169
    end
    object deDateExit: TcxDateEdit
      Left = 263
      Top = 38
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.InputKind = ikMask
      Properties.Kind = ckDateTime
      Properties.UseNullString = True
      Properties.OnEditValueChanged = deDateExitPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 169
    end
    object edIdleInDepoHr: TcxTextEdit
      Left = 263
      Top = 70
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 290
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 7
      Caption = #1042#1088#1077#1084#1103' '#1079#1072#1093#1086#1076#1072', '#1095
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
      Left = 8
      Top = 39
      Caption = #1042#1088#1077#1084#1103' '#1074#1099#1093#1086#1076#1072', '#1095
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.IsFontAssigned = True
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 71
      Caption = #1054#1073#1097#1077#1077' '#1074#1088#1077#1084#1103' '#1087#1088#1086#1089#1090#1086#1103' '#1074' '#1076#1077#1087#1086', '#1095' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
    end
    object cxLabel4: TcxLabel
      Left = 8
      Top = 103
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1089#1090#1086#1103', '#1088#1091#1073' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel5: TcxLabel
      Left = 8
      Top = 135
      Caption = #1042#1088#1077#1084#1103' '#1088#1077#1084#1086#1085#1090#1072' '#1092#1072#1082#1090'., '#1095' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel6: TcxLabel
      Left = 8
      Top = 167
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099' ('#1095#1077#1083'*'#1095#1072#1089'), '#1088#1091#1073' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
    end
    object cxLabel7: TcxLabel
      Left = 8
      Top = 199
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1047#1048#1055
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel8: TcxLabel
      Left = 8
      Top = 231
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1047#1048#1055', '#1088#1091#1073' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object edZipname: TcxTextEdit
      Left = 263
      Top = 198
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 290
    end
    object edZipCost: TcxMaskEdit
      Left = 263
      Top = 230
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+| (\d+,\d\d) | (\d+,\d) | (\d+,)'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Text = '0'
      Width = 290
    end
    object edIdleInDepoRub: TcxMaskEdit
      Left = 263
      Top = 103
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+| (\d+,\d\d) | (\d+,\d) | (\d+,)'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Text = '0'
      Width = 290
    end
    object edDateRepairHr: TcxMaskEdit
      Left = 263
      Top = 134
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.OnEditValueChanged = edDateRepairHrPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Text = '0'
      Width = 290
    end
    object cxLabel9: TcxLabel
      Left = 8
      Top = 291
      Caption = #1042#1077#1089', '#1088#1091#1073' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object EditWeiht: TcxTextEdit
      Left = 263
      Top = 294
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Height = 26
      Width = 290
    end
    object cxLabel10: TcxLabel
      Left = 8
      Top = 263
      Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1088#1072#1089#1093#1086#1076#1099', '#1088#1091#1073' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object EditOverhead: TcxMaskEdit
      Left = 263
      Top = 262
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+| (\d+,\d\d) | (\d+,\d) | (\d+,)'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Text = '0'
      Width = 290
    end
    object edDateRepairRub: TcxMaskEdit
      Left = 263
      Top = 165
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+| (\d+,\d\d) | (\d+,\d) | (\d+,)'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 290
    end
  end
  object alWeight: TActionList
    Images = DMMain.imlSmall
    Left = 504
    Top = 8
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
      OnExecute = aLoad_WeightExecute
    end
    object aCalcWeight: TAction
      Caption = 'aCalcWeight'
      ImageIndex = 1
      OnExecute = aCalcWeightExecute
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 536
    Top = 8
  end
end
