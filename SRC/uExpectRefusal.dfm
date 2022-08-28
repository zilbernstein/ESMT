object frmExpectRefusal: TfrmExpectRefusal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1054#1078#1080#1076#1072#1077#1084#1099#1081' '#1086#1090#1082#1072#1079
  ClientHeight = 89
  ClientWidth = 663
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
  object pnl1: TPanel
    Left = 0
    Top = 50
    Width = 663
    Height = 39
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 0
    object btnSave: TcxButton
      Left = 341
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Action = aSave
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 501
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Action = aCancel
      TabOrder = 1
    end
  end
  object vgExpectRefusal: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 663
    Height = 50
    BorderStyle = cxcbsNone
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    OptionsView.RowHeaderWidth = 172
    OptionsBehavior.AlwaysShowEditor = False
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    ParentFont = False
    Styles.Content = DMMain.stlContent
    Styles.Category = DMMain.stlCategory
    Styles.Header = DMMain.stlBandHeader
    TabOrder = 1
    Version = 1
    object rwSystemType: TcxEditorRow
      Properties.Caption = #1058#1080#1087' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <>
      Properties.EditProperties.OnChange = rwSystemTypeEditPropertiesChange
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      Styles.Header = DMMain.cxStyle54
      Styles.Content = DMMain.cxStyle54
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwSystem: TcxEditorRow
      Properties.Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      Properties.ImageIndex = 12
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <>
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      Styles.Header = DMMain.cxStyle55
      Styles.Content = DMMain.cxStyle55
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwUnit: TcxEditorRow
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      Visible = False
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
  end
  object alExpectRefusal: TActionList
    Images = DMMain.iml
    Left = 160
    Top = 40
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 56
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aFill_SystemTree: TAction
      Caption = 'aFill_SystemTree'
      ImageIndex = 13
      OnExecute = aFill_SystemTreeExecute
    end
    object aFill_SystemType: TAction
      Caption = 'aFill_SystemType'
      ImageIndex = 13
      OnExecute = aFill_SystemTypeExecute
    end
    object aFill_System: TAction
      Caption = 'aFill_System'
      ImageIndex = 13
      OnExecute = aFill_SystemExecute
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 240
    Top = 42
  end
  object cds_NSI_SystemTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 449
    Top = 5
  end
  object ds_NSI_SystemTree: TDataSource
    DataSet = cds_NSI_SystemTree
    Left = 577
    Top = 5
  end
end
