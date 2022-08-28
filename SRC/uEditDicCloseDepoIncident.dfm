object frmEditDicCloseDepoIncident: TfrmEditDicCloseDepoIncident
  Left = 0
  Top = 0
  Caption = 'frmEditDicCloseDepoIncident'
  ClientHeight = 144
  ClientWidth = 583
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 105
    Align = alClient
    TabOrder = 0
    object vg: TcxVerticalGrid
      Left = 1
      Top = 1
      Width = 581
      Height = 103
      BorderStyle = cxcbsNone
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      OptionsView.RowHeaderWidth = 175
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.GoToNextCellOnTab = True
      ParentFont = False
      Styles.Content = DMMain.cxStyle140
      Styles.StyleSheet = DMMain.stlshtVG
      Styles.Category = DMMain.cxStyle144
      Styles.Header = DMMain.cxStyle141
      TabOrder = 0
      Version = 1
      object rwType: TcxEditorRow
        Properties.Caption = #1058#1080#1087
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.EditProperties.Items = <
          item
            Description = #1055#1088#1080#1095#1080#1085#1099' '#1079#1072#1093#1086#1076#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1076#1077#1087#1086
            ImageIndex = 0
            Value = '90'
          end
          item
            Description = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1051#1056
            Value = '144'
          end
          item
            Description = #1056#1077#1078#1080#1084' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103' '#1080#1085#1094#1080#1076#1077#1085#1090#1072
            Value = '173'
          end>
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = ''
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object rowName: TcxEditorRow
        Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Properties.ImageIndex = 41
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object rwDescr: TcxEditorRow
        Properties.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgCategoryRow1: TcxCategoryRow
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
    end
  end
  object pnlSaveCancel: TPanel
    Left = 0
    Top = 105
    Width = 583
    Height = 39
    Align = alBottom
    TabOrder = 1
    object btnSave: TcxButton
      Left = 262
      Top = 1
      Width = 160
      Height = 37
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = DMMain.iml
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = aSaveExecute
    end
    object btnCancel: TcxButton
      Left = 422
      Top = 1
      Width = 160
      Height = 37
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = DMMain.iml
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = aCloseExecute
    end
  end
  object al: TActionList
    Left = 464
    Top = 56
    object aSave: TAction
      Caption = 'aSave'
      OnExecute = aSaveExecute
    end
    object aClose: TAction
      Caption = 'aClose'
      OnExecute = aCloseExecute
    end
  end
end
