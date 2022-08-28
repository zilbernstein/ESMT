object frmRecordSheet: TfrmRecordSheet
  Left = 0
  Top = 0
  ParentCustomHint = False
  VertScrollBar.Tracking = True
  Caption = #1051#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
  ClientHeight = 876
  ClientWidth = 1105
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Panel6: TPanel
    Left = 0
    Top = 814
    Width = 1105
    Height = 39
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 0
    object cxButton10: TcxButton
      Left = 783
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Action = aSave
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
    end
    object cxButton34: TcxButton
      Left = 943
      Top = 2
      Width = 160
      Height = 35
      Align = alRight
      Action = aCancel
      Cancel = True
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
    end
  end
  object pcCommon: TcxPageControl
    Left = 0
    Top = 162
    Width = 1105
    Height = 652
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Properties.ActivePage = tsRSh_Storage
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    Properties.OwnerDraw = True
    Properties.Style = 9
    Properties.TabSlants.Positions = [spLeft, spRight]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabSlants.Positions = [spLeft, spRight]
    OnDrawTabEx = pcCommonDrawTabEx
    OnPageChanging = pcCommonPageChanging
    ClientRectBottom = 652
    ClientRectRight = 1105
    ClientRectTop = 42
    object tsRSh_Common_New: TcxTabSheet
      Tag = 16
      Caption = 'D.1 - '#1048#1089#1093'. '#1076#1072#1085#1085#1099#1077
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      object Panel27: TPanel
        Left = 0
        Top = 0
        Width = 1105
        Height = 610
        Align = alClient
        AutoSize = True
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object vgCommon: TcxVerticalGrid
          Left = 2
          Top = 2
          Width = 1101
          Height = 606
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
          OptionsView.RowHeaderWidth = 311
          OptionsBehavior.AlwaysShowEditor = False
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.GoToNextCellOnTab = True
          ParentFont = False
          Styles.StyleSheet = stlshtVG
          TabOrder = 0
          OnEditValueChanged = vgCommonEditValueChanged
          Version = 1
          object rwLocName: TcxEditorRow
            Properties.Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074', '#1089#1077#1082#1094#1080#1103
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1077#1082#1094#1080#1102' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
                Default = True
                Hint = #1042#1099#1073#1088#1072#1090#1100' '#1083#1086#1082#1086#1084#1086#1090#1080#1074' ('#1076#1086#1089#1090#1091#1087#1085#1086' '#1076#1083#1103' '#1051#1056#1048', '#1089#1086#1079#1076#1072#1085#1085#1099#1093' '#1074#1088#1091#1095#1085#1091#1102')'
                Kind = bkText
              end
              item
                Caption = #1057#1084#1077#1085#1080#1090#1100' '#1089#1077#1082#1094#1080#1102
                Hint = #1057#1084#1077#1085#1080#1090#1100' '#1089#1077#1082#1094#1080#1102' ('#1085#1077' '#1084#1077#1085#1103#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074')'
                Kind = bkText
              end>
            Properties.EditProperties.ViewStyle = vsHideCursor
            Properties.EditProperties.OnButtonClick = rwLocNameEditPropertiesButtonClick
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '-'
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object rwRepairBaseFirm: TcxEditorRow
            Properties.Caption = #1041#1072#1079#1086#1074#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1057#1054
            Properties.Hint = 
              #1041#1072#1079#1086#1074#1086#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1057#1054' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1080#1084#1077#1077#1090' '#1076#1086#1089#1090#1091#1087' '#1085#1072' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1051#1056#1048 +
              ' '#1076#1086' '#1087#1077#1088#1077#1074#1086#1076#1072' '#1074' '#1089#1090#1072#1090#1091#1089' '#1059#1089#1090#1088#1072#1085#1077#1085'/'#1052#1077#1088#1099'. '#10#1044#1072#1083#1077#1077' '#1083#1080#1089#1090' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1074#1077#1076 +
              #1077#1090#1089#1103' '#1073#1072#1079#1086#1074#1099#1084' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077#1084' '#1057#1054
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.ValueType = 'String'
            Properties.Options.Editing = False
            Properties.Value = '-'
            Styles.Content = stlNavy
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object rwRSh_Responsible__: TcxEditorRow
            Properties.Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1051#1056#1048
            Properties.Hint = 
              #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077', '#1086#1090#1074#1077#1095#1072#1102#1097#1077#1077' '#1079#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1091#10#1076#1086' '#1087 +
              #1077#1088#1077#1074#1086#1076#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' '#1074' '#1089#1090#1072#1090#1091#1089' '#1059#1089#1090#1088#1072#1085#1077#1085'/'#1052#1077#1088#1099
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.DropDownRows = 25
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <>
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            Visible = False
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object rwRSh_Responsible: TcxEditorRow
            Properties.Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1051#1056#1048
            Properties.Hint = 
              #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077', '#1086#1090#1074#1077#1095#1072#1102#1097#1077#1077' '#1079#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1091#10#1076#1086' '#1087 +
              #1077#1088#1077#1074#1086#1076#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' '#1074' '#1089#1090#1072#1090#1091#1089' '#1059#1089#1090#1088#1072#1085#1077#1085'/'#1052#1077#1088#1099
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.EditProperties.DropDownAutoSize = True
            Properties.EditProperties.DropDownListStyle = lsFixedList
            Properties.EditProperties.DropDownRows = 50
            Properties.EditProperties.DropDownSizeable = True
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.View = DMMain.btvNSI_Filial_Department_TCHR
            Properties.EditProperties.KeyFieldNames = 'tchr_pred_id'
            Properties.EditProperties.ListFieldItem = DMMain.btvNSI_Filial_Department_TCHRColumn4
            Properties.EditProperties.OnEditValueChanged = rwRSh_ResponsibleEditPropertiesEditValueChanged
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object cxCategoryRow11: TcxCategoryRow
            Properties.Caption = #1048#1085#1094#1080#1076#1077#1085#1090
            ID = 4
            ParentID = -1
            Index = 4
            Version = 1
          end
          object rwFailDate: TcxEditorRow
            Options.ShowExpandButton = False
            Properties.Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.Hint = 
              #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072'.'#10#1042#1088#1077#1084#1103' '#1091#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103' '#1084#1086#1089#1082#1086#1074#1089#1082 +
              #1086#1077
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.EditProperties.DateButtons = [btnNow]
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.Kind = ckDateTime
            Properties.EditProperties.OnEditValueChanged = rwFailDateEditPropertiesEditValueChanged
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 5
            ParentID = -1
            Index = 5
            Version = 1
          end
          object rwDiagMsgDate: TcxEditorRow
            Properties.Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.EditProperties.DateButtons = [btnNow]
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.Kind = ckDateTime
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 6
            ParentID = -1
            Index = 6
            Version = 1
          end
          object rwFailDescr: TcxEditorRow
            Properties.Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1040#1057#1059
            Properties.Hint = #1058#1077#1082#1089#1090#1086#1074#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1086#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1040#1057#1059
            Properties.EditPropertiesClassName = 'TcxMemoProperties'
            Properties.EditProperties.VisibleLineCount = 3
            Properties.DataBinding.ValueType = 'String'
            Properties.Options.Editing = False
            Properties.Value = ''
            ID = 7
            ParentID = -1
            Index = 7
            Version = 1
          end
          object rwFailDescrE: TcxEditorRow
            Height = 63
            Properties.Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.Hint = #1058#1077#1082#1089#1090#1086#1074#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1086#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditProperties.Alignment.Vert = taTopJustify
            Properties.EditProperties.IgnoreMaskBlank = True
            Properties.EditProperties.MaskKind = emkRegExpr
            Properties.EditProperties.EditMask = 
              '([a-z]+|[A-Z]|['#1072'-'#1103']|['#1040'-'#1071']|[0-9]| ['#39' '#39','#39'['#39#39']'#39'."?!;:{}*#)('#39'-'#39#39'_'#39'+=' +
              #39'\'#39#39'/'#39' '#176'])+/'
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 8
            ParentID = -1
            Index = 8
            Version = 1
          end
          object rwFailPlace: TcxEditorRow
            Properties.Caption = #1052#1077#1089#1090#1086' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' ('#1076#1080#1089#1083#1086#1082#1072#1094#1080#1103')'
            Properties.Hint = #1044#1080#1089#1083#1086#1082#1072#1094#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1085#1072' '#1084#1086#1084#1077#1085#1090' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Caption = #1042#1099#1073#1088#1072#1090#1100
                Default = True
                Hint = 
                  #1042#1099#1073#1088#1072#1090#1100' '#1074' '#1076#1080#1072#1083#1086#1075#1086#1074#1086#1084' '#1086#1082#1085#1077' '#1084#1077#1089#1090#1086' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' ('#1076#1077#1087#1086', '#1089 +
                  #1090#1072#1085#1094#1080#1103', '#1087#1077#1088#1077#1075#1086#1085')'
                Kind = bkText
                Width = 150
              end>
            Properties.EditProperties.ViewStyle = vsHideCursor
            Properties.EditProperties.OnButtonClick = rwFailPlaceEditPropertiesButtonClick
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 9
            ParentID = -1
            Index = 9
            Version = 1
          end
          object rwTrainInfoBtn: TcxEditorRow
            Properties.Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074' '#1085#1072' '#1084#1086#1084#1077#1085#1090' '#1074#1088#1077#1084#1077#1085#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.Hint = 
              #1057#1086#1089#1090#1072#1074#1085#1086#1089#1090#1100' '#1058#1055#1045', '#1089#1074#1077#1076#1077#1085#1080#1103' '#1080' '#1087#1086#1077#1079#1076#1077' '#1080' '#1073#1088#1080#1075#1072#1076#1077' '#1085#1072' '#1084#1086#1084#1077#1085#1090' '#1074#1086#1079#1085#1080#1082#1085#1086#1074 +
              #1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072'. '#10#1056#1072#1079#1076#1077#1083' '#1079#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1086' '#1085#1072#1078#1072#1090#1080#1102' '#1085#1072' ' +
              #1082#1085#1086#1087#1082#1091
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
                Default = True
                Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1077#1079#1076#1077' '#1080' '#1073#1088#1080#1075#1072#1076#1077
                Kind = bkText
              end>
            Properties.EditProperties.ViewStyle = vsButtonsOnly
            Properties.EditProperties.OnButtonClick = rwTrainInfoBtnEditPropertiesButtonClick
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            Styles.Header = stlNotEditable9
            ID = 10
            ParentID = -1
            Index = 10
            Version = 1
          end
          object rwTPE_Sost: TcxEditorRow
            Properties.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
            Properties.Hint = #1044#1083#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            Styles.Header = stlRowDisabled
            Styles.Content = stlRowDisabled
            Visible = False
            ID = 11
            ParentID = 10
            Index = 0
            Version = 1
          end
          object rwNomTPE: TcxEditorRow
            Properties.Caption = #8470' '#1058#1055#1045
            Properties.Hint = 
              #1053#1086#1084#1077#1088' '#1058#1055#1045' '#1087#1086' '#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1085#1072' '#1084#1086#1084#1077#1085#1090' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072'. '#10#1047#1072#1087#1086#1083 +
              #1085#1103#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1086' '#1085#1072#1078#1072#1090#1080#1102' '#1085#1072' '#1082#1085#1086#1087#1082#1091' <'#1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089 +
              #1082#1080'>'
            Properties.ImageIndex = 12
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 12
            ParentID = 10
            Index = 1
            Version = 1
          end
          object rwTagTrain: TcxEditorRow
            Height = 25
            Properties.Caption = #8470' '#1087#1086#1077#1079#1076#1072
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 13
            ParentID = 10
            Index = 2
            Version = 1
          end
          object rwTrainMass: TcxEditorRow
            Properties.Caption = #1052#1072#1089#1089#1072' '#1087#1086#1077#1079#1076#1072', '#1090'.'
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 14
            ParentID = 10
            Index = 3
            Version = 1
          end
          object rwTrainWagoons: TcxEditorRow
            Properties.Caption = #1042#1072#1075#1086#1085#1086#1074
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 15
            ParentID = 10
            Index = 4
            Version = 1
          end
          object rwTrainAxes: TcxEditorRow
            Height = 20
            Properties.Caption = #1054#1089#1077#1081
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 16
            ParentID = 10
            Index = 5
            Version = 1
          end
          object rwBrigFIO: TcxEditorRow
            Properties.Caption = #1060#1048#1054' '#1058#1063#1052
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 17
            ParentID = 10
            Index = 6
            Version = 1
          end
          object rwBrigTNom: TcxEditorRow
            Properties.Caption = #1058#1072#1073'. '#8470' '#1058#1063#1052
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.AssignedValues.EditFormat = True
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MaxValue = 99999999.000000000000000000
            Properties.EditProperties.SpinButtons.Visible = False
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 18
            ParentID = 10
            Index = 7
            Version = 1
          end
          object rwBrigDepo: TcxEditorRow
            Properties.Caption = #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080' '#1058#1063#1052
            Properties.EditPropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.EditProperties.DropDownListStyle = lsFixedList
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.View = DMMain.btvNSI_BrigDepo
            Properties.EditProperties.KeyFieldNames = 'pred_id'
            Properties.EditProperties.ListFieldItem = DMMain.clmnPredNameFull
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 19
            ParentID = 10
            Index = 8
            Version = 1
          end
          object rwCriticality: TcxEditorRow
            Properties.Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
            Properties.Hint = '"'#1042#1072#1078#1085#1086#1089#1090#1100'" '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <
              item
                Description = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077
                ImageIndex = 45
                Value = '13'
              end
              item
                Description = #1055#1088#1077#1076#1091#1087#1088#1077#1078#1076#1077#1085#1080#1077
                ImageIndex = 44
                Value = '12'
              end
              item
                Description = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081
                ImageIndex = 51
                Value = '11'
              end>
            Properties.DataBinding.ValueType = 'String'
            Properties.Options.ShowEditButtons = eisbAlways
            Properties.Value = '0'
            ID = 20
            ParentID = -1
            Index = 11
            Version = 1
          end
          object rwCategory: TcxEditorRow
            Properties.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            Properties.Hint = #1057#1083#1091#1078#1080#1090' '#1076#1083#1103' '#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074' '#1087#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1103#1084' '#1091#1095#1077#1090#1072
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <>
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 21
            ParentID = -1
            Index = 12
            Version = 1
          end
          object rwEnterDepotReason: TcxEditorRow
            Properties.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
            Properties.Hint = 
              #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1093#1086#1076#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1076#1077#1087#1086': '#1087#1086#1089#1083#1077' '#1080#1085#1094#1080#1076#1077#1085#1090#1072', '#1087#1086#1083#1091#1095#1077#1085#1085#1086#1075#1086' '#1080 +
              #1079' '#1073#1086#1088#1090#1086#1074#1099#1093' '#1078#1091#1088#1085#1072#1083#1086#1074' '#1080' '#1089#1080#1089#1090#1077#1084' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080#10#1080#1083#1080' '#1076#1083#1103' '#1079#1072#1084#1077#1095#1072#1085#1080#1081', '#1074#1099#1103#1074 +
              #1083#1077#1085#1085#1099#1093' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1085#1072' '#1057#1054'.'#10#1042' '#1089#1083#1091#1095#1072#1077', '#1077#1089#1083#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074' '#1077#1097 +
              #1077' '#1085#1072' '#1083#1080#1085#1080#1080', '#1091#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1055#1088#1086#1095#1077#1077
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.ClearKey = 46
            Properties.EditProperties.DropDownListStyle = lsFixedList
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.KeyFieldNames = 'id'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'mnemo'
              end
              item
                FieldName = 'name'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.EditProperties.OnEditValueChanged = rwEnterDepotReasonEditPropertiesEditValueChanged
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 22
            ParentID = -1
            Index = 13
            Version = 1
          end
          object cxCategoryRow13: TcxCategoryRow
            Options.ShowExpandButton = False
            Properties.Caption = #1048#1089#1090#1086#1095#1085#1080#1082
            ID = 23
            ParentID = -1
            Index = 14
            Version = 1
          end
          object rwInfoSourceType: TcxEditorRow
            Properties.Caption = #1058#1080#1087
            Properties.Hint = 
              #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080#10'('#1072#1074#1090#1086#1084#1072#1090#1080#1079#1080#1088#1086#1074#1072#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072', '#1078#1091#1088#1085#1072#1083' '#1079#1072#1084 +
              #1077#1095#1072#1085#1080#1081', '#1086#1089#1084#1086#1090#1088' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1080' '#1090'.'#1076'.)'
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <>
            Properties.EditProperties.OnEditValueChanged = rwInfoSourceTypeEditPropertiesEditValueChanged
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 24
            ParentID = 23
            Index = 0
            Version = 1
          end
          object rwSourcePred: TcxEditorRow
            Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
            Properties.Hint = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077'-'#1080#1089#1090#1086#1095#1085#1080#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Caption = #1042#1099#1073#1088#1072#1090#1100
                Default = True
                Hint = #1042#1099#1073#1088#1072#1090#1100' '#1074' '#1076#1080#1072#1083#1086#1075#1086#1074#1086#1084' '#1086#1082#1085#1077' '#1076#1077#1087#1086' - '#1080#1089#1090#1086#1095#1085#1080#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
                Kind = bkText
                Width = 150
              end>
            Properties.EditProperties.ViewStyle = vsHideCursor
            Properties.EditProperties.OnButtonClick = rwSourcePredIDEditPropertiesButtonClick
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = Null
            ID = 25
            ParentID = 23
            Index = 1
            Version = 1
          end
          object ctgrwKasant: TcxCategoryRow
            Properties.Caption = #1050#1040#1057#1040#1053#1058
            Properties.Hint = 
              #1056#1072#1079#1076#1077#1083' '#1076#1086#1083#1078#1077#1085' '#1079#1072#1087#1086#1083#1085#1103#1090#1100#1089#1103' '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086' '#1074' '#1089#1083#1091#1095#1072#1077', '#10#1077#1089#1083#1080' '#1090#1080#1087' '#1080#1089#1090#1086#1095#1085 +
              #1080#1082#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' - '#1050#1040#1057#1040#1053#1058
            ID = 26
            ParentID = -1
            Index = 15
            Version = 1
          end
          object rwKasantMark: TcxEditorRow
            Properties.Caption = #1054#1090#1084#1077#1090#1082#1072
            Properties.ImageIndex = 12
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <
              item
                Description = #1044#1072
                ImageIndex = 0
                Value = 257
              end
              item
                Description = #1053#1077#1090
                Value = 258
              end
              item
                Description = #1053#1077#1090' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
                Value = 259
              end>
            Properties.EditProperties.OnEditValueChanged = rwKasantMarkEditPropertiesEditValueChanged
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '258'
            ID = 27
            ParentID = 26
            Index = 0
            Version = 1
          end
          object rwKassantFailCategory: TcxEditorRow
            Properties.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1086#1090#1082#1072#1079#1072
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <
              item
                Description = '1'
                ImageIndex = 0
                Value = 261
              end
              item
                Description = '2'
                Value = 262
              end
              item
                Description = '3'
                Value = 263
              end>
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 28
            ParentID = 26
            Index = 1
            Version = 1
          end
          object rwKasantState: TcxEditorRow
            Properties.Caption = #1057#1090#1072#1090#1091#1089
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.ClearKey = 46
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <>
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 29
            ParentID = 26
            Index = 2
            Version = 1
          end
          object rwKasantSafety: TcxEditorRow
            Properties.Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
            Properties.Hint = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1087#1088#1080#1082#1072#1079#1072' '#1052#1080#1085#1090#1088#1072#1085#1089' '#8470' 163'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.ClearKey = 46
            Properties.EditProperties.DropDownListStyle = lsFixedList
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.KeyFieldNames = 'id'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'name'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '0'
            ID = 30
            ParentID = 26
            Index = 3
            Version = 1
          end
          object rwKasantTrainDelayTime: TcxEditorRow
            Options.ShowExpandButton = False
            Properties.Caption = #1042#1088#1077#1084#1103' '#1079#1072#1076#1077#1088#1078#1082#1080' '#1087#1086#1077#1079#1076#1072
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.EditProperties.DateButtons = [btnNow]
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.Kind = ckDateTime
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 31
            ParentID = 26
            Index = 4
            Version = 1
          end
          object rwKasantCntPassenger: TcxEditorRow
            Properties.Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1076#1077#1088#1078#1072#1085#1085#1099#1093' '#1087#1086#1077#1079#1076#1086#1074'('#1087#1072#1089#1089#1072#1078#1080#1088#1089#1082#1080#1077')'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 32
            ParentID = 26
            Index = 5
            Version = 1
          end
          object rwKasantCntCargo: TcxEditorRow
            Properties.Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1076#1077#1088#1078#1072#1085#1085#1099#1093' '#1087#1086#1077#1079#1076#1086#1074'('#1075#1088#1091#1079#1086#1074#1099#1077')'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 33
            ParentID = 26
            Index = 6
            Version = 1
          end
          object rwKasantResponse: TcxEditorRow
            Properties.Caption = #1042#1080#1085#1086#1074#1085#1072#1103' '#1089#1083#1091#1078#1073#1072
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Caption = #1042#1099#1073#1088#1072#1090#1100
                Default = True
                Kind = bkText
              end
              item
                Caption = #1054#1095#1080#1089#1090#1080#1090#1100
                Kind = bkText
              end>
            Properties.EditProperties.ViewStyle = vsHideCursor
            Properties.EditProperties.OnButtonClick = rwKasantResponseEditPropertiesButtonClick
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = '-'
            Visible = False
            ID = 34
            ParentID = 26
            Index = 7
            Version = 1
          end
          object cxCategoryRow15: TcxCategoryRow
            ID = 35
            ParentID = -1
            Index = 16
            Version = 1
          end
          object rwDescr_Common: TcxEditorRow
            Properties.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Properties.Hint = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1082' '#1088#1072#1079#1076#1077#1083#1091' '#1080#1089#1093#1086#1076#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            Properties.EditPropertiesClassName = 'TcxMemoProperties'
            Properties.EditProperties.MaxLength = 512
            Properties.EditProperties.ScrollBars = ssVertical
            Properties.EditProperties.VisibleLineCount = 5
            Properties.DataBinding.ValueType = 'String'
            Properties.Value = ''
            ID = 36
            ParentID = -1
            Index = 17
            Version = 1
          end
        end
      end
    end
    object tsRSh_Running: TcxTabSheet
      Caption = 'D.0.1 - '#1055#1088#1086#1073#1077#1075#1080
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      object vgRunningElder: TcxDBVerticalGrid
        Left = 0
        Top = 41
        Width = 521
        Height = 569
        Align = alLeft
        Enabled = False
        LayoutStyle = lsBandsView
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        OptionsView.RowHeaderWidth = 233
        OptionsView.ShowButtons = False
        Navigator.Buttons.CustomButtons = <>
        Styles.Background = DMMain.stlBackground
        Styles.StyleSheet = stlshtVG
        TabOrder = 0
        OnEditValueChanged = vgRunningElderEditValueChanged
        Version = 1
        object vgRunningElderCategoryRow1: TcxCategoryRow
          Properties.Caption = #1055#1086#1089#1090#1088#1086#1081#1082#1072
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vgRunningElderDBEditorRow1: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_postr'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object vgRunningElderDBEditorRow2: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_postr'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object vgRunningElderDBEditorRow12: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'postr_kr_km'
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object vgRunningElderCategoryRow2: TcxCategoryRow
          Properties.Caption = #1050#1056
          ID = 4
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vgRunningElderDBEditorRow3: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_kr'
          ID = 5
          ParentID = 4
          Index = 0
          Version = 1
        end
        object vgRunningElderDBEditorRow4: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_kr'
          ID = 6
          ParentID = 4
          Index = 1
          Version = 1
        end
        object vgRunningElderDBEditorRow5: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_kr_km'
          ID = 7
          ParentID = 4
          Index = 2
          Version = 1
        end
        object vgRunningElderCategoryRow3: TcxCategoryRow
          Properties.Caption = #1057#1056
          ID = 8
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vgRunningElderDBEditorRow6: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_sr'
          ID = 9
          ParentID = 8
          Index = 0
          Version = 1
        end
        object vgRunningElderDBEditorRow7: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_sr'
          ID = 10
          ParentID = 8
          Index = 1
          Version = 1
        end
        object vgRunningElderDBEditorRow8: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_sr_km'
          ID = 11
          ParentID = 8
          Index = 2
          Version = 1
        end
        object vgRunningElderCategoryRow4: TcxCategoryRow
          Properties.Caption = #1058#1056'-3'
          ID = 12
          ParentID = -1
          Index = 3
          Version = 1
        end
        object vgRunningElderDBEditorRow9: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_tr3'
          ID = 13
          ParentID = 12
          Index = 0
          Version = 1
        end
        object vgRunningElderDBEditorRow10: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_tr3'
          ID = 14
          ParentID = 12
          Index = 1
          Version = 1
        end
        object vgRunningElderDBEditorRow11: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_tr3_km'
          ID = 15
          ParentID = 12
          Index = 2
          Version = 1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1105
        Height = 41
        Align = alTop
        TabOrder = 1
        object cxButton1: TcxButton
          Left = 1
          Top = 1
          Width = 193
          Height = 39
          Align = alLeft
          Action = aGetRunningASOUP
          LookAndFeel.NativeStyle = False
          TabOrder = 0
        end
      end
      object vgRunningJunior: TcxDBVerticalGrid
        Left = 521
        Top = 41
        Width = 584
        Height = 569
        Align = alClient
        Enabled = False
        LayoutStyle = lsBandsView
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        OptionsView.RowHeaderWidth = 266
        OptionsView.ShowButtons = False
        Navigator.Buttons.CustomButtons = <>
        Styles.Background = DMMain.stlBackground
        Styles.StyleSheet = stlshtVG
        TabOrder = 2
        OnEditValueChanged = vgRunningJuniorEditValueChanged
        Version = 1
        object cxCategoryRow5: TcxCategoryRow
          Properties.Caption = #1058#1056'-2'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBEditorRow12: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_tr2'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object cxDBEditorRow13: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_tr2'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object cxDBEditorRow14: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_tr2_km'
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object cxCategoryRow6: TcxCategoryRow
          Properties.Caption = #1058#1056'-1'
          ID = 4
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBEditorRow15: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_tr1'
          ID = 5
          ParentID = 4
          Index = 0
          Version = 1
        end
        object cxDBEditorRow16: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_tr1'
          ID = 6
          ParentID = 4
          Index = 1
          Version = 1
        end
        object cxDBEditorRow17: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_tr1_km'
          ID = 7
          ParentID = 4
          Index = 2
          Version = 1
        end
        object cxCategoryRow7: TcxCategoryRow
          Properties.Caption = #1058#1054'-3'
          ID = 8
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBEditorRow18: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_to3'
          ID = 9
          ParentID = 8
          Index = 0
          Version = 1
        end
        object cxDBEditorRow19: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_to3'
          ID = 10
          ParentID = 8
          Index = 1
          Version = 1
        end
        object cxDBEditorRow20: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_to3_km'
          ID = 11
          ParentID = 8
          Index = 2
          Version = 1
        end
        object cxCategoryRow8: TcxCategoryRow
          Properties.Caption = #1058#1054'-2'
          ID = 12
          ParentID = -1
          Index = 3
          Version = 1
        end
        object cxDBEditorRow21: TcxDBEditorRow
          Properties.Caption = #1044#1072#1090#1072
          Properties.DataBinding.FieldName = 'date_to2'
          ID = 13
          ParentID = 12
          Index = 0
          Version = 1
        end
        object cxDBEditorRow22: TcxDBEditorRow
          Properties.Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
          Properties.DataBinding.FieldName = 'naim_predp_to2'
          ID = 14
          ParentID = 12
          Index = 1
          Version = 1
        end
        object cxDBEditorRow23: TcxDBEditorRow
          Properties.Caption = #1055#1088#1086#1073#1077#1075
          Properties.DataBinding.FieldName = 'prob_to2_km'
          ID = 15
          ParentID = 12
          Index = 2
          Version = 1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #1042#1088#1077#1084#1077#1085#1072' ('#1087#1088#1086#1089#1090#1086#1080')'
      ImageIndex = 0
      TabVisible = False
      object cxDBVerticalGrid1: TcxDBVerticalGrid
        Left = 817
        Top = 0
        Width = 288
        Height = 610
        Align = alRight
        Enabled = False
        LayoutStyle = lsBandsView
        OptionsView.RowHeaderWidth = 158
        OptionsView.ShowButtons = False
        Navigator.Buttons.CustomButtons = <>
        Styles.Background = DMMain.stlBackground
        Styles.StyleSheet = DMMain.stlshtVG
        TabOrder = 0
        Version = 1
        object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
          Properties.Caption = #1048#1085#1094#1080#1076#1077#1085#1090', '#1086#1090#1082#1072#1079
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow
          Properties.Caption = #1047#1072#1093#1086#1076' '#1074' '#1058#1063#1056
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow
          Properties.Caption = #1040#1082#1090' '#1087#1088#1080#1077#1084#1082#1080' '#1085#1072' '#1089#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow
          Properties.Caption = #1053#1072#1095#1072#1083#1086' '#1088#1072#1073#1086#1090' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1091
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow
          Properties.Caption = #1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1089' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow
          Properties.Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1058#1063#1056
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow7: TcxDBEditorRow
          Properties.Caption = #1055#1086#1076#1074#1103#1079#1082#1072' '#1087#1086#1076' '#1087#1086#1077#1079#1076
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
      end
    end
    object tsRSh_Team: TcxTabSheet
      Caption = 'D.3 - '#1050#1086#1084#1072#1085#1076#1072' / '#1056#1072#1073#1086#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Panel7: TPanel
        Left = 0
        Top = 369
        Width = 1105
        Height = 155
        Align = alBottom
        TabOrder = 0
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 548
          Height = 153
          Align = alLeft
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object tlTeamLeader: TcxDBTreeList
            Left = 0
            Top = 34
            Width = 544
            Height = 115
            Align = alClient
            Bands = <
              item
                Caption.Text = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100'(-'#1080')'
              end>
            DataController.ParentField = 'team_id'
            DataController.KeyField = 'team_id'
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.ExpandOnIncSearch = True
            OptionsBehavior.HotTrack = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clmnLeader_FIO
            OptionsBehavior.Sorting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Bands = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.ShowRoot = False
            RootValue = 255
            Styles.StyleSheet = DMMain.stlshtTL
            TabOrder = 0
            OnDblClick = aWorkLeader_AddExecute
            object clmnLeader_FIO: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1060#1048#1054
              DataBinding.FieldName = 'fio'
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn2: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'dol_name'
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn3: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
              DataBinding.FieldName = 'firm_name'
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object clmnTeamLeader_TeamID: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'team_id'
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 544
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object cxButton2: TcxButton
              Left = 0
              Top = 5
              Width = 200
              Height = 25
              Action = aWorkLeader_Add
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              TabOrder = 0
            end
          end
        end
        object Panel10: TPanel
          Left = 549
          Top = 1
          Width = 555
          Height = 153
          Align = alClient
          BevelKind = bkFlat
          TabOrder = 1
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 549
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object cxButton5: TcxButton
              Left = 1
              Top = 4
              Width = 200
              Height = 25
              Action = aProcessOwner_Add
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              TabOrder = 0
            end
          end
          object tlTeamOwner: TcxDBTreeList
            Left = 1
            Top = 35
            Width = 549
            Height = 113
            Align = alClient
            Bands = <
              item
                Caption.Text = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
              end>
            DataController.ParentField = 'team_id'
            DataController.KeyField = 'team_id'
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.ExpandOnIncSearch = True
            OptionsBehavior.HotTrack = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clmnOwner_FIO
            OptionsBehavior.Sorting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Bands = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.ShowRoot = False
            RootValue = 255
            Styles.StyleSheet = DMMain.stlshtTL
            TabOrder = 1
            OnDblClick = aProcessOwner_AddExecute
            object clmnOwner_FIO: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1060#1048#1054
              DataBinding.FieldName = 'fio'
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn4: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'dol_name'
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn5: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
              DataBinding.FieldName = 'firm_name'
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object clmnOwner_TeamID: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'team_id'
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1105
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object cxButton6: TcxButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aWork_Add
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
        end
        object cxButton7: TcxButton
          Left = 90
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aWork_Edit
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
        end
        object cxButton8: TcxButton
          Left = 352
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aWork_Delete
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
        end
        object cxButton36: TcxButton
          Left = 180
          Top = 0
          Width = 172
          Height = 34
          Align = alLeft
          Action = aWork_Finish
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 3
        end
      end
      object tlWork: TcxDBTreeList
        Left = 0
        Top = 34
        Width = 1105
        Height = 335
        Align = alClient
        Bands = <
          item
            Caption.Text = #1056#1072#1073#1086#1090#1099' '#1087#1086' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1102' '#1088#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
          end>
        DataController.ParentField = 'team_id'
        DataController.KeyField = 'team_id'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.ExpandOnIncSearch = True
        OptionsBehavior.HotTrack = True
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.Bands = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLineColor = clBtnShadow
        OptionsView.GridLines = tlglBoth
        OptionsView.ShowRoot = False
        RootValue = 255
        Styles.StyleSheet = DMMain.stlshtTL
        TabOrder = 2
        OnDblClick = aWork_EditExecute
        object cxDBTreeListColumn1: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Caption.AlignHorz = taCenter
          Caption.Text = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'fio'
          Width = 231
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn6: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.Text = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'work_name'
          Width = 186
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object clmnWork_DateBegin: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'date_begin'
          Width = 99
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn32: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Styles.Content = DMMain.stlBackgroundLightBlue
          Caption.AlignHorz = taCenter
          Caption.Text = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'date_finish'
          Width = 113
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object clmnWork_TeamID: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'team_id'
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn34: TcxDBTreeListColumn
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = DMMain.imlSmall
          Properties.Items = <
            item
              Description = #1053#1077#1090
              Value = '0'
            end
            item
              Description = #1054#1095#1077#1085#1100' '#1087#1083#1086#1093#1086
              ImageIndex = 50
              Value = '1'
            end
            item
              Description = #1055#1083#1086#1093#1086
              ImageIndex = 50
              Value = '2'
            end
            item
              Description = #1059#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
              ImageIndex = 50
              Value = '3'
            end
            item
              Description = #1061#1086#1088#1086#1096#1086
              ImageIndex = 48
              Value = '4'
            end
            item
              Description = #1054#1090#1083#1080#1095#1085#1086
              ImageIndex = 49
              Value = '5'
            end>
          Styles.Content = DMMain.stlBackgroundLightBlue
          Caption.AlignHorz = taCenter
          Caption.Text = #1054#1094#1077#1085#1082#1072
          DataBinding.FieldName = 'rating'
          Width = 128
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList2cxDBTreeListColumn1: TcxDBTreeListColumn
          PropertiesClassName = 'TcxMemoProperties'
          Properties.Alignment = taLeftJustify
          Caption.AlignHorz = taCenter
          Caption.Text = #1054#1087#1080#1089#1072#1085#1080#1077
          DataBinding.FieldName = 'descr'
          Width = 341
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object cxGroupBox12: TcxGroupBox
        Left = 0
        Top = 524
        Align = alBottom
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Style.TextStyle = [fsBold]
        TabOrder = 3
        Height = 86
        Width = 1105
        object mmDescrTeam: TcxMemo
          Left = 3
          Top = 18
          Align = alClient
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnEditing = mmDescrTeamEditing
          Height = 58
          Width = 1099
        end
      end
    end
    object tsRSh_Attr: TcxTabSheet
      Caption = 'D.2 - '#1040#1090#1088#1080#1073#1091#1090#1099' '
      Color = clBtnFace
      ParentColor = False
      object Panel13: TPanel
        Left = 489
        Top = 0
        Width = 616
        Height = 524
        Align = alRight
        Caption = #1055#1086#1076#1095#1080#1085#1077#1085#1085#1086#1089#1090#1100' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074'. '#1056#1072#1079#1076#1077#1083' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1074' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1077
        TabOrder = 0
        object Panel24: TPanel
          Left = 1
          Top = 1
          Width = 614
          Height = 34
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object cxButton29: TcxButton
            Left = 477
            Top = 0
            Width = 90
            Height = 34
            Align = alLeft
            Action = aRelationDelete
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabOrder = 0
          end
          object cxButton31: TcxButton
            Left = 0
            Top = 0
            Width = 158
            Height = 34
            Align = alLeft
            Action = aRelationChildEdit
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabOrder = 1
          end
          object cxButton32: TcxButton
            Left = 316
            Top = 0
            Width = 161
            Height = 34
            Align = alLeft
            Action = aRelationSetMain
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabOrder = 2
          end
          object cxButton33: TcxButton
            Left = 158
            Top = 0
            Width = 158
            Height = 34
            Align = alLeft
            Action = aRelationAddParent
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabOrder = 3
          end
        end
        object grdRelation: TcxGrid
          Left = 1
          Top = 35
          Width = 614
          Height = 488
          Cursor = crHandPoint
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = '5'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LevelTabs.Style = 9
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          RootLevelOptions.TabsForEmptyDetails = False
          OnFocusedViewChanged = grdRelationFocusedViewChanged
          object btvRelation: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            OnFocusedRecordChanged = btvRelationFocusedRecordChanged
            DataController.KeyFieldNames = 'sheet_id'
            DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#####'
                Kind = skCount
                Column = clmnIncident_StateName
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #1042#1089#1077#1075#1086':'
                Kind = skCount
              end
              item
                Kind = skCount
                Column = clmnSheetID
              end>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.IgnoreTimeForFiltering = True
            OptionsBehavior.CellHints = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clmnSheetID
            OptionsBehavior.BestFitMaxRecordCount = 20
            OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
            OptionsCustomize.BandMoving = False
            OptionsCustomize.BandSizing = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.FooterAutoHeight = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GridLineColor = clBtnShadow
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.BandHeaderEndEllipsis = True
            OptionsView.FixedBandSeparatorWidth = 0
            Styles.Content = DMMain.stlContentNotFocusedColorLG
            Styles.Inactive = DMMain.stlContentNotFocusedColorLG
            Styles.Selection = DMMain.stlContentNotFocusedColorLG
            Styles.StyleSheet = DMMain.stlshtBTV
            Bands = <
              item
                Caption = #1057#1074#1103#1079#1080' '#1089' '#1076#1088#1091#1075#1080#1084#1080' '#1051#1056
                HeaderAlignmentHorz = taLeftJustify
                Options.HoldOwnColumnsOnly = True
                Styles.Header = DMMain.stlGroup11
              end
              item
                Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
                Options.HoldOwnColumnsOnly = True
                Visible = False
              end
              item
                Options.HoldOwnColumnsOnly = True
                Visible = False
                VisibleForCustomization = False
              end>
            object clmnSheetID: TcxGridDBBandedColumn
              Caption = #8470' '#1051#1056
              DataBinding.FieldName = 'sheet_id'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 56
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvRelationColumn2: TcxGridDBBandedColumn
              Caption = #1053#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'date_fail'
              PropertiesClassName = 'TcxTextEditProperties'
              OnGetDisplayText = btvRelationColumn2GetDisplayText
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvRelationColumn8: TcxGridDBBandedColumn
              Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
              DataBinding.FieldName = 'incident_descr'
              PropertiesClassName = 'TcxTextEditProperties'
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 386
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object clmnIncident_StateName: TcxGridDBBandedColumn
              AlternateCaption = ' '
              Caption = #1057#1090#1072#1090#1091#1089
              DataBinding.FieldName = 'state_name'
              PropertiesClassName = 'TcxTextEditProperties'
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvRelationColumn11: TcxGridDBBandedColumn
              Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
              DataBinding.FieldName = 'category_name'
              Visible = False
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              VisibleForCustomization = False
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object btvRelationColumn14: TcxGridDBBandedColumn
              Caption = #1057#1077#1088#1080#1103
              DataBinding.FieldName = 'ser_name'
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 71
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvRelationColumn15: TcxGridDBBandedColumn
              Caption = #1053#1086#1084#1077#1088
              DataBinding.FieldName = 'nom_object'
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvRelationColumn22: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1079#1072#1084#1077#1095#1072#1085#1080#1103
              DataBinding.FieldName = 'note_type_name'
              DateTimeGrouping = dtgByDate
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 90
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvRelationColumn23: TcxGridDBBandedColumn
              Caption = #1055#1088#1080#1087#1080#1089#1082#1072
              DataBinding.FieldName = 'loc_prip_name'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 151
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object clmnStateID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'state_id'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object clmnIncident_Can_Delete: TcxGridDBBandedColumn
              DataBinding.FieldName = 'can_delete'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object btvRelationChild: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            OnFocusedRecordChanged = btvRelationFocusedRecordChanged
            DataController.DetailKeyFieldNames = 'parent_sheet_id'
            DataController.KeyFieldNames = 'sheet_id'
            DataController.MasterKeyFieldNames = 'sheet_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.IgnoreTimeForFiltering = True
            OptionsBehavior.CellHints = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clmnSheetID
            OptionsBehavior.BestFitMaxRecordCount = 20
            OptionsCustomize.ColumnsQuickCustomizationMaxDropDownCount = 50
            OptionsCustomize.BandMoving = False
            OptionsCustomize.BandSizing = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1103#1083#1086#1089#1100
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.FooterAutoHeight = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GridLineColor = clBtnFace
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorWidth = 0
            Styles.Content = DMMain.stlContentNotFocusedColorW
            Styles.StyleSheet = DMMain.stlshtBTV
            Bands = <
              item
              end>
            object btvRelationChildColumn1: TcxGridDBBandedColumn
              Caption = #1057#1090#1072#1090#1091#1089
              DataBinding.FieldName = 'state_name'
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvRelationChildColumn2: TcxGridDBBandedColumn
              Caption = #8470' '#1051#1056
              DataBinding.FieldName = 'sheet_id'
              Width = 56
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvRelationChildColumn3: TcxGridDBBandedColumn
              Caption = #1053#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'date_fail'
              OnGetDisplayText = btvRelationColumn2GetDisplayText
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvRelationChildColumn4: TcxGridDBBandedColumn
              Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
              DataBinding.FieldName = 'incident_descr'
              Width = 386
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object lvl: TcxGridLevel
            Tag = 1
            Caption = '  '#1042#1089#1077' '#1088#1077#1084#1086#1085#1090#1099'  '
            GridView = btvRelation
            object grdRelationLevel1: TcxGridLevel
              GridView = btvRelationChild
            end
          end
        end
      end
      object Panel19: TPanel
        Left = 0
        Top = 0
        Width = 489
        Height = 524
        Align = alClient
        TabOrder = 1
        object Panel21: TPanel
          Left = 1
          Top = 1
          Width = 487
          Height = 34
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object cxButton3: TcxButton
            Left = 0
            Top = 0
            Width = 90
            Height = 34
            Align = alLeft
            Action = aAttach_Add
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabOrder = 0
          end
          object cxButton4: TcxButton
            Left = 90
            Top = 0
            Width = 90
            Height = 34
            Align = alLeft
            Action = aAttach_Edit
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabOrder = 1
          end
          object cxButton11: TcxButton
            Left = 180
            Top = 0
            Width = 90
            Height = 34
            Align = alLeft
            Action = aAttach_Delete
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            TabOrder = 2
          end
        end
        object grdAttach: TcxGrid
          Left = 1
          Top = 35
          Width = 487
          Height = 488
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          object btvFirmTree: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataModeController.DetailInSQLMode = True
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ' '
                Kind = skMax
                Position = spFooter
                FieldName = 'kod_road'
                Column = clmnGrdCategory
                DisplayText = ' '
                Sorted = True
              end>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = #1044#1072#1085#1085#1099#1077' '#1085#1077' '#1073#1099#1083#1080' '#1086#1073#1085#1086#1074#1083#1077#1085#1099
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            Styles.StyleSheet = DMMain.stlshtGrdTV
            object clmnGrdName: TcxGridDBColumn
            end
            object clmnGrdCategory: TcxGridDBColumn
              AlternateCaption = ' '
              Caption = ' '
              Visible = False
              GroupIndex = 0
            end
            object clmnGrdCategoryAdd: TcxGridDBColumn
              Visible = False
            end
          end
          object lvlAttach: TcxGridLevel
            GridView = DMMain.btvRSh_Attach
          end
        end
      end
      object cxGroupBox13: TcxGroupBox
        Left = 0
        Top = 524
        Align = alBottom
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Style.TextStyle = [fsBold]
        TabOrder = 2
        Height = 86
        Width = 1105
        object mmDescrAttr: TcxMemo
          Left = 3
          Top = 18
          Align = alClient
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 58
          Width = 1099
        end
      end
    end
    object tsRSh_PauseEscalation: TcxTabSheet
      Caption = 'D.4 - '#1055#1072#1091#1079#1072' / '#1069#1089#1082#1072#1083#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object pcPauseEscalation: TcxPageControl
        Left = 0
        Top = 0
        Width = 1105
        Height = 610
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = tsPause
        Properties.CustomButtons.Buttons = <>
        Properties.MultiLine = True
        Properties.Style = 9
        Properties.TabSlants.Positions = [spLeft, spRight]
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.SkinName = 'Caramel'
        TabSlants.Positions = [spLeft, spRight]
        ClientRectBottom = 610
        ClientRectRight = 1105
        ClientRectTop = 23
        object tsPause: TcxTabSheet
          Caption = 'D.4 - '#1055#1072#1091#1079#1072
          object cxGroupBox19: TcxGroupBox
            Left = 0
            Top = 501
            Align = alBottom
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Style.TextStyle = [fsBold]
            TabOrder = 0
            Height = 86
            Width = 1105
            object cxMemo1: TcxMemo
              Left = 3
              Top = 18
              Align = alClient
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 58
              Width = 1099
            end
          end
          object tlPauseNew: TcxDBTreeList
            Left = 0
            Top = 34
            Width = 1105
            Height = 467
            Align = alClient
            Bands = <
              item
                Caption.Text = ' '#1055#1072#1091#1079#1099' '#1074' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
                Styles.Header = DMMain.stlGroup11
              end>
            DataController.ParentField = 'pause_id'
            DataController.KeyField = 'pause_id'
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.ExpandOnIncSearch = True
            OptionsBehavior.HotTrack = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = cxDBTreeListColumn7
            OptionsBehavior.Sorting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Bands = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLineColor = clBtnShadow
            OptionsView.GridLines = tlglBoth
            OptionsView.PaintStyle = tlpsCategorized
            OptionsView.ShowRoot = False
            RootValue = 255
            Styles.Content = stlContent
            Styles.StyleSheet = DMMain.stlshtTL
            Styles.BandHeader = stlHeader
            Styles.ColumnHeader = stlHeader
            TabOrder = 1
            object cxDBTreeListColumn7: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
              DataBinding.FieldName = 'date_begin'
              Width = 148
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn8: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
              DataBinding.FieldName = 'date_finish'
              Width = 153
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn9: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'pause_time'
              Width = 150
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn10: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1055#1088#1080#1095#1080#1085#1072
              DataBinding.FieldName = 'reason_name'
              Width = 165
              Position.ColIndex = 4
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn33: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'pause_id'
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn35: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1060#1048#1054' '#1087#1088#1080#1084#1077#1085#1080#1074#1096#1077#1075#1086' '#1087#1072#1091#1079#1091
              DataBinding.FieldName = 'change_user_fio'
              Width = 205
              Position.ColIndex = 5
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn36: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072
              DataBinding.FieldName = 'descr'
              Width = 290
              Position.ColIndex = 6
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 1105
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object cxButton38: TcxButton
              Left = 0
              Top = 0
              Width = 90
              Height = 34
              Align = alLeft
              Action = aPause_EditNew
              TabOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object tsEscalation: TcxTabSheet
          Caption = 'D.0.4 - '#1069#1089#1082#1072#1083#1072#1094#1080#1103
          object cxGroupBox20: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            Style.TextColor = clNavy
            Style.TextStyle = [fsBold]
            TabOrder = 0
            Height = 300
            Width = 1105
            object tlEscalationNew: TcxDBTreeList
              Left = 3
              Top = 18
              Width = 1099
              Height = 272
              Align = alClient
              Bands = <
                item
                  Caption.Text = ' '#1055#1088#1086#1073#1083#1077#1084#1099' '#1074' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
                  Styles.Header = DMMain.stlGroup11
                end>
              DataController.ParentField = 'escal_id'
              DataController.KeyField = 'escal_id'
              DefaultRowHeight = 19
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              Navigator.Buttons.CustomButtons = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.ExpandOnIncSearch = True
              OptionsBehavior.HotTrack = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.IncSearchItem = cxDBTreeListColumn37
              OptionsBehavior.Sorting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.CellAutoHeight = True
              OptionsView.Bands = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.GridLines = tlglBoth
              OptionsView.PaintStyle = tlpsCategorized
              OptionsView.ShowRoot = False
              RootValue = 255
              Styles.Content = stlContent
              Styles.StyleSheet = DMMain.stlshtTL
              Styles.BandHeader = stlHeader
              Styles.ColumnHeader = stlHeader
              TabOrder = 0
              OnFocusedNodeChanged = tlEscalationNewFocusedNodeChanged
              object cxDBTreeListColumn37: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Caption.AlignHorz = taCenter
                Caption.Text = #1053#1072#1095#1072#1083#1086
                DataBinding.FieldName = 'date_begin'
                Width = 83
                Position.ColIndex = 0
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn38: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Caption.AlignHorz = taCenter
                Caption.Text = #1054#1082#1086#1085#1095#1072#1085#1080#1077
                DataBinding.FieldName = 'date_finish'
                Width = 81
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn39: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Caption.AlignHorz = taCenter
                Caption.Text = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100', '#1089#1091#1090
                DataBinding.FieldName = 'escal_time'
                Width = 185
                Position.ColIndex = 2
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn40: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Caption.AlignHorz = taCenter
                Caption.Text = #1059#1088#1086#1074#1077#1085#1100
                DataBinding.FieldName = 'firm_name'
                Width = 130
                Position.ColIndex = 3
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn41: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Caption.AlignHorz = taCenter
                Caption.Text = #1050#1086#1084#1091
                DataBinding.FieldName = 'fio'
                Width = 140
                Position.ColIndex = 4
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn42: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Caption.AlignHorz = taCenter
                Caption.Text = #1055#1088#1080#1095#1080#1085#1072
                DataBinding.FieldName = 'reason_name'
                Width = 176
                Position.ColIndex = 5
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn43: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Caption.AlignHorz = taCenter
                Caption.Text = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072
                DataBinding.FieldName = 'descr'
                Width = 172
                Position.ColIndex = 6
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn44: TcxDBTreeListColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Caption.AlignHorz = taCenter
                Caption.Text = #1054#1090#1074#1077#1090
                DataBinding.FieldName = 'answer'
                Width = 138
                Position.ColIndex = 7
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn45: TcxDBTreeListColumn
                Visible = False
                Caption.AlignHorz = taCenter
                DataBinding.FieldName = 'escal_id'
                Position.ColIndex = 8
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
            end
          end
          object cxSplitter1: TcxSplitter
            Left = 0
            Top = 300
            Width = 1105
            Height = 6
            AlignSplitter = salTop
            Control = cxGroupBox20
          end
          object cxGroupBox21: TcxGroupBox
            Left = 0
            Top = 306
            Align = alClient
            Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1088#1077#1096#1077#1085#1080#1102
            Style.TextColor = clNavy
            Style.TextStyle = [fsBold]
            TabOrder = 2
            Height = 281
            Width = 1105
            object Panel26: TPanel
              Left = 3
              Top = 18
              Width = 1099
              Height = 39
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object cxButton35: TcxButton
                Left = 7
                Top = 2
                Width = 90
                Height = 34
                Action = aEscalationAction_Add
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'Caramel'
                TabOrder = 0
              end
            end
            object grdEscalationAction: TcxGrid
              Left = 3
              Top = 57
              Width = 1099
              Height = 214
              Align = alClient
              TabOrder = 1
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              object btvEscalationAction: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.KeyFieldNames = 'action_id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                Styles.Content = stlContent
                Styles.Footer = stlGroup
                Styles.Group = stlGroup
                Styles.GroupSummary = stlHeader
                Styles.Header = stlHeader
                Styles.StyleSheet = stlshtBTV
                Styles.BandHeader = stlBandHeader
                Bands = <
                  item
                    Caption = ' '#1055#1088#1080#1083#1086#1078#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
                    HeaderAlignmentHorz = taLeftJustify
                    Styles.Header = DMMain.stlGroup11
                  end>
                object btvEscalationActionColumn1: TcxGridDBBandedColumn
                  Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
                  DataBinding.FieldName = 'date_change'
                  HeaderAlignmentHorz = taCenter
                  Width = 138
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object btvEscalationActionColumn2: TcxGridDBBandedColumn
                  Caption = #1060'.'#1048'.'#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
                  DataBinding.FieldName = 'change_user_fio'
                  HeaderAlignmentHorz = taCenter
                  Width = 311
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object btvEscalationActionColumn3: TcxGridDBBandedColumn
                  Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1088#1077#1096#1077#1085#1080#1102
                  DataBinding.FieldName = 'action'
                  HeaderAlignmentHorz = taCenter
                  Width = 250
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object btvEscalationActionColumn4: TcxGridDBBandedColumn
                  Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                  DataBinding.FieldName = 'descr'
                  HeaderAlignmentHorz = taCenter
                  Width = 283
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object clmnFiles: TcxGridDBBandedColumn
                  Caption = #1057#1082#1072#1095#1072#1090#1100
                  DataBinding.FieldName = 'file_name'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Caption = 'aEscalationAction_Show'
                      Default = True
                      ImageIndex = 0
                      Glyph.Data = {
                        36040000424D3604000000000000360000002800000010000000100000000100
                        2000000000000004000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000000000000000000000000000000000000066E0977066F0A7F0000
                        0000000000000000000000000000000000000000000000000000000000000000
                        000000000000000000000000000000000000056F08753DC060FE3BBA5EFE056D
                        097E000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000066F0A714CE476FE59F28CFF4DD87CFF38B9
                        5BFE0569097A0000000000000000000000000000000000000000000000000000
                        00000000000000000000066D09704CE477FE5AF38DFF57F08AFF53ED87FF49D4
                        78FF35B759FE0567087900000000000000000000000000000000000000000000
                        000000000000056B096E4CE375FE5BF48EFF58F18BFF55EE88FF51EA84FF4EE7
                        81FF45D173FF32B455FE04630777000000000000000000000000000000000000
                        00000569086B4BE174FE5AF48DFF59F28CFF57EF89FF53EC86FF50E983FF4CE5
                        7FFF49E27CFF40CD6FFF2FB253FE046007740000000000000000000000000467
                        076948DD70FD65F294FF72F29DFF91F4B2FF5FED8EFF50E983FF4DE680FF4AE3
                        7DFF43D172FF44DB76FF38BD65FF2CB151FE035D0772000000000020000A005E
                        005F005C0060005B0060128D1DC37FF1A5FF5BEA8BFF4EE781FF4BE47EFF48E1
                        7BFF3CC269FF0F8B1AC800550060005300600054005F001D000D000000000000
                        00000000000000000000126F1D9E7CEEA2FF57E787FF4AE37DFF48E17BFF45DE
                        78FF3BC168FF0E8019A500000000000000000000000000000000000000000000
                        00000000000000000000116D1C9E77EB9EFF54E484FF47E07AFF45DE78FF43DC
                        76FF39C066FF0D7A18A300000000000000000000000000000000000000000000
                        000000000000000000000F6A1B9D74E99BFF50E181FF44DD77FF42DB75FF40D9
                        73FF37C065FF0C6017A100000000000000000000000000000000000000000000
                        000000000000000000000E67199B70E698FF4DDE7DFF41DA74FF3FD872FF3DD6
                        70FF35BF63FF0B5D159F00000000000000000000000000000000000000000000
                        000000000000000000000D64189B6CE394FF6CE293FF5CDD86FF4FD97DFF42D4
                        73FF33BD61FF0B5C16A100000000000000000000000000000000000000000000
                        0000000000000000000007590D9127AA43F129AA44F327A843F325A641F124A4
                        3FF01E9C39ED06660C9900000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000}
                      Kind = bkGlyph
                    end>
                  Properties.ViewStyle = vsButtonsOnly
                  HeaderAlignmentHorz = taCenter
                  Options.ShowEditButtons = isebAlways
                  Width = 60
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object lvlEscalationAction: TcxGridLevel
                GridView = btvEscalationAction
              end
            end
          end
        end
      end
    end
    object tsRSh_AnalyseAction: TcxTabSheet
      Caption = 'D.5 - '#1040#1085#1072#1083#1080#1079' / D.6 - '#1052#1077#1088#1099
      object pcAnalyseAction: TcxPageControl
        Left = 0
        Top = 0
        Width = 1105
        Height = 610
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = tsRSh_NRE
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 9
        Properties.TabSlants.Positions = [spLeft, spRight]
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.SkinName = 'Caramel'
        TabSlants.Positions = [spLeft, spRight]
        ClientRectBottom = 610
        ClientRectRight = 1105
        ClientRectTop = 23
        object tsRSh_Analyses: TcxTabSheet
          Caption = ' D.5 - '#1040#1085#1072#1083#1080#1079' '
          ImageIndex = 0
          object vgAnalyses: TcxVerticalGrid
            Left = 0
            Top = 0
            Width = 1105
            Height = 587
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
            OptionsView.RowHeaderWidth = 299
            OptionsBehavior.AlwaysShowEditor = False
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.GoToNextCellOnTab = True
            ParentFont = False
            Styles.StyleSheet = stlshtVG
            TabOrder = 0
            OnEditValueChanged = vgAnalysesEditValueChanged
            Version = 1
            object rwSystemTree: TcxEditorRow
              Properties.Caption = #1057#1080#1089#1090#1077#1084#1072' : '#1059#1079#1077#1083' : '#1040#1075#1088#1077#1075#1072#1090'/'#1061#1072#1088#1072#1082#1090#1077#1088' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
              Properties.Hint = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077', '#1091#1079#1077#1083', '#1072#1075#1088#1077#1075#1072#1090'/'#1093#1072#1088#1072#1082#1090#1077#1088' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
              Properties.EditProperties.PopupSysPanelStyle = True
              Properties.DataBinding.ValueType = 'String'
              Properties.Options.ShowEditButtons = eisbAlways
              Properties.Value = '-'
              Visible = False
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
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
              Styles.Header = stlBackGroundLightBlue
              Styles.Content = stlBackGroundLightBlue
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object vgAnalysesCategoryRow3: TcxCategoryRow
              Options.TabStop = False
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object rwSystem: TcxEditorRow
              Properties.Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.Items = <>
              Properties.EditProperties.OnChange = rwSystemEditPropertiesChange
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = '0'
              Styles.Header = stlBackGroundLight
              Styles.Content = stlBackGroundLight
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
            object rwSystemName: TcxEditorRow
              Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              Styles.Header = stlBackGroundLight
              Styles.Content = stlBackGroundLight
              ID = 4
              ParentID = -1
              Index = 4
              Version = 1
            end
            object rwEQ_Manufacturer: TcxEditorRow
              Properties.Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
              Properties.EditPropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.EditProperties.DropDownAutoSize = True
              Properties.EditProperties.DropDownListStyle = lsFixedList
              Properties.EditProperties.DropDownRows = 25
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.View = DMMain.btvNSI_EQ_Mfr
              Properties.EditProperties.KeyFieldNames = 'id'
              Properties.EditProperties.ListFieldItem = DMMain.clmnEQ_Mfr_FirmName
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = '0'
              Styles.Header = stlBackGroundLight
              Styles.Content = stlBackGroundLight
              ID = 5
              ParentID = -1
              Index = 5
              Version = 1
            end
            object vgAnalysesCategoryRow4: TcxCategoryRow
              Options.TabStop = False
              ID = 6
              ParentID = -1
              Index = 6
              Version = 1
            end
            object rwUnit: TcxEditorRow
              Properties.Caption = #1059#1079#1077#1083
              Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.Items = <>
              Properties.EditProperties.OnChange = rwUnitEditPropertiesChange
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = '0'
              Styles.Header = stlBackGroundLightBlue
              Styles.Content = stlBackGroundLightBlue
              ID = 7
              ParentID = -1
              Index = 7
              Version = 1
            end
            object rwUnitName: TcxEditorRow
              Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1059#1079#1083#1072
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              Styles.Header = stlBackGroundLightBlue
              Styles.Content = stlBackGroundLightBlue
              ID = 8
              ParentID = -1
              Index = 8
              Version = 1
            end
            object rwUnitMfr: TcxEditorRow
              Properties.Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100' '#1091#1079#1083#1072
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              Styles.Header = stlBackGroundLightBlue
              Styles.Content = stlBackGroundLightBlue
              ID = 9
              ParentID = -1
              Index = 9
              Version = 1
            end
            object vgAnalysesCategoryRow5: TcxCategoryRow
              Options.TabStop = False
              ID = 10
              ParentID = -1
              Index = 10
              Version = 1
            end
            object rwDetail: TcxEditorRow
              Properties.Caption = #1044#1077#1090#1072#1083#1100
              Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.Items = <>
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = '0'
              ID = 11
              ParentID = -1
              Index = 11
              Version = 1
            end
            object rwDetailText: TcxEditorRow
              Properties.Caption = #1044#1077#1090#1072#1083#1100' ('#1090#1077#1082#1089#1090')'
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 12
              ParentID = -1
              Index = 12
              Version = 1
            end
            object rwDetailName: TcxEditorRow
              Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 13
              ParentID = -1
              Index = 13
              Version = 1
            end
            object rwDetailMfr: TcxEditorRow
              Properties.Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100' '#1076#1077#1090#1072#1083#1080
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 14
              ParentID = -1
              Index = 14
              Version = 1
            end
            object vgAnalysesCategoryRow6: TcxCategoryRow
              Options.TabStop = False
              ID = 15
              ParentID = -1
              Index = 15
              Version = 1
            end
            object rwFaultName: TcxEditorRow
              Properties.Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
              Properties.ImageIndex = 12
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 16
              ParentID = -1
              Index = 16
              Version = 1
            end
            object rwReason_Old: TcxEditorRow
              Options.Focusing = False
              Properties.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' ('#1089#1090#1072#1088#1072#1103')'
              Properties.Hint = 
                #1055#1086#1083#1077' '#1085#1077#1076#1086#1089#1090#1091#1087#1085#1086' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#10#1074' '#1089#1074#1103#1079#1080' '#1089' '#1087#1077#1088#1077#1093#1086#1076#1086#1084' '#1085#1072' '#1085#1086#1074#1099#1081 +
                ' '#1082#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1087#1088#1080#1095#1080#1085' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = '-'
              Styles.Header = stlRowDisabled
              Styles.Content = stlRowDisabled
              Visible = False
              ID = 17
              ParentID = -1
              Index = 17
              Version = 1
            end
            object rwReason: TcxEditorRow
              Properties.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
              Properties.EditProperties.PopupControl = pnlReasonTree
              Properties.EditProperties.OnInitPopup = rwReasonEditPropertiesInitPopup
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = '-'
              ID = 18
              ParentID = -1
              Index = 18
              Version = 1
            end
            object rwResponsible: TcxEditorRow
              Properties.Caption = #1042#1080#1085#1086#1074#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxPopupEditProperties'
              Properties.EditProperties.PopupControl = pnlResponsibleTree
              Properties.EditProperties.OnInitPopup = rwResponsibleEditPropertiesInitPopup
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = '-'
              ID = 19
              ParentID = -1
              Index = 19
              Version = 1
            end
            object rwResponsibleChild: TcxEditorRow
              Properties.Caption = '   '#1053#1057#1048' '#1079#1072#1074#1086#1076#1086#1074' '#1080#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1077#1081
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.DropDownListStyle = lsFixedList
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.KeyFieldNames = 'pred_id'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'name'
                end>
              Properties.EditProperties.ListOptions.ShowHeader = False
              Properties.EditProperties.ListSource = DMMain.dsRSh_NSI_ResponsibleChilds
              Properties.DataBinding.ValueType = 'String'
              Properties.Options.ShowEditButtons = eisbAlways
              Properties.Value = '0'
              Visible = False
              ID = 20
              ParentID = -1
              Index = 20
              Version = 1
            end
            object rwSolutionType: TcxEditorRow
              Properties.Caption = #1057#1090#1077#1087#1077#1085#1100' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.DropDownListStyle = lsFixedList
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.KeyFieldNames = 'id'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'name'
                end>
              Properties.EditProperties.ListOptions.ShowHeader = False
              Properties.EditProperties.ListSource = DMMain.ds_NSI_SolutionType
              Properties.EditProperties.OnChange = rwSolutionTypeEditPropertiesChange
              Properties.DataBinding.ValueType = 'String'
              Properties.Options.ShowEditButtons = eisbAlways
              Properties.Value = '0'
              ID = 21
              ParentID = -1
              Index = 21
              Version = 1
            end
            object rwSolutionDescr: TcxEditorRow
              Properties.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1086#1073#1093#1086#1076#1085#1086#1075#1086' '#1088#1077#1096#1077#1085#1080#1103
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 22
              ParentID = -1
              Index = 22
              Version = 1
            end
            object vgAnalysesCategoryRow1: TcxCategoryRow
              ID = 23
              ParentID = -1
              Index = 23
              Version = 1
            end
            object rwTakenMeasures: TcxEditorRow
              Height = 79
              Properties.Caption = #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxMemoProperties'
              Properties.EditProperties.MaxLength = 512
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 24
              ParentID = -1
              Index = 24
              Version = 1
            end
            object rwDescr_Analyses: TcxEditorRow
              Properties.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              Properties.EditPropertiesClassName = 'TcxMemoProperties'
              Properties.EditProperties.MaxLength = 512
              Properties.EditProperties.ScrollBars = ssVertical
              Properties.EditProperties.VisibleLineCount = 5
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 25
              ParentID = -1
              Index = 25
              Version = 1
            end
          end
        end
        object tsRSh_Action: TcxTabSheet
          Caption = ' D.6 - '#1052#1077#1088#1099' '
          ImageIndex = 1
          object Panel20: TPanel
            Left = 0
            Top = 0
            Width = 1105
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object cxButton26: TcxButton
              Left = 0
              Top = 0
              Width = 90
              Height = 34
              Align = alLeft
              Action = aAction_Add
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              TabOrder = 0
            end
            object cxButton27: TcxButton
              Left = 90
              Top = 0
              Width = 90
              Height = 34
              Align = alLeft
              Action = aAction_Edit
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              TabOrder = 1
            end
            object cxButton28: TcxButton
              Left = 270
              Top = 0
              Width = 147
              Height = 34
              Align = alLeft
              Action = aSetKnowMistake
              Caption = #1048#1079#1074#1077#1089#1090#1085#1072#1103' '#1086#1096#1080#1073#1082#1072
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              TabOrder = 2
            end
            object cxLabel59: TcxLabel
              Left = 693
              Top = 0
              Align = alRight
              Caption = 
                #1042' '#1090#1077#1082#1091#1097#1077#1084' '#1088#1072#1079#1076#1077#1083#1077' '#1076#1086#1083#1078#1085#1099' '#1091#1082#1072#1079#1099#1074#1072#1090#1100#1089#1103' '#1080#1084#1077#1085#1085#1086' '#1052#1045#1056#1054#1055#1056#1048#1071#1058#1048#1071' '#1055#1054' '#1055#1054#1042#1067#1064 +
                #1045#1053#1048#1070' '#1053#1040#1044#1045#1046#1053#1054#1057#1058#1048', '#1085#1086' '#1085#1077' '#1088#1072#1073#1086#1090#1099' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1080#1085#1094#1080#1076#1077#1085#1090#1072'.'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clMaroon
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Width = 412
            end
            object cxButton37: TcxButton
              Left = 180
              Top = 0
              Width = 90
              Height = 34
              Align = alLeft
              Action = aAction_Delete
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              TabOrder = 4
            end
          end
          object tlAction: TcxDBTreeList
            Left = 0
            Top = 34
            Width = 1105
            Height = 467
            Align = alClient
            Bands = <
              item
                Caption.Text = #1050#1054#1056#1056#1045#1050#1058#1048#1056#1059#1070#1065#1048#1045' '#1052#1045#1056#1054#1055#1056#1048#1071#1058#1048#1071' '#1055#1054' '#1055#1054#1042#1067#1064#1045#1053#1048#1070' '#1053#1040#1044#1045#1046#1053#1054#1057#1058#1048
              end>
            DataController.ParentField = 'action_id'
            DataController.KeyField = 'action_id'
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.ExpandOnIncSearch = True
            OptionsBehavior.HotTrack = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = cxDBTreeListColumn25
            OptionsBehavior.Sorting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.CellAutoHeight = True
            OptionsView.Bands = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLineColor = clBtnShadow
            OptionsView.GridLines = tlglBoth
            OptionsView.ShowRoot = False
            RootValue = 255
            Styles.StyleSheet = DMMain.stlshtTL
            Styles.BandHeader = DMMain.stlBandHeader9
            TabOrder = 1
            OnDblClick = aAction_EditExecute
            object cxDBTreeListColumn25: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1058#1080#1087
              DataBinding.FieldName = 'action_type_name'
              Width = 166
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn26: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'action_descr'
              Width = 397
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn27: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
              DataBinding.FieldName = 'fio'
              Width = 149
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn28: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1057#1088#1086#1082' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
              DataBinding.FieldName = 'date_performance'
              Width = 118
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlActionscxDBTreeListColumn1: TcxDBTreeListColumn
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Images = DMMain.imlSmall
              Properties.Items = <
                item
                  Description = #1042#1099#1087#1086#1083#1085#1077#1085#1086
                  ImageIndex = 49
                  Value = 59
                end
                item
                  Description = #1053#1077#1074#1099#1087#1086#1083#1085#1080#1084#1086
                  ImageIndex = 50
                  Value = 60
                end
                item
                  Description = #1042' '#1088#1072#1073#1086#1090#1077
                  ImageIndex = 48
                  Value = 0
                end
                item
                  Description = #1053#1077' '#1085#1072#1095#1080#1085#1072#1083#1086#1089#1100
                  ImageIndex = 52
                  Value = 62
                end
                item
                  Description = #1042' '#1086#1078#1080#1076#1072#1085#1080#1080
                  ImageIndex = 39
                  Value = 146
                end>
              Caption.AlignHorz = taCenter
              Caption.Text = #1048#1089#1087#1086#1083#1085#1077#1085#1086
              DataBinding.FieldName = 'result_id'
              Width = 150
              Position.ColIndex = 4
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlActionscxDBTreeListColumn2: TcxDBTreeListColumn
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Images = DMMain.imlSmall
              Properties.Items = <
                item
                  Description = #1054#1095#1077#1085#1100' '#1087#1083#1086#1093#1086
                  ImageIndex = 50
                  Value = 1
                end
                item
                  Description = #1055#1083#1086#1093#1086
                  ImageIndex = 50
                  Value = 2
                end
                item
                  Description = #1059#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086
                  ImageIndex = 50
                  Value = 3
                end
                item
                  Description = #1061#1086#1088#1086#1096#1086
                  ImageIndex = 48
                  Value = 4
                end
                item
                  Description = #1054#1090#1083#1080#1095#1085#1086
                  ImageIndex = 49
                  Value = 5
                end
                item
                  Description = #1053#1077#1090
                  ImageIndex = 52
                  Value = 0
                end>
              Caption.AlignHorz = taCenter
              Caption.Text = #1054#1094#1077#1085#1082#1072' '#1101#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1080
              DataBinding.FieldName = 'rating'
              Width = 113
              Position.ColIndex = 5
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object clmnAction_ID: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'action_id'
              Position.ColIndex = 6
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
          object cxGroupBox18: TcxGroupBox
            Left = 0
            Top = 501
            Align = alBottom
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Style.TextStyle = [fsBold]
            TabOrder = 2
            Height = 86
            Width = 1105
            object mmDescrAction: TcxMemo
              Left = 3
              Top = 18
              Align = alClient
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 58
              Width = 1099
            end
          end
        end
        object tsRSh_NRE: TcxTabSheet
          Caption = ' D.6.1 - '#1053#1056#1069' '
          ImageIndex = 2
          object cxGroupBox6: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = ' '#1048#1089#1090#1086#1088#1080#1103' '#1053#1056#1069
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 185
            Width = 1105
            object Panel16: TPanel
              Left = 3
              Top = 20
              Width = 1099
              Height = 34
              Align = alTop
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxButton17: TcxButton
                Left = 0
                Top = 0
                Width = 97
                Height = 34
                Align = alLeft
                Action = aHistoryNREAdd
                TabOrder = 0
              end
            end
            object tlHistoryNRE: TcxDBTreeList
              Left = 3
              Top = 54
              Width = 1099
              Height = 121
              Align = alClient
              Bands = <
                item
                  Styles.Header = cxStyle2
                end>
              DataController.ParentField = 'hist_id'
              DataController.KeyField = 'hist_id'
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              Navigator.Buttons.CustomButtons = <>
              OptionsBehavior.ExpandOnIncSearch = True
              OptionsBehavior.HotTrack = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.Sorting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.Bands = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.GridLines = tlglBoth
              OptionsView.PaintStyle = tlpsCategorized
              OptionsView.ShowRoot = False
              RootValue = 255
              Styles.Content = DMMain.stlContent9
              Styles.StyleSheet = DMMain.stlshtTL
              TabOrder = 1
              object cxDBTreeListColumn14: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1086
                DataBinding.FieldName = 'notice_sent'
                Width = 168
                Position.ColIndex = 0
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn15: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1044#1072#1090#1072' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103
                DataBinding.FieldName = 'notice_date'
                Width = 142
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn16: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #8470' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103
                DataBinding.FieldName = 'notice_num'
                Width = 203
                Position.ColIndex = 2
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1056#1072#1079#1073#1086#1088' '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085
                DataBinding.FieldName = 'rarse_spend'
                Width = 160
                Position.ColIndex = 3
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1087#1088#1080#1085#1103#1090#1086
                DataBinding.FieldName = 'error_apply'
                Width = 235
                Position.ColIndex = 4
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103
                DataBinding.FieldName = 'date_apply'
                Width = 189
                Position.ColIndex = 5
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
            end
          end
          object cxGroupBox10: TcxGroupBox
            Left = 0
            Top = 185
            Align = alTop
            Caption = ' '#1054#1078#1080#1076#1072#1077#1084#1099#1081' '#1086#1090#1082#1072#1079
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 178
            Width = 1105
            object tlExpectRefusalNRE: TcxDBTreeList
              Left = 3
              Top = 54
              Width = 1099
              Height = 114
              Align = alClient
              Bands = <
                item
                  Styles.Header = cxStyle2
                end>
              DataController.ParentField = 'exref_id'
              DataController.KeyField = 'exref_id'
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              Navigator.Buttons.CustomButtons = <>
              OptionsBehavior.ExpandOnIncSearch = True
              OptionsBehavior.HotTrack = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.Sorting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.Bands = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.GridLines = tlglBoth
              OptionsView.PaintStyle = tlpsCategorized
              OptionsView.ShowRoot = False
              RootValue = 255
              Styles.Content = DMMain.stlContent9
              Styles.StyleSheet = DMMain.stlshtTL
              TabOrder = 0
              object cxDBTreeListColumn21: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1058#1080#1087' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
                DataBinding.FieldName = 'system_type'
                Width = 301
                Position.ColIndex = 0
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn22: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'system_name'
                Width = 254
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn23: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1044#1072#1090#1072' , '#1074#1088#1077#1084#1103
                DataBinding.FieldName = 'create_date'
                Width = 150
                Position.ColIndex = 2
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList2cxDBTreeListColumn5: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1060#1048#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
                DataBinding.FieldName = 'create_user_fio'
                Width = 350
                Position.ColIndex = 3
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
            end
            object Panel18: TPanel
              Left = 3
              Top = 20
              Width = 1099
              Height = 34
              Align = alTop
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object cxButton23: TcxButton
                Left = 0
                Top = 0
                Width = 97
                Height = 34
                Align = alLeft
                Action = aExpectRefusalAdd
                TabOrder = 0
              end
              object cxButton18: TcxButton
                Left = 194
                Top = 0
                Width = 97
                Height = 34
                Align = alLeft
                Action = aExpectRefusalDelete
                TabOrder = 1
              end
              object cxButton19: TcxButton
                Left = 97
                Top = 0
                Width = 97
                Height = 34
                Align = alLeft
                Action = aExpectRefusalEdit
                TabOrder = 2
              end
            end
          end
          object cxGroupBox11: TcxGroupBox
            Left = 0
            Top = 363
            Align = alClient
            Caption = ' '#1061#1088#1086#1085#1086#1083#1086#1075#1080#1103
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 148
            Width = 1105
            object Panel23: TPanel
              Left = 3
              Top = 20
              Width = 1099
              Height = 34
              Align = alTop
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxButton41: TcxButton
                Left = 0
                Top = 0
                Width = 97
                Height = 34
                Align = alLeft
                Action = aChronologyAdd
                TabOrder = 0
              end
            end
            object tlChronoNRE: TcxDBTreeList
              Left = 3
              Top = 54
              Width = 1099
              Height = 84
              Align = alClient
              Bands = <
                item
                  Styles.Header = cxStyle2
                end>
              DataController.ParentField = 'chrono_id'
              DataController.KeyField = 'chrono_id'
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              Navigator.Buttons.CustomButtons = <>
              OptionsBehavior.ExpandOnIncSearch = True
              OptionsBehavior.HotTrack = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.Sorting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.Bands = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.GridLines = tlglBoth
              OptionsView.PaintStyle = tlpsCategorized
              OptionsView.ShowRoot = False
              RootValue = 255
              Styles.Content = DMMain.stlContent9
              Styles.StyleSheet = DMMain.stlshtTL
              TabOrder = 1
              object cxDBTreeListColumn24: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
                DataBinding.FieldName = 'create_date'
                Width = 150
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn29: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1060#1048#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
                DataBinding.FieldName = 'create_user_fio'
                Width = 350
                Position.ColIndex = 2
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeListColumn30: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1061#1088#1086#1085#1086#1083#1086#1075#1080#1103
                DataBinding.FieldName = 'descr'
                Width = 541
                Position.ColIndex = 0
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
            end
          end
          object cxGroupBox15: TcxGroupBox
            Left = 0
            Top = 511
            Align = alBottom
            Caption = ' '#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 76
            Width = 1105
            object cxMemo2: TcxMemo
              Left = 3
              Top = 20
              Align = alClient
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 46
              Width = 1099
            end
          end
        end
      end
    end
    object tsRSh_Storage: TcxTabSheet
      Caption = 'D.0.6 - '#1042#1077#1089
      object pcWeight: TcxPageControl
        Left = 0
        Top = 0
        Width = 1105
        Height = 610
        Hint = 
          #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1087#1086#1083#1077#1081' '#1088#1072#1079#1076#1077#1083#1072' "'#1056#1072#1089#1095#1077#1090' '#1053#1056'" '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1089#1103' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1072#1082#1090#1072 +
          ' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090' '#1087#1086' '#1053#1056
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = tsWt_CalcWeight
        Properties.CustomButtons.Buttons = <>
        Properties.MultiLine = True
        Properties.Style = 9
        Properties.TabSlants.Positions = [spLeft, spRight]
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabSlants.Positions = [spLeft, spRight]
        ClientRectBottom = 610
        ClientRectRight = 1105
        ClientRectTop = 23
        object tsWt_CalcWeight: TcxTabSheet
          Caption = #1056#1072#1089#1095#1077#1090' '#1074#1077#1089#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072' '
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 1105
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxButton14: TcxButton
              Left = 0
              Top = 0
              Width = 90
              Height = 34
              Align = alLeft
              Action = aStorage_Add
              TabOrder = 0
            end
            object cxButton15: TcxButton
              Left = 90
              Top = 0
              Width = 90
              Height = 34
              Align = alLeft
              Action = aStorage_Edit
              TabOrder = 1
            end
            object cxButton16: TcxButton
              Left = 180
              Top = 0
              Width = 90
              Height = 34
              Align = alLeft
              Action = aStorage_Delete
              TabOrder = 2
            end
          end
          object cxGroupBox14: TcxGroupBox
            Left = 0
            Top = 501
            Align = alBottom
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Style.TextStyle = [fsBold]
            TabOrder = 1
            Height = 86
            Width = 1105
            object mmDescrStorage: TcxMemo
              Left = 3
              Top = 18
              Align = alClient
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 58
              Width = 1099
            end
          end
          object tlStorage: TcxDBTreeList
            Left = 0
            Top = 34
            Width = 1105
            Height = 467
            Align = alClient
            Bands = <
              item
                Caption.Text = ' '#1057#1087#1080#1089#1086#1082' '#1088#1072#1089#1095#1077#1090#1086#1074' '#1074#1077#1089#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
                Styles.Header = DMMain.stlGroup11
              end>
            DataController.ParentField = 'storage_id'
            DataController.KeyField = 'storage_id'
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.ExpandOnIncSearch = True
            OptionsBehavior.HotTrack = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = cxDBTreeListColumn11
            OptionsBehavior.Sorting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Bands = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLineColor = clBtnShadow
            OptionsView.GridLines = tlglBoth
            OptionsView.PaintStyle = tlpsCategorized
            OptionsView.ShowRoot = False
            RootValue = 255
            Styles.Content = stlContent
            Styles.StyleSheet = DMMain.stlshtTL
            Styles.BandHeader = stlHeader
            Styles.ColumnHeader = stlHeader
            TabOrder = 2
            object cxDBTreeListColumn11: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Caption.AlignHorz = taCenter
              Caption.Text = #1044#1077#1090#1072#1083#1100
              DataBinding.FieldName = 'detail_name'
              Width = 164
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn12: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
              DataBinding.FieldName = 'date_receive'
              Width = 95
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeListColumn13: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Caption.AlignHorz = taCenter
              Caption.Text = #1052#1077#1089#1090#1086' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
              DataBinding.FieldName = 'firm_name'
              Width = 140
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object clmnStorage_ID: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'storage_id'
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn1: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1042#1088#1077#1084#1103' '#1079#1072#1093#1086#1076#1072', '#1095
              DataBinding.FieldName = 'date_enter'
              Width = 123
              Position.ColIndex = 4
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn2: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1042#1088#1077#1084#1103' '#1074#1099#1093#1086#1076#1072', '#1095
              DataBinding.FieldName = 'date_exit'
              Width = 80
              Position.ColIndex = 5
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn4: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1042#1088#1077#1084#1103' '#1088#1077#1084#1086#1085#1090#1072' '#1092#1072#1082#1090#1102', '#1095' '
              DataBinding.FieldName = 'repair_time_hr'
              Width = 100
              Position.ColIndex = 8
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn3: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1089#1090#1086#1103', '#1088#1091#1073' '
              DataBinding.FieldName = 'idle_cost_rub'
              Width = 121
              Position.ColIndex = 7
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn5: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1047#1048#1055
              DataBinding.FieldName = 'zip_name'
              Width = 91
              Position.ColIndex = 10
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn6: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = #1047#1048#1055', '#1088#1091#1073
              DataBinding.FieldName = 'zip_cost_hr'
              Width = 95
              Position.ColIndex = 11
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn7: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1054#1073#1097#1077#1077' '#1074#1088#1077#1084#1103' '#1087#1088#1086#1089#1090#1086#1103' '#1074' '#1076#1077#1087#1086', '#1095
              DataBinding.FieldName = 'idle_time_hr'
              Width = 104
              Position.ColIndex = 6
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn8: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099' ('#1095#1077#1083'*'#1095#1072#1089'), '#1088#1091#1073' '
              DataBinding.FieldName = 'repair_cost_rub'
              Width = 119
              Position.ColIndex = 9
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn9: TcxDBTreeListColumn
              Caption.Text = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1088#1072#1089#1093#1086#1076#1099', '#1088#1091#1073' '
              DataBinding.FieldName = 'overhead_cost'
              Width = 88
              Position.ColIndex = 12
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object tlStoragecxDBTreeListColumn10: TcxDBTreeListColumn
              Caption.Text = #1042#1077#1089', '#1088#1091#1073' '
              DataBinding.FieldName = 'sum_weight'
              Width = 87
              Position.ColIndex = 13
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
        end
        object tsWt_CalcUnplannedRepair: TcxTabSheet
          Hint = 
            #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1087#1086#1083#1077#1081' '#1088#1072#1079#1076#1077#1072' '#171#1056#1072#1089#1095#1077#1090' '#1053#1056#187' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1089#1103' '#1087#1086' '#1076#1072#1085#1085#1099#1084' '#1072#1082#1090#1072' ' +
            #1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090' '#1087#1086' '#1053#1056
          Caption = #1056#1072#1089#1095#1077#1090' '#1053#1056' '
          Enabled = False
          object cxGroupBox7: TcxGroupBox
            Left = 0
            Top = 94
            Align = alTop
            Caption = ' '#1061#1088#1086#1085#1086#1083#1086#1075#1080#1103
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 231
            Width = 1105
            object Panel14: TPanel
              Left = 3
              Top = 20
              Width = 1099
              Height = 34
              Align = alTop
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxButton9: TcxButton
                Left = 0
                Top = 0
                Width = 97
                Height = 34
                Align = alLeft
                Action = aURepairChrono_Add
                TabOrder = 0
              end
              object cxButton12: TcxButton
                Left = 97
                Top = 0
                Width = 90
                Height = 34
                Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1076#1077#1090#1072#1083#1080
                Align = alLeft
                Caption = #1048#1079#1084#1077#1085#1080#1090#1100
                Enabled = False
                OptionsImage.ImageIndex = 6
                TabOrder = 1
                OnClick = aStorage_EditExecute
              end
              object cxButton13: TcxButton
                Left = 187
                Top = 0
                Width = 90
                Height = 34
                Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1076#1077#1090#1072#1083#1077#1081
                Align = alLeft
                Caption = #1059#1076#1072#1083#1080#1090#1100
                Enabled = False
                OptionsImage.ImageIndex = 7
                TabOrder = 2
                OnClick = aStorage_DeleteExecute
              end
            end
            object tlRepairChrono: TcxDBTreeList
              Left = 3
              Top = 54
              Width = 1099
              Height = 167
              Align = alClient
              Bands = <
                item
                  Styles.Header = cxStyle2
                end>
              DataController.ParentField = 'chrono_id'
              DataController.KeyField = 'chrono_id'
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              Navigator.Buttons.CustomButtons = <>
              OptionsBehavior.ExpandOnIncSearch = True
              OptionsBehavior.HotTrack = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.Sorting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.Bands = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.GridLines = tlglBoth
              OptionsView.PaintStyle = tlpsCategorized
              OptionsView.ShowRoot = False
              RootValue = 255
              Styles.StyleSheet = DMMain.stlshtTL
              TabOrder = 1
              object cxDBTreeList2cxDBTreeListColumn2: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'create_date'
                Width = 150
                Position.ColIndex = 0
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList2cxDBTreeListColumn3: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1060#1048#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
                DataBinding.FieldName = 'create_user_fio'
                Width = 370
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList2cxDBTreeListColumn4: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1061#1088#1086#1085#1086#1083#1086#1075#1080#1103
                DataBinding.FieldName = 'descr'
                Width = 577
                Position.ColIndex = 2
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 0
            Top = 320
            Caption = ' '#1042#1086#1079#1084#1077#1097#1077#1085#1080#1077' '#1091#1097#1077#1088#1073#1072
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 213
            Width = 1105
            object Panel22: TPanel
              Left = 3
              Top = 20
              Width = 1099
              Height = 34
              Align = alTop
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxButton30: TcxButton
                Left = 0
                Top = 0
                Width = 97
                Height = 34
                Align = alLeft
                Action = aURepairComp_Add
                TabOrder = 0
              end
              object cxButton39: TcxButton
                Left = 97
                Top = 0
                Width = 90
                Height = 34
                Align = alLeft
                Action = aURepairComEdit
                TabOrder = 1
              end
              object cxButton40: TcxButton
                Left = 187
                Top = 0
                Width = 90
                Height = 34
                Align = alLeft
                Action = aURepairComDel
                TabOrder = 2
              end
            end
            object tlRepairCompens: TcxDBTreeList
              Left = 3
              Top = 54
              Width = 1099
              Height = 149
              Align = alClient
              Bands = <
                item
                  Styles.Header = cxStyle2
                end>
              DataController.ParentField = 'compen_id'
              DataController.KeyField = 'compen_id'
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Caramel'
              Navigator.Buttons.CustomButtons = <>
              OptionsBehavior.ExpandOnIncSearch = True
              OptionsBehavior.HotTrack = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.IncSearchItem = cxDBTreeList3cxDBTreeListColumn1
              OptionsBehavior.Sorting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.Bands = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLineColor = clBtnShadow
              OptionsView.GridLines = tlglBoth
              OptionsView.PaintStyle = tlpsCategorized
              OptionsView.ShowRoot = False
              RootValue = 255
              Styles.StyleSheet = DMMain.stlshtTL
              TabOrder = 1
              object cxDBTreeList3cxDBTreeListColumn1: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'create_date'
                Width = 134
                Position.ColIndex = 0
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList3cxDBTreeListColumn2: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1060#1048#1054', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
                DataBinding.FieldName = 'create_user_fio'
                Width = 370
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList3cxDBTreeListColumn3: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1042#1080#1085#1072' '#1087#1088#1080#1079#1085#1072#1085#1072
                DataBinding.FieldName = 'fault_name'
                Width = 194
                Position.ColIndex = 2
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList3cxDBTreeListColumn4: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
                DataBinding.FieldName = 'fault_date'
                Width = 195
                Position.ColIndex = 3
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
              object cxDBTreeList3cxDBTreeListColumn5: TcxDBTreeListColumn
                Caption.AlignHorz = taCenter
                Caption.Text = #1057#1091#1084#1084#1072' '#1074#1086#1079#1084#1077#1097#1077#1085#1080#1103
                DataBinding.FieldName = 'compen_ammount'
                Width = 193
                Position.ColIndex = 4
                Position.RowIndex = 0
                Position.BandIndex = 0
                Summary.FooterSummaryItems = <>
                Summary.GroupFooterSummaryItems = <>
              end
            end
          end
          object cxGroupBox9: TcxGroupBox
            Left = 0
            Top = 503
            Align = alBottom
            Caption = ' '#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 84
            Width = 1105
            object mmDescrNR: TcxMemo
              Left = 3
              Top = 20
              Align = alClient
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 54
              Width = 1099
            end
          end
          object vgRepair: TcxVerticalGrid
            Left = 0
            Top = 0
            Width = 1105
            Height = 94
            BorderStyle = cxcbsNone
            Align = alTop
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
            OptionsView.RowHeaderWidth = 222
            OptionsBehavior.AlwaysShowEditor = False
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.GoToNextCellOnTab = True
            ParentFont = False
            Styles.StyleSheet = stlshtVG
            TabOrder = 3
            OnEditValueChanged = vgAnalysesEditValueChanged
            Version = 1
            object vgRepairCategoryRow1: TcxCategoryRow
              Properties.Caption = #1056#1072#1089#1095#1077#1090' '#1053#1056
              Properties.Hint = #1056#1072#1089#1095#1077#1090' '#1053#1056
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object rwRepairNum: TcxEditorRow
              Properties.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.MaxLength = 20
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object rwRepairDate: TcxEditorRow
              Properties.Caption = #1044#1072#1090#1072' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxDateEditProperties'
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = Null
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object rwRepairTotalNDS: TcxEditorRow
              Properties.Caption = #1048#1090#1086#1075#1086' '#1089' '#1053#1044#1057
              Properties.ImageIndex = 12
              Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
              Properties.EditProperties.MaskKind = emkRegExprEx
              Properties.EditProperties.EditMask = '[0-9]*\,?[0-9]+'
              Properties.DataBinding.ValueType = 'String'
              Properties.Value = ''
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
          end
        end
      end
    end
    object tsRSh_Closing: TcxTabSheet
      Caption = 'D8. '#1047#1072#1082#1088#1099#1090#1080#1077
      object gbClosing: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        DesignSize = (
          1105
          610)
        Height = 610
        Width = 1105
        object cxLabel58: TcxLabel
          Left = 3
          Top = 37
          Caption = #1050#1086#1076' '#1079#1072#1082#1088#1099#1090#1080#1103
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 95
          Top = 35
          RepositoryItem = cxEditRepository2TextItem1
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'close_reason_name'
          DataBinding.DataSource = DMMain.dsRSh
          ParentFont = False
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.StyleController = stlcntrlrTextReadOnly
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
          Width = 638
        end
        object cxLabel47: TcxLabel
          Left = 3
          Top = 74
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Transparent = True
        end
        object mmDescrClose: TcxDBMemo
          Left = 95
          Top = 74
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'descr8'
          DataBinding.DataSource = DMMain.dsRSh
          ParentFont = False
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.StyleController = stlcntrlrTextReadOnly
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 3
          Height = 315
          Width = 638
        end
      end
    end
    object tsRSh_Workaround_old: TcxTabSheet
      Caption = 'D3.4. '#1054#1073#1093#1086#1076' (old)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 1105
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxButton20: TcxButton
          Left = 0
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aWorkaround_Add
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
        end
        object cxButton21: TcxButton
          Left = 90
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aWorkaround_Edit
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
        end
        object cxButton22: TcxButton
          Left = 180
          Top = 0
          Width = 90
          Height = 34
          Align = alLeft
          Action = aWorkaround_Delete
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
        end
      end
      object tlWorkaround: TcxDBTreeList
        Left = 0
        Top = 34
        Width = 1105
        Height = 490
        Align = alClient
        Bands = <
          item
            Caption.Text = #1054#1073#1093#1086#1076#1085#1099#1077' '#1088#1077#1096#1077#1085#1080#1103' '#1074' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1080' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
          end>
        DataController.ParentField = 'wa_id'
        DataController.KeyField = 'wa_id'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.ExpandOnIncSearch = True
        OptionsBehavior.HotTrack = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxDBTreeListColumn17
        OptionsBehavior.Sorting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.Bands = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLineColor = clBtnShadow
        OptionsView.GridLines = tlglBoth
        OptionsView.PaintStyle = tlpsCategorized
        OptionsView.ShowRoot = False
        RootValue = 255
        Styles.StyleSheet = DMMain.stlshtTL
        TabOrder = 1
        OnDblClick = aWorkaround_EditExecute
        OnFocusedNodeChanged = tlWorkaroundFocusedNodeChanged
        object cxDBTreeListColumn17: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.Text = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'date_begin'
          Width = 114
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn18: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.Text = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'date_finish'
          Width = 109
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn19: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.Text = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'wa_time'
          Width = 142
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn20: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.Text = #1058#1080#1087' '#1086#1073#1093#1086#1076#1085#1086#1075#1086' '#1088#1077#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'wa_type_name'
          Width = 728
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object clmnWorkaround_ID: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'wa_id'
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object cxGroupBox16: TcxGroupBox
        Left = 0
        Top = 524
        Align = alBottom
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Style.TextStyle = [fsBold]
        TabOrder = 2
        Height = 86
        Width = 1105
        object mmDescrWorkaround: TcxMemo
          Left = 3
          Top = 18
          Align = alClient
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 58
          Width = 1099
        end
      end
    end
    object tsOthers: TcxTabSheet
      Caption = 'tsOthers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object pnlReasonTree: TPanel
        Left = 14
        Top = 51
        Width = 425
        Height = 429
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'l'
        TabOrder = 0
        object tlReasonTree: TcxDBTreeList
          Left = 2
          Top = 2
          Width = 421
          Height = 379
          BorderStyle = cxcbsNone
          Align = alClient
          Bands = <
            item
            end>
          DataController.ParentField = 'parent_reason_id'
          DataController.KeyField = 'reason_id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Navigator.Buttons.CustomButtons = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.HotTrack = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = clmn_NSI_ReasonName
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExtPaintStyle = True
          OptionsView.Headers = False
          ParentFont = False
          RootValue = -1
          Styles.StyleSheet = stlshtTL
          TabOrder = 0
          OnDblClick = aSelect_NSI_ReasonTreeExecute
          OnGetNodeImageIndex = tlReasonTreeGetNodeImageIndex
          OnKeyPress = tlReasonTreeKeyPress
          object clmn_NSI_ReasonName: TcxDBTreeListColumn
            DataBinding.FieldName = 'reason_name'
            Width = 337
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object dxStatusBar3: TdxStatusBar
          Left = 2
          Top = 404
          Width = 421
          Height = 23
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.ImageIndex = 49
              Text = '- '#1087#1086#1079#1080#1094#1080#1080', '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1076#1083#1103' '#1074#1099#1073#1086#1088#1072
              Width = 400
            end>
          PaintStyle = stpsUseLookAndFeel
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
        object dxStatusBar4: TdxStatusBar
          Left = 2
          Top = 381
          Width = 421
          Height = 23
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              Text = #1042#1099#1073#1086#1088' '#1089#1090#1088#1086#1082#1080' - '#1076#1074#1086#1081#1085#1086#1081' '#1097#1077#1083#1095#1086#1082' '#1084#1099#1096#1080' '#1080#1083#1080' '#1085#1072#1078#1072#1090#1080#1077' Enter'
              Width = 400
            end>
          PaintStyle = stpsUseLookAndFeel
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object Panel1: TPanel
        Left = 704
        Top = 37
        Width = 353
        Height = 141
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        Visible = False
        object cxLabel1: TcxLabel
          Left = 8
          Top = 48
          Hint = 
            #1055#1088#1080#1089#1074#1072#1080#1074#1072#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1088#1080' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1080' '#1085#1086#1074#1086#1075#1086' '#1083#1080#1089#1090#1072'. '#1053#1077' '#1088#1077 +
            #1076#1072#1082#1090#1080#1088#1091#1077#1090#1089#1103
          Caption = #1053#1086#1084#1077#1088
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 76
          Caption = #1057#1090#1072#1090#1091#1089
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 261
          Top = 48
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1079#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1088#1080' '#1089#1086#1079#1076#1072#1085#1080#1080' '#1051#1056'. '#1053#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1074#1091#1077#1090#1089#1103
          Caption = #1042#1088#1077#1084#1103' '#1089#1086#1079#1076#1072#1085#1080#1103
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 261
          Top = 76
          Hint = 
            #1042#1088#1077#1084#1103' '#1085#1072#1093#1086#1078#1076#1077#1085#1080#1103' '#1051#1056' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1089#1090#1072#1090#1091#1089#1077'. '#1042#1099#1095#1080#1089#1083#1103#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080 +
            '. '#1053#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1091#1077#1090#1089#1103
          Caption = #1042#1088#1077#1084#1103' '#1085#1072#1093#1086#1078#1076#1077#1085#1080#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1077' ('#1089#1091#1090'.)'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 8
          Top = 104
          Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 261
          Top = 104
          Caption = #1055#1086#1076#1095#1080#1085#1077#1085#1085#1086#1089#1090#1100
          Transparent = True
        end
        object cbState: TcxLookupComboBox
          Left = 96
          Top = 74
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 10
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'STATE_ID'
          Properties.ListColumns = <
            item
              FieldName = 'STATE_NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ReadOnly = True
          EditValue = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.StyleController = stlcntrlrTextReadOnly
          Style.ButtonTransparency = ebtHideInactive
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 6
          Width = 145
        end
        object eCriticality: TcxTextEdit
          Left = 95
          Top = 102
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.TextColor = clNavy
          StyleDisabled.Color = clBtnFace
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 7
          Width = 145
        end
        object eDateCreate: TcxTextEdit
          Left = 476
          Top = 46
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          StyleDisabled.Color = clBtnFace
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          TabOrder = 8
          Width = 103
        end
        object eTimeInState: TcxTextEdit
          Left = 475
          Top = 74
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          StyleDisabled.Color = clBtnFace
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          TabOrder = 9
          Width = 103
        end
        object teRelationType: TcxTextEdit
          Left = 475
          Top = 102
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          StyleDisabled.Color = clBtnFace
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          TabOrder = 10
          Width = 103
        end
        object eAnalyses_Loc: TcxTextEdit
          Left = 9
          Top = 17
          ParentColor = True
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.TextColor = clBlue
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clBlue
          StyleDisabled.TextStyle = [fsBold]
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 11
          Width = 569
        end
        object cxLabel18: TcxLabel
          Left = 798
          Top = 48
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1079#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1088#1080' '#1089#1086#1079#1076#1072#1085#1080#1080' '#1051#1056'. '#1053#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1074#1091#1077#1090#1089#1103
          Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1086' '#1092#1072#1081#1083#1086#1074
          Transparent = True
        end
        object eFileCount: TcxTextEdit
          Left = 956
          Top = 46
          Properties.ReadOnly = True
          StyleDisabled.Color = clBtnFace
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          TabOrder = 13
          Width = 121
        end
        object cxLabel33: TcxLabel
          Left = 798
          Top = 76
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1079#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1088#1080' '#1089#1086#1079#1076#1072#1085#1080#1080' '#1051#1056'. '#1053#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1074#1091#1077#1090#1089#1103
          Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
          Transparent = True
        end
        object eUserChange: TcxDBTextEdit
          Left = 798
          Top = 102
          DataBinding.DataField = 'change_user_fio'
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 15
          Width = 279
        end
        object eSheetNo: TcxDBTextEdit
          Left = 99
          Top = 47
          DataBinding.DataField = 'sheet_no'
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.TextColor = clNavy
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 16
          Width = 146
        end
        object teIsReadOnly: TcxTextEdit
          Left = 798
          Top = 15
          Enabled = False
          ParentColor = True
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clRed
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          StyleDisabled.BorderStyle = ebsFlat
          StyleDisabled.TextColor = clRed
          StyleDisabled.TextStyle = [fsBold]
          TabOrder = 17
          Text = #1058#1054#1051#1068#1050#1054' '#1063#1058#1045#1053#1048#1045
          Visible = False
          Width = 279
        end
        object cxLabel55: TcxLabel
          Left = 596
          Top = 47
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1079#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1088#1080' '#1089#1086#1079#1076#1072#1085#1080#1080' '#1051#1056'. '#1053#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1074#1091#1077#1090#1089#1103
          Caption = #1047#1072#1093#1086#1076' '#1074' '#1076#1077#1087#1086
          Transparent = True
        end
        object cxTextEdit1: TcxTextEdit
          Left = 687
          Top = 46
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          StyleDisabled.Color = clBtnFace
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          TabOrder = 19
          Width = 103
        end
        object cxLabel56: TcxLabel
          Left = 596
          Top = 74
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1079#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1088#1080' '#1089#1086#1079#1076#1072#1085#1080#1080' '#1051#1056'. '#1053#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1074#1091#1077#1090#1089#1103
          Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1076#1077#1087#1086
          Transparent = True
        end
        object cxTextEdit2: TcxTextEdit
          Left = 687
          Top = 74
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          StyleDisabled.Color = clBtnFace
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          TabOrder = 21
          Width = 103
        end
        object eDateChange: TcxDBButtonEdit
          Left = 956
          Top = 74
          DataBinding.DataField = 'date_change'
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Hint = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = eDateChangePropertiesButtonClick
          Style.StyleController = stlcntrlrTextReadOnly
          TabOrder = 22
          Width = 121
        end
      end
      object Panel25: TPanel
        Left = 464
        Top = 184
        Width = 577
        Height = 337
        TabOrder = 2
        object pnlResponsibleTree: TPanel
          Left = 0
          Top = -133
          Width = 393
          Height = 430
          BevelOuter = bvNone
          Caption = 'pnlResponsibleTree'
          TabOrder = 0
          object tlResponsibleTree: TcxDBTreeList
            Left = 0
            Top = 0
            Width = 393
            Height = 410
            BorderStyle = cxcbsNone
            Align = alClient
            Bands = <
              item
              end>
            DataController.ParentField = 'kod_firm_parent_new'
            DataController.KeyField = 'kod_firm_child'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Caramel'
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.HotTrack = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clmn_NSI_ResponsibleName
            OptionsData.Editing = False
            OptionsData.Deleting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.ExtPaintStyle = True
            OptionsView.Headers = False
            ParentFont = False
            RootValue = -1
            Styles.Content = stlContent
            Styles.Inactive = stlSelection
            Styles.Selection = stlSelection
            Styles.StyleSheet = stlshtTL
            Styles.HotTrack = stlHotTrack
            TabOrder = 0
            OnDblClick = aSelect_NSI_ResponsibleExecute
            OnGetNodeImageIndex = tlResponsibleTreeGetNodeImageIndex
            OnKeyPress = tlResponsibleTreeKeyPress
            object clmn_NSI_ResponsibleName: TcxDBTreeListColumn
              DataBinding.FieldName = 'resp_name'
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
          object dxStatusBar1: TdxStatusBar
            Left = 0
            Top = 410
            Width = 393
            Height = 20
            Panels = <>
            PaintStyle = stpsUseLookAndFeel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1105
        Height = 35
        Align = alTop
        TabOrder = 3
        DesignSize = (
          1105
          35)
        object cxLabel8: TcxLabel
          Left = 8
          Top = 9
          Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1080' '#1092#1080#1083#1080#1072#1083
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.StyleController = DMMain.stlctrlMandatoryEdit
          Properties.WordWrap = True
          Width = 110
        end
        object cbTeamDepartment: TcxLookupComboBox
          Left = 191
          Top = 7
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 10
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'kod_firm'
          Properties.ListColumns = <
            item
              FieldName = 'firm_name'
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
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
          Width = 893
        end
      end
    end
    object tsRSh_Common: TcxTabSheet
      Caption = '1. '#1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1105
        Height = 206
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 41
          Align = alLeft
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074'/'#1089#1077#1082#1094#1080#1103
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.TextStyle = [fsBold]
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
          DesignSize = (
            588
            158)
          Height = 165
          Width = 588
          object cxLabel19: TcxLabel
            Left = 16
            Top = 72
            Caption = #1044#1077#1087#1086' '#1080' '#1076#1080#1088#1077#1082#1094#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.StyleController = DMMain.stlctrlMandatoryEdit
            Transparent = True
          end
          object cxLabel20: TcxLabel
            Left = 16
            Top = 100
            Caption = #1060#1080#1083#1080#1072#1083' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.StyleController = DMMain.stlctrlMandatoryEdit
            Properties.WordWrap = True
            Transparent = True
            Width = 123
          end
          object btneRepairBaseFirm: TcxButtonEdit
            Left = 199
            Top = 70
            Anchors = [akLeft, akTop, akRight, akBottom]
            Properties.Buttons = <
              item
                Caption = '  '#1042#1099#1073#1088#1072#1090#1100'  '
                Default = True
                Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
                Kind = bkText
              end>
            Properties.ViewStyle = vsHideCursor
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Caramel'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Caramel'
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 2
            Width = 383
          end
          object btneLoc: TcxButtonEdit
            Left = 16
            Top = 34
            Anchors = [akLeft, akTop, akRight, akBottom]
            ParentFont = False
            Properties.Buttons = <
              item
                Caption = '  '#1042#1099#1073#1088#1072#1090#1100'  '
                Default = True
                Hint = #1055#1086#1080#1089#1082' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1087#1086' '#1085#1086#1084#1077#1088#1091
                Kind = bkText
              end>
            Properties.ViewStyle = vsHideCursor
            Properties.OnButtonClick = btneLocPropertiesButtonClick
            Properties.OnEditValueChanged = btneLocPropertiesEditValueChanged
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Caramel'
            Style.StyleController = DMMain.stlctrlMandatoryEdit
            Style.TextColor = clBlack
            Style.TextStyle = [fsBold]
            Style.ButtonStyle = btsDefault
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Caramel'
            StyleDisabled.TextColor = clNavy
            StyleDisabled.TextStyle = [fsBold]
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 3
            Text = #1051#1086#1082#1086#1084#1086#1090#1080#1074' '#1085#1077' '#1074#1099#1073#1088#1072#1085
            Width = 566
          end
          object cbServiceDepartment: TcxLookupComboBox
            Left = 199
            Top = 106
            Anchors = [akLeft, akTop, akRight, akBottom]
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 10
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'kod_firm'
            Properties.ListColumns = <
              item
                FieldName = 'firm_name_full'
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
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 4
            Width = 383
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 588
          Top = 41
          Align = alClient
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.TextStyle = [fsBold]
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
          Height = 165
          Width = 517
          object cxLabel9: TcxLabel
            Left = 6
            Top = 52
            Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.StyleController = DMMain.stlctrlMandatoryEdit
            Transparent = True
          end
          object cxLabel11: TcxLabel
            Left = 6
            Top = 80
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            ParentFont = False
            Style.StyleController = DMMain.stlctrlMandatoryEdit
            Transparent = True
          end
          object cxLabel13: TcxLabel
            Left = 6
            Top = 135
            Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.StyleController = DMMain.stlctrlMandatoryEdit
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cbCriticality: TcxLookupComboBox
            Left = 185
            Top = 133
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
            Properties.OnEditValueChanged = cbCriticalityPropertiesEditValueChanged
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
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 3
            Width = 329
          end
          object cxLabel10: TcxLabel
            Left = 6
            Top = 24
            Caption = #1058#1080#1087' '#1080#1089#1090#1086#1095#1085#1080#1082#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.StyleController = DMMain.stlctrlMandatoryEdit
            Style.TextColor = clRed
            Transparent = True
          end
          object cbInfoSourceType: TcxLookupComboBox
            Left = 185
            Top = 24
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
            Properties.OnEditValueChanged = cbInfoSourceTypePropertiesEditValueChanged
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
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 5
            Width = 329
          end
          object btneInfoSource: TcxButtonEdit
            Left = 184
            Top = 52
            Properties.Buttons = <
              item
                Caption = '  '#1042#1099#1073#1088#1072#1090#1100'  '
                Default = True
                Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
                Kind = bkText
              end>
            Properties.ViewStyle = vsHideCursor
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Caramel'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Caramel'
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 6
            Width = 329
          end
          object cbCategory: TcxLookupComboBox
            Left = 185
            Top = 80
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
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 7
            Width = 329
          end
          object cxLabel51: TcxLabel
            Left = 6
            Top = 109
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cbEnter_Depot_Reason: TcxLookupComboBox
            Left = 185
            Top = 107
            ParentFont = False
            Properties.DropDownAutoSize = True
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 20
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                Width = 80
                FieldName = 'mnemo'
              end
              item
                Width = 400
                FieldName = 'name'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.OnEditValueChanged = cbCriticalityPropertiesEditValueChanged
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
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 9
            Width = 329
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1105
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object cxLabel21: TcxLabel
            Left = 16
            Top = 12
            Caption = #1042#1088#1077#1084#1103' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnFace
            Style.StyleController = DMMain.stlctrlMandatoryEdit
          end
          object cxLabel22: TcxLabel
            Left = 448
            Top = 12
            Caption = #1042#1088#1077#1084#1103' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1076#1080#1072#1075'. '#1089#1086#1086#1073#1097#1077#1085#1080#1103
          end
          object deFailDate: TcxDateEdit
            Left = 219
            Top = 10
            Properties.DateButtons = [btnNow]
            Properties.ImmediatePost = True
            Properties.InputKind = ikMask
            Properties.Kind = ckDateTime
            Properties.OnEditValueChanged = deFailDatePropertiesEditValueChanged
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Caramel'
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Caramel'
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 2
            Width = 199
          end
          object deDiagMsgDate: TcxDateEdit
            Left = 688
            Top = 10
            Properties.DateButtons = [btnNow]
            Properties.ImmediatePost = True
            Properties.InputKind = ikMask
            Properties.Kind = ckDateTime
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Caramel'
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Caramel'
            StyleDisabled.TextColor = clNavy
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Caramel'
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Caramel'
            TabOrder = 3
            Width = 401
          end
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 254
        Align = alClient
        PanelStyle.Active = True
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 176
        Width = 1105
        object mmIncidentDescr: TcxMemo
          Left = 2
          Top = 22
          Align = alClient
          Constraints.MinHeight = 50
          ParentFont = False
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
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
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
          Height = 152
          Width = 1101
        end
        object cxLabel7: TcxLabel
          Left = 2
          Top = 2
          Align = alTop
          Caption = #1054#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.StyleController = DMMain.stlctrlMandatoryEdit
          Style.TextStyle = []
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
          Transparent = True
        end
      end
      object pnlKasant: TcxGroupBox
        Left = 0
        Top = 430
        Align = alBottom
        Caption = #1050#1040#1057#1040#1053#1058
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 2
        DesignSize = (
          1105
          87)
        Height = 94
        Width = 1105
        object cbKasantSafety: TcxLookupComboBox
          Left = 533
          Top = 17
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 10
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'object_kod'
          Properties.ListColumns = <
            item
              FieldName = 'object_name'
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
          StyleDisabled.Color = clBtnFace
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 0
          Width = 569
        end
        object cxLabel14: TcxLabel
          Left = 365
          Top = 19
          Hint = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1087#1088#1080#1082#1072#1079#1072' '#1052#1080#1085#1090#1088#1072#1085#1089' '#8470' 163'
          Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
          Transparent = True
        end
        object cxLabel15: TcxLabel
          Left = 135
          Top = 19
          Hint = 
            #1055#1088#1080#1089#1074#1072#1080#1074#1072#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1088#1080' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1080' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1080#1079' '#1050#1040#1057' '#1040#1053 +
            #1058
          Caption = #1057#1090#1072#1090#1091#1089
          Transparent = True
        end
        object cbKasantState: TcxLookupComboBox
          Left = 182
          Top = 17
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 10
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'object_kod'
          Properties.ListColumns = <
            item
              FieldName = 'object_name'
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
          StyleDisabled.Color = clBtnFace
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 3
          Width = 167
        end
        object cxLabel16: TcxLabel
          Left = 0
          Top = 42
          Caption = #1042#1080#1085#1086#1074#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072':'
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 0
          Top = 19
          Hint = 
            #1055#1088#1080#1089#1074#1072#1080#1074#1072#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1088#1080' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1080' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1080#1079' '#1050#1040#1057' '#1040#1053 +
            #1058
          Caption = #1050#1040#1057#1040#1053#1058
          Transparent = True
        end
        object cbKasantMark: TcxLookupComboBox
          Left = 57
          Top = 12
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
          StyleDisabled.Color = clBtnFace
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 6
          Width = 70
        end
        object btneResponsibleParent: TcxButtonEdit
          Left = 262
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          Properties.Buttons = <
            item
              Caption = '  '#1042#1099#1073#1088#1072#1090#1100'  '
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
              Kind = bkText
            end>
          Properties.ViewStyle = vsHideCursor
          Properties.OnButtonClick = btneResponsiblePropertiesButtonClick
          Style.Color = clBtnFace
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.TextColor = clNavy
          StyleDisabled.Color = clBtnFace
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 7
          Width = 840
        end
        object cxLabel31: TcxLabel
          Left = 207
          Top = 42
          Hint = 
            #1055#1088#1080#1089#1074#1072#1080#1074#1072#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1088#1080' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1080' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1080#1079' '#1050#1040#1057' '#1040#1053 +
            #1058
          Caption = #1057#1083#1091#1078#1073#1072
          Transparent = True
        end
        object cxLabel32: TcxLabel
          Left = 166
          Top = 67
          Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
          Transparent = True
        end
        object eResponsibleChild: TcxTextEdit
          Left = 262
          Top = 63
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.Color = clBtnFace
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = []
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 10
          Width = 840
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 524
        Align = alBottom
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Style.TextStyle = [fsBold]
        TabOrder = 3
        Height = 86
        Width = 1105
        object mmDescr1: TcxMemo
          Left = 3
          Top = 18
          Align = alClient
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleDisabled.TextColor = clNavy
          TabOrder = 0
          Height = 58
          Width = 1099
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 206
        Align = alTop
        Caption = #1052#1077#1089#1090#1086' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 4
        DesignSize = (
          1105
          41)
        Height = 48
        Width = 1105
        object cxLabel23: TcxLabel
          Left = 8
          Top = 19
          Caption = #1058#1080#1087' '#1084#1077#1089#1090#1072
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.StyleController = DMMain.stlctrlMandatoryEdit
          Transparent = True
        end
        object cbTypePlace: TcxLookupComboBox
          Left = 76
          Top = 17
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
          Properties.OnChange = cbTypePlacePropertiesChange
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
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
          Width = 172
        end
        object cxLabel24: TcxLabel
          Left = 264
          Top = 19
          Caption = #1052#1077#1089#1090#1086
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.StyleController = DMMain.stlctrlMandatoryEdit
          Transparent = True
        end
        object btneFailPlace: TcxButtonEdit
          Left = 312
          Top = 17
          Anchors = [akLeft, akTop, akRight]
          Properties.Buttons = <
            item
              Caption = '  '#1042#1099#1073#1088#1072#1090#1100'  '
              Default = True
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
              Kind = bkText
            end>
          Properties.ViewStyle = vsHideCursor
          Properties.OnButtonClick = btneFailPlacePropertiesButtonClick
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.TextColor = clNavy
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 3
          Width = 790
        end
      end
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 853
    Width = 1105
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
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clNavy
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = #1053#1077#1088#1077#1076#1072#1082#1090#1080#1088#1091#1077#1084#1099#1077' '#1087#1086#1083#1103
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 12
        Text = '- '#1087#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 220
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 47
        Text = ', * - '#1085#1077#1089#1086#1093#1088#1072#1085#1077#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        Width = 180
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taRightJustify
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = 22784
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Arial'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
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
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1105
    Height = 50
    ParentCustomHint = False
    Align = dalTop
    BarManager = bmRSh
  end
  object vgFrame: TcxDBVerticalGrid
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 1099
    Height = 99
    Margins.Top = 10
    BorderStyle = cxcbsNone
    Align = alTop
    LayoutStyle = lsBandsView
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.BandsInterval = 5
    OptionsView.RowHeaderWidth = 198
    OptionsView.ShowButtons = False
    OptionsView.ValueWidth = 140
    OptionsData.Appending = False
    OptionsData.Deleting = False
    OptionsData.Inserting = False
    Navigator.Buttons.CustomButtons = <>
    Styles.Background = stlBackground
    Styles.Content = cxStyle2
    Styles.Selection = cxStyle2
    Styles.StyleSheet = stlshtVG
    Styles.Header = cxStyle2
    TabOrder = 8
    Version = 1
    object vgControlDateDBEditorRow1: TcxDBEditorRow
      Properties.Caption = #1051#1086#1082#1086#1084#1086#1090#1080#1074
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'loc_name'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object vgControlDateDBEditorRow2: TcxDBEditorRow
      Properties.Caption = #1060#1080#1083#1080#1072#1083
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'service_firm_name'
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object cxCategoryRow1: TcxCategoryRow
      Height = 10
      Visible = False
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object vgControlDateDBEditorRow3: TcxDBEditorRow
      Properties.Caption = #8470' '#1051#1056#1048
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'sheet_id'
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object vgControlDateDBEditorRow4: TcxDBEditorRow
      Properties.Caption = #1057#1090#1072#1090#1091#1089
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'state_name'
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object vgControlDateDBEditorRow5: TcxDBEditorRow
      Properties.Caption = #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'criticality_name'
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object vgControlDateDBEditorRow6: TcxDBEditorRow
      Properties.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'category_name'
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
    object vgControlDateDBEditorRow7: TcxDBEditorRow
      Properties.Caption = #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1080#1085#1094'.'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'date_fail'
      ID = 7
      ParentID = -1
      Index = 7
      Version = 1
    end
    object vgControlDateDBEditorRow8: TcxDBEditorRow
      Properties.Caption = #1057#1086#1079#1076#1072#1085
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'date_create'
      ID = 8
      ParentID = -1
      Index = 8
      Version = 1
    end
    object vgControlDateDBEditorRow9: TcxDBEditorRow
      Properties.Caption = #1047#1072#1082#1088#1099#1090
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'date_close'
      ID = 9
      ParentID = -1
      Index = 9
      Version = 1
    end
    object vgControlDateDBEditorRow10: TcxDBEditorRow
      Properties.Caption = #1042#1088#1077#1084#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1077
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'state_lasting'
      ID = 10
      ParentID = -1
      Index = 10
      Version = 1
    end
    object vgControlDateDBEditorRow11: TcxDBEditorRow
      Properties.Caption = #1054#1073#1097#1072#1103' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'incident_time'
      ID = 11
      ParentID = -1
      Index = 11
      Version = 1
    end
    object vgControlDateDBEditorRow12: TcxDBEditorRow
      Properties.Caption = #1055#1086#1076#1095#1080#1085#1077#1085#1085#1086#1089#1090#1100
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'relation_type'
      ID = 12
      ParentID = -1
      Index = 12
      Version = 1
    end
    object vgControlDateDBEditorRow13: TcxDBEditorRow
      Properties.Caption = #1050#1040#1057#1040#1053#1058
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      ID = 13
      ParentID = -1
      Index = 13
      Version = 1
    end
    object vgControlDateDBEditorRow14: TcxDBEditorRow
      Properties.Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1086' '#1092#1072#1081#1083#1086#1074
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'cnt_attach'
      ID = 14
      ParentID = -1
      Index = 14
      Version = 1
    end
    object vgControlDateDBEditorRow15: TcxDBEditorRow
      Properties.Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.DataBinding.FieldName = 'last_change'
      ID = 15
      ParentID = -1
      Index = 15
      Version = 1
    end
  end
  object alRecordSheet: TActionList
    Images = DMMain.imlSmall
    Left = 744
    Top = 376
    object aSetAction: TAction
      Caption = 'aSetAction'
      ImageIndex = 0
      OnExecute = aSetActionExecute
    end
    object aSearchLoc: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Hint = #1055#1086#1080#1089#1082' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1087#1086' '#1085#1086#1084#1077#1088#1091
      ImageIndex = 11
      OnExecute = aSearchLocExecute
    end
    object aGetRunningASOUP: TAction
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      Hint = 
        #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1088#1086#1073#1077#1075#1080' '#1085#1072' '#1076#1072#1090#1091' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072#10 +
        #1054#1090#1084#1077#1085#1080#1090#1100' '#1101#1090#1091' '#1086#1087#1077#1088#1072#1094#1080#1102' '#1073#1091#1076#1077#1090' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086'.'#10#1044#1086#1089#1090#1091#1087#1085#1086' '#1076#1083#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1086#1074',' +
        ' '#1087#1088#1086#1080#1089#1096#1077#1076#1096#1080#1093' '#1084#1077#1085#1077#1077' 14 '#1076#1085#1077#1081' '#1085#1072#1079#1072#1076'.'
      ImageIndex = 11
      OnExecute = aGetRunningASOUPExecute
    end
    object aGetTrainInfo: TAction
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      Hint = 
        #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1086#1077#1079#1076#1077' '#1085#1072' '#1076#1072#1090#1091' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' ' +
        #1080#1085#1094#1080#1076#1077#1085#1090#1072#10#1054#1090#1084#1077#1085#1080#1090#1100' '#1101#1090#1091' '#1086#1087#1077#1088#1072#1094#1080#1102' '#1073#1091#1076#1077#1090' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086'.'#10#1044#1086#1089#1090#1091#1087#1085#1086' '#1076#1083#1103' '#1080 +
        #1085#1094#1080#1076#1077#1085#1090#1086#1074', '#1087#1088#1086#1080#1089#1096#1077#1076#1096#1080#1093' '#1084#1077#1085#1077#1077' 14 '#1076#1085#1077#1081' '#1085#1072#1079#1072#1076'.'
      ImageIndex = 11
      OnExecute = aGetTrainInfoExecute
    end
    object aDataValidation: TAction
      Caption = 'aDataValidation'
      ImageIndex = 0
      OnExecute = aDataValidationExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1085#1072' '#1090#1077#1082#1091#1097#1077#1081' '#1074#1082#1083#1072#1076#1082#1077', '#1085#1077' '#1079#1072#1082#1088#1099#1074#1072#1103' '#1086#1082#1085#1072
      ImageIndex = 56
      ShortCut = 16467
      OnExecute = aSaveExecute
    end
    object aSave0: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1080#1089#1093#1086#1076#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
      ImageIndex = 56
      OnExecute = aSave0Execute
    end
    object aSaveRunning: TAction
      Caption = 'aSaveRunning'
      ImageIndex = 56
      OnExecute = aSaveRunningExecute
    end
    object aSaveTrain: TAction
      Caption = 'aSaveTrain'
      ImageIndex = 56
      OnExecute = aSaveTrainExecute
    end
    object aSaveTeam: TAction
      Caption = 'aSaveTeam'
      ImageIndex = 56
    end
    object aSaveAnalyses: TAction
      Caption = 'aSaveAnalyses'
      ImageIndex = 56
      OnExecute = aSaveAnalysesExecute
    end
    object aSaveUnplannedRepair: TAction
      Caption = 'aSaveUnplannedRepair'
      ImageIndex = 56
      OnExecute = aSaveUnplannedRepairExecute
    end
    object aSaveCommon: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1080#1089#1093#1086#1076#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
      ImageIndex = 8
    end
    object aSaveExit: TAction
      Caption = #1054#1050
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 8
      OnExecute = aSaveExitExecute
    end
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1074#1099#1081#1090#1080' '#1080#1079' '#1051#1056
      ImageIndex = 9
      OnExecute = aCloseExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1051#1056' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
      ImageIndex = 58
      OnExecute = aCancelExecute
    end
    object aLoad_TabSheet: TAction
      Caption = 'aLoad_TabSheet'
      ImageIndex = 13
      OnExecute = aLoad_TabSheetExecute
    end
    object aSet_TabSheet: TAction
      Caption = 'aSet_TabSheet'
      ImageIndex = 0
      OnExecute = aSet_TabSheetExecute
    end
    object aCheckDiff: TAction
      Caption = 'aCheckDiff'
      ImageIndex = 0
      OnExecute = aCheckDiffExecute
    end
    object aRestorePageCaption: TAction
      Caption = 'aRestorePageCaption'
      ImageIndex = 0
      OnExecute = aRestorePageCaptionExecute
    end
    object aCommandSetAction: TAction
      Caption = 'aCommandSetAction'
      ImageIndex = 0
      OnExecute = aCommandSetActionExecute
    end
    object aAttachSetAction: TAction
      Caption = 'aAttachSetAction'
      ImageIndex = 0
      OnExecute = aAttachSetActionExecute
    end
    object aStorage_SetAction: TAction
      Caption = 'aStorage_SetAction'
      ImageIndex = 0
      OnExecute = aStorage_SetActionExecute
    end
    object aPause_SetAction: TAction
      Caption = 'aPause_SetAction'
      ImageIndex = 0
      OnExecute = aPause_SetActionExecute
    end
    object aWorkaround_SetAction: TAction
      Caption = 'aWorkaround_SetAction'
      ImageIndex = 0
      OnExecute = aWorkaround_SetActionExecute
    end
    object aEscalation_SetAction: TAction
      Caption = 'aEscalation_SetAction'
      ImageIndex = 0
      OnExecute = aEscalation_SetActionExecute
    end
    object aActionSetAction: TAction
      Caption = 'aActionSetAction'
      ImageIndex = 0
      OnExecute = aActionSetActionExecute
    end
    object aSetValues: TAction
      Caption = 'aSetValues'
      ImageIndex = 13
      OnExecute = aSetValuesExecute
    end
    object aLoad_Incident_RSh: TAction
      Caption = 'aLoad_Incident_RSh'
      ImageIndex = 13
      OnExecute = aLoad_Incident_RShExecute
    end
    object aLoad_Incident_Running: TAction
      Caption = 'aLoad_Incident_Running'
      ImageIndex = 13
      OnExecute = aLoad_Incident_RunningExecute
    end
    object aLoad_NSI_States: TAction
      Caption = 'aLoad_NSI_States'
      ImageIndex = 13
      OnExecute = aLoad_NSI_StatesExecute
    end
    object aLoad_NSI_Category: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1053#1057#1048' '#1082#1072#1090#1077#1075#1086#1088#1080#1081' '#1048#1085#1094#1080#1076#1077#1085#1090#1072'...'
      ImageIndex = 13
      OnExecute = aLoad_NSI_CategoryExecute
    end
    object aLoad_NSI_ServiceFilial: TAction
      Caption = 'aLoad_NSI_ServiceFilial'
      ImageIndex = 13
    end
    object aLoad_NSI_EnterDepot_Reason: TAction
      Caption = 'aLoad_NSI_EnterDepot_Reason'
      ImageIndex = 13
      OnExecute = aLoad_NSI_EnterDepot_ReasonExecute
    end
    object aLoad_NSI_Safety: TAction
      Caption = 'aLoad_NSI_Safety'
      ImageIndex = 13
      OnExecute = aLoad_NSI_SafetyExecute
    end
    object aLoad_NSI_KasantMark: TAction
      Caption = 'aLoad_NSI_KasantMark'
      ImageIndex = 13
    end
    object aLoad_NSI_KasantState: TAction
      Caption = 'aLoad_NSI_KasantState'
      ImageIndex = 13
      OnExecute = aLoad_NSI_KasantStateExecute
    end
    object aLoad_NSI_Criticality: TAction
      Caption = 'aLoad_NSI_Criticality'
      ImageIndex = 13
    end
    object aLoad_NSI_InfoSourceType: TAction
      Caption = 'aLoad_NSI_InfoSourceType'
      ImageIndex = 13
      OnExecute = aLoad_NSI_InfoSourceTypeExecute
    end
    object aLoad_NSI_TypePlace: TAction
      Caption = 'aLoad_NSI_TypePlace'
      ImageIndex = 13
    end
    object aLoad_NSI_Brig_Depo: TAction
      Caption = 'aLoad_NSI_Brig_Depo'
      ImageIndex = 13
      OnExecute = aLoad_NSI_Brig_DepoExecute
    end
    object aLoad_NSI_TeamDepartment: TAction
      Caption = 'aLoad_NSI_TeamDepartment'
      ImageIndex = 13
    end
    object aLoad_NSI_RQ_Mfr: TAction
      Caption = 'aLoad_NSI_RQ_Mfr'
      ImageIndex = 13
    end
    object aLoad_NSI_Eq_Reason: TAction
      Caption = 'aLoad_NSI_Eq_Reason'
      ImageIndex = 13
    end
    object aLoad_NSI_Responsible: TAction
      Caption = 'aLoad_NSI_Responsible'
      ImageIndex = 13
      OnExecute = aLoad_NSI_ResponsibleExecute
    end
    object aLoadTeam: TAction
      Caption = 'aLoadTeam'
      ImageIndex = 13
    end
    object aLoad_TeamExecutor: TAction
      Caption = 'aLoad_TeamExecutor'
      ImageIndex = 13
      OnExecute = aLoad_TeamExecutorExecute
    end
    object aLoad_TeamLeader: TAction
      Caption = 'aLoad_TeamLeader'
      ImageIndex = 13
      OnExecute = aLoad_TeamLeaderExecute
    end
    object aLoad_TeamOwner: TAction
      Caption = 'aLoad_TeamOwner'
      ImageIndex = 13
      OnExecute = aLoad_TeamOwnerExecute
    end
    object aLoad_Storage: TAction
      Caption = 'aLoad_Storage'
      ImageIndex = 13
      OnExecute = aLoad_StorageExecute
    end
    object aLoad_Pause: TAction
      Caption = 'aLoad_Pause'
      ImageIndex = 13
      OnExecute = aLoad_PauseExecute
    end
    object aLoad_Workaround: TAction
      Caption = 'aLoad_Workaround'
      ImageIndex = 13
    end
    object aLoad_Escalation: TAction
      Caption = 'aLoad_Escalation'
      ImageIndex = 13
      OnExecute = aLoad_EscalationExecute
    end
    object aLoad_EscalationAction: TAction
      Caption = 'aLoad_EscalationAction'
      ImageIndex = 13
      OnExecute = aLoad_EscalationActionExecute
    end
    object aLoad_Analyses: TAction
      Caption = 'aLoad_Analyses'
      ImageIndex = 13
      OnExecute = aLoad_AnalysesExecute
    end
    object aLoad_Action: TAction
      Caption = 'aLoad_Action'
      ImageIndex = 13
      OnExecute = aLoad_ActionExecute
    end
    object aLoad_Attach: TAction
      Caption = 'aLoad_Attach'
      ImageIndex = 13
      OnExecute = aLoad_AttachExecute
    end
    object aLoad_Relation: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1077#1081
      ImageIndex = 13
      OnExecute = aLoad_RelationExecute
    end
    object aLoadUnplannedRepair: TAction
      Caption = 'aLoadUnplannedRepair'
      ImageIndex = 13
      OnExecute = aLoadUnplannedRepairExecute
    end
    object aLoad_NRE: TAction
      Caption = 'aLoad_NRE'
      ImageIndex = 13
      OnExecute = aLoad_NREExecute
    end
    object aWorkLeader_Add: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1080#1089#1082#1083#1102#1095#1080#1090#1100' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103' '#1088#1072#1073#1086#1090
      ImageIndex = 6
      OnExecute = aWorkLeader_AddExecute
    end
    object aProcessOwner_Add: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1080#1089#1082#1083#1102#1095#1080#1090#1100' '#1074#1083#1072#1076#1077#1083#1100#1094#1072' '#1087#1088#1086#1094#1077#1089#1089#1072
      ImageIndex = 6
      OnExecute = aProcessOwner_AddExecute
    end
    object aWork_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1088#1072#1073#1086#1090#1099
      ImageIndex = 5
      OnExecute = aWork_AddExecute
    end
    object aWork_Edit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1088#1072#1073#1086#1090#1099
      ImageIndex = 6
      OnExecute = aWork_EditExecute
    end
    object aWork_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1088#1072#1073#1086#1090
      ImageIndex = 7
      OnExecute = aWork_DeleteExecute
    end
    object aWork_Finish: TAction
      Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
      Hint = 
        #1048#1079#1084#1077#1085#1080#1090#1100' '#1076#1072#1090#1091' '#1086#1082#1086#1085#1095#1072#1085#1080#1103'/'#1086#1094#1077#1085#1082#1091' '#1090#1077#1082#1091#1097#1077#1081' '#1088#1072#1073#1086#1090#1099'. '#10#1047#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1086' '#1086 +
        #1082#1086#1085#1095#1072#1085#1080#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090#1099'.'
      ImageIndex = 6
      OnExecute = aWork_FinishExecute
    end
    object aStorage_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1076#1077#1090#1072#1083#1080
      ImageIndex = 5
      OnExecute = aStorage_AddExecute
    end
    object aStorage_Edit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1076#1077#1090#1072#1083#1080
      ImageIndex = 6
      OnExecute = aStorage_EditExecute
    end
    object aStorage_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1076#1077#1090#1072#1083#1077#1081
      ImageIndex = 7
      OnExecute = aStorage_DeleteExecute
    end
    object aPause_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1072#1091#1079#1091' '#1074' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 5
      Visible = False
      OnExecute = aPause_AddExecute
    end
    object aPause_Edit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1087#1072#1091#1079#1099
      ImageIndex = 6
    end
    object aPause_EditNew: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1087#1072#1091#1079#1099
      ImageIndex = 6
      OnExecute = aPause_EditNewExecute
    end
    object aPause_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1087#1072#1091#1079
      ImageIndex = 7
      Visible = False
      OnExecute = aPause_DeleteExecute
    end
    object aWorkaround_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1086#1073#1093#1086#1076#1085#1086#1075#1086' '#1088#1077#1096#1077#1085#1080#1103
      ImageIndex = 5
      Visible = False
      OnExecute = aWorkaround_AddExecute
    end
    object aWorkaround_Edit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1086#1073#1093#1086#1076#1085#1086#1075#1086' '#1088#1077#1096#1077#1085#1080#1103
      ImageIndex = 6
      OnExecute = aWorkaround_EditExecute
    end
    object aWorkaround_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1086#1073#1093#1086#1076#1085#1099#1093' '#1088#1077#1096#1077#1085#1080#1081
      ImageIndex = 7
      Visible = False
      OnExecute = aWorkaround_DeleteExecute
    end
    object aEscalation_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1101#1089#1082#1072#1083#1072#1094#1080#1080
      ImageIndex = 5
      OnExecute = aEscalation_AddExecute
    end
    object aEscalationAction_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
      OnExecute = aEscalationAction_AddExecute
    end
    object aEscalationAction_Show: TAction
      Caption = 'aEscalationAction_Show'
      ImageIndex = 0
      OnExecute = aEscalationAction_ShowExecute
    end
    object aEscalation_Edit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1089#1087#1080#1089#1082#1072' '#1101#1082#1089#1082#1072#1083#1072#1094#1080#1081
      ImageIndex = 6
    end
    object aEscalation_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1101#1089#1082#1072#1083#1072#1094#1080#1081
      ImageIndex = 7
    end
    object aAction_Add: TAction
      Caption = #1052#1077#1088#1099
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1081
      ImageIndex = 5
      OnExecute = aAction_AddExecute
    end
    object aAction_Edit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1081
      ImageIndex = 6
      OnExecute = aAction_EditExecute
    end
    object aAction_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1081
      ImageIndex = 7
      OnExecute = aAction_DeleteExecute
    end
    object aAttach_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 5
      OnExecute = aAttach_AddExecute
    end
    object aAttach_Edit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1087#1086#1079#1080#1094#1080#1080
      ImageIndex = 6
      OnExecute = aAttach_EditExecute
    end
    object aAttach_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 7
      OnExecute = aAttach_DeleteExecute
    end
    object aAttach_Show: TAction
      Caption = 'aAttach_Show'
      ImageIndex = 0
      OnExecute = aAttach_ShowExecute
    end
    object aRelationChildEdit: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1074#1080#1089#1080#1084#1099#1077
      Hint = 
        #1054#1090#1082#1088#1099#1090#1100' '#1076#1080#1072#1083#1086#1075#1086#1074#1086#1077' '#1086#1082#1085#1086' '#1074#1099#1073#1086#1088#1072' '#1089#1074#1103#1079#1072#1085#1085#1099#1093' '#1051#1056' ('#1058#1045#1050#1059#1065#1048#1049' '#1051#1056' '#1041#1059#1044#1045#1058' '#1071#1042 +
        #1051#1071#1058#1068#1057#1071' '#1054#1057#1053#1054#1042#1053#1067#1052'!)'
      ImageIndex = 5
      OnExecute = aRelationChildEditExecute
    end
    object aRelationAddParent: TAction
      Caption = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1086#1089#1085#1086#1074#1085#1099#1084
      Hint = 
        #1054#1090#1082#1088#1099#1090#1100' '#1076#1080#1072#1083#1086#1075#1086#1074#1086#1077' '#1086#1082#1085#1086' '#1074#1099#1073#1086#1088#1072' '#1089#1074#1103#1079#1072#1085#1085#1099#1093' '#1051#1056' ('#1058#1045#1050#1059#1065#1048#1049' '#1051#1056' '#1041#1059#1044#1045#1058' '#1071#1042 +
        #1051#1071#1058#1068#1057#1071' '#1047#1040#1042#1048#1057#1048#1052#1067#1052'!)'
      ImageIndex = 16
      OnExecute = aRelationAddParentExecute
    end
    object aRelationDelete: TAction
      Caption = #1054#1090#1074#1103#1079#1072#1090#1100
      Hint = #1054#1090#1074#1103#1079#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1051#1056
      ImageIndex = 7
      OnExecute = aRelationDeleteExecute
    end
    object aRelation_SetAction: TAction
      Caption = 'aRelation_SetAction'
      ImageIndex = 0
      OnExecute = aRelation_SetActionExecute
    end
    object aRelationSetMain: TAction
      Caption = #1057#1076#1077#1083#1072#1090#1100' '#1086#1089#1085#1086#1074#1085#1099#1084
      Hint = #1057#1076#1077#1083#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1051#1056' '#1086#1089#1085#1086#1074#1085#1099#1084' '#1074' '#1089#1074#1103#1079#1082#1077
      ImageIndex = 19
      OnExecute = aRelationSetMainExecute
    end
    object aSetKassant: TAction
      Caption = 'aSetKassant'
      ImageIndex = 0
      OnExecute = aSetKassantExecute
    end
    object aSetKnowMistake: TAction
      Caption = 'aSetKnowMistake'
      ImageIndex = 44
      OnExecute = aSetKnowMistakeExecute
    end
    object aURepairChrono_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1093#1088#1086#1085#1086#1083#1086#1075#1080#1080
      ImageIndex = 5
      OnExecute = aURepairChrono_AddExecute
    end
    object aURepairComp_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074#1086#1079#1084#1077#1097#1077#1085#1080#1077' '#1091#1097#1077#1088#1073#1072
      ImageIndex = 5
      OnExecute = aURepairComp_AddExecute
    end
    object aURepairComEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 6
      OnExecute = aURepairComEditExecute
    end
    object aURepairComDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
      OnExecute = aURepairComDelExecute
    end
  end
  object tmr: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrTimer
    Left = 1008
    Top = 664
  end
  object Action1: TAction
    Caption = 'aSetAction'
  end
  object dsRelationParent: TDataSource
    DataSet = cdsRelationParent
    Left = 1000
    Top = 336
  end
  object cdsRelationParent: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 996
    Top = 292
  end
  object dsRelationChild: TDataSource
    DataSet = cdsRelationChild
    Left = 1008
    Top = 408
  end
  object cdsRelationChild: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1004
    Top = 364
  end
  object cxEditRepository2: TcxEditRepository
    Left = 1008
    Top = 512
    object cxEditRepository2TextItem1: TcxEditRepositoryTextItem
      Properties.ReadOnly = True
    end
  end
  object stlcntrlrTextReadOnly: TcxEditStyleController
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clNavy
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clNavy
    Style.IsFontAssigned = True
    Left = 1008
    Top = 464
    PixelsPerInch = 96
  end
  object dsPause: TDataSource
    DataSet = cdsPause
    Left = 1016
    Top = 560
  end
  object cdsPause: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1016
    Top = 608
  end
  object bmRSh: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Group2')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    ImageOptions.Images = DMMain.imlMain24
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    SunkenBorder = True
    UseSystemFont = False
    Left = 1042
    Top = 662
    DockControlHeights = (
      0
      0
      0
      0)
    object tbCommonButtons: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      Color = clWindow
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 178
      FloatTop = 95
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Hidden = True
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lblReadOnly'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bmRShBar1: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = #1050#1086#1085#1090#1088'.'#1058#1086#1095#1082#1080' - '#1059#1089#1083#1086#1074#1085#1099#1077' '#1086#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
      CaptionButtons = <>
      Color = clWhite
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 1107
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = False
      WholeRow = True
    end
    object bmRShBar2: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      CaptionButtons = <>
      Color = clWindow
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 24
      FloatLeft = 1139
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 433
          Visible = True
          ItemName = 'bListDoc'
        end
        item
          Visible = True
          ItemName = 'btnDoc'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = aAttach_Add_Univ
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = aSetState_InWork
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = aSetState_Storage
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aSetState_Pause
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aSetState_Workaround
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = aSetState_Escalation
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = aSetState_Resolved
      Caption = ' '#1040#1085#1072#1083#1080#1079' - '#1052#1077#1088#1099'  '
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = aSetState_Close
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarStatic1: TdxBarStatic
      Caption = '   '
      Category = 0
      Hint = '   '
      Style = DMMain.stlBackgroundLightBlue
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic2: TdxBarStatic
      Caption = '- '#1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100' '#1058#1052#1061'-'#1057#1077#1088#1074#1080#1089
      Category = 0
      Hint = '- '#1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100' '#1058#1052#1061'-'#1057#1077#1088#1074#1080#1089
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Action = aStateHistory
      Align = iaRight
      Category = 0
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object lblReadOnly: TdxBarStatic
      Align = iaRight
      Caption = #1058#1054#1051#1068#1050#1054' '#1044#1051#1071' '#1063#1058#1045#1053#1048#1071
      Category = 0
      Hint = #1058#1054#1051#1068#1050#1054' '#1044#1051#1071' '#1063#1058#1045#1053#1048#1071
      Style = stlRedBoldFont
      Visible = ivNever
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = ' '#1044#1086#1082#1091#1084#1077#1085#1090', '#1072#1082#1090', '#1087#1080#1089#1100#1084#1086': '
      Category = 0
      Hint = ' '#1044#1086#1082#1091#1084#1077#1085#1090', '#1072#1082#1090', '#1087#1080#1089#1100#1084#1086': '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object bListDoc: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = ' '#1044#1086#1082#1091#1084#1077#1085#1090', '#1040#1050#1058', '#1087#1080#1089#1100#1084#1086
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
    end
    object btnDoc: TdxBarButton
      Action = aFomingDoc
      Caption = ' '#1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
    object dxBarGroup2: TdxBarGroup
      Items = ()
    end
  end
  object alStates: TActionList
    Images = DMMain.imlMain24
    Left = 680
    Top = 376
    object aState_SetAction: TAction
      Caption = 'aState_SetAction'
      ImageIndex = 42
      OnExecute = aState_SetActionExecute
    end
    object aSetState_InWork: TAction
      Caption = ' '#1042' '#1088#1072#1073#1086#1090#1091'   '
      Hint = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1048#1085#1094#1080#1076#1077#1085#1090' '#1074' '#1089#1090#1072#1090#1091#1089' '#1056#1040#1041#1054#1058#1040
      ImageIndex = 23
      OnExecute = aSetState_InWorkExecute
    end
    object aSetState_Storage: TAction
      Caption = ' '#1057#1082#1083#1072#1076'   '
      Hint = 
        #1055#1088#1080#1086#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1077' '#1048#1085#1094#1080#1076#1077#1085#1090#1072', '#1090'.'#1082'. '#1080#1076#1077#1090' '#1087#1086#1083#1091#1095#1077#1085#1080#1077' '#1047#1048#1055' '#1089#1086' '#1089 +
        #1082#1083#1072#1076#1072'.'#10#1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1048#1085#1094#1080#1076#1077#1085#1090' '#1074' '#1089#1090#1072#1090#1091#1089' '#1057#1050#1051#1040#1044
      ImageIndex = 39
      OnExecute = aSetState_StorageExecute
    end
    object aSetState_Pause: TAction
      Caption = ' '#1055#1072#1091#1079#1072'   '
      Hint = 
        #1055#1088#1080#1086#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1077' '#1048#1085#1094#1080#1076#1077#1085#1090#1072' '#1080#1079'-'#1079#1072' '#1086#1078#1080#1076#1072#1085#1080#1103' '#1076#1083#1080#1090#1077#1083#1100#1085#1086#1081' '#1086#1087#1077 +
        #1088#1072#1094#1080#1080': '#1087#1088#1080#1073#1099#1090#1080#1103' '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1072', '#1086#1078#1080#1076#1072#1085#1080#1077' '#1079#1072#1093#1086#1076#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1076#1077#1087#1086' '#1080 +
        ' '#1087#1088'.'#10#1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1048#1085#1094#1080#1076#1077#1085#1090' '#1074' '#1089#1090#1072#1090#1091#1089' '#1055#1040#1059#1047#1040
      ImageIndex = 38
      OnExecute = aSetState_PauseExecute
    end
    object aSetState_Workaround: TAction
      Caption = ' '#1054#1073#1093#1086#1076#1085#1086#1077' '#1088#1077#1096#1077#1085#1080#1077'   '
      Enabled = False
      Hint = 
        #1048#1085#1094#1080#1076#1077#1085#1090' '#1091#1089#1090#1088#1072#1085#1077#1085' '#1087#1086' '#1074#1088#1077#1084#1077#1085#1085#1086#1081' '#1089#1093#1077#1084#1077' ('#1089' '#1086#1073#1093#1086#1076#1085#1099#1084' '#1088#1077#1096#1077#1085#1080#1077#1084'), '#1088#1072#1073#1086 +
        #1090#1072' '#1089' '#1048#1085#1094#1080#1076#1077#1085#1090#1086#1084' '#1087#1088#1086#1076#1086#1083#1078#1072#1077#1090#1089#1103'.'#10#1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1048#1085#1094#1080#1076#1077#1085#1090' '#1074' '#1089#1090#1072#1090#1091#1089' '#1054#1041#1061#1054#1044
      ImageIndex = 37
      Visible = False
    end
    object aSetState_Escalation: TAction
      Caption = ' '#1069#1089#1082#1072#1083#1072#1094#1080#1103'   '
      Hint = 
        #1059#1089#1090#1088#1072#1085#1077#1085#1080#1077' '#1048#1085#1094#1080#1076#1077#1085#1090#1072'  '#1087#1088#1080#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086', '#1090'.'#1082'. '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1072' '#1087#1086#1084#1086#1097#1100' '#1052#1077#1085 +
        #1077#1076#1078#1077#1088#1072' '#1087#1088#1086#1094#1077#1089#1089#1072' ('#1048#1053#1062#1048#1044#1045#1053#1058#1053#1040#1071' '#1055#1056#1054#1041#1051#1045#1052#1040').'#10#1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1048#1085#1094#1080#1076#1077#1085#1090' '#1074' '#1089#1090#1072 +
        #1090#1091#1089' '#1069#1057#1050#1040#1051#1040#1062#1048#1071
      ImageIndex = 36
      OnExecute = aSetState_EscalationExecute
    end
    object aSetState_Resolved: TAction
      Caption = ' '#1059#1089#1090#1088#1072#1085#1077#1085' - '#1052#1077#1088#1099'  '
      Hint = 
        #1059#1089#1090#1088#1072#1085#1077#1085#1080#1077' '#1048#1085#1094#1080#1076#1077#1085#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1086'.'#10#1055#1077#1088#1077#1093#1086#1076' '#1082' '#1101#1090#1072#1087#1091' '#1072#1085#1072#1083#1080#1079#1072' '#1080' '#1088#1072#1079#1088#1072#1073 +
        #1086#1090#1082#1080' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1091#1102#1097#1080#1093' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1081' '#1087#1086' '#1087#1086#1074#1099#1096#1077#1085#1080#1102' '#1085#1072#1076#1077#1078#1085#1086#1089#1090#1080' '#1080' '#1080#1089#1082#1083#1102#1095 +
        #1077#1085#1080#1102' '#1087#1086#1074#1090#1086#1088#1077#1085#1080#1103' '#1072#1085#1072#1083#1086#1075#1080#1095#1085#1099#1093' '#1089#1083#1091#1095#1072#1077#1074'.'#10#1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1048#1085#1094#1080#1076#1077#1085#1090' '#1074' '#1089#1090#1072#1090#1091#1089 +
        ' '#1059#1057#1058#1056#1040#1053#1045#1053'/'#1052#1045#1056#1067
      ImageIndex = 34
      OnExecute = aSetState_ResolvedExecute
    end
    object aSetState_Close: TAction
      Caption = ' '#1047#1072#1082#1088#1099#1090#1100' '#1051#1056'   '
      Hint = 
        #1040#1085#1072#1083#1080#1079' '#1087#1088#1080#1095#1080#1085' '#1074#1086#1079#1085#1080#1082#1085#1086#1074#1077#1085#1080#1103' '#1048#1085#1094#1080#1076#1077#1085#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085'.'#10#1050#1086#1088#1088#1077#1082#1090#1080#1088#1091#1102#1097#1080#1077' '#1084 +
        #1077#1088#1086#1087#1088#1080#1103#1090#1080#1103' '#1088#1072#1079#1088#1072#1073#1086#1090#1072#1085#1099' ('#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1099').'#10#1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1048#1085#1094#1080#1076#1077#1085#1090' '#1074' '#1089#1090#1072#1090#1091 +
        #1089' '#1047#1040#1050#1056#1067#1058
      ImageIndex = 35
      OnExecute = aSetState_CloseExecute
    end
    object aAttach_Add_Univ: TAction
      Caption = ' '#1055#1088#1080#1083#1086#1078#1080#1090#1100' '#1092#1072#1081#1083'   '
      Hint = #1055#1088#1080#1083#1086#1078#1080#1090#1100' '#1092#1072#1081#1083' '#1082' '#1090#1077#1082#1091#1097#1077#1084#1091' '#1088#1072#1079#1076#1077#1083#1091' '#1051#1056
      ImageIndex = 29
      OnExecute = aAttach_AddExecute
    end
    object aStateHistory: TAction
      Caption = 'aStateHistory'
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1080#1089#1090#1086#1088#1080#1102' '#1085#1072#1093#1086#1078#1076#1077#1085#1080#1103' '#1074' '#1089#1090#1072#1090#1091#1089#1072#1093
      ImageIndex = 27
      OnExecute = aStateHistoryExecute
    end
    object aFomingDoc: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 22
      OnExecute = aFomingDocExecute
    end
  end
  object stlrpEditing: TcxStyleRepository
    Left = 860
    Top = 280
    PixelsPerInch = 96
    object stlBackground: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object stlGroup: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 6583436
    end
    object stlContent: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlHeader: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
    object stlBandHeader: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
    object stlContentProgress: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlSmallFont7: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlContent8: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlGreenFont: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 21248
    end
    object stlHeaderBlack: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object stlHotTrack: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object stlLegendSmall: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object stlLegendSmallBold: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stlLargeFont: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Arial'
      Font.Style = []
    end
    object stlAttention: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 221
    end
    object stlLegend: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object stlArial13: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
    end
    object stlCategory: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stlRowDisabled: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 8224125
    end
    object stlNavy: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clNavy
    end
    object stlDeviationOver: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object stlRedBoldFont: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object stlSelection: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSkyBlue
      TextColor = clNavy
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stlNotEditable9: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
    end
    object stlNavyBold11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stlBackGroundLightBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16708066
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlBackGroundLight: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stlshtVG: TcxVerticalGridStyleSheet
      Styles.Content = stlContent
      Styles.Category = stlCategory
      Styles.Header = stlHeader
      BuiltIn = True
    end
    object stlshtBTV: TcxGridBandedTableViewStyleSheet
      Styles.Content = stlContent
      Styles.Footer = stlGroup
      Styles.Group = stlGroup
      Styles.Header = stlHeader
      Styles.BandHeader = stlBandHeader
      BuiltIn = True
    end
    object stlshtTL: TcxTreeListStyleSheet
      Styles.Content = stlContent
      Styles.Inactive = stlSelection
      Styles.Selection = stlSelection
      Styles.HotTrack = stlHotTrack
      BuiltIn = True
    end
  end
  object al: TActionList
    Images = DMMain.iml
    Left = 792
    Top = 376
    object aFill_NSI_System: TAction
      Caption = 'aFill_NSI_System'
      ImageIndex = 13
    end
    object aFill_NSI_Unit: TAction
      Caption = 'aFill_NSI_Unit'
      ImageIndex = 13
    end
    object aFill_NSI_Fail: TAction
      Caption = 'aFill_NSI_Fail'
      ImageIndex = 13
    end
    object aLoad_NSI_SystemTree: TAction
      Caption = 'aLoad_NSI_SystemTree'
      ImageIndex = 13
      OnExecute = aLoad_NSI_SystemTreeExecute
    end
    object aLoad_NSI_AggType: TAction
      Caption = 'aLoad_NSI_AggType'
      ImageIndex = 13
    end
    object aAggType_SetFilter: TAction
      Caption = 'aAggType_SetFilter'
      ImageIndex = 0
    end
    object aLoad_NSI_ReasonTree: TAction
      Caption = 'aLoad_NSI_ReasonTree'
      ImageIndex = 13
      OnExecute = aLoad_NSI_ReasonTreeExecute
    end
    object aSelect_NSI_ReasonTree: TAction
      Caption = 'aSelect_NSI_ReasonTree'
      ImageIndex = 0
      OnExecute = aSelect_NSI_ReasonTreeExecute
    end
    object aFill_NSI_SolutionType: TAction
      Caption = 'aFill_NSI_SolutionType'
      ImageIndex = 13
      OnExecute = aFill_NSI_SolutionTypeExecute
    end
    object aFill_NSI_Owner: TAction
      Caption = 'aFill_NSI_Owner'
      ImageIndex = 13
      OnExecute = aFill_NSI_OwnerExecute
    end
    object aFill_Class_System_Type: TAction
      Caption = 'aFill_Class_System_Type'
      ImageIndex = 13
      OnExecute = aFill_Class_System_TypeExecute
    end
    object aFill_Class_System: TAction
      Caption = 'aFill_Class_System'
      ImageIndex = 13
      OnExecute = aFill_Class_SystemExecute
    end
    object aFill_Class_Unit: TAction
      Caption = 'aFill_Class_Unit'
      ImageIndex = 13
      OnExecute = aFill_Class_UnitExecute
    end
    object aFill_Class_Detail: TAction
      Caption = 'aFill_Class_Detail'
      ImageIndex = 13
      OnExecute = aFill_Class_DetailExecute
    end
    object aSelect_NSI_Responsible: TAction
      Caption = 'aSelect_NSI_Responsible'
      ImageIndex = 0
      OnExecute = aSelect_NSI_ResponsibleExecute
    end
    object aLoadDoc: TAction
      Caption = 'aLoadDoc'
      OnExecute = aLoadDocExecute
    end
  end
  object cds_NSI_SystemTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 778
    Top = 640
  end
  object ds_NSI_SystemTree: TDataSource
    DataSet = cds_NSI_SystemTree
    Left = 778
    Top = 688
  end
  object dsEscalationAction: TDataSource
    DataSet = cdsEscalationAction
    Left = 392
    Top = 528
  end
  object cdsEscalationAction: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 480
  end
  object cdsRepairChrono: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 482
  end
  object dsRepairChrono: TDataSource
    DataSet = cdsRepairChrono
    Left = 512
    Top = 535
  end
  object cdsRepairCompens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 482
  end
  object dsRepairCompens: TDataSource
    DataSet = cdsRepairCompens
    Left = 288
    Top = 535
  end
  object alNRE: TActionList
    Images = DMMain.imlSmall
    Left = 827
    Top = 374
    object aHistoryNREAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
      OnExecute = aHistoryNREAddExecute
    end
    object aChronologyAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
      OnExecute = aChronologyAddExecute
    end
    object aExpectRefusalAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 5
      OnExecute = aExpectRefusalAddExecute
    end
    object aExpectRefusalEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 6
      OnExecute = aExpectRefusalEditExecute
    end
    object aExpectRefusalDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
      OnExecute = aExpectRefusalDeleteExecute
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 338
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 360
    Top = 338
  end
end
