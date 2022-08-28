object frmEdit_DictStandarts: TfrmEdit_DictStandarts
  Left = 0
  Top = 0
  Caption = 'frmEdit_DictStandarts'
  ClientHeight = 212
  ClientWidth = 678
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
    Width = 678
    Height = 172
    Align = alClient
    TabOrder = 0
    object vg: TcxVerticalGrid
      Left = 1
      Top = 1
      Width = 676
      Height = 170
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
      OptionsView.RowHeaderWidth = 232
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.GoToNextCellOnTab = True
      ParentFont = False
      Styles.Content = DMMain.stlContent9
      Styles.StyleSheet = DMMain.stlshtVG
      Styles.Category = DMMain.stlCategory
      Styles.Header = DMMain.cxStyle141
      TabOrder = 0
      Version = 1
      object rwKM: TcxEditorRow
        Properties.Caption = #1056#1072#1089'c'#1090#1086#1103#1085#1080#1077' ('#1082#1084')'
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditProperties.MaskKind = emkRegExpr
        Properties.EditProperties.EditMask = '\d+'
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = 0
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object rwHH: TcxEditorRow
        Properties.Caption = #1042#1088#1077#1084#1103' ('#1095#1072#1089')'
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditProperties.MaskKind = emkRegExpr
        Properties.EditProperties.EditMask = '\d+'
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = 0
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object rwTypeRepairs: TcxEditorRow
        Properties.Caption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
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
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object rwDepo: TcxEditorRow
        Properties.Caption = #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1077' '#1076#1077#1087#1086
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.EditProperties.Items = <>
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object rwSer_Name: TcxEditorRow
        Properties.Caption = #1057#1077#1088#1080#1103
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.EditProperties.Items = <>
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object rwExpDepo: TcxEditorRow
        Properties.Caption = #1069#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086#1077' '#1076#1077#1087#1086
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.EditProperties.Items = <>
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object rwLim: TcxEditorRow
        Properties.Caption = #1044#1086#1087#1091#1089#1082' +/- '#1074' %'
        Properties.ImageIndex = 41
        Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditProperties.MaskKind = emkRegExprEx
        Properties.EditProperties.EditMask = '-\d+ | \d+'
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = 0
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object rwNote: TcxEditorRow
        Properties.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
    end
  end
  object pnlSaveCancel: TPanel
    Left = 0
    Top = 172
    Width = 678
    Height = 40
    Align = alBottom
    TabOrder = 1
    object btnSave: TcxButton
      Left = 357
      Top = 1
      Width = 160
      Height = 38
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
      ExplicitTop = 5
    end
    object btnCancel: TcxButton
      Left = 517
      Top = 1
      Width = 160
      Height = 38
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
  object ActionList: TActionList
    Left = 424
    Top = 61
    object aSave: TAction
      Caption = 'aSave'
      OnExecute = aSaveExecute
    end
    object aClose: TAction
      Caption = 'aClose'
      OnExecute = aCloseExecute
    end
    object aLoadTypeRepairs: TAction
      Caption = 'aLoadTypeRepairs'
      OnExecute = aLoadTypeRepairsExecute
    end
    object aLoadDepo: TAction
      Caption = 'aLoadDepo'
      OnExecute = aLoadDepoExecute
    end
    object aLoad_Exp_Depo: TAction
      Caption = 'aLoad_Exp_Depo'
      OnExecute = aLoad_Exp_DepoExecute
    end
    object aLoad_SerName: TAction
      Caption = 'aLoad_SerName'
      OnExecute = aLoad_SerNameExecute
    end
  end
  object cdsEdit_Dict_Stand: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 428
    Top = 8
  end
  object dsEdit_Dict_Stand: TDataSource
    DataSet = cdsEdit_Dict_Stand
    Left = 328
    Top = 8
  end
  object cdsDepo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 68
    Top = 160
  end
  object dsDepo: TDataSource
    DataSet = cdsDepo
    Left = 16
    Top = 160
  end
  object cdsSerNam: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 196
    Top = 160
  end
  object dsSerNam: TDataSource
    DataSet = cdsSerNam
    Left = 136
    Top = 160
  end
  object dsExpDepo: TDataSource
    DataSet = cdsExpDepo
    Left = 504
    Top = 8
  end
  object cdsExpDepo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 572
    Top = 8
  end
end
