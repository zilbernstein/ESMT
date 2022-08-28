object frmEdit_EscalationAction: TfrmEdit_EscalationAction
  Left = 0
  Top = 0
  Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1088#1077#1096#1077#1085#1080#1102' - '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 209
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 186
    Width = 541
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
    ExplicitTop = 178
  end
  object Panel6: TPanel
    Left = 0
    Top = 147
    Width = 541
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 139
    object cxButton9: TcxButton
      Left = 381
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
      ExplicitLeft = 391
    end
    object cxButton10: TcxButton
      Left = 221
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
      ExplicitLeft = 241
    end
  end
  object vg: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 541
    Height = 147
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
    OptionsView.RowHeaderWidth = 182
    OptionsBehavior.AlwaysShowEditor = True
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    OptionsBehavior.RowSizing = True
    ParentFont = False
    Styles.Content = DMMain.cxStyle99
    Styles.Category = DMMain.cxStyle144
    Styles.Header = DMMain.cxStyle42
    TabOrder = 2
    ExplicitHeight = 145
    Version = 1
    object cxCategoryRow1: TcxCategoryRow
      Options.Focusing = False
      Options.ShowExpandButton = False
      Properties.Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rwAction: TcxEditorRow
      Height = 58
      Properties.Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1088#1077#1096#1077#1085#1080#1102
      Properties.Hint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081', '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1080' '#1090'.'#1076'.'
      Properties.ImageIndex = 41
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.MaxLength = 256
      Properties.EditProperties.ScrollBars = ssBoth
      Properties.EditProperties.WantReturns = False
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rwFileName: TcxEditorRow
      Height = 25
      Properties.Caption = #1060#1072#1081#1083
      Properties.Hint = #1059#1088#1086#1074#1077#1085#1100' '#1080#1077#1088#1072#1088#1093#1080#1080', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1101#1089#1082#1072#1083#1080#1088#1091#1077#1090#1089#1103' '#1048#1085#1094#1080#1076#1077#1085#1090
      Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
      Properties.EditProperties.Buttons = <
        item
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
          Default = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000005F3B1F406E44
            24BD764A28F7704626F6633F20B8543118340000000000000000000000000000
            00000000000000000000000000000000000000000000A967385BBD753FFCD384
            47E2F0944F97FE9E549AD58647E97E4D2BF74C2F193B00000000000000000000
            000000000000000000000000000000000000B06A3742DE8A4AF8BB7440B19C5E
            1C090000000000000000FFD86B11F6A257D7684022C400000000000000000000
            0000000000000000000000000000A96A392DDB8A4BEFB9733DC054391C080000
            0000000000000000000000000000FFD57174955B32FA00000000000000000000
            000000000000000000009E64301CDC894AE3C0773FCD975E327A9B6034EA8F58
            2FE27D4E2A510000000000000000FFCF6D91A36637E100000000000000000000
            000000000000915B220FDE8A4BD1C97E43D9B7723E7EEB944FFDC6794493EE9B
            52AE89552DEB00000000FFB25F47FFAC5EF97B502B7A00000000000000000000
            0000AA733905DD884BBDDA8748E3B26C3C7AF29952FD8F5A337DAD661907FFAB
            5DB39E6435DDFFA75956FFA357F9AE6F3CA25200000300000000000000000000
            0001E8904EA3E8914EECB26F3B77FA9C54FA955D3480E57F3F08FFA359B4D384
            47EAC7824698FFA356FCAD6C388700000000000000000000000000000000E491
            4C87F69D53F3B2703D77FFA557F6A3643782E7903409FFA85BB8CF8345E3D48C
            4AA0FBA458FBA567366C0000000000000000000000000000000000000000F6A5
            58B2B6703E7BFFAC5DF1A467378DEA7C4D0AFFAE5EBCCB8147DCDF9851A9F7A1
            57F79D623453000000000000000000000000000000000000000000000000E48D
            4C2AFFB863EBC079418FD5973C0CFFB461C1C88045D6EAA557B2EE9F55EE945A
            2F3E00000000000000000000000000000000000000000000000000000000FFBD
            66ACBB783FB000000000FFC96EB7C78044D0F2AF5EBCE99C54E2884E2A2B0000
            000000000000000000000000000000000000000000000000000000000000FFBC
            6363C97E43FABE763D9BD0864777FEBD66C5E39853D37948241C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FFA95A32E38C4BB9F5A85AF8D6914DB354371B1000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
          Kind = bkGlyph
          Width = 30
        end>
      Properties.EditProperties.ViewStyle = vsHideCursor
      Properties.EditProperties.OnButtonClick = rwFileNameEditPropertiesButtonClick
      Properties.DataBinding.ValueType = 'String'
      Properties.Options.ShowEditButtons = eisbAlways
      Properties.Value = ''
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rwDescription: TcxEditorRow
      Height = 36
      Properties.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
  end
  object alAction: TActionList
    Images = DMMain.imlSmall
    Left = 24
    Top = 144
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
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
      OnExecute = aSelectFileExecute
    end
    object aLoadFileExtension: TAction
      Caption = 'aLoadFileExtension'
      ImageIndex = 13
    end
  end
  object tmr: TTimer
    Interval = 200
    OnTimer = tmrTimer
    Left = 64
    Top = 144
  end
  object dlgOpen: TOpenDialog
    Filter = 
      #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' (BMP, TXT, DOC)|*.bmp;*.txt;*.doc;*.docx;*.pptx;*.' +
      'ppt;*.xls;*.xlsx|TXT|*.txt|doc|*.doc|docx|*.docx|pptx|*.pptx|ppt' +
      '|*.ppt|xls|*.xls|xlsx|*.xlsx'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofEnableIncludeNotify, ofEnableSizing]
    OptionsEx = [ofExNoPlacesBar]
    Left = 107
    Top = 144
  end
end
