object frmEditDict_Malfunction: TfrmEditDict_Malfunction
  Left = 0
  Top = 0
  Caption = 'frmEditDict_Malfunction'
  ClientHeight = 139
  ClientWidth = 580
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
    Width = 580
    Height = 100
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 109
    object vg: TcxVerticalGrid
      Left = 1
      Top = 1
      Width = 578
      Height = 98
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
      OptionsView.RowHeaderWidth = 246
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.GoToNextCellOnTab = True
      ParentFont = False
      Styles.Content = DMMain.cxStyle140
      Styles.Category = DMMain.cxStyle144
      Styles.Header = DMMain.cxStyle141
      TabOrder = 0
      ExplicitHeight = 107
      Version = 1
      object rwDescr: TcxEditorRow
        Height = 50
        Properties.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxMemoProperties'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object rwTypeWork: TcxEditorRow
        Properties.Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.EditProperties.Items = <
          item
            Description = #1056#1072#1073#1086#1090#1072
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
            Value = 1
          end
          item
            Description = #1062#1077#1093
            Value = 2
          end>
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = ''
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
    end
  end
  object pnlSaveCancel: TPanel
    Left = 0
    Top = 100
    Width = 580
    Height = 39
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 120
    object btnSave: TcxButton
      Left = 259
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
      ExplicitLeft = 249
      ExplicitTop = 6
      ExplicitHeight = 36
    end
    object btnCancel: TcxButton
      Left = 419
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
      ExplicitLeft = 415
      ExplicitTop = 6
      ExplicitHeight = 36
    end
  end
  object ActionList1: TActionList
    Left = 104
    Top = 112
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
