object frmEdit_Template: TfrmEdit_Template
  Left = 0
  Top = 0
  Hint = 'o'
  Caption = #1064#1072#1073#1083#1086#1085
  ClientHeight = 132
  ClientWidth = 506
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
  object vg: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 506
    Height = 93
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.ShowEditButtons = ecsbAlways
    OptionsView.GridLineColor = 11842740
    OptionsView.RowHeaderWidth = 182
    OptionsBehavior.AlwaysShowEditor = True
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    OptionsBehavior.RowSizing = True
    ParentFont = False
    Styles.Content = DMMain.cxStyle149
    Styles.StyleSheet = DMMain.cxVerticalGridStyleSheet3
    Styles.Category = DMMain.cxStyle144
    Styles.Header = DMMain.cxStyle191
    TabOrder = 0
    ExplicitWidth = 437
    ExplicitHeight = 87
    Version = 1
    object vgCategoryRow1: TcxCategoryRow
      Properties.Caption = #1064#1072#1073#1083#1086#1085
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwTemplateName: TcxEditorRow
      Properties.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1096#1072#1073#1083#1086#1085#1072
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwTemplateType: TcxEditorRow
      Properties.Caption = #1058#1080#1087' '#1096#1072#1073#1083#1086#1085#1072
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Items = <
        item
          Description = #1048#1085#1094#1080#1076#1077#1085#1090#1099
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #1051#1086#1082#1086#1084#1086#1090#1080#1074#1085#1099#1081' '#1087#1072#1088#1082
          Value = '2'
        end
        item
          Description = #1047#1072#1093#1086#1076#1099' '#1074' '#1076#1077#1087#1086
          Value = '3'
        end>
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.Editing = False
      Properties.Options.ShowEditButtons = eisbNever
      Properties.Value = '1'
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 93
    Width = 506
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 78
    object cxButton6: TcxButton
      Left = 346
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
      ExplicitLeft = 322
      ExplicitHeight = 30
    end
    object cxButton7: TcxButton
      Left = 186
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
      ExplicitLeft = 162
      ExplicitHeight = 30
    end
  end
  object alAction: TActionList
    Images = DMMain.imlSmall
    Left = 16
    Top = 72
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074#1085#1077#1089#1077#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 56
      ShortCut = 16467
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086', '#1085#1077' '#1089#1086#1093#1088#1072#1085#1103#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aSelectFile: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
      ImageIndex = 53
    end
    object aLoadFileExtension: TAction
      Caption = 'aLoadFileExtension'
      ImageIndex = 13
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 56
    Top = 72
  end
  object dlgOpen: TOpenDialog
    Filter = 
      #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' (BMP, TXT, DOC)|*.bmp;*.txt;*.doc;*.docx;*.pptx;*.' +
      'ppt;*.xls;*.xlsx|TXT|*.txt|doc|*.doc|docx|*.docx|pptx|*.pptx|ppt' +
      '|*.ppt|xls|*.xls|xlsx|*.xlsx'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofEnableIncludeNotify, ofEnableSizing]
    OptionsEx = [ofExNoPlacesBar]
    Left = 99
    Top = 72
  end
end
