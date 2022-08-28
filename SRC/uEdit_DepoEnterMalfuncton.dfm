object frmEdit_DepoEnterMalfuncton: TfrmEdit_DepoEnterMalfuncton
  Left = 0
  Top = 0
  Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
  ClientHeight = 163
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 140
    Width = 635
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
        PanelStyle.ImageIndex = 41
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = ' - '#1055#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 250
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
    Top = 101
    Width = 635
    Height = 39
    Align = alBottom
    TabOrder = 1
    object btnSave: TcxButton
      Left = 334
      Top = 1
      Width = 150
      Height = 37
      Align = alRight
      Action = aSave
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnCancel: TcxButton
      Left = 484
      Top = 1
      Width = 150
      Height = 37
      Align = alRight
      Action = aCancel
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object vgKipar_PrognosAddFile: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 635
    Height = 101
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
    OptionsView.RowHeaderWidth = 140
    OptionsBehavior.AlwaysShowEditor = True
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    OptionsBehavior.RowSizing = True
    ParentFont = False
    Styles.Content = DMMain.cxStyle99
    Styles.Category = DMMain.cxStyle227
    Styles.Header = DMMain.cxStyle140
    TabOrder = 2
    Version = 1
    object cxCategoryRowLR: TcxCategoryRow
      Options.Focusing = False
      Options.ShowExpandButton = False
      Properties.Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwWork: TcxEditorRow
      Height = 25
      Properties.Caption = #1056#1072#1073#1086#1090#1072
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = ''
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwMalfunction: TcxEditorRow
      Height = 25
      Properties.Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rwGuild: TcxEditorRow
      Height = 25
      Properties.Caption = #1062#1077#1093
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
  end
  object tmr: TTimer
    Interval = 200
    Left = 144
    Top = 105
  end
  object ActionList: TActionList
    Images = DMMain.imlSmall
    Left = 88
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
    object aLoadAll: TAction
      Caption = 'aLoadAll'
      OnExecute = aLoadAllExecute
    end
    object aLoadWork: TAction
      Caption = 'aLoadWork'
      OnExecute = aLoadWorkExecute
    end
    object aLoadMalfunction: TAction
      Caption = 'aLoadMalfunction'
      OnExecute = aLoadMalfunctionExecute
    end
    object aLoadGuild: TAction
      Caption = 'aLoadGuild'
      OnExecute = aLoadGuildExecute
    end
  end
  object dsLoad: TDataSource
    DataSet = cdsLoad
    Left = 336
    Top = 39
  end
  object cdsLoad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 39
  end
end
