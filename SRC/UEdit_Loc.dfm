object frmEdit_Loc: TfrmEdit_Loc
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1086#1074' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
  ClientHeight = 350
  ClientWidth = 691
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
    Width = 691
    Height = 288
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    Images = DMMain.iml
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.ShowEditButtons = ecsbAlways
    OptionsView.GridLineColor = 11842740
    OptionsView.RowHeaderWidth = 283
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    ParentFont = False
    Styles.Content = DMMain.cxStyle99
    Styles.Category = DMMain.cxStyle205
    Styles.Header = DMMain.stlHeader_Edit_Loc
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 24
    Version = 1
    object ctgrwLocName: TcxCategoryRow
      Options.Focusing = False
      Options.ShowExpandButton = False
      Properties.Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwSectionName: TcxEditorRow
      Properties.Caption = #1057#1077#1082#1094#1080#1080
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwFilial: TcxEditorRow
      Height = 50
      Properties.Caption = #1060#1080#1083#1080#1072#1083
      Properties.Hint = #1050#1083#1072#1089#1089#1080#1092#1080#1094#1080#1088#1086#1074#1072#1085#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1083#1080#1089#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxExtLookupComboBoxProperties'
      Properties.EditProperties.DropDownAutoSize = True
      Properties.EditProperties.DropDownListStyle = lsFixedList
      Properties.EditProperties.DropDownRows = 25
      Properties.EditProperties.DropDownSizeable = True
      Properties.EditProperties.FocusPopup = True
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.View = DMMain.btvNSI_Filial_Department_TCHR
      Properties.EditProperties.KeyFieldNames = 'tchr_pred_id'
      Properties.EditProperties.ListFieldItem = DMMain.btvNSI_Filial_Department_TCHRColumn4
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = '0'
      Styles.Header = DMMain.stlAttention_Edit_Loc
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rwDepartment: TcxEditorRow
      Properties.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      Properties.Hint = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
      Properties.ImageIndex = 7
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.DropDownAutoSize = True
      Properties.EditProperties.DropDownListStyle = lsFixedList
      Properties.EditProperties.DropDownRows = 20
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.KeyFieldNames = 'kod_firm'
      Properties.EditProperties.ListColumns = <
        item
          Width = 250
          FieldName = 'firm_name'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'firm_name_full'
        end>
      Properties.EditProperties.ListFieldIndex = 1
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      Visible = False
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object rwTCHR: TcxEditorRow
      Properties.Caption = #1041#1072#1079#1086#1074#1086#1077' '#1058#1063#1056
      Properties.ImageIndex = 7
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      Visible = False
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object rwDateServiceBegin: TcxEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1085#1072' '#1057#1054
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object rwServiceContract: TcxEditorRow
      Properties.Caption = #1044#1086#1075#1086#1074#1086#1088' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1085#1072' '#1057#1054
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.DropDownListStyle = lsFixedList
      Properties.EditProperties.DropDownSizeable = True
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.KeyFieldNames = 'service_contract_id'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'contract_name'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
    object rwDateServiceFinish: TcxEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1057#1054
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 7
      ParentID = -1
      Index = 7
      Version = 1
    end
    object rwDepoName: TcxEditorRow
      Properties.Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 8
      ParentID = -1
      Index = 8
      Version = 1
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 288
    Width = 691
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object cxButton6: TcxButton
      Left = 531
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
      ExplicitLeft = 576
    end
    object cxButton7: TcxButton
      Left = 371
      Top = 0
      Width = 160
      Height = 39
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1080' '#1079#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
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
      ExplicitTop = -3
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 327
    Width = 691
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
        PanelStyle.Font.Color = clBlack
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = ' - '#1087#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #1057#1054' - '#1089#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
        Width = 170
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
      Left = 476
      Top = 3
      Width = 214
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
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 214
      end
    end
  end
  object tmr: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrTimer
    Left = 40
    Top = 208
  end
  object al: TActionList
    Images = DMMain.iml
    Left = 40
    Top = 256
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 56
      ShortCut = 16467
      OnExecute = aSaveExecute
    end
    object aFillContractList: TAction
      Caption = 'aFillContractList'
      ImageIndex = 13
      OnExecute = aFillContractListExecute
    end
    object aLoadDepo: TAction
      Caption = 'aLoadDepo'
      ImageIndex = 13
      OnExecute = aLoadDepoExecute
    end
  end
  object cdsNSI_Contract: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 208
  end
  object dsNSI_Contract: TDataSource
    DataSet = cdsNSI_Contract
    Left = 128
    Top = 248
  end
  object cdsLoadDepo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 184
  end
  object dsLoadDepo: TDataSource
    DataSet = cdsLoadDepo
    Left = 336
    Top = 240
  end
end
