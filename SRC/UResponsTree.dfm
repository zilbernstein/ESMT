object frmResponsTree: TfrmResponsTree
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1089#1083#1091#1078#1073#1099
  ClientHeight = 526
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel6: TPanel
    Left = 0
    Top = 487
    Width = 556
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cxButton9: TcxButton
      Left = 396
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
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 456
    end
    object cxButton10: TcxButton
      Left = 236
      Top = 0
      Width = 160
      Height = 39
      Align = alRight
      Action = aSelect
      Colors.Hot = 8966911
      Colors.Pressed = 5619711
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 296
    end
  end
  object tlFirmTree: TcxDBTreeList
    Left = 0
    Top = 40
    Width = 556
    Height = 447
    Align = alClient
    Bands = <
      item
      end>
    DataController.ParentField = 'parent_id'
    DataController.KeyField = 'id'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.CellHints = True
    OptionsBehavior.IncSearch = True
    OptionsBehavior.IncSearchItem = clmnName
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsView.ColumnAutoWidth = True
    OptionsView.ExtPaintStyle = True
    OptionsView.Headers = False
    RootValue = -1
    TabOrder = 1
    OnDblClick = aSelectExecute
    ExplicitHeight = 456
    object clmnName: TcxDBTreeListColumn
      DataBinding.FieldName = 'sl_name'
      Width = 337
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmnCategory: TcxDBTreeListColumn
      Visible = False
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object clmnCategoryAdd: TcxDBTreeListColumn
      Visible = False
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 556
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object cbRoad: TcxLookupComboBox
      Left = 11
      Top = 10
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 10
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'kod_road'
      Properties.ListColumns = <
        item
          FieldName = 'road_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = aRefreshExecute
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
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Caramel'
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      Width = 545
    end
  end
  object ActionList1: TActionList
    Images = DMMain.imlSmall
    Left = 48
    Top = 544
    object aSelect: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ImageIndex = 8
      OnExecute = aSelectExecute
    end
    object aRefresh: TAction
      Caption = 'aRefresh'
      ImageIndex = 13
      OnExecute = aRefreshExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 9
      OnExecute = aCancelExecute
    end
  end
end
