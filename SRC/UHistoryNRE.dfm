object frmHistoryNRE: TfrmHistoryNRE
  Left = 0
  Top = 0
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1053#1056#1069
  ClientHeight = 242
  ClientWidth = 584
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
    Top = 203
    Width = 584
    Height = 39
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 0
    object btnSave: TcxButton
      Left = 262
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Action = aSave
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 282
    end
    object btnCancel: TcxButton
      Left = 422
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Action = aCancel
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 442
    end
  end
  object vgHistoryNRE: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 584
    Height = 203
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
    OptionsView.RowHeaderWidth = 230
    OptionsBehavior.AlwaysShowEditor = False
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    ParentFont = False
    Styles.Content = DMMain.stlContent
    Styles.StyleSheet = DMMain.stlshtVG
    Styles.Category = DMMain.stlCategory
    Styles.Header = DMMain.cxStyle37
    TabOrder = 1
    Version = 1
    object rwNoticeSent: TcxEditorRow
      Properties.Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1086
      Properties.ImageIndex = 41
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <
        item
          Description = #1053#1077#1090
          Value = 1
        end
        item
          Description = #1044#1072
          Value = 2
        end>
      Properties.EditProperties.OnChange = rwWriterEditPropertiesChange
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwDatetNotice: TcxEditorRow
      Properties.Caption = #1044#1072#1090#1072
      Properties.ImageIndex = 41
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      Visible = False
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwNumNotice: TcxEditorRow
      Properties.Caption = #1053#1086#1084#1077#1088
      Properties.ImageIndex = 41
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      Visible = False
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rwRarseSpend: TcxEditorRow
      Properties.Caption = #1056#1072#1079#1073#1086#1088' '#1087#1088#1086#1074#1077#1076#1077#1085
      Properties.ImageIndex = 41
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Items = <
        item
          Description = #1053#1077#1090
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #1044#1072
          Value = 2
        end>
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object rwErrApply: TcxEditorRow
      Properties.Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1087#1088#1080#1085#1103#1090#1086
      Properties.ImageIndex = 41
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.ImmediateUpdateText = True
      Properties.EditProperties.Items = <
        item
          Description = #1055#1088#1080#1085#1103#1090#1086
          Value = 1
        end
        item
          Description = #1053#1077' '#1087#1088#1080#1085#1103#1090#1086
          Value = 2
        end
        item
          Description = #1054#1089#1086#1073#1086#1077' '#1084#1085#1077#1085#1080#1077
          Value = 3
        end>
      Properties.EditProperties.OnChange = rwErrApplyEditPropertiesChange
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object rwDateApply: TcxEditorRow
      Properties.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103
      Properties.ImageIndex = 41
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      Visible = False
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
  end
  object alHistoryNRE: TActionList
    Images = DMMain.iml
    Left = 144
    Top = 64
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
  end
end
