object frmListReports: TfrmListReports
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 637
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 16
  object stsCommon: TdxStatusBar
    Left = 0
    Top = 613
    Width = 1043
    Height = 24
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clNavy
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 500
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = 615681
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = #1055#1088#1086#1094#1077#1089#1089' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        Width = 120
      end>
    PaintStyle = stpsFlat
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    object stsCommonContainer1: TdxStatusBarContainerControl
      Left = 709
      Top = 3
      Width = 318
      Height = 20
      object prgsMain: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        ParentFont = False
        Properties.BarStyle = cxbsGradient
        Properties.EndColor = 16766935
        Properties.Max = 5.000000000000000000
        Properties.OverloadBeginColor = clWhite
        Properties.OverloadEndColor = clWhite
        Properties.OverloadValue = 5.000000000000000000
        Properties.PeakColor = clWhite
        Properties.PeakValue = 5.000000000000000000
        Properties.SolidTextColor = True
        Style.BorderColor = clBtnFace
        Style.BorderStyle = ebsOffice11
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.TextColor = clWindowText
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 0
        Width = 318
      end
    end
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 57
    Width = 1043
    Height = 556
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tsReportPreview
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    Properties.TabSlants.Positions = [spRight]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabSlants.Positions = [spRight]
    ClientRectBottom = 556
    ClientRectRight = 1043
    ClientRectTop = 23
    object tsReportPreview: TcxTabSheet
      Caption = 'tsReportPreview'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1043
        Height = 533
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object frxPreviewDoc: TfrxPreview
          Left = 1
          Top = 1
          Width = 1041
          Height = 531
          Align = alClient
          OutlineVisible = True
          OutlineWidth = 121
          ThumbnailVisible = False
          OnClick = frxPreviewDocClick
          OnPageChanged = frxPreviewDocPageChanged
          UseReportHints = True
        end
      end
    end
    object tsReportMain: TcxTabSheet
      Caption = 'tsReportMain'
      ImageIndex = 0
      object pnlScale: TPanel
        Left = 176
        Top = 192
        Width = 65
        Height = 41
        BevelOuter = bvNone
        TabOrder = 0
        TabStop = True
        object cxLabel2: TcxLabel
          Left = 0
          Top = 0
          Align = alTop
          Caption = #1052#1072#1089#1096#1090#1072#1073
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          AnchorX = 33
          AnchorY = 9
        end
        object cbScale: TcxImageComboBox
          Left = 3
          Top = 16
          EditValue = '1'
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = '30%'
              ImageIndex = 0
              Value = 0.300000000000000000
            end
            item
              Description = '40%'
              Value = 0.400000000000000000
            end
            item
              Description = '50%'
              Value = 0.500000000000000000
            end
            item
              Description = '60%'
              Value = 0.600000000000000000
            end
            item
              Description = '70%'
              Value = 0.700000000000000000
            end
            item
              Description = '80%'
              Value = 0.800000000000000000
            end
            item
              Description = '90%'
              Value = 0.900000000000000000
            end
            item
              Description = '100%'
              Value = 1.000000000000000000
            end
            item
              Description = '110%'
              Value = 1.100000000000000000
            end
            item
              Description = '120%'
              Value = 1.200000000000000000
            end
            item
              Description = '130%'
              Value = 1.300000000000000000
            end
            item
              Description = '140%'
              Value = 1.400000000000000000
            end
            item
              Description = '150%'
              Value = 1.500000000000000000
            end
            item
              Description = '160%'
              Value = 1.600000000000000000
            end
            item
              Description = '170%'
              Value = 1.700000000000000000
            end
            item
              Description = '180%'
              Value = 1.800000000000000000
            end
            item
              Description = '190%'
              Value = 1.900000000000000000
            end
            item
              Description = '200%'
              Value = 2.000000000000000000
            end>
          Properties.OnChange = aScaleExecute
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
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
          Width = 58
        end
      end
      object pnlNumPage: TPanel
        Left = 114
        Top = 192
        Width = 56
        Height = 40
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        object cxLabel1: TcxLabel
          Left = 0
          Top = 0
          Align = alTop
          Caption = #8470' '#1083#1080#1089#1090#1072
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          AnchorX = 28
          AnchorY = 9
        end
        object spnNumPage: TcxSpinEdit
          Left = 4
          Top = 16
          Properties.ImmediatePost = True
          Properties.MaxValue = 999.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Caramel'
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
          Value = 1
          OnKeyPress = spnNumPageKeyPress
          Width = 49
        end
      end
    end
  end
  object FrxRprtDoc1: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42278.666851724500000000
    ReportOptions.LastChange = 42278.666851724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 376
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 257.008040000000000000
          Width = 226.771800000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1050#1058'  '#1054#1057#1052#1054#1058#1056#1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 207.874150000000000000
          Top = 56.692950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 94.488250000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1051#1086#1082#1086#1084#1086#1090#1080#1074': '#1057#1077#1088#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 113.385900000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1060#1048#1054' '#1087#1088#1086#1074#1086#1076#1080#1074#1096#1077#1075#1086' '#1086#1089#1084#1086#1090#1088' - ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Top = 132.283550000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080' - ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 151.181200000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1086#1077#1079#1076' '#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 170.078850000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1080#1103' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 188.976500000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1087#1083#1072#1085#1086#1074#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1074#1080#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Top = 226.771800000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1074' '#1057#1051#1044' - ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 226.771800000000000000
          Top = 207.874150000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1088#1080#1084#1077#1088': '#1058#1054'-2, '#1058#1056'-1, '#1080' '#1090'.'#1076'.)')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 245.669450000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1080' '#1086#1089#1084#1086#1090#1088#1077' '#1085#1072' ('#1058#1054'-2, '#1058#1056'-1, '#1058#1056'-2, '#1080' '#1090'.'#1076'.) '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1086':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 510.236550000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1040#1075#1088#1077#1075#1072#1090', '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' ('#1058#1069#1044', '#1052#1050', '#1052#1042', '#1080' '#1076#1088#1091#1075#1080#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Top = 532.913730000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              #1042#1099#1087#1080#1089#1082#1072' '#1080#1079' '#1058#1059'-152: ('#1087#1088#1077#1076#1099#1076#1091#1097#1080#1077' '#1079#1072#1084#1077#1095#1072#1085#1080#1103' '#1076#1086' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1080#1103' '#1085#1077#1080#1089#1087#1088#1072#1074 +
              #1085#1086#1089#1090#1080', '#1091#1095#1072#1089#1090#1086#1082' '#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103') :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 646.299630000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1055#1088#1077#1076#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1072#1103' ('#1080#1083#1080' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1072#1103') '#1087#1088#1080#1095#1080#1085#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 755.906000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 782.362710000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1060#1048#1054'/ '#1044#1086#1083#1078#1085#1086#1089#1090#1100':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 555.590910000000000000
          Top = 801.260360000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1088#1080#1084#1077#1088': '#1058#1054'-2)')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 234.330860000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 109.606370000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pSer]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 215.433210000000000000
          Top = 94.488250000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 238.110390000000000000
          Top = 94.488250000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pNum]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 306.141930000000000000
          Top = 94.488250000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 396.850650000000000000
          Top = 94.488250000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pDepot]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 64.252010000000000000
          Top = 151.181200000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pNumTrain]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 241.889920000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ', '#1042#1077#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 434.645950000000000000
          Top = 151.181200000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ', '#1050#1086#1083'.'#1086#1089#1077#1081)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 279.685220000000000000
          Top = 151.181200000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pWeight]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 487.559370000000000000
          Top = 151.181200000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pAmountAxis]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 294.803340000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '        [Date]       ')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 411.968770000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 487.559370000000000000
          Top = 56.692950000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1075#1086#1076#1072)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 204.094620000000000000
          Top = 170.078850000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 283.464750000000000000
          Top = 170.078850000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '                                         ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 427.086890000000000000
          Top = 170.078850000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 529.134200000000000000
          Top = 170.078850000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1075' '#1042#1088#1077#1084#1103':')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 582.047620000000000000
          Top = 170.078850000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 623.622450000000000000
          Top = 170.078850000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1095': ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 638.740570000000000000
          Top = 170.078850000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Left = 702.992580000000000000
          Top = 170.078850000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1084)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Left = 411.968770000000000000
          Top = 170.078850000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #187)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Left = 268.346630000000000000
          Top = 170.078850000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #171)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo48: TfrxMemoView
          Left = 226.771800000000000000
          Top = 188.976500000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 332.598640000000000000
          Top = 188.976500000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ', '#1076#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 691.653990000000000000
          Top = 188.976500000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1075#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 468.661720000000000000
          Top = 188.976500000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '                                         ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 597.165740000000000000
          Top = 188.976500000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #187)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 453.543600000000000000
          Top = 188.976500000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #171)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 370.393940000000000000
          Top = 188.976500000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 612.283860000000000000
          Top = 188.976500000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 170.078850000000000000
          Top = 113.385900000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 102.047310000000000000
          Top = 132.283550000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 49.133890000000000000
          Top = 226.771800000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Top = 264.567100000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Top = 291.023810000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Top = 317.480520000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Top = 343.937230000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Top = 370.393940000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Top = 396.850650000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Top = 423.307360000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Top = 449.764070000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Top = 476.220780000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 283.464750000000000000
          Top = 510.236550000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 404.409710000000000000
          Top = 510.236550000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' - ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 430.866420000000000000
          Top = 510.236550000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 551.811380000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Top = 570.709030000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Top = 593.386210000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Top = 616.063390000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 665.197280000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Top = 684.094930000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Top = 706.772110000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 109.606370000000000000
          Top = 782.362710000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 453.543600000000000000
          Top = 782.362710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072'/'#1087#1088#1086#1073#1077#1075' '#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 548.031850000000000000
          Top = 782.362710000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Top = 820.158010000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1060#1048#1054'/ '#1044#1086#1083#1078#1085#1086#1089#1090#1100':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 555.590910000000000000
          Top = 839.055660000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1088#1080#1084#1077#1088': '#1058#1056'-1)')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 109.606370000000000000
          Top = 820.158010000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 453.543600000000000000
          Top = 820.158010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072'/'#1087#1088#1086#1073#1077#1075' '#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 548.031850000000000000
          Top = 820.158010000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 857.953310000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1060#1048#1054'/ '#1044#1086#1083#1078#1085#1086#1089#1090#1100':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 555.590910000000000000
          Top = 876.850960000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1088#1080#1084#1077#1088': '#1058#1056'-2)')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 109.606370000000000000
          Top = 857.953310000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 453.543600000000000000
          Top = 857.953310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072'/'#1087#1088#1086#1073#1077#1075' '#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 548.031850000000000000
          Top = 857.953310000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 396.850650000000000000
          Top = 56.692950000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #187)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 279.685220000000000000
          Top = 56.692950000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #171)
          ParentFont = False
        end
      end
    end
  end
  object FrxRprtDoc3: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42279.378697430600000000
    ReportOptions.LastChange = 42279.378697430600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 472
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 272.126160000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1077'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Top = 37.795300000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086' '#1076#1077#1081#1089#1090#1074#1080#1103#1084' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1081' '#1073#1088#1080#1075#1072#1076#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 162.519790000000000000
          Top = 68.031540000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1063#1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 215.433210000000000000
          Top = 86.929190000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1044#1086#1083#1078#1085#1086#1089#1090#1100', '#1060#1048#1054')')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 442.205010000000000000
          Top = 86.929190000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1044#1086#1083#1078#1085#1086#1089#1090#1100', '#1060#1048#1054')')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 18.897650000000000000
          Top = 151.181200000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1042' '#1089#1091#1090#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Top = 170.078850000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 18.897650000000000000
          Top = 188.976500000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1083#1086#1082#1086#1084#1086#1090#1080#1074#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Top = 737.008350000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 377.953000000000000000
          Top = 774.803650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 377.953000000000000000
          Top = 737.008350000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1060#1048#1054' / '#1044#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 75.590600000000000000
          Top = 737.008350000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 245.669450000000000000
          Top = 737.008350000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1075'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 200.315090000000000000
          Top = 68.031540000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 215.433210000000000000
          Top = 68.031540000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 381.732530000000000000
          Top = 68.031540000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            #1058#1063#1052#1055)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 442.205010000000000000
          Top = 68.031540000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 427.086890000000000000
          Top = 68.031540000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 68.031540000000000000
          Top = 151.181200000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 396.850650000000000000
          Top = 151.181200000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1075'. '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1072#1103' '#1073#1088#1080#1075#1072#1076#1072' '#1058#1063#1069'- '#1074' '#1089#1086#1089#1090#1072#1074#1077' '#1084#1072#1096#1080#1085#1080#1089#1090#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 257.008040000000000000
          Top = 170.078850000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1086#1084#1086#1097#1085#1080#1082#1072'    '#1084#1072#1096#1080#1085#1080#1089#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 600.945270000000000000
          Top = 170.078850000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1083#1077#1076#1086#1074#1072#1083#1080'    '#1085#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 241.889920000000000000
          Top = 170.078850000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ',')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 427.086890000000000000
          Top = 170.078850000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 181.417440000000000000
          Top = 188.976500000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 245.669450000000000000
          Top = 188.976500000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1086'  '#1091#1095#1072#1089#1090#1082#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 18.897650000000000000
          Top = 245.669450000000000000
          Width = 680.315400000000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 18.897650000000000000
          Top = 274.015748030000000000
          Width = 680.315400000000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 18.897650000000000000
          Top = 302.362400000000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 18.897650000000000000
          Top = 330.708661420000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 18.897650000000000000
          Top = 359.055118110000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 18.897650000000000000
          Top = 387.401574800000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 18.897650000000000000
          Top = 415.748300000000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 18.897650000000000000
          Top = 444.094598030000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 18.897650000000000000
          Top = 472.441250000000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 18.897650000000000000
          Top = 500.787401570000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 18.897650000000000000
          Top = 529.133858270000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 18.897650000000000000
          Top = 555.590551180000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 18.897650000000000000
          Top = 583.937007870000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 18.897650000000000000
          Top = 612.283464570000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 18.897650000000000000
          Top = 640.629921260000000000
          Width = 680.314960630000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 491.338900000000000000
          Top = 737.008350000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 491.338900000000000000
          Top = 774.803650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 608.504330000000000000
          Top = 68.031540000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 374.173470000000000000
          Top = 68.031540000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ',')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 691.653990000000000000
          Top = 188.976500000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 211.653680000000000000
          Top = 68.031540000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[pbrig_name]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 18.897650000000000000
          Top = 170.078850000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[pbrig_name]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 94.488250000000000000
          Top = 188.976500000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[pser_name]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 200.315090000000000000
          Top = 188.976500000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[pnom_loc]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 313.700990000000000000
          Top = 188.976500000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[pfirm_name]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FrxRprtDoc4: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42279.427012384300000000
    ReportOptions.LastChange = 42279.427012384300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 520
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 699.213050000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 869.291900000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470'11 '#1082' '#1056#1077#1075#1083#1072#1084#1077#1085#1090#1091'  ('#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#8470' 4)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 302.362400000000000000
          Top = 37.795300000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1040#1082#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1088#1072#1073#1086#1090' '#1080' '#1091#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075' '#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 302.362400000000000000
          Top = 56.692950000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088#1074#1080#1089#1085#1099#1081' '#1091#1095#1072#1089#1090#1086#1082)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 94.488250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1072#1082#1090#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 192.756030000000000000
          Top = 94.488250000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1077#1088#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.488250000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 442.205010000000000000
          Top = 94.488250000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1088#1080#1087#1080#1089#1082#1080' '#1069#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1075#1086' '#1076#1077#1087#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 56.692950000000000000
          Top = 132.283550000000000000
          Width = 332.598437400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 389.291590000000000000
          Top = 132.283550000000000000
          Width = 313.700787400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1084#1077#1085#1072' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 702.992580000000000000
          Top = 132.283550000000000000
          Width = 317.480336930000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1074#1086#1076#1089#1082#1086#1081' '#1085#1086#1084#1077#1088' '#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 37.795300000000000000
          Top = 113.385900000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            '1. '#1056#1072#1079#1076#1077#1083'. '#1055#1088#1086#1074#1077#1076#1077#1085#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 37.795300000000000000
          Top = 185.196970000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '2. '#1056#1072#1079#1076#1077#1083'. '#1053#1077#1087#1088#1077#1076#1074#1080#1076#1077#1085#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 204.094620000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 56.692950000000000000
          Top = 204.094620000000000000
          Width = 332.598437400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 389.291590000000000000
          Top = 204.094620000000000000
          Width = 313.700787400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1084#1077#1085#1072' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 702.992580000000000000
          Top = 204.094620000000000000
          Width = 317.480336930000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1074#1086#1076#1089#1082#1086#1081' '#1085#1086#1084#1077#1088' '#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 37.795300000000000000
          Top = 404.409710000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '3. '#1056#1072#1079#1076#1077#1083'. '#1042#1088#1077#1084#1103' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1074' '#1088#1077#1084#1086#1085#1090' '#1080' '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1088#1077#1084#1086#1085#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 423.307360000000000000
          Width = 151.181200000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1077#1088#1077#1074#1086#1076#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' "'#1086#1078#1080#1076#1072#1085#1080#1077' '#1088#1077#1084#1086#1085#1090#1072'"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 151.181200000000000000
          Top = 423.307360000000000000
          Width = 257.007837400000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1085#1072' '#1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1089#1086#1075 +
              #1083#1072#1089#1085#1086' '#1054#1087#1077#1088#1072#1090#1080#1074#1085#1086#1075#1086' '#1075#1088#1072#1092#1080#1082#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 408.189240000000000000
          Top = 423.307360000000000000
          Width = 136.062877400000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1074' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 544.252320000000000000
          Top = 423.307360000000000000
          Width = 200.315009450000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1088#1077#1084#1086#1085#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 744.567410000000000000
          Top = 423.307360000000000000
          Width = 105.826759450000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103' '#1087#1088#1086#1089#1090#1086#1103' '#1085#1072' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1080' '#1074#1089#1077#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 850.394250000000000000
          Top = 423.307360000000000000
          Width = 170.078769450000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042' '#1090'.'#1095'. '#1074#1088#1077#1084#1103' '#1087#1088#1086#1089#1090#1086#1103' '#1085#1072' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1080' '#1085#1077#1087#1088#1077#1076#1074#1080#1076#1077#1085#1085#1086#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 75.590600000000000000
          Top = 548.031850000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1082#1072#1079#1095#1080#1082':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 52.913420000000000000
          Top = 604.724800000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 56.692950000000000000
          Top = 151.181200000000000000
          Width = 332.598437400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 389.291590000000000000
          Top = 151.181200000000000000
          Width = 313.700787400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 702.992580000000000000
          Top = 151.181200000000000000
          Width = 317.480336930000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 222.992270000000000000
          Width = 56.692950000000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 56.692950000000000000
          Top = 222.992270000000000000
          Width = 332.598437400000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 389.291590000000000000
          Top = 222.992270000000000000
          Width = 313.700787400000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 702.992580000000000000
          Top = 222.992270000000000000
          Width = 317.480336930000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Top = 291.023810000000000000
          Width = 56.692950000000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 56.692950000000000000
          Top = 291.023810000000000000
          Width = 332.598437400000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 389.291590000000000000
          Top = 291.023810000000000000
          Width = 313.700787400000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 702.992580000000000000
          Top = 291.023810000000000000
          Width = 317.480336930000000000
          Height = 68.031496060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Top = 359.055350000000000000
          Width = 56.692950000000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 56.692950000000000000
          Top = 359.055350000000000000
          Width = 332.598437400000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 389.291590000000000000
          Top = 359.055350000000000000
          Width = 313.700787400000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 702.992580000000000000
          Top = 359.055350000000000000
          Width = 317.480336930000000000
          Height = 28.346456690000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Top = 498.897960000000000000
          Width = 151.181200000000000000
          Height = 24.566929130000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 151.181200000000000000
          Top = 498.897960000000000000
          Width = 257.007837400000000000
          Height = 24.566929130000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 408.189240000000000000
          Top = 498.897960000000000000
          Width = 136.062877400000000000
          Height = 24.566929130000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 544.252320000000000000
          Top = 498.897960000000000000
          Width = 200.315009450000000000
          Height = 24.566929130000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 744.567410000000000000
          Top = 498.897960000000000000
          Width = 105.826759450000000000
          Height = 24.566929130000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 850.394250000000000000
          Top = 498.897960000000000000
          Width = 170.078769450000000000
          Height = 24.566929130000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 120.944960000000000000
          Top = 94.488250000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 291.023810000000000000
          Top = 94.488250000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[pser_name]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 396.850650000000000000
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[pnom_loc]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 136.063080000000000000
          Top = 623.622450000000000000
          Width = 207.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1076#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 343.937230000000000000
          Top = 623.622450000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1086#1076#1087#1080#1089#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 495.118430000000000000
          Top = 623.622450000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 793.701300000000000000
          Top = 623.622450000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 646.299630000000000000
          Top = 623.622450000000000000
          Width = 147.401572360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 136.063080000000000000
          Top = 566.929500000000000000
          Width = 207.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1076#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 343.937230000000000000
          Top = 566.929500000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1086#1076#1087#1080#1089#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 495.118430000000000000
          Top = 566.929500000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 793.701300000000000000
          Top = 566.929500000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 646.299630000000000000
          Top = 566.929500000000000000
          Width = 147.401572360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 710.551640000000000000
          Top = 94.488250000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[pplace_loc]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FrxRprtDoc2: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42279.493689537000000000
    ReportOptions.LastChange = 42279.493689537000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 424
    Datasets = <>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'p1'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1050#1058' '#8470' ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 207.874150000000000000
          Top = 37.795300000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1087#1077#1088#1077#1076#1072#1095#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1089#1077#1088#1074#1080#1089#1085#1086#1081' '#1082#1086#1084#1087#1072#1085#1080#1080)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 68.031540000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1053#1072#1089#1090#1086#1103#1097#1080#1081' '#1072#1082#1090' '#1089#1086#1089#1090#1072#1074#1083#1077#1085' '#1086' '#1090#1086#1084', '#1095#1090#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 86.929190000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 113.385900000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1074#1086#1076#1089#1082#1086#1081' '#1085#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 185.196970000000000000
          Top = 86.929190000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1085#1076#1077#1082#1089' '#1089#1077#1082#1094#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 253.228510000000000000
          Top = 86.929190000000000000
          Width = 264.567100000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1087#1086' ('#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 517.795610000000000000
          Top = 86.929190000000000000
          Width = 162.519790000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 18.897650000000000000
          Top = 154.960730000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1077#1088#1077#1076#1072#1077#1090#1089#1103' '#1088#1077#1084#1086#1085#1090#1085#1086#1084#1091' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1102' ('#1089#1077#1088#1074#1080#1089#1085#1086#1081' '#1082#1086#1084#1087#1072#1085#1080#1080')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 517.795610000000000000
          Top = 120.944960000000000000
          Width = 162.519790000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 18.897650000000000000
          Top = 173.858380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1076#1083#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 113.385900000000000000
          Top = 173.858380000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 264.567100000000000000
          Top = 192.756030000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1074#1080#1076' '#1058#1054', '#1088#1077#1084#1086#1085#1090#1072', '#1084#1086#1076#1077#1088#1085#1080#1079#1072#1094#1080#1080', '#1052#1051#1055' '#1080#1089#1087#1099#1090#1072#1085#1080#1081)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 18.897650000000000000
          Top = 207.874150000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            #1074' '#1093#1086#1083#1086#1076#1085#1086#1084'/'#1075#1086#1088#1103#1095#1077#1084' '#1089#1086#1089#1090#1086#1103#1085#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 18.897650000000000000
          Top = 241.889920000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1055#1088#1080' '#1089#1076#1072#1095#1077' '#1080' '#1087#1088#1080#1077#1084#1082#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086' '#1089#1083#1077#1076#1091#1102#1097#1077#1077':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 37.795300000000000000
          Top = 226.771800000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1085#1091#1078#1085#1086' '#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 18.897650000000000000
          Top = 260.787570000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1089#1095#1077#1090#1095#1080#1082#1086#1074' '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1080' / '#1085#1072#1083#1080#1095#1080#1103' '#1076#1080#1079#1077#1083#1100#1085#1086#1075#1086' '#1090#1086#1087#1083#1080#1074#1072 +
              ' '#1074' '#1073#1072#1082#1072#1093)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 37.795300000000000000
          Top = 279.685220000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 158.740260000000000000
          Top = 279.685220000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1074#1086#1076#1089#1082#1086#1081' '#1085#1086#1084#1077#1088' / '#1048#1085#1076#1077#1082#1089' '#1089#1077#1082#1094#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 158.740111100000000000
          Top = 298.582870000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1082#1094#1080#1103' '#1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 289.133865590000000000
          Top = 298.582870000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1082#1094#1080#1103' '#1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 419.527830000000000000
          Top = 298.582870000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1082#1094#1080#1103' '#1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 549.921264720000000000
          Top = 298.582870000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1082#1094#1080#1103' '#1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 158.740111100000000000
          Top = 317.480520000000000000
          Width = 130.393700790000000000
          Height = 30.236220470000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 289.133865590000000000
          Top = 317.480520000000000000
          Width = 130.393700790000000000
          Height = 30.236220470000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 419.527830000000000000
          Top = 317.480520000000000000
          Width = 130.393700790000000000
          Height = 30.236220470000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 549.921264720000000000
          Top = 317.480520000000000000
          Width = 130.393700790000000000
          Height = 30.236220470000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 158.740111100000000000
          Top = 347.716760000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 289.133865590000000000
          Top = 347.716760000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 419.527830000000000000
          Top = 347.716760000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 549.921264720000000000
          Top = 347.716760000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 37.795300000000000000
          Top = 317.480520000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1095#1077#1090#1095#1080#1082#1086#1074' '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1080', '#1082#1042#1090'.'#1095)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 37.795300000000000000
          Top = 347.716760000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 18.897650000000000000
          Top = 366.614410000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1076#1086#1089#1090#1072#1102#1097#1080#1077' '#1080#1085#1074#1077#1085#1090#1072#1088#1100', '#1076#1077#1090#1072#1083#1080' '#1080' '#1091#1079#1083#1099': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 582.047620000000000000
          Top = 389.291590000000000000
          Width = 111.496043460000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1072#1082#1090' '#1085#1072' '#1101#1083#1077#1082#1090#1088#1086#1074#1086#1079)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 474.330850240000000000
          Top = 389.291590000000000000
          Width = 107.716513460000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1088#1084#1072' '#1085#1072' '#1101#1083#1077#1082#1090#1088#1086#1074#1086#1079)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 18.897650000000000000
          Top = 389.291590000000000000
          Width = 455.433070870000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Top = 831.496600000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1076#1083#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1077#1084#1086#1085#1090#1072' ('#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' '#1086#1073 +
              #1089#1083#1091#1078#1080#1074#1072#1085#1080#1103',')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Top = 888.189550000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              #1055#1088#1080#1077#1084#1082#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1076#1083#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1077#1084#1086#1085#1090#1072' ('#1057#1054', '#1058#1054', '#1052#1051#1055', '#1084#1086#1076#1077#1088#1085#1080#1079 +
              #1072#1094#1080#1080') '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1077#1085#1072)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 514.016080000000000000
          Top = 850.394250000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 657.638220000000000000
          Top = 850.394250000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 687.874460000000000000
          Top = 850.394250000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1084#1080#1085'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 642.520100000000000000
          Top = 850.394250000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1095'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 612.283860000000000000
          Top = 850.394250000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 514.016080000000000000
          Top = 869.291900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Top = 918.425790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Top = 963.780150000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 143.622140000000000000
          Top = 937.323440000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 143.622140000000000000
          Top = 982.677800000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 325.039580000000000000
          Top = 937.323440000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1100)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 325.039580000000000000
          Top = 982.677800000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1100)
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 510.236550000000000000
          Top = 937.323440000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 510.236550000000000000
          Top = 982.677800000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 582.047620000000000000
          Top = 423.307360000000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 474.330850240000000000
          Top = 423.307360000000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 18.897650000000000000
          Top = 423.307360000000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 582.047620000000000000
          Top = 440.314950870000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 474.330850240000000000
          Top = 440.314950870000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 18.897650000000000000
          Top = 440.314950870000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 582.047620000000000000
          Top = 457.323130000000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 474.330850240000000000
          Top = 457.323130000000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 18.897650000000000000
          Top = 457.323130000000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 582.047620000000000000
          Top = 474.330689130000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 474.330850240000000000
          Top = 474.330689130000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 18.897650000000000000
          Top = 474.330689130000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 582.047620000000000000
          Top = 491.338558270000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 474.330850240000000000
          Top = 491.338558270000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 18.897650000000000000
          Top = 491.338558270000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 582.047620000000000000
          Top = 508.346427400000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 474.330850240000000000
          Top = 508.346427400000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 18.897650000000000000
          Top = 508.346427400000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 582.047620000000000000
          Top = 525.354670000000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 474.330850240000000000
          Top = 525.354670000000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 18.897650000000000000
          Top = 525.354670000000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 582.047620000000000000
          Top = 542.362165670000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 474.330850240000000000
          Top = 542.362165670000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 18.897650000000000000
          Top = 542.362165670000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 582.047620000000000000
          Top = 559.370440000000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 474.330850240000000000
          Top = 559.370440000000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 18.897650000000000000
          Top = 559.370440000000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 582.047620000000000000
          Top = 576.377903940000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 474.330850240000000000
          Top = 576.377903940000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 18.897650000000000000
          Top = 576.377903940000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 582.047620000000000000
          Top = 593.386210000000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 474.330850240000000000
          Top = 593.386210000000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 18.897650000000000000
          Top = 593.386210000000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 582.047620000000000000
          Top = 610.393695910000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 474.330850240000000000
          Top = 610.393695910000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 18.897650000000000000
          Top = 610.393695910000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 582.047620000000000000
          Top = 627.401980000000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 474.330850240000000000
          Top = 627.401980000000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 18.897650000000000000
          Top = 627.401980000000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 582.047620000000000000
          Top = 644.409443940000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 474.330850240000000000
          Top = 644.409443940000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 18.897650000000000000
          Top = 644.409443940000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 18.897650000000000000
          Top = 661.417750000000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 18.897650000000000000
          Top = 678.425992600000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 18.897650000000000000
          Top = 695.433488270000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 18.897650000000000000
          Top = 712.441762600000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 18.897650000000000000
          Top = 729.449226540000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 18.897650000000000000
          Top = 746.457532600000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 18.897650000000000000
          Top = 763.465018510000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 18.897650000000000000
          Top = 780.473302600000000000
          Width = 455.433070870000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 18.897650000000000000
          Top = 797.480766540000000000
          Width = 455.433070870000000000
          Height = 26.456692910000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 582.047244090000000000
          Top = 661.417750000000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 474.330708660000000000
          Top = 661.417750000000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 582.047244090000000000
          Top = 678.425992600000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 582.047244090000000000
          Top = 695.433488270000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 474.330708660000000000
          Top = 695.433488270000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 582.047244090000000000
          Top = 712.441762600000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 474.330708660000000000
          Top = 712.441762600000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 582.047244090000000000
          Top = 729.449226540000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 474.330708660000000000
          Top = 729.449226540000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 582.047244090000000000
          Top = 746.457532600000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 474.330708660000000000
          Top = 746.457532600000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 582.047244090000000000
          Top = 763.465018510000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 474.330708660000000000
          Top = 763.465018510000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 582.047244090000000000
          Top = 780.473302600000000000
          Width = 111.496043460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 474.330708660000000000
          Top = 780.473302600000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 582.047244090000000000
          Top = 797.480766540000000000
          Width = 111.496043460000000000
          Height = 26.456692910000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 474.330708660000000000
          Top = 797.480766540000000000
          Width = 107.716513460000000000
          Height = 26.456692910000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 474.330708660000000000
          Top = 678.425191970000000000
          Width = 107.716513460000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 37.795300000000000000
          Top = 120.944960000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pSer]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 113.385900000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pFactNum]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 185.196970000000000000
          Top = 120.944960000000000000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pIndxSec]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 253.228510000000000000
          Top = 120.944960000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[pDepot]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 291.023810000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 355.275820000000000000
          Top = 18.897650000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 366.614410000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 430.866420000000000000
          Top = 18.897650000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 442.205010000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 850.394250000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103', '#1084#1086#1076#1077#1088#1085#1080#1079#1072#1094#1080#1080') '#1087#1086' '#1075#1088#1072#1092#1080#1082#1091)
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Left = 653.858690000000000000
        Width = 64.252010000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#1058#1059'-162')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object bmMainDoc: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Group')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    ImageOptions.Images = DMMain.imlSmall
    ImageOptions.LargeImages = DMMain.imlMain32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 696
    Top = 256
    DockControlHeights = (
      0
      0
      57
      0)
    object bmCallingControlBar1: TdxBar
      Caption = #1050#1086#1084#1072#1085#1076#1085#1072#1103' '#1087#1072#1085#1077#1083#1100
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 570
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
      ItemLinks = <>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = False
      WholeRow = True
    end
    object bmMainDocBar1: TdxBar
      Caption = #1055#1072#1085#1077#1083#1100' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 220
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Hidden = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnExport'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPageFirst'
        end
        item
          Visible = True
          ItemName = 'btnEarly'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          Visible = True
          ItemName = 'btnNext'
        end
        item
          Visible = True
          ItemName = 'btnPageLast'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExit'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object cbbDocuments: TcxBarEditItem
      Caption = #1086#1087#1088
      Category = 0
      Hint = #1044#1086#1082#1091#1084#1077#1085#1090', '#1072#1082#1090', '#1087#1080#1089#1100#1084#1086
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = #1040#1082#1090' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #1040#1082#1090' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1089#1077#1088#1074#1080#1089#1085#1086#1081' '#1082#1086#1084#1087#1072#1085#1080#1080
          Value = '2'
        end
        item
          Description = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1077
          Value = '3'
        end
        item
          Description = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1072#1082#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090' '#1080' '#1091#1082#1072#1079#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075
          Value = '4'
        end
        item
          Description = #1040#1082#1090' '#1085#1072#1088#1091#1096#1077#1085#1080#1081' '#1088#1077#1078#1080#1084#1086#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
          Value = '5'
        end>
      InternalEditValue = ''
    end
    object btnExport: TdxBarLargeButton
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = bppMain
      LargeImageIndex = 63
      AutoGrayScale = False
    end
    object btnExportToPDF: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' PDF'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' PDF'
      Visible = ivAlways
      ImageIndex = 117
      OnClick = aExportToPDFExecute
    end
    object btnExportToXLS: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' XLS'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' XLS'
      Visible = ivAlways
      ImageIndex = 116
      OnClick = aExportToXLSExecute
    end
    object btnExportToRTF: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' RTF'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' RTF'
      Visible = ivAlways
      ImageIndex = 115
      OnClick = aExportToRTFExecute
    end
    object btnExportToHTML: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' HTML'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1086#1088#1084#1072#1090' HTML'
      Visible = ivAlways
      ImageIndex = 118
      OnClick = aExportToHTMLExecute
    end
    object btnPrint: TdxBarLargeButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = aPrintExecute
    end
    object btnPageFirst: TdxBarLargeButton
      Caption = #1055#1077#1088#1074#1072#1103
      Category = 0
      Hint = #1055#1077#1088#1074#1072#1103
      Visible = ivAlways
      LargeImageIndex = 69
      OnClick = aFirstPageExecute
      AutoGrayScale = False
    end
    object btnEarly: TdxBarLargeButton
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103
      Category = 0
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103
      Visible = ivAlways
      LargeImageIndex = 67
      OnClick = aEarlyPageExecute
      AutoGrayScale = False
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Category = 0
      Visible = ivAlways
      Control = pnlNumPage
    end
    object btnNext: TdxBarLargeButton
      Caption = #1057#1083#1077#1076#1091#1102#1097#1072#1103
      Category = 0
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103
      Visible = ivAlways
      LargeImageIndex = 68
      OnClick = aNextPageExecute
      AutoGrayScale = False
    end
    object btnPageLast: TdxBarLargeButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103
      Visible = ivAlways
      LargeImageIndex = 70
      OnClick = aLastPageExecute
      AutoGrayScale = False
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Category = 0
      Visible = ivAlways
      Control = pnlScale
    end
    object btnExit: TdxBarLargeButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      LargeImageIndex = 71
      OnClick = aClosePRExecute
      AutoGrayScale = False
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
  object alReports: TActionList
    Left = 799
    Top = 104
    object aPrint: TAction
      Caption = 'aPrint'
      OnExecute = aPrintExecute
    end
    object aScale: TAction
      Caption = 'aScale'
      OnExecute = aScaleExecute
    end
    object aExportToXLS: TAction
      Caption = 'aExportToXLS'
      OnExecute = aExportToXLSExecute
    end
    object aExportToPDF: TAction
      Caption = 'aExportToPDF'
      OnExecute = aExportToPDFExecute
    end
    object aExportToRTF: TAction
      Caption = 'aExportToRTF'
      OnExecute = aExportToRTFExecute
    end
    object aExportToHTML: TAction
      Caption = 'aExportToHTML'
      OnExecute = aExportToHTMLExecute
    end
    object aFirstPage: TAction
      Caption = #1055#1077#1088#1074#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      OnExecute = aFirstPageExecute
    end
    object aEarlyPage: TAction
      Caption = 'aEarlyPage'
      OnExecute = aEarlyPageExecute
    end
    object aNextPage: TAction
      Caption = 'aNextPage'
      OnExecute = aNextPageExecute
    end
    object aLastPage: TAction
      Caption = 'aLastPage'
      OnExecute = aLastPageExecute
    end
    object aGoToPage: TAction
      Caption = 'aGoToPage'
      OnExecute = aGoToPageExecute
    end
    object aLoadInfoDoc1: TAction
      Caption = 'aLoadInfoDoc1'
      OnExecute = aLoadInfoDoc1Execute
    end
    object aLoadInfoDoc2: TAction
      Caption = 'aLoadInfoDoc2'
      OnExecute = aLoadInfoDoc2Execute
    end
    object aLoadInfoDoc3: TAction
      Caption = 'aLoadInfoDoc3'
      OnExecute = aLoadInfoDoc3Execute
    end
    object aLoadInfoDoc4: TAction
      Caption = 'aLoadInfoDoc4'
      OnExecute = aLoadInfoDoc4Execute
    end
    object aLoadInfoDoc5: TAction
      Caption = 'aLoadInfoDoc5'
      OnExecute = aLoadInfoDoc5Execute
    end
    object aLoadInfoDoc6: TAction
      Caption = 'aLoadInfoDoc6'
      OnExecute = aLoadInfoDoc6Execute
    end
    object aLoadInfoDoc7: TAction
      Caption = 'aLoadInfoDoc7'
      OnExecute = aLoadInfoDoc7Execute
    end
    object aLoadInfoDoc8: TAction
      Caption = 'aLoadInfoDoc8'
      OnExecute = aLoadInfoDoc8Execute
    end
    object aLoadOverallReference: TAction
      Caption = 'aLoadOverallReference'
      OnExecute = aLoadOverallReferenceExecute
    end
    object aLoadDailyReference: TAction
      Caption = 'aLoadDailyReference'
      OnExecute = aLoadDailyReferenceExecute
    end
    object aLoadInfoDoc11: TAction
      Caption = 'aLoadInfoDoc11'
      OnExecute = aLoadInfoDoc11Execute
    end
    object aLoadInfoDoc12: TAction
      Caption = 'aLoadInfoDoc12'
      OnExecute = aLoadInfoDoc12Execute
    end
    object aLoadInfoDoc13: TAction
      Caption = 'aLoadInfoDoc13'
      OnExecute = aLoadInfoDoc13Execute
    end
  end
  object alMain: TActionList
    Left = 800
    Top = 154
    object aFrmngDoc: TAction
      Caption = 'aFrmngDoc'
    end
    object ALoadInfo: TAction
      Caption = 'ALoadInfo'
    end
    object aClosePR: TAction
      Caption = 'aClosePR'
      OnExecute = aClosePRExecute
    end
    object aIfNull: TAction
      Caption = 'aIfNull'
    end
  end
  object frxReport: TfrxReport
    Version = '4.15.13'
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42293.421829236110000000
    ReportOptions.LastChange = 42293.421829236110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 89
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object bppMain: TdxBarPopupMenu
    BarManager = bmMainDoc
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnExportToPDF'
      end
      item
        Visible = True
        ItemName = 'btnExportToXLS'
      end
      item
        Visible = True
        ItemName = 'btnExportToRTF'
      end
      item
        Visible = True
        ItemName = 'btnExportToHTML'
      end>
    UseOwnFont = False
    Left = 696
    Top = 188
  end
  object SaveDlg: TSaveDialog
    Filter = #1054#1090#1095#1077#1090' FastReports 3.0|*.fp3|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofCreatePrompt, ofShareAware, ofEnableSizing]
    Left = 320
    Top = 89
  end
  object frxPDFExp: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 42408.643495439810000000
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 448
    Top = 96
  end
  object frxXLSExp: TfrxBIFFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 42408.643070370370000000
    DataOnly = False
    OpenAfterExport = True
    RowHeightScale = 1.000000000000000000
    ChunkSize = 0
    Inaccuracy = 10.000000000000000000
    FitPages = False
    Pictures = True
    ParallelPages = 0
    Left = 560
    Top = 96
  end
  object frxRTFExp: TfrxRTFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 616
    Top = 96
  end
  object frxHTMLExp: TfrxHTMLExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = True
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = False
    Print = False
    PictureType = gpPNG
    Left = 504
    Top = 96
  end
  object cdsLoadInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 232
  end
  object dsLoadInfo: TDataSource
    DataSet = cdsLoadInfo
    Left = 392
    Top = 184
  end
  object frxDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sheet_id=sheet_id'
      'date_create=date_create'
      'incident_descr_e=incident_descr_e'
      'source_type_name=source_type_name'
      'ser_name=ser_name'
      'nom_loc=nom_loc'
      'brig_name=brig_name'
      'brig_t_nom=brig_t_nom'
      'brig_depo_name=brig_depo_name'
      'descr1=descr1'
      'fail_place_name=fail_place_name'
      'gp_diag=gp_diag'
      'loc_prip_name=loc_prip_name')
    BCDToCurrency = False
    Left = 968
    Top = 344
  end
  object FrxRprtDoc5: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42279.398497175900000000
    ReportOptions.LastChange = 42279.398497175900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '                                   '
      'end.')
    Left = 144
    Top = 568
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 147.401670000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 491.338900000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090'  '#8470' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 37.795300000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1085#1072#1088#1091#1096#1077#1085#1080#1081' '#1088#1077#1078#1080#1084#1086#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080' '#1074#1099#1103#1074#1083#1077#1085#1085#1099#1093' '#1075#1088#1091#1087#1087#1086#1081' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 75.590600000000000000
          Width = 26.456710000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 26.456710000000000000
          Top = 94.488250000000000000
          Width = 37.795300000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1051#1056#1048)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 64.252010000000000000
          Top = 94.488250000000000000
          Width = 52.913420000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1080#1085#1094#1080#1076#1077#1085#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 117.165430000000000000
          Top = 94.488250000000000000
          Width = 139.842610000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1088#1091#1096#1077#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 26.456710000000000000
          Top = 75.590600000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1085#1094#1080#1076#1077#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 351.496290000000000000
          Top = 94.488250000000000000
          Width = 52.913420000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1057#1059)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 404.409710000000000000
          Top = 94.488250000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 453.543600000000000000
          Top = 94.488250000000000000
          Width = 41.574830000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 351.496290000000000000
          Top = 75.590600000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1051#1086#1082#1086#1084#1086#1090#1080#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 495.118430000000000000
          Top = 94.488250000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 563.149970000000000000
          Top = 94.488250000000000000
          Width = 56.692950000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 619.842920000000000000
          Top = 94.488250000000000000
          Width = 98.267780000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 495.118430000000000000
          Top = 75.590600000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1096#1080#1085#1080#1089#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 718.110700000000000000
          Top = 75.590600000000000000
          Width = 68.031540000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1086#1079#1084#1086#1078#1085#1099#1077' '#1087#1086#1089#1083#1077#1076#1089#1090#1074#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 786.142240000000000000
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1080' '#1076#1072#1090#1072' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103' '#1058#1063#1069)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 861.732840000000000000
          Top = 94.488250000000000000
          Width = 83.149660000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 944.882500000000000000
          Top = 75.590600000000000000
          Width = 102.047310000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 786.142240000000000000
          Top = 75.590600000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1073#1086#1090#1072' '#1089' '#1058#1063#1069)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 257.008040000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1091#1085#1082#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1072', '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1085#1072#1088#1091#1096#1077#1085#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 332.598640000000000000
          Top = 37.795300000000000000
          Width = 287.244157950000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."gp_diag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 619.842920000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1085#1072' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072#1093' '#1087#1088#1080#1087#1080#1089#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 752.126470000000000000
          Top = 37.795300000000000000
          Width = 294.803217950000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."loc_prip_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 230.551330000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        OnAfterCalcHeight = 'MasterData1OnAfterCalcHeight'
        DataSet = frxDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Width = 26.456710000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."sheet_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 64.252010000000000000
          Width = 52.913420000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."date_create"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 117.165430000000000000
          Width = 139.842610000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."incident_descr_e"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 351.496290000000000000
          Width = 52.913420000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."source_type_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 404.409710000000000000
          Width = 49.133890000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."ser_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 453.543600000000000000
          Width = 41.574830000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."nom_loc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 495.118430000000000000
          Width = 68.031540000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."brig_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 563.149970000000000000
          Width = 56.692950000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."brig_t_nom"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."brig_depo_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 718.110700000000000000
          Width = 68.031540000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 786.142240000000000000
          Width = 75.590600000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 861.732840000000000000
          Width = 83.149660000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 944.882500000000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."descr1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 257.008040000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
      end
      object Footer1: TfrxFooter
        Height = 113.385900000000000000
        Top = 525.354670000000000000
        Width = 1046.929810000000000000
        object Memo43: TfrxMemoView
          Top = 37.795300000000000000
          Width = 18.897650000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 18.897650000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 544.252320000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 132.283550000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 245.669450000000000000
          Top = 37.795300000000000000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 468.661720000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1100)
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 37.795300000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            
              #1055#1086#1076#1090#1074#1077#1088#1078#1076#1072#1077#1084', '#1095#1090#1086' '#1086#1079#1085#1072#1082#1086#1084#1083#1077#1085#1099' '#1089' '#1074#1086#1079#1084#1086#1078#1085#1099#1084#1080' '#1087#1086#1089#1083#1077#1076#1089#1090#1074#1080#1103#1084#1080' '#1091#1082#1072#1079#1072#1085#1085 +
              #1099#1093' '#1085#1072#1088#1091#1096#1077#1085#1080#1081' '#1080' '#1089#1086#1075#1083#1072#1089#1085#1099' '#1089' '#1087#1088#1077#1076#1083#1072#1075#1072#1077#1084#1099#1084' '#1086#1090#1085#1077#1089#1077#1085#1080#1077#1084' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090 +
              #1080' '#1079#1072' '#1085#1080#1093)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 75.590600000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 18.897650000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 544.252320000000000000
          Top = 75.590600000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 132.283550000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 245.669450000000000000
          Top = 75.590600000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 468.661720000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Top = 94.488250000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 18.897650000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 544.252320000000000000
          Top = 94.488250000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 132.283550000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 245.669450000000000000
          Top = 94.488250000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 468.661720000000000000
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 699.213050000000000000
        Width = 1046.929810000000000000
        object Memo59: TfrxMemoView
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object tmpTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 968
    Top = 392
    object tmpTablesheet_id: TStringField
      FieldName = 'sheet_id'
    end
    object tmpTabledate_create: TStringField
      FieldName = 'date_create'
    end
    object tmpTableincident_descr_e: TStringField
      FieldName = 'incident_descr_e'
      Size = 250
    end
    object tmpTablesource_type_name: TStringField
      FieldName = 'source_type_name'
      Size = 250
    end
    object tmpTableser_name: TStringField
      FieldName = 'ser_name'
    end
    object tmpTablenom_loc: TStringField
      FieldName = 'nom_loc'
    end
    object tmpTablebrig_name: TStringField
      FieldName = 'brig_name'
      Size = 250
    end
    object tmpTablebrig_t_nom: TStringField
      FieldName = 'brig_t_nom'
    end
    object tmpTablebrig_depo_name: TStringField
      FieldName = 'brig_depo_name'
      Size = 250
    end
    object tmpTabledescr1: TStringField
      FieldName = 'descr1'
      Size = 250
    end
    object tmpTablefail_place_name: TStringField
      FieldName = 'fail_place_name'
      Size = 250
    end
    object tmpTablegp_diag: TStringField
      FieldName = 'gp_diag'
      Size = 100
    end
    object tmpTableloc_prip_name: TStringField
      FieldName = 'loc_prip_name'
      Size = 50
    end
  end
  object tmpData: TDataSource
    DataSet = tmpTable
    Left = 968
    Top = 448
  end
  object FrxRprtDoc6: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42408.471895995400000000
    ReportOptions.LastChange = 42521.514376539350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 376
    Datasets = <
      item
        DataSet = frxDS6
        DataSetName = 'frxDS6'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 238.110390000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 891.969080000000000000
          Top = 18.897650000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 831.496600000000000000
          Top = 18.897650000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #171)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 846.614720000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 1031.811690000000000000
          Top = 18.897650000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1075'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 982.677800000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 411.968770000000000000
          Top = 75.590600000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1050#1058)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 113.385900000000000000
          Top = 113.385900000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1088#1072#1079#1073#1086#1088#1072' '#1089#1083#1091#1095#1072#1077#1074' '#1085#1072#1088#1091#1096#1077#1085#1080#1103' '#1088#1077#1078#1080#1084#1086#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080', '#1074#1099#1103#1074#1083#1077#1085#1085#1099#1093' '#1085#1072' '#1083#1086 +
              #1082#1086#1084#1086#1090#1080#1074#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 570.709030000000000000
          Top = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."ser_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 684.094930000000000000
          Top = 113.385900000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 702.992580000000000000
          Top = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."nom_object"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Top = 151.181200000000000000
          Width = 937.323440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1053#1072#1089#1090#1086#1103#1097#1080#1084' '#1072#1082#1090#1086#1084' '#1084#1099', '#1085#1080#1078#1077#1087#1086#1076#1087#1080#1089#1072#1074#1096#1080#1077#1089#1103', '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1077#1084', '#1095#1090#1086' '#1087#1088#1080#1089#1091#1090#1089 +
              #1090#1074#1086#1074#1072#1083#1080' '#1085#1072' '#1088#1072#1079#1073#1086#1088#1077' '#1087#1086' '#1089#1083#1077#1076#1091#1102#1097#1080#1084' '#1089#1083#1091#1095#1072#1103#1084' '#1085#1072#1088#1091#1096#1077#1085#1080#1103' '#1088#1077#1078#1080#1084#1086#1074' '#1101#1082#1089#1087#1083#1091 +
              #1072#1090#1072#1094#1080#1080':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 181.417440000000000000
          Width = 37.795300000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 37.795300000000000000
          Top = 181.417440000000000000
          Width = 56.692950000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 94.488250000000000000
          Top = 181.417440000000000000
          Width = 56.692950000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 151.181200000000000000
          Top = 181.417440000000000000
          Width = 75.590600000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1080#1083#1080#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 226.771800000000000000
          Top = 181.417440000000000000
          Width = 83.149660000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1051#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 309.921460000000000000
          Top = 181.417440000000000000
          Width = 56.692950000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088#1080#1103
            #1083#1086#1082'-'#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 366.614410000000000000
          Top = 181.417440000000000000
          Width = 60.472480000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088
            #1083#1086#1082'-'#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 427.086890000000000000
          Top = 181.417440000000000000
          Width = 147.401670000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072#1088#1091#1096#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 574.488560000000000000
          Top = 181.417440000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1096#1080#1085#1080#1089#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 574.488560000000000000
          Top = 200.315090000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1072#1073#1077#1083#1100#1085#1099#1081' '
            #1085#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 642.520100000000000000
          Top = 200.315090000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 699.213050000000000000
          Top = 200.315090000000000000
          Width = 49.133890000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1063#1069)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 748.346940000000000000
          Top = 181.417440000000000000
          Width = 60.472406770000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1086#1079#1084#1086#1078#1085#1099#1077' '#1087#1086#1089#1083#1077#1076#1089#1090#1074#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 808.819420000000000000
          Top = 181.417440000000000000
          Width = 83.149586770000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo1: TfrxMemoView
        Left = 377.953000000000000000
        Width = 264.567100000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1040#1050#1058#1040' '#1056#1040#1047#1041#1054#1056#1040' '#1053#1040#1056#1059#1064#1045#1053#1048#1049)
        ParentFont = False
        VAlign = vaCenter
      end
      object PageHeader1: TfrxPageHeader
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
      end
      object Header1: TfrxHeader
        Top = 340.157700000000000000
        Width = 1046.929810000000000000
      end
      object md: TfrxMasterData
        Height = 37.795300000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        DataSet = frxDS6
        DataSetName = 'frxDS6'
        RowCount = 0
        Stretched = True
        object Memo31: TfrxMemoView
          Width = 37.795300000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 94.488250000000000000
          Width = 56.692950000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."time_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."firm_name_fil"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 226.771800000000000000
          Width = 83.149660000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."firm_name_sld"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 309.921460000000000000
          Width = 56.692950000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS6
          DataSetName = 'frxDS6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."ser_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 366.614410000000000000
          Width = 60.472480000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."nom_object"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 427.086890000000000000
          Width = 147.401670000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDS6."incident_descr_e"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 574.488560000000000000
          Width = 68.031540000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."brig_t_nom"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 642.520100000000000000
          Width = 56.692950000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."brig_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 699.213050000000000000
          Width = 49.133890000000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS6."brig_kod_depo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 748.346940000000000000
          Width = 60.472406770000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 808.819420000000000000
          Width = 83.149586770000000000
          Height = 37.795275590000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 211.653680000000000000
        Top = 423.307360000000000000
        Width = 1046.929810000000000000
        object Memo37: TfrxMemoView
          Top = 3.779530000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            
              #1055#1086#1076#1090#1074#1077#1088#1078#1076#1072#1077#1084', '#1095#1090#1086' '#1086#1079#1085#1072#1082#1086#1084#1083#1077#1085#1099' '#1089' '#1074#1086#1079#1084#1086#1078#1085#1099#1084#1080' '#1087#1086#1089#1083#1077#1076#1089#1090#1074#1080#1103#1084#1080' '#1091#1082#1072#1079#1072#1085#1085 +
              #1099#1093' '#1085#1072#1088#1091#1096#1077#1085#1080#1081' '#1080' '#1089#1086#1075#1083#1072#1089#1085#1099' '#1089' '#1087#1088#1077#1076#1083#1072#1075#1072#1077#1084#1099#1084' '#1086#1090#1085#1077#1089#1077#1085#1080#1077#1084' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090 +
              #1080' '#1079#1072' '#1085#1080#1093'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 22.677180000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 37.795300000000000000
          Top = 22.677180000000000000
          Width = 181.417440000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1095#1072#1089#1090#1085#1080#1082)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 158.740260000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 377.953000000000000000
          Top = 22.677180000000000000
          Width = 226.771800000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Width = 226.771800000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054)
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 831.496600000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1100)
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 944.882500000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Top = 41.574830000000000000
          Width = 37.795300000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 37.795300000000000000
          Top = 41.574830000000000000
          Width = 181.417440000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1058#1063#1069)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 219.212740000000000000
          Top = 41.574830000000000000
          Width = 158.740157480000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1063#1069'-_______')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 377.953000000000000000
          Top = 41.574830000000000000
          Width = 226.771653540000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 604.724800000000000000
          Top = 41.574830000000000000
          Width = 226.771653540000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 831.496600000000000000
          Top = 41.574830000000000000
          Width = 113.385826770000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 944.882500000000000000
          Top = 41.574830000000000000
          Width = 102.047244090000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Top = 98.267780000000000000
          Width = 37.795300000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 37.795300000000000000
          Top = 98.267780000000000000
          Width = 181.417440000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1057#1051#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 377.953000000000000000
          Top = 98.267780000000000000
          Width = 226.771653540000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 604.724800000000000000
          Top = 98.267780000000000000
          Width = 226.771653540000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 831.496600000000000000
          Top = 98.267780000000000000
          Width = 113.385826770000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 944.882500000000000000
          Top = 98.267780000000000000
          Width = 102.047244090000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Top = 154.960730000000000000
          Width = 37.795300000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 37.795300000000000000
          Top = 154.960730000000000000
          Width = 181.417440000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1058#1063#1056' ('#1087#1086' '#1087#1088#1080#1073#1086#1088#1072#1084' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 377.953000000000000000
          Top = 154.960730000000000000
          Width = 226.771653540000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 604.724800000000000000
          Top = 154.960730000000000000
          Width = 226.771653540000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 831.496600000000000000
          Top = 154.960730000000000000
          Width = 113.385826770000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 944.882500000000000000
          Top = 154.960730000000000000
          Width = 102.047244090000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 219.212740000000000000
          Top = 60.472480000000000000
          Width = 158.740157480000000000
          Height = 37.795263390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #171'_____________________'#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 219.212740000000000000
          Top = 98.267780000000000000
          Width = 158.740157480000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1051#1044'-_______')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 219.212740000000000000
          Top = 117.165430000000000000
          Width = 158.740157480000000000
          Height = 37.795263390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #171'_____________________'#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 219.212740000000000000
          Top = 154.960730000000000000
          Width = 158.740157480000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1063#1056'-_______')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 219.212740000000000000
          Top = 173.858380000000000000
          Width = 158.740157480000000000
          Height = 37.795263390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #171'_____________________'#187)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 695.433520000000000000
        Width = 1046.929810000000000000
        object Memo59: TfrxMemoView
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FrxRprtDoc7: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42408.534047557900000000
    ReportOptions.LastChange = 42411.486656631900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 424
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 302.362400000000000000
        Width = 461.102660000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072' '#1086#1089#1085#1086#1074#1085#1099#1093' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1088#1072#1073#1086#1090#1099' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Left = 302.362400000000000000
        Top = 18.897650000000000000
        Width = 461.102660000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072')')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 18.897650000000000000
        Top = 37.795300000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1077#1087#1083#1086#1074#1086#1079' - ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Left = 90.708720000000000000
        Top = 37.795300000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[pSerInd]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 90.708720000000000000
        Top = 56.692950000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1057#1077#1088#1080#1103', '#1080#1085#1076#1077#1082#1089)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 154.960730000000000000
        Top = 37.795300000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[pNom]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 154.960730000000000000
        Top = 56.692950000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088)
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 215.433210000000000000
        Top = 37.795300000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1057#1051#1044)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo9: TfrxMemoView
        Left = 340.157700000000000000
        Top = 37.795300000000000000
        Width = 196.535560000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[pSLD]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo10: TfrxMemoView
        Left = 536.693260000000000000
        Top = 37.795300000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[pDate]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        Left = 536.693260000000000000
        Top = 56.692950000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1076#1072#1090#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086')')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 661.417750000000000000
        Top = 37.795300000000000000
        Width = 200.315090000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042#1080#1076' '#1058#1054', '#1056' '#1080#1083#1080' '#1088#1077#1082#1083#1086#1084#1072#1094#1080#1080' ('#1053#1056')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 861.732840000000000000
        Top = 37.795300000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[pHP]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Left = 861.732840000000000000
        Top = 56.692950000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1074#1080#1076' '#1086#1089#1084#1090#1088#1072', '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103' '#1080#1083#1080' '#1088#1077#1084#1086#1085#1090#1072')')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Top = 75.590600000000000000
        Width = 192.756030000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1072#1088#1093#1080#1074#1085#1086#1075#1086' '#1092#1072#1081#1083#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Left = 226.771800000000000000
        Top = 94.488250000000000000
        Width = 332.598640000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1059#1082#1072#1079#1072#1090#1100' '#1085#1086#1084#1077#1088' '#1088#1077#1079#1072' ('#1092#1072#1081#1083#1072' .res) '#1089' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1099#1083#1080' '#1089#1085#1103#1090#1099' '#1086#1089#1085#1086#1074#1085#1099#1077' ' +
            #1087#1072#1088#1072#1084#1077#1090#1088#1099'('#1076#1072#1085#1085#1099#1077'))')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 559.370440000000000000
        Top = 75.590600000000000000
        Width = 196.535560000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042#1088#1077#1084#1103' '#1089#1085#1103#1090#1080#1103' '#1072#1088#1093#1080#1074#1085#1086#1075#1086' '#1092#1072#1081#1083#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 771.024120000000000000
        Top = 94.488250000000000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haRight
        Memo.UTF8W = (
          '('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077' '#1074#1088#1077#1084#1103' '#1089#1085#1103#1090#1080#1103' '#1076#1072#1085#1085#1099#1093' '#1089' '#1091#1082#1072#1079#1072#1085#1080#1077#1084' '#1076#1072#1090#1099')')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Top = 113.385900000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1055#1088#1086#1073#1077#1075#1080)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Left = 151.181200000000000000
        Top = 113.385900000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1054'-3')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo21: TfrxMemoView
        Left = 302.362400000000000000
        Top = 113.385900000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1056'-1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo22: TfrxMemoView
        Left = 453.543600000000000000
        Top = 113.385900000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1056'-2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Left = 604.724800000000000000
        Top = 113.385900000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1056'-3')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo24: TfrxMemoView
        Left = 755.906000000000000000
        Top = 113.385900000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1057#1056)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo25: TfrxMemoView
        Left = 873.071430000000000000
        Top = 113.385900000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1050#1056)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Top = 132.283550000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1074' '#1090#1099#1089#1103#1095#1072#1093' '#1082#1084)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo27: TfrxMemoView
        Left = 151.181200000000000000
        Top = 132.283550000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[TO3]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo28: TfrxMemoView
        Left = 302.362400000000000000
        Top = 132.283550000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[TP1]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo29: TfrxMemoView
        Left = 453.543600000000000000
        Top = 132.283550000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[TP2]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo30: TfrxMemoView
        Left = 604.724800000000000000
        Top = 132.283550000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[TP3]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo31: TfrxMemoView
        Left = 755.906000000000000000
        Top = 132.283550000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[CP]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo32: TfrxMemoView
        Left = 873.071430000000000000
        Top = 132.283550000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[KP]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo33: TfrxMemoView
        Top = 170.078850000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #8470' '#1087#1086#1079#1080#1094#1080#1080)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo34: TfrxMemoView
        Top = 188.976500000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1047#1085#1072#1095#1077#1085#1080#1077' '#1090#1086#1082#1086#1074' '#1058#1069#1044)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo35: TfrxMemoView
        Top = 207.874150000000000000
        Width = 151.181200000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1090#1103#1075#1086#1074#1086#1075#1086' '#1075#1077#1085#1077#1088#1072#1090#1086#1088#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo36: TfrxMemoView
        Top = 245.669450000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1090#1103#1075#1080)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo37: TfrxMemoView
        Top = 264.567100000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1085#1072#1076#1076#1091#1074#1072' '#1058#1050)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo38: TfrxMemoView
        Top = 283.464750000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1054#1073#1086#1088#1086#1090#1099' '#1058#1050)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo39: TfrxMemoView
        Top = 302.362400000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1077#1081#1082#1072' '#1058#1053#1042#1044)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo40: TfrxMemoView
        Top = 321.260050000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1044#1072#1090#1095#1080#1082' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo41: TfrxMemoView
        Top = 340.157700000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1054#1073#1086#1088#1086#1090#1099' '#1052#1042'1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo42: TfrxMemoView
        Top = 359.055350000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1079#1076'.'#1074#1093'.'#1044#1058#1055#1052'1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo43: TfrxMemoView
        Top = 377.953000000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1079#1076'.'#1074#1099#1093'.'#1044#1058#1055#1052'1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo47: TfrxMemoView
        Top = 453.543600000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1090#1086#1087#1083'.'#1074#1093'.'#1058#1053#1042#1044)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo48: TfrxMemoView
        Top = 472.441250000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1090#1086#1087#1083'.'#1074#1093'.'#1060#1058#1054#1058)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo49: TfrxMemoView
        Top = 491.338900000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1076#1099' '#1085#1072' '#1074#1093'.'#1088#1072#1076#1080#1072#1090#1086#1088#1072' 1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo50: TfrxMemoView
        Top = 510.236550000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1076#1099' '#1085#1072' '#1074#1099#1093'.'#1088#1072#1076#1080#1072#1090#1086#1088#1072' 1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo51: TfrxMemoView
        Top = 529.134200000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1076#1099' '#1085#1072' '#1074#1093'.'#1088#1072#1076#1080#1072#1090#1086#1088#1072' 2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo52: TfrxMemoView
        Top = 548.031850000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1076#1099' '#1085#1072' '#1074#1099#1093'.'#1088#1072#1076#1080#1072#1090#1086#1088#1072' 2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo53: TfrxMemoView
        Left = 151.181200000000000000
        Top = 170.078850000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1077#1076'.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo54: TfrxMemoView
        Left = 226.771800000000000000
        Top = 170.078850000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo56: TfrxMemoView
        Left = 151.181200000000000000
        Top = 188.976500000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1040)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo57: TfrxMemoView
        Left = 226.771800000000000000
        Top = 188.976500000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo58: TfrxMemoView
        Left = 151.181200000000000000
        Top = 207.874150000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo59: TfrxMemoView
        Left = 226.771800000000000000
        Top = 207.874150000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo60: TfrxMemoView
        Left = 151.181200000000000000
        Top = 245.669450000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1042#1090)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo61: TfrxMemoView
        Left = 226.771800000000000000
        Top = 245.669450000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo62: TfrxMemoView
        Left = 151.181200000000000000
        Top = 264.567100000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo63: TfrxMemoView
        Left = 226.771800000000000000
        Top = 264.567100000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo64: TfrxMemoView
        Left = 151.181200000000000000
        Top = 283.464750000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1086#1073'/'#1084#1080#1085)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo65: TfrxMemoView
        Left = 226.771800000000000000
        Top = 283.464750000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo66: TfrxMemoView
        Left = 151.181200000000000000
        Top = 302.362400000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1086#1076'.'#1077#1076)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo67: TfrxMemoView
        Left = 226.771800000000000000
        Top = 302.362400000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo68: TfrxMemoView
        Left = 151.181200000000000000
        Top = 321.260050000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1077#1076'.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo69: TfrxMemoView
        Left = 226.771800000000000000
        Top = 321.260050000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo70: TfrxMemoView
        Left = 151.181200000000000000
        Top = 340.157700000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1086#1073'/'#1084#1080#1085)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo71: TfrxMemoView
        Left = 226.771800000000000000
        Top = 340.157700000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo73: TfrxMemoView
        Left = 226.771800000000000000
        Top = 359.055350000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo75: TfrxMemoView
        Left = 226.771800000000000000
        Top = 377.953000000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo76: TfrxMemoView
        Left = 151.181200000000000000
        Top = 396.850650000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1086#1073'/'#1084#1080#1085)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo77: TfrxMemoView
        Left = 226.771800000000000000
        Top = 396.850650000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo79: TfrxMemoView
        Left = 226.771800000000000000
        Top = 415.748300000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo81: TfrxMemoView
        Left = 226.771800000000000000
        Top = 434.645950000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo83: TfrxMemoView
        Left = 226.771800000000000000
        Top = 453.543600000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo85: TfrxMemoView
        Left = 226.771800000000000000
        Top = 472.441250000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo87: TfrxMemoView
        Left = 226.771800000000000000
        Top = 491.338900000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo89: TfrxMemoView
        Left = 226.771800000000000000
        Top = 510.236550000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo91: TfrxMemoView
        Left = 226.771800000000000000
        Top = 529.134200000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo93: TfrxMemoView
        Left = 226.771800000000000000
        Top = 548.031850000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo72: TfrxMemoView
        Left = 151.181200000000000000
        Top = 359.055350000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo74: TfrxMemoView
        Left = 151.181200000000000000
        Top = 377.953000000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo44: TfrxMemoView
        Top = 396.850650000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1054#1073#1086#1088#1086#1090#1099' '#1052#1042'2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo78: TfrxMemoView
        Left = 151.181200000000000000
        Top = 415.748300000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo82: TfrxMemoView
        Left = 151.181200000000000000
        Top = 434.645950000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo86: TfrxMemoView
        Left = 151.181200000000000000
        Top = 453.543600000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo90: TfrxMemoView
        Left = 151.181200000000000000
        Top = 472.441250000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo97: TfrxMemoView
        Left = 151.181200000000000000
        Top = 491.338900000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo99: TfrxMemoView
        Left = 151.181200000000000000
        Top = 510.236550000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo101: TfrxMemoView
        Left = 151.181200000000000000
        Top = 529.134200000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo103: TfrxMemoView
        Left = 151.181200000000000000
        Top = 548.031850000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo45: TfrxMemoView
        Top = 415.748300000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1079#1076'.'#1074#1093'.'#1044#1058#1055#1052'2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo46: TfrxMemoView
        Top = 434.645950000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1074#1086#1079#1076'.'#1074#1099#1093'.'#1044#1058#1055#1052'2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo105: TfrxMemoView
        Top = 566.929500000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1084#1072#1089#1083#1072' '#1074#1099#1093'. 2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo106: TfrxMemoView
        Top = 585.827150000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1084#1072#1089#1083#1072' '#1085#1072' '#1074#1093'. '#1076#1080#1079'. '#1088#1077#1075'.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo107: TfrxMemoView
        Top = 604.724800000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1084#1072#1089#1083#1072' '#1074' '#1088#1077#1076#1091#1082#1090#1086#1088#1077' '#1062#1042#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo108: TfrxMemoView
        Top = 623.622450000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1056#1090#1086#1088#1084'. '#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo109: TfrxMemoView
        Left = 226.771800000000000000
        Top = 566.929500000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo110: TfrxMemoView
        Left = 226.771800000000000000
        Top = 585.827150000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo111: TfrxMemoView
        Left = 226.771800000000000000
        Top = 604.724800000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo112: TfrxMemoView
        Left = 226.771800000000000000
        Top = 623.622450000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo113: TfrxMemoView
        Left = 151.181200000000000000
        Top = 566.929500000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo115: TfrxMemoView
        Left = 151.181200000000000000
        Top = 585.827150000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo117: TfrxMemoView
        Left = 151.181200000000000000
        Top = 604.724800000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo119: TfrxMemoView
        Left = 151.181200000000000000
        Top = 623.622450000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1082#1075#1089'/'#1089#1084#178)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo55: TfrxMemoView
        Left = 302.362400000000000000
        Top = 170.078850000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo121: TfrxMemoView
        Left = 302.362400000000000000
        Top = 188.976500000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo122: TfrxMemoView
        Left = 302.362400000000000000
        Top = 207.874150000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo123: TfrxMemoView
        Left = 302.362400000000000000
        Top = 245.669450000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo124: TfrxMemoView
        Left = 302.362400000000000000
        Top = 264.567100000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo125: TfrxMemoView
        Left = 302.362400000000000000
        Top = 283.464750000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo126: TfrxMemoView
        Left = 302.362400000000000000
        Top = 302.362400000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo127: TfrxMemoView
        Left = 302.362400000000000000
        Top = 321.260050000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo128: TfrxMemoView
        Left = 302.362400000000000000
        Top = 340.157700000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo129: TfrxMemoView
        Left = 302.362400000000000000
        Top = 359.055350000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo130: TfrxMemoView
        Left = 302.362400000000000000
        Top = 377.953000000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo131: TfrxMemoView
        Left = 302.362400000000000000
        Top = 396.850650000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo132: TfrxMemoView
        Left = 302.362400000000000000
        Top = 415.748300000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo133: TfrxMemoView
        Left = 302.362400000000000000
        Top = 434.645950000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo134: TfrxMemoView
        Left = 302.362400000000000000
        Top = 453.543600000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo135: TfrxMemoView
        Left = 302.362400000000000000
        Top = 472.441250000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo136: TfrxMemoView
        Left = 302.362400000000000000
        Top = 491.338900000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo137: TfrxMemoView
        Left = 302.362400000000000000
        Top = 510.236550000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo138: TfrxMemoView
        Left = 302.362400000000000000
        Top = 529.134200000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo139: TfrxMemoView
        Left = 302.362400000000000000
        Top = 548.031850000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo140: TfrxMemoView
        Left = 302.362400000000000000
        Top = 566.929500000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo141: TfrxMemoView
        Left = 302.362400000000000000
        Top = 585.827150000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo142: TfrxMemoView
        Left = 302.362400000000000000
        Top = 604.724800000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo143: TfrxMemoView
        Left = 302.362400000000000000
        Top = 623.622450000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo144: TfrxMemoView
        Left = 377.953000000000000000
        Top = 170.078850000000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074', (t '#1085#1077' '#1073#1086#1083#1077#1077' 620   '#176'C)')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo145: TfrxMemoView
        Left = 377.953000000000000000
        Top = 188.976500000000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1087#1077#1088#1077#1087#1072#1076' '#1084#1077#1078#1076#1091' '#1094#1080#1083#1080#1085#1076#1088#1072#1084#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 100   '#176'C')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo146: TfrxMemoView
        Left = 377.953000000000000000
        Top = 207.874150000000000000
        Width = 18.897540160000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          't')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo148: TfrxMemoView
        Left = 954.330708660000000000
        Top = 170.078850000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo149: TfrxMemoView
        Left = 869.291900000000000000
        Top = 170.078850000000000000
        Width = 85.039365200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo150: TfrxMemoView
        Left = 954.330708660000000000
        Top = 188.976500000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo151: TfrxMemoView
        Left = 869.291900000000000000
        Top = 188.976500000000000000
        Width = 85.039370080000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo152: TfrxMemoView
        Left = 954.330708660000000000
        Top = 207.874150000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo153: TfrxMemoView
        Left = 869.291900000000000000
        Top = 207.874150000000000000
        Width = 85.039370080000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo154: TfrxMemoView
        Left = 954.330708660000000000
        Top = 226.771800000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo155: TfrxMemoView
        Left = 869.291900000000000000
        Top = 226.771800000000000000
        Width = 85.039370080000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo156: TfrxMemoView
        Left = 954.330708660000000000
        Top = 245.669450000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo157: TfrxMemoView
        Left = 869.291900000000000000
        Top = 245.669450000000000000
        Width = 85.039370080000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo158: TfrxMemoView
        Left = 954.330708660000000000
        Top = 264.567100000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo159: TfrxMemoView
        Left = 869.291900000000000000
        Top = 264.567100000000000000
        Width = 85.039370080000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo160: TfrxMemoView
        Left = 954.330708660000000000
        Top = 283.464750000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo161: TfrxMemoView
        Left = 869.291900000000000000
        Top = 283.464750000000000000
        Width = 85.039370080000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo162: TfrxMemoView
        Left = 954.330708660000000000
        Top = 302.362400000000000000
        Width = 88.818895200000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo163: TfrxMemoView
        Left = 869.291900000000000000
        Top = 302.362400000000000000
        Width = 85.039370080000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo164: TfrxMemoView
        Left = 718.110238660000000000
        Top = 170.078850000000000000
        Width = 151.181124330000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1058#1074#1086#1076#1099' '#1074#1099#1093'.'#1076#1080#1079'.,  '#176#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo165: TfrxMemoView
        Left = 718.110700000000000000
        Top = 188.976500000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1058#1074#1086#1076#1099' '#1086#1093#1083#1072#1076#1080#1090'.,  '#176#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo166: TfrxMemoView
        Left = 718.110700000000000000
        Top = 207.874150000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1058#1074#1086#1076#1099' '#1074#1093'.'#1076#1080#1079'.,  '#176#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo167: TfrxMemoView
        Left = 718.110700000000000000
        Top = 226.771800000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1058#1074#1086#1076#1099' '#1074#1093'. '#1088#1072#1076#1080#1072#1090#1086#1088#1072' 1, '#176#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo168: TfrxMemoView
        Left = 718.110700000000000000
        Top = 245.669450000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'I_'#1042#1059'1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo169: TfrxMemoView
        Left = 718.110700000000000000
        Top = 264.567100000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1058#1074#1086#1076#1099' '#1074#1099#1093'. '#1088#1072#1076#1080#1072#1090#1086#1088#1072' 2,  '#176#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo170: TfrxMemoView
        Left = 718.110700000000000000
        Top = 283.464750000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1058#1084#1072#1089#1083#1072' '#1074#1093'. '#1076#1080#1079'. '#1088#1077#1075'., '#176#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo171: TfrxMemoView
        Left = 718.110700000000000000
        Top = 302.362400000000000000
        Width = 151.181102360000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1058#1084#1072#1089#1083#1072' '#1074#1099#1093'. '#1076#1080#1079'..,  '#176#1057)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo174: TfrxMemoView
        Left = 377.953000000000000000
        Top = 226.771800000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo175: TfrxMemoView
        Left = 377.953000000000000000
        Top = 245.669450000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo176: TfrxMemoView
        Left = 377.953000000000000000
        Top = 264.567100000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '3')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo177: TfrxMemoView
        Left = 377.953000000000000000
        Top = 283.464750000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '4')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo178: TfrxMemoView
        Left = 377.953000000000000000
        Top = 302.362400000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '5')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo179: TfrxMemoView
        Left = 377.953000000000000000
        Top = 321.260050000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '6')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo180: TfrxMemoView
        Left = 377.953000000000000000
        Top = 340.157700000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '7')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo181: TfrxMemoView
        Left = 377.953000000000000000
        Top = 359.055350000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '8')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo182: TfrxMemoView
        Left = 510.236550000000000000
        Top = 226.771800000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo183: TfrxMemoView
        Left = 510.236550000000000000
        Top = 245.669450000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo184: TfrxMemoView
        Left = 510.236550000000000000
        Top = 264.567100000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo185: TfrxMemoView
        Left = 510.236550000000000000
        Top = 283.464750000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo186: TfrxMemoView
        Left = 510.236550000000000000
        Top = 302.362400000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo187: TfrxMemoView
        Left = 510.236550000000000000
        Top = 321.260050000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo188: TfrxMemoView
        Left = 510.236550000000000000
        Top = 340.157700000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo189: TfrxMemoView
        Left = 510.236550000000000000
        Top = 359.055350000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo190: TfrxMemoView
        Left = 548.031850000000000000
        Top = 226.771800000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo191: TfrxMemoView
        Left = 548.031850000000000000
        Top = 245.669450000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo192: TfrxMemoView
        Left = 548.031850000000000000
        Top = 264.567100000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo193: TfrxMemoView
        Left = 548.031850000000000000
        Top = 283.464750000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo194: TfrxMemoView
        Left = 548.031850000000000000
        Top = 302.362400000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo195: TfrxMemoView
        Left = 548.031850000000000000
        Top = 321.260050000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo196: TfrxMemoView
        Left = 548.031850000000000000
        Top = 340.157700000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo197: TfrxMemoView
        Left = 548.031850000000000000
        Top = 359.055350000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo198: TfrxMemoView
        Left = 680.315400000000000000
        Top = 226.771800000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo199: TfrxMemoView
        Left = 680.315400000000000000
        Top = 245.669450000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo200: TfrxMemoView
        Left = 680.315400000000000000
        Top = 264.567100000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo201: TfrxMemoView
        Left = 680.315400000000000000
        Top = 283.464750000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo202: TfrxMemoView
        Left = 680.315400000000000000
        Top = 302.362400000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo203: TfrxMemoView
        Left = 680.315400000000000000
        Top = 321.260050000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo204: TfrxMemoView
        Left = 680.315400000000000000
        Top = 340.157700000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo205: TfrxMemoView
        Left = 680.315400000000000000
        Top = 359.055350000000000000
        Width = 37.795275590000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo206: TfrxMemoView
        Left = 585.827150000000000000
        Top = 226.771800000000000000
        Width = 94.488157240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo207: TfrxMemoView
        Left = 585.827150000000000000
        Top = 245.669450000000000000
        Width = 94.488188976378000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo208: TfrxMemoView
        Left = 585.827150000000000000
        Top = 264.567100000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo209: TfrxMemoView
        Left = 585.827150000000000000
        Top = 283.464750000000000000
        Width = 94.488188976378000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo210: TfrxMemoView
        Left = 585.827150000000000000
        Top = 302.362400000000000000
        Width = 94.488188976378000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo211: TfrxMemoView
        Left = 585.827150000000000000
        Top = 321.260050000000000000
        Width = 94.488188976378000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo212: TfrxMemoView
        Left = 585.827150000000000000
        Top = 340.157700000000000000
        Width = 94.488188976378000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo213: TfrxMemoView
        Left = 585.827150000000000000
        Top = 359.055350000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo214: TfrxMemoView
        Left = 415.748300000000000000
        Top = 226.771800000000000000
        Width = 94.488157240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo215: TfrxMemoView
        Left = 415.748300000000000000
        Top = 245.669450000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo216: TfrxMemoView
        Left = 415.748300000000000000
        Top = 264.567100000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo217: TfrxMemoView
        Left = 415.748300000000000000
        Top = 283.464750000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo218: TfrxMemoView
        Left = 415.748300000000000000
        Top = 302.362400000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo219: TfrxMemoView
        Left = 415.748300000000000000
        Top = 321.260050000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo220: TfrxMemoView
        Left = 415.748300000000000000
        Top = 340.157700000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo221: TfrxMemoView
        Left = 415.748300000000000000
        Top = 359.055350000000000000
        Width = 94.488188980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo222: TfrxMemoView
        Left = 718.110700000000000000
        Top = 321.260050000000000000
        Width = 282.708661420000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          #1054#1073#1086#1088#1086#1090#1099' '#1074#1072#1083#1072' '#1076#1080#1079#1077#1083#1103)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo223: TfrxMemoView
        Left = 1000.818897640000000000
        Top = 321.260050000000000000
        Width = 42.330706220000000000
        Height = 56.692950000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo231: TfrxMemoView
        Left = 396.850650000000000000
        Top = 207.874150000000000000
        Width = 151.181090160000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1083#1077#1074#1099#1081' '#1088#1103#1076'/'#1061'.'#1061'.')
        ParentFont = False
        VAlign = vaBottom
      end
      object Memo147: TfrxMemoView
        Left = 548.031850000000000000
        Top = 207.874150000000000000
        Width = 18.897637800000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          't')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo232: TfrxMemoView
        Left = 566.929500000000000000
        Top = 207.874150000000000000
        Width = 151.181090160000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1087#1088#1072#1074#1099#1081' '#1088#1103#1076'/'#1061'.'#1061'.')
        ParentFont = False
        VAlign = vaBottom
      end
      object Memo233: TfrxMemoView
        Left = 1000.818897640000000000
        Top = 377.953000000000000000
        Width = 42.330706220000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo234: TfrxMemoView
        Left = 1000.818897640000000000
        Top = 415.748300000000000000
        Width = 42.330706220000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo235: TfrxMemoView
        Left = 1000.818897640000000000
        Top = 453.543600000000000000
        Width = 42.330706220000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo236: TfrxMemoView
        Left = 1000.818897640000000000
        Top = 491.338900000000000000
        Width = 42.330706220000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo237: TfrxMemoView
        Left = 954.330708660000000000
        Top = 377.953000000000000000
        Width = 46.488188980000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo238: TfrxMemoView
        Left = 954.330708661417000000
        Top = 415.748300000000000000
        Width = 46.488188980000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo239: TfrxMemoView
        Left = 954.330708661417000000
        Top = 453.543600000000000000
        Width = 46.488188980000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo240: TfrxMemoView
        Left = 954.330708661417000000
        Top = 491.338900000000000000
        Width = 46.488188980000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo241: TfrxMemoView
        Left = 377.953000000000000000
        Top = 529.134200000000000000
        Width = 37.795207240000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo242: TfrxMemoView
        Left = 377.953000000000000000
        Top = 548.031850000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo243: TfrxMemoView
        Left = 377.953000000000000000
        Top = 566.929500000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '3')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo244: TfrxMemoView
        Left = 377.953000000000000000
        Top = 585.827150000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '4')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo245: TfrxMemoView
        Left = 377.953000000000000000
        Top = 604.724800000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '5')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo246: TfrxMemoView
        Left = 377.953000000000000000
        Top = 623.622450000000000000
        Width = 37.795287800000000000
        Height = 18.897637800000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '6')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo247: TfrxMemoView
        Left = 718.110700000000000000
        Top = 340.157700000000000000
        Width = 282.708661420000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '350, 550, 585, 619, 654, 688, 723, 757, 792, 826, 861, 895, 930,' +
            ' 965, 1000')
        ParentFont = False
      end
      object Memo248: TfrxMemoView
        Left = 718.110700000000000000
        Top = 359.055350000000000000
        Width = 282.708661420000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          
            #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1074#1077#1083#1080#1095#1080#1085#1099' '#1089' 1 '#1087#1086' 15 '#1087#1086#1079#1080#1094#1080#1080' ('#1085#1091#1078#1085#1086#1077' '#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100') '#177' 3 '#1086 +
            #1073'/'#1084#1080#1085)
        ParentFont = False
      end
      object Memo249: TfrxMemoView
        Left = 415.748300000000000000
        Top = 529.134200000000000000
        Width = 113.385838980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo250: TfrxMemoView
        Left = 415.748300000000000000
        Top = 548.031850000000000000
        Width = 113.385838980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo251: TfrxMemoView
        Left = 415.748300000000000000
        Top = 566.929500000000000000
        Width = 113.385838980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo252: TfrxMemoView
        Left = 415.748300000000000000
        Top = 585.827150000000000000
        Width = 113.385838980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo253: TfrxMemoView
        Left = 415.748300000000000000
        Top = 604.724800000000000000
        Width = 113.385838980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo254: TfrxMemoView
        Left = 415.748300000000000000
        Top = 623.622450000000000000
        Width = 113.385838980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo255: TfrxMemoView
        Left = 377.953000000000000000
        Top = 510.236550000000000000
        Width = 151.181138980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1087#1077#1088#1077#1087#1072#1076' '#1084#1077#1078#1076#1091' '#1058#1069#1044' '#1085#1077' '#1073#1086#1083#1077#1077' '#177' 50 '#1040')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo258: TfrxMemoView
        Left = 793.701300000000000000
        Top = 453.543600000000000000
        Width = 160.629994490000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042#1082#1083' '#1052#1042'1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo259: TfrxMemoView
        Left = 793.701300000000000000
        Top = 491.338900000000000000
        Width = 160.629994490000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1042#1082#1083' '#1052#1042'2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo262: TfrxMemoView
        Left = 529.134200000000000000
        Top = 510.236550000000000000
        Width = 264.567038980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo263: TfrxMemoView
        Left = 377.953000000000000000
        Top = 472.441250000000000000
        Width = 415.748238980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          #1058#1086#1082#1086#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo264: TfrxMemoView
        Left = 377.953000000000000000
        Top = 453.543600000000000000
        Width = 415.748238980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1056#1077#1078#1080#1084' '#1086#1093#1083#1072#1078#1076#1077#1085#1080#1103': '#1085#1072' '#1072#1074#1090#1086#1084#1072#1090#1077', '#1088#1091#1095#1085#1086#1077' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo265: TfrxMemoView
        Left = 377.953000000000000000
        Top = 377.953000000000000000
        Width = 415.748238980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          't'#1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1058#1050' ('#1085#1077' '#1073#1086#1083#1077#1077' 620 '#176#1057')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo266: TfrxMemoView
        Left = 718.110700000000000000
        Top = 415.748300000000000000
        Width = 75.590538980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo267: TfrxMemoView
        Left = 718.110700000000000000
        Top = 434.645950000000000000
        Width = 75.590538980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo270: TfrxMemoView
        Left = 510.236550000000000000
        Top = 415.748300000000000000
        Width = 75.590538980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo271: TfrxMemoView
        Left = 585.827150000000000000
        Top = 415.748300000000000000
        Width = 132.283488980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo272: TfrxMemoView
        Left = 377.953000000000000000
        Top = 415.748300000000000000
        Width = 132.283488980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo273: TfrxMemoView
        Left = 377.953000000000000000
        Top = 434.645950000000000000
        Width = 207.874088980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          #1056#1072#1079#1088'. '#1074#1086#1079'. '#1074#1093'. '#1058#1050)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo276: TfrxMemoView
        Left = 377.953000000000000000
        Top = 396.850650000000000000
        Width = 11.338582680000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          't')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo277: TfrxMemoView
        Left = 585.827150000000000000
        Top = 396.850650000000000000
        Width = 11.338582680000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          't')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo278: TfrxMemoView
        Left = 585.827150000000000000
        Top = 434.645950000000000000
        Width = 132.283488980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          '('#1085#1077' '#1073#1086#1083#1077#1077' 300 '#1084#1084'.'#1074#1086#1076'.'#1089#1090'.)')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo279: TfrxMemoView
        Left = 377.953000000000000000
        Top = 491.338900000000000000
        Width = 415.748238980000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          #1090#1086#1082' '#1058#1069#1044' '#1087#1088#1077#1076#1077#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1077' '#1073#1086#1083#1077#1077' 1100 '#1040)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo281: TfrxMemoView
        Left = 793.701300000000000000
        Top = 377.953000000000000000
        Width = 60.472418980000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          #1042#1086#1076#1072' t')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo280: TfrxMemoView
        Left = 793.701300000000000000
        Top = 415.748300000000000000
        Width = 60.472418980000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          #1052#1072#1089#1083#1086' t')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo282: TfrxMemoView
        Left = 854.173780000000000000
        Top = 377.953000000000000000
        Width = 100.157480310000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftTop, ftBottom]
        Memo.UTF8W = (
          ''
          #1086#1090#1082#1088'. '#1088#1072#1076#1080#1072#1090#1086#1088#1072' 1')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo283: TfrxMemoView
        Left = 854.173780000000000000
        Top = 415.748300000000000000
        Width = 100.157480310000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ''
          #1086#1090#1082#1088'. '#1088#1072#1076#1080#1072#1090#1086#1088#1072' 2')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo172: TfrxMemoView
        Left = 597.165740000000000000
        Top = 396.850650000000000000
        Width = 196.535450160000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1058#1050' '#1087#1088#1072#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072'/'#1093'.'#1093'.')
        ParentFont = False
        VAlign = vaBottom
      end
      object Memo173: TfrxMemoView
        Left = 389.291590000000000000
        Top = 396.850650000000000000
        Width = 196.535450160000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1058#1050' '#1083#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072'/'#1093'.'#1093'.')
        ParentFont = False
        VAlign = vaBottom
      end
      object Memo224: TfrxMemoView
        Left = 529.134200000000000000
        Top = 529.134200000000000000
        Width = 514.016080000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        WordWrap = False
      end
      object Memo80: TfrxMemoView
        Left = 801.260360000000000000
        Top = 627.401980000000000000
        Width = 241.889858980000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftRight, ftBottom]
        Memo.UTF8W = (
          
            '('#1056#1086#1089#1087#1080#1089#1100' '#1080' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072' '#1089' '#1060'.'#1048'.'#1054'. '#1088#1072#1073#1086#1090#1085#1080#1082#1072' '#1087#1088#1086#1074#1086#1076#1080#1074#1096#1077#1075#1086' '#1080#1089#1089#1083#1077#1076#1086#1074#1072 +
            #1085#1080#1077')')
        ParentFont = False
      end
    end
  end
  object frxDS6: TfrxDBDataset
    UserName = 'frxDS6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'date_fail=date_fail'
      'time_fail=time_fail'
      'firm_name_fil=firm_name_fil'
      'firm_name_sld=firm_name_sld'
      'ser_name=ser_name'
      'nom_object=nom_object'
      'incident_descr_e=incident_descr_e'
      'brig_t_nom=brig_t_nom'
      'brig_name=brig_name'
      'brig_kod_depo=brig_kod_depo')
    BCDToCurrency = False
    Left = 288
    Top = 376
  end
  object FrxRprtDoc9: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42444.675670613400000000
    ReportOptions.LastChange = 42446.496532152780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 384
    Datasets = <
      item
        DataSet = frxDS9
        DataSetName = 'frxDBD9'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 442.205010000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1055#1056#1040#1042#1050#1040' '#1054#1041#1065#1040#1071)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1086' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1103#1093' '#1075#1072#1088#1072#1085#1090#1080#1081#1085#1099#1093' '#1090#1077#1087#1083#1086#1074#1086#1079#1086#1074' '#1090#1080#1087#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 464.882190000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[pListSer]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 559.370440000000000000
          Top = 18.897650000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1103#1084', '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1084' '#1074' '#1047#1040#1054' "'#1059#1050' "'#1041#1052#1047'"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 151.181200000000000000
          Top = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1080#1079' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1099#1093' '#1076#1077#1087#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 559.370440000000000000
          Top = 37.795300000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[pbDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 687.874460000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1086#1076#1072' ('#1076#1072#1085#1085#1099#1077' '#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 786.142240000000000000
          Top = 37.795300000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date()]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 854.173780000000000000
          Top = 37.795300000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1075'.).')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 75.590600000000000000
          Width = 30.236240000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 30.236240000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1087#1086', '#1076#1086#1088#1086#1075#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 75.590600000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1090#1077#1087#1083#1086#1074#1086#1079#1072', '#1076#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 128.504020000000000000
          Top = 75.590600000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1090#1077#1087#1083#1086#1074#1086#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 177.637910000000000000
          Top = 75.590600000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088', '#1076#1072#1090#1072' '#1089#1086#1086#1073#1097'. '#1086#1073' '#1086#1090#1082#1072#1079#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 226.771800000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1088#1072#1073#1086#1090#1082#1072' '#1076#1086' '#1086#1090#1082#1072#1079#1072', '#1090'.'#1082#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 279.685220000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1074#1086#1076' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090'. '#1087#1086#1089#1083#1077' '#1088#1077#1084#1086#1085#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 332.598640000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090' '#1086#1073' '#1086#1090#1082#1072#1079#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 374.173470000000000000
          Top = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090' '#1086' '#1074#1074#1086#1076#1077' '#1074' '#1088#1072#1073#1086#1090#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 411.968770000000000000
          Top = 75.590600000000000000
          Width = 90.708720000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1061#1072#1088#1072#1082#1090#1077#1088' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 502.677490000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1085#1086#1074#1085#1080#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 555.590910000000000000
          Top = 75.590600000000000000
          Width = 124.724490000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 680.315400000000000000
          Top = 75.590600000000000000
          Width = 98.267780000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1095#1080#1085#1072' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 778.583180000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1043#1047#1056', '#1095#1072#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 956.221090000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1079#1077#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 854.173780000000000000
          Top = 75.590600000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1090#1082#1072#1079#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 823.937540000000000000
          Top = 75.590600000000000000
          Width = 30.236240000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1056'/'#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 903.307670000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1076' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 1001.575450000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1090#1072#1083#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 631.181510000000000000
          Top = 37.795300000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[peDate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 616.063390000000000000
          Top = 37.795300000000000000
          Width = 15.118058980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ' - ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 287.244280000000000000
          Top = 37.795300000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[pFirm]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 544.252320000000000000
          Top = 37.795300000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        DataSet = frxDS9
        DataSetName = 'frxDBD9'
        RowCount = 0
        Stretched = True
        object Memo29: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."depo_prip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'build_date'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."build_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 128.504020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."nom_loc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 177.637910000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 226.771800000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."probeg "]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 279.685220000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'date_close'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."date_close"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 332.598640000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 374.173470000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'akt'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."akt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 411.968770000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'prich_rem'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."prich_rem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 502.677490000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."vinov"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 555.590910000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'remont'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."remont"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 680.315400000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'prich_neispr'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."prich_neispr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 778.583180000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'time_stop'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."time_stop"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 903.307670000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'oborud'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."oborud"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 854.173780000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 823.937540000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sost_name'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."sost_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 1001.575450000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'detail_text'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."detail_text"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 956.221090000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'uzel'
          DataSet = frxDS9
          DataSetName = 'frxDBD9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD9."uzel"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 404.409710000000000000
        Width = 1046.929810000000000000
        object Memo28: TfrxMemoView
          Left = 978.898270000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
      end
      object Footer1: TfrxFooter
        Height = 41.574830000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        object Memo54: TfrxMemoView
          Left = 132.283550000000000000
          Top = 22.677180000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1054#1043#1054#1090#1074)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 544.252320000000000000
          Top = 22.677180000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1040'.'#1040'. '#1040#1083#1076#1086#1096#1080#1085)
          ParentFont = False
        end
      end
    end
  end
  object FrxRprtDoc10: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42444.675670613400000000
    ReportOptions.LastChange = 42446.434616909720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 432
    Datasets = <
      item
        DataSet = frxDS10
        DataSetName = 'frxDBD10'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 226.771800000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Top = 18.897650000000000000
          Width = 1050.709340000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1086' '#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1090#1077#1087#1083#1086#1074#1086#1079#1086#1074' [pListSer]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 170.078850000000000000
          Width = 86.929190000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1058#1045#1055#1051#1054#1042#1054#1047#1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 86.929190000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1087#1086' '#1087#1088#1080#1087#1080#1089#1082#1080' ('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077' '#1084#1077#1089#1090#1086#1085#1072#1093#1086#1078#1076#1077#1085#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 181.417440000000000000
          Top = 170.078850000000000000
          Width = 86.929190000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1054#1057#1058#1054#1071#1053#1048#1045
            '('#1076#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1085#1072' '#1088#1077#1084#1086#1085#1090')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 268.346630000000000000
          Top = 170.078850000000000000
          Width = 139.842610000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1095#1080#1085#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1085#1072' '#1088#1077#1084#1086#1085#1090
            '('#1074#1099#1087#1080#1089#1082#1072' '#1080#1079' '#1073#1086#1088#1090#1086#1074#1086#1075#1086' '#1078#1091#1088#1085#1072#1083#1072' '#1092#1086#1088#1084#1099' '#1058#1059'-152)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 408.189240000000000000
          Top = 170.078850000000000000
          Width = 268.346630000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 676.535870000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1085#1086#1074#1085#1080#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 771.024120000000000000
          Top = 170.078850000000000000
          Width = 98.267780000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1088#1080#1077#1085#1090#1080#1088#1086#1074#1086#1095#1085#1099#1081' '#1089#1088#1086#1082' '#1074#1074#1086#1076#1072' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 869.291900000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1073#1077#1075' '#1086#1090' '#1087#1086#1089#1090#1088#1086#1081#1082#1080',  '#1074' '#1090#1099#1089'. '#1082#1084'. '#1080#1083#1080' '#1089#1091#1090'.'#1084#1086#1090#1086'/ '#1095#1072#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 963.780150000000000000
          Top = 170.078850000000000000
          Width = 83.149660000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 151.181200000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date()]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 86.929190000000000000
          Top = 151.181200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time()]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 132.283550000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 86.929190000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1046#1045#1044#1053#1045#1042#1053#1040#1071' '#1057#1055#1056#1040#1042#1050#1040)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 472.441250000000000000
        Width = 1046.929810000000000000
        object Memo17: TfrxMemoView
          Left = 944.882500000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 370.393940000000000000
        Width = 1046.929810000000000000
        DataSet = frxDS10
        DataSetName = 'frxDBD10'
        RowCount = 0
        Stretched = True
        object Memo18: TfrxMemoView
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."nom_loc"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."depo_prip"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 181.417440000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."sost_name"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 268.346630000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."prich_rem"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 408.189240000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."remont"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 676.535870000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."vinov"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 771.024120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."srok_vvoda"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 869.291900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."probeg"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 963.780150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS10
          DataSetName = 'frxDBD10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBD10."date_postr"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 328.819110000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBD10."ser_name"'
        object Memo27: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBD10."ser_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 411.968770000000000000
        Width = 1046.929810000000000000
      end
    end
  end
  object frxDS9: TfrxDBDataset
    UserName = 'frxDBD9'
    CloseDataSource = False
    FieldAliases.Strings = (
      'depo_prip=depo_prip'
      'nom_loc=nom_loc'
      'build_date=build_date'
      'date_fail=date_fail'
      'probeg=probeg '
      'date_close=date_close'
      'akt=akt'
      'prich_rem=prich_rem'
      'vinov=vinov'
      'remont=remont'
      'prich_neispr=prich_neispr'
      'time_stop=time_stop'
      'sost_name=sost_name'
      'oborud=oborud'
      'uzel=uzel'
      'detail_text=detail_text')
    BCDToCurrency = False
    Left = 632
    Top = 384
  end
  object frxDS10: TfrxDBDataset
    UserName = 'frxDBD10'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ser_name=ser_name'
      'nom_loc=nom_loc'
      'depo_prip=depo_prip'
      'sost_name=sost_name'
      'prich_rem=prich_rem'
      'remont=remont'
      'vinov=vinov'
      'srok_vvoda=srok_vvoda'
      'date_postr=date_postr'
      'probeg=probeg')
    BCDToCurrency = False
    Left = 632
    Top = 432
  end
  object FrxRprtDoc11: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42447.457574421300000000
    ReportOptions.LastChange = 42521.589692662030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var myDate, myYear, myDay, index: integer;'
      '    tmp: string;                                             '
      'begin                                     '
      '  DecodeDate(Now(), myYear, index, myDay);                    '
      '  case index of'
      '     1: tmp := '#39#1071#1085#1074#1072#1088#1103#39';'
      '     2: tmp := '#39#1060#1077#1074#1088#1072#1083#1103#39';   '
      '     3: tmp := '#39#1052#1072#1088#1090#1072#39';'
      '     4: tmp := '#39#1040#1087#1088#1077#1083#1103#39';'
      '     5: tmp := '#39#1052#1072#1103#39';   '
      '     6: tmp := '#39#1048#1102#1085#1103#39';      '
      '     7: tmp := '#39#1048#1102#1083#1103#39';      '
      '     8: tmp := '#39#1040#1074#1075#1091#1089#1090#1072#39';      '
      '     9: tmp := '#39#1057#1077#1085#1090#1103#1073#1088#1103#39';      '
      '    10: tmp := '#39#1054#1082#1090#1103#1073#1088#1103#39';      '
      '    11: tmp := '#39#1053#1086#1103#1073#1088#1103#39';      '
      '    12: tmp := '#39#1044#1077#1082#1072#1073#1088#1103#39';                             '
      '  end;'
      '  Memo180.Text := tmp;'
      '  Memo181.Text := tmp;      '
      'end.')
    Left = 416
    Top = 456
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 1028.032160000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072' '#1086#1089#1085#1086#1074#1085#1099#1093' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1088#1072#1073#1086#1090#1099' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1087#1083#1086#1074#1086#1079'   -  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 71.811070000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ser_name]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 222.992270000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[nom_loc]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 287.244280000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[nom_section]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 366.614410000000000000
          Top = 37.795300000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1042#1080#1076' '#1058#1054', '#1056' '#1080#1083#1080' '#1056#1077#1082#1083#1072#1084#1072#1094#1080#1080' ('#1053#1056')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 71.811070000000000000
          Top = 56.692950000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1089#1077#1088#1080#1103', '#1080#1085#1076#1077#1082#1089')')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 222.992270000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1085#1086#1084#1077#1088')')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 287.244280000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1080#1085#1076#1077#1082#1089' '#1089#1077#1082#1094#1080#1080')')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072')')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 540.472790000000000000
          Top = 37.795300000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[name]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 540.472790000000000000
          Top = 56.692950000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1074#1080#1076' '#1086#1089#1084#1086#1090#1088#1072', '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103' '#1080#1083#1080'  '#1088#1077#1084#1086#1085#1090#1072')')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 75.590600000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1079#1072#1093#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 287.244280000000000000
          Top = 75.590600000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103' '#1089#1085#1103#1090#1080#1103' '#1072#1088#1093#1080#1074#1085#1086#1075#1086' '#1092#1072#1081#1083#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 83.149660000000000000
          Top = 94.488250000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1076#1072#1090#1072' '#1079#1072#1093#1086#1076#1072' '#1074' '#1076#1077#1087#1086')')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 468.661720000000000000
          Top = 94.488250000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077' '#1074#1088#1077#1084#1103' '#1089#1085#1103#1090#1080#1103' '#1076#1072#1085#1085#1099#1093' '#1089' '#1091#1082#1072#1079#1072#1085#1080#1077#1084' '#1076#1072#1090#1099')')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 113.385900000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1072#1088#1093#1080#1074#1085#1086#1075#1086' '#1092#1072#1081#1083#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 291.023810000000000000
          Top = 132.283550000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              '('#1091#1082#1072#1079#1072#1090#1100' '#1085#1086#1084#1077#1088'  '#1088#1077#1079#1072' ('#1092#1072#1081#1083' .res) '#1089' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1099#1083#1080' '#1089#1085#1103#1090#1099' '#1086#1089#1085#1086#1074#1085#1099#1077' ' +
              #1087#1072#1088#1072#1084#1077#1090#1088#1099' ('#1076#1072#1085#1085#1099#1077'))')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Top = 151.181200000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #8470' '#1087#1086#1079#1080#1094#1080#1080'   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 83.149660000000000000
          Top = 170.078850000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 181.417440000000000000
          Top = 151.181200000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 196.535560000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1090#1103#1075#1080)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 234.330860000000000000
          Top = 170.078850000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1077#1076'. '#1080#1079#1084'.'#1082#1042#1090')')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 291.023810000000000000
          Top = 151.181200000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1074#1077#1083#1080#1095#1080#1085#1099' '#1089' 15 '#1087#1086' 11 '#1087#1086#1079#1080#1094#1080#1080
            '('#1085#1091#1078#1085#1086' '#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100' 2230, 2080, 1920, 1740, 1550)')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 566.929500000000000000
          Top = 151.181200000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1086#1073#1077#1075#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 650.079160000000000000
          Top = 151.181200000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '('#1090#1099#1089'.'#1082#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 291.023810000000000000
          Top = 188.976500000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1074#1077#1083#1080#1095#1080#1085#1099' '#1089' 15 '#1087#1086' 11 '#1087#1086#1079#1080#1094#1080#1080
            '('#1085#1091#1078#1085#1086' '#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100' 2000, 1860, 1770, 1670, 1560)')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 291.023810000000000000
          Top = 226.771800000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1074#1077#1083#1080#1095#1080#1085#1099' '#1089' 15 '#1087#1086' 11 '#1087#1086#1079#1080#1094#1080#1080' ('#177'6)'
            '('#1085#1091#1078#1085#1086' '#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100' 1000, 970, 940, 905, 875)')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 566.929500000000000000
          Top = 188.976500000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1058#1054'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 566.929500000000000000
          Top = 226.771800000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1058#1054'-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 616.063390000000000000
          Top = 188.976500000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_to3_t_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 616.063390000000000000
          Top = 226.771800000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr1_t_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 616.063390000000000000
          Top = 264.567100000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr2_t_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 616.063390000000000000
          Top = 302.362400000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr3_t_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Top = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1083#1086#1078#1077#1085#1080#1077' '#1088#1077#1081#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 188.976500000000000000
          Top = 207.874150000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1077#1076#1080#1085#1080#1094')')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Top = 226.771800000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1088#1086#1090#1099' '#1044#1043#1059)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 188.976500000000000000
          Top = 245.669450000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '('#1077#1076'. '#1080#1079#1084'. '#1086#1073'./'#1084#1080#1085')')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Top = 264.567100000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 34.015770000000000000
          Top = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1085#1072#1076#1076#1091#1074#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 102.047310000000000000
          Top = 283.464750000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1077#1076'. '#1080#1079#1084'. '#1040#1090#1084')')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Top = 302.362400000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1054#1073#1086#1088#1086#1090#1099' '#1058#1050)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 427.086890000000000000
          Top = 264.567100000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1080#1072#1087#1072#1079#1086#1085' 75'#176'C - 95'#176'C)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 566.929500000000000000
          Top = 264.567100000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1058#1056'-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 566.929500000000000000
          Top = 302.362400000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1058#1056'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 427.086890000000000000
          Top = 302.362400000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1080#1072#1087#1072#1079#1086#1085' 70'#176'C - 80'#176'C)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 102.047310000000000000
          Top = 321.260050000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1077#1076'. '#1080#1079#1084'. '#1086#1073'./'#1084#1080#1085')')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 302.362400000000000000
          Top = 321.260050000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 302.362400000000000000
          Top = 283.464750000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 226.771800000000000000
          Top = 264.567100000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 257.008040000000000000
          Top = 264.567100000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1074#1086#1076#1099)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 245.669450000000000000
          Top = 302.362400000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 260.787570000000000000
          Top = 302.362400000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1084#1072#1089#1083#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 359.055350000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1090#1086#1087#1083#1080#1074#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Top = 359.055350000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 79.370130000000000000
          Top = 359.055350000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1058#1054#1058)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 120.944960000000000000
          Top = 377.953000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1077#1076'. '#1080#1079#1084'. '#1040#1090#1084')')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 257.008040000000000000
          Top = 359.055350000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1050#1058#1053'.'#1050#1052'19 '#1085#1077' '#1074#1082#1083')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 393.071120000000000000
          Top = 359.055350000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1090#1086#1087#1083#1080#1074#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo61: TfrxMemoView
          Left = 377.953000000000000000
          Top = 359.055350000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 453.543600000000000000
          Top = 359.055350000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1058#1053#1042#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 506.457020000000000000
          Top = 377.953000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 616.063390000000000000
          Top = 359.055350000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1050#1058#1053'.'#1050#1052'19 '#1085#1077' '#1074#1082#1083')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Top = 396.850650000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1078#1080#1084' '#1086#1093#1083#1072#1078#1076#1077#1085#1080#1103' '#1085#1072' '#1072#1074#1090#1086#1084#1072#1090#1077', '#1088#1091#1095#1085#1086#1077' '#1086#1093#1083#1072#1078#1076#1077#1085#1080#1077)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo66: TfrxMemoView
          Top = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1085#1091#1078#1085#1086' '#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 616.063390000000000000
          Top = 396.850650000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_postr_t_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 483.779840000000000000
          Top = 396.850650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090' '#1087#1086#1089#1090#1088#1086#1081#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Top = 453.543600000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074', (t '#1085#1077' '#1073#1086#1083#1077#1077' 620'#176'C)')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo70: TfrxMemoView
          Left = 483.779840000000000000
          Top = 453.543600000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1086#1082#1086#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077)
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 483.779840000000000000
          Top = 472.441250000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1088#1077#1076#1077#1083#1100#1085#1072#1103' '#1085#1077' '#1073#1086#1083#1077#1077' 1100 '#1040' '#1087#1077#1088#1077#1087#1072#1076' '#1084#1077#1078#1076#1091' '#1058#1069#1044' '#1085#1077' '#1073#1086#1083#1077#1077' '#177'50 '#1040')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 642.520100000000000000
          Top = 453.543600000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'V')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 668.976810000000000000
          Top = 453.543600000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1044#1055#1057#1087',')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo75: TfrxMemoView
          Left = 642.520100000000000000
          Top = 472.441250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1084'/'#1095#1072#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 642.520100000000000000
          Top = 491.338900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 642.520100000000000000
          Top = 510.236550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 642.520100000000000000
          Top = 529.134200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 642.520100000000000000
          Top = 548.031850000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 642.520100000000000000
          Top = 566.929500000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 642.520100000000000000
          Top = 585.827150000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Top = 510.236550000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Top = 529.134200000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Top = 548.031850000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Top = 566.929500000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Top = 585.827150000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Top = 604.724800000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 514.016080000000000000
          Top = 491.338900000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 514.016080000000000000
          Top = 510.236550000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 514.016080000000000000
          Top = 529.134200000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 514.016080000000000000
          Top = 548.031850000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 514.016080000000000000
          Top = 566.929500000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 514.016080000000000000
          Top = 585.827150000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Top = 472.441250000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1077#1088#1077#1087#1072#1076' '#1084#1077#1078#1076#1091' '#1094#1080#1083#1080#1085#1076#1088#1072#1084#1080' '#1085#1077' '#1073#1086#1083#1077#1077' 80'#176'C')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo95: TfrxMemoView
          Left = 71.811070000000000000
          Top = 491.338900000000000000
          Width = 170.078693780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1083#1077#1074#1099#1081' '#1088#1103#1076)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo96: TfrxMemoView
          Left = 313.700990000000000000
          Top = 491.338900000000000000
          Width = 170.078693780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1087#1088#1072#1074#1099#1081' '#1088#1103#1076)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo98: TfrxMemoView
          Top = 491.338900000000000000
          Width = 71.810913780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 241.889920000000000000
          Top = 491.338900000000000000
          Width = 71.810913780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Top = 623.622450000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Top = 642.520100000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 241.889920000000000000
          Top = 510.236550000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 241.889920000000000000
          Top = 529.134200000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 241.889920000000000000
          Top = 548.031850000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 241.889920000000000000
          Top = 566.929500000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 241.889920000000000000
          Top = 585.827150000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 241.889920000000000000
          Top = 604.724800000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 241.889920000000000000
          Top = 623.622450000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 241.889920000000000000
          Top = 642.520100000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 483.779840000000000000
          Top = 491.338900000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 483.779840000000000000
          Top = 510.236550000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 483.779840000000000000
          Top = 529.134200000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 483.779840000000000000
          Top = 548.031850000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 483.779840000000000000
          Top = 566.929500000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 483.779840000000000000
          Top = 585.827150000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 30.236240000000000000
          Top = 510.236550000000000000
          Width = 211.653543307087000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 30.236240000000000000
          Top = 529.134200000000000000
          Width = 211.653543307087000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 30.236240000000000000
          Top = 548.031850000000000000
          Width = 211.653543307087000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 30.236240000000000000
          Top = 566.929500000000000000
          Width = 211.653543307087000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 30.236240000000000000
          Top = 585.827150000000000000
          Width = 211.653543307087000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 30.236240000000000000
          Top = 604.724800000000000000
          Width = 211.653543307087000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 30.236240000000000000
          Top = 623.622450000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 30.236240000000000000
          Top = 642.520100000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 272.126160000000000000
          Top = 510.236550000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 272.126160000000000000
          Top = 529.134200000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 272.126160000000000000
          Top = 548.031850000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 272.126160000000000000
          Top = 566.929500000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 272.126160000000000000
          Top = 585.827150000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 272.126160000000000000
          Top = 604.724800000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 272.126160000000000000
          Top = 623.622450000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 272.126160000000000000
          Top = 642.520100000000000000
          Width = 211.653543310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 604.724800000000000000
          Top = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 483.779840000000000000
          Top = 604.724800000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1079#1088'. '#1074#1086#1079'. '#1074#1093'. '#1058#1050)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 483.779840000000000000
          Top = 623.622450000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1085#1077' '#1073#1086#1083#1077#1077' 650 '#1084#1084'.'#1074#1086#1076'.'#1089#1090'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 483.779840000000000000
          Top = 642.520100000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1044#1072#1074#1083#1077#1085#1080#1077' '#1084#1072#1089#1083#1072', ( '#1056' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 600.945270000000000000
          Top = 642.520100000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1084#1072#1089#1083#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo136: TfrxMemoView
          Top = 661.417750000000000000
          Width = 483.779703310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1091#1088#1073#1086#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088#1072' ('#1085#1077' '#1073#1086#1083#1077#1077' 620'#176'C)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 64.252010000000000000
          Top = 680.315400000000000000
          Width = 177.637753780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1058#1050' '#1083#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072'/'#1093'.'#1093'.')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo138: TfrxMemoView
          Left = 287.244280000000000000
          Top = 680.315400000000000000
          Width = 196.535403780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1074#1099#1093#1083#1086#1087#1085#1099#1093' '#1075#1072#1079#1086#1074' '#1058#1050' '#1087#1088#1072#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072'/'#1093'.'#1093'.')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo139: TfrxMemoView
          Top = 680.315400000000000000
          Width = 64.251853780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 241.889920000000000000
          Top = 680.315400000000000000
          Width = 45.354203780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 151.181200000000000000
          Top = 699.213050000000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 393.071120000000000000
          Top = 699.213050000000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 241.889920000000000000
          Top = 699.213050000000000000
          Width = 151.181141420000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Top = 699.213050000000000000
          Width = 151.181141420000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 483.779840000000000000
          Top = 680.315400000000000000
          Width = 98.267721420000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 582.047620000000000000
          Top = 680.315400000000000000
          Width = 136.063021420000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 521.575140000000000000
          Top = 661.417750000000000000
          Width = 60.472323780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1084#1072#1089#1083'.'#1074#1099#1093'.2')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo150: TfrxMemoView
          Left = 483.779840000000000000
          Top = 661.417750000000000000
          Width = 37.795143780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Left = 631.181510000000000000
          Top = 661.417750000000000000
          Width = 86.929033780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1084#1072#1089#1083#1072'('#1088#1077#1075#1091#1083#1080#1088')')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo152: TfrxMemoView
          Left = 582.047620000000000000
          Top = 661.417750000000000000
          Width = 49.133882680000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Top = 718.110700000000000000
          Width = 718.110641420000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1086#1090#1086#1088#1086#1074' '#1074#1077#1085#1090#1077#1083#1103#1090#1086#1088#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Top = 737.008350000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1042'1 (t '#1074#1082#1083' 79 '#177'2'#176'C  )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 179.527559060000000000
          Top = 737.008350000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1042'2 (t '#1074#1082#1083' 83 '#177'2'#176'C  )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 359.055350000000000000
          Top = 737.008350000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1042'3 (t '#1074#1082#1083' 79 '#177'2'#176'C  )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 538.582677170000000000
          Top = 737.008350000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1042'4 (t '#1074#1082#1083' 75 '#177'2'#176'C  )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Top = 755.906000000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 179.527559060000000000
          Top = 755.906000000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          Left = 359.055350000000000000
          Top = 755.906000000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          Left = 538.582677170000000000
          Top = 755.906000000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          Left = 275.905690000000000000
          Top = 774.803650000000000000
          Width = 153.070849060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1079#1072#1073#1086#1088#1090#1085#1086#1075#1086' '#1074#1086#1079#1076#1091#1093#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo163: TfrxMemoView
          Top = 774.803650000000000000
          Width = 275.905533780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          Left = 428.976377950000000000
          Top = 774.803650000000000000
          Width = 109.606299212598000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo165: TfrxMemoView
          Left = 538.582677170000000000
          Top = 774.803650000000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1074' '#1090#1086#1095#1082#1077' '#1089#1085#1103#1090#1080#1103' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo166: TfrxMemoView
          Left = 56.692950000000000000
          Top = 812.598950000000000000
          Width = 245.669291340000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1087#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 302.362400000000000000
          Top = 812.598950000000000000
          Width = 415.748016850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          Top = 831.496600000000000000
          Width = 718.110416850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Top = 850.394250000000000000
          Width = 718.110416850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          Top = 869.291900000000000000
          Width = 718.110416850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          Top = 888.189550000000000000
          Width = 718.110416850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Top = 944.882500000000000000
          Width = 226.771516850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          Left = 415.748300000000000000
          Top = 944.882500000000000000
          Width = 302.362116850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          Top = 963.780150000000000000
          Width = 226.771516850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1044#1086#1083#1078#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          Left = 415.748300000000000000
          Top = 963.780150000000000000
          Width = 302.362116850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1057#1051#1044', '#1057#1054', '#1057#1059)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 170.078850000000000000
          Top = 982.677800000000000000
          Width = 188.976216850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '/'#1060#1048#1054' '#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103'/')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 582.047620000000000000
          Top = 982.677800000000000000
          Width = 136.062796850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '/'#1060#1048#1054' '#1053#1072#1095#1072#1083#1100#1085#1080#1082#1072'/')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Top = 1001.575450000000000000
          Width = 52.913136850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #171'           '#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 52.913420000000000000
          Top = 1001.575450000000000000
          Width = 136.062796850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          Left = 188.976500000000000000
          Top = 1001.575450000000000000
          Width = 56.692666850000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date] '#1075'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1001.575450000000000000
          Width = 41.574546850000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 415.748300000000000000
          Top = 1001.575450000000000000
          Width = 52.913136850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #171'           '#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 468.661720000000000000
          Top = 1001.575450000000000000
          Width = 136.062796850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          Left = 604.724800000000000000
          Top = 1001.575450000000000000
          Width = 56.692666850000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date] '#1075'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 423.307360000000000000
          Top = 1001.575450000000000000
          Width = 41.574546850000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 638.740570000000000000
          Top = 642.520100000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Top = 812.598950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Top = 982.677800000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 415.748300000000000000
          Top = 982.677800000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 102.047310000000000000
          Top = 264.567100000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 302.362400000000000000
          Top = 302.362400000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          Left = 83.149660000000000000
          Top = 75.590600000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
      end
    end
  end
  object FrxRprtDoc12: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42447.457574421300000000
    ReportOptions.LastChange = 42527.623293831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      ''
      'End.          ')
    Left = 416
    Top = 504
    Datasets = <
      item
        DataSet = frxDS12
        DataSetName = 'frxDS12'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 510.236550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 56.692950000000000000
          Width = 264.567100000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D616765F2200000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080038010C03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
            AF99FF00E0AC7FB5D5EFEC7BFB21EA7ABE8574969E2CD7EE23D17459080CD04B
            265A49C29EA63892461C11BB6678AFA62BF19BFE0E08FDA18FC44FDA8F46F015
            A4DBB4EF87FA7896E541C837D7615DBF1585611EDBDABC5E20C73C2E0A738BB4
            9E8BD5FF0092BB3F59F04F8421C45C5B86C2D78F351A77A9513D538C364D7552
            938C5F933E19F15F8C357F1EEBD71AAEBBAB6A7ADEA976C5A7BCD42E9EE6794F
            5F99DC926BECFF00F822C7EDCDE25F84BFB4F681F0F759D7EFEF3C0DE3366D36
            1B2BCB86962D32F0A936EF06E27CB0ECBE5155C29F314E32057C61A0F84F52F1
            441A9C9A7595C5E47A358BEA57CD12E45ADB23A234AFE8A1A441FF0002155F47
            D6AF3C35AC59EA5A74CD6DA869B711DDDA4CA70629A360E8C3E8CA0FE15F9560
            F17530D5E3888B7A3BFAF75F33FD1DE29E18C067D93D7C92BC63CB28B8AD17B9
            2B7BB24BA38BB35FE47F50F4570BFB327C6CB4FDA3BF67DF07F8E6CB6795E25D
            2E1BC744E90CA5712C7FF00903AFFC06B81FF82807EDE9E1DFD823E11C5AE6A9
            6CFAC6B9ABCAD6BA2E8F148237BF95402CCCF83B22404166C1EAA002580AFD9E
            78BA50A3F589CAD0B5EFE47F94B83E1BCCB179AAC930D49CB12E6E1C8B7E64DA
            6BB2B59DDBD124DB7647BC515F869E3DFF0082ED7ED0BE2ED5A69B4DD63C39E1
            7B4909F2ED6C3468A6F281EDBE7F3189F7E3E95CC68FFF000596FDA4B4698B8F
            88ED75B86DDB75A35848A3E83C91CD7CD4B8CF029D9464FE4BFCCFDEE87D1578
            BA74F9E75A845F6739DFE76A6D7DCD9FBE5457E54FEC51FF0005FBD6F52F1FE9
            9E1DF8CBA768FF00D95A9CCB6ABE23D32136CD6323B0557B884B153164FCCE9B
            4A8E76900D7B57FC16C7F6D8F88FFB1EE93F0DA6F875AEDB68C7C453EA0B7CD2
            69F05E09D624B731E3CD56DB8F31BA75CD7A51E20C24F0B2C5C1B6A36BAEAAEE
            DB7FC13E0F11E0A71361B88B0FC358A8C2156BF33A73726E9C9422E52F7926F4
            4B671BABABA49A67DD9457E57FFC12EBFE0B19F11BE2EFED33A57C3FF89F77A7
            6BD65E2E2F6FA76A10D84767716174B1B48A8444023C6E11872BB836DE71915F
            6B7FC147BF6CAB5FD893F664D57C4C8D0C9E24D43FE25BE1EB5939F3EF5D4ED6
            2BDD2301A46F64C75615B61739C357C34B171768C6F7BEEAC799C43E14E7F93F
            1050E1BAF08CEBD7E5E4E46DC64A4DABDDA4D24D3E6BA56B37B6A7BD515F8389
            FF0005B4FDA5C8551E39B291CE1405F0E58967278000117249EC3D6BEF5F88FF
            00F050CF197FC13E3F63AF0BDF7C60BB8BC6FF001A7C6EB25E59E891C10D843A
            6478521663120C2440A07382CF23B2AF0372F161789F095D4A4949462AEDB4AD
            E5B37ABE88FAAE22FA3F712E51530F879CE955AD88972D3A74E52729595E52F7
            A114A315ACA4DA4AE8FBBA8AFC27F1E7FC1713F68AF19DF4EF6BE27D1BC356D2
            B652DF4BD160C42339003CE2473F89F5AC4D27FE0B2BFB4969175E68F88EF73C
            6DD973A358C89DBB79239E3F9D71BE33C12765197DCBFCCFA8A5F454E2D953E7
            957C3C5F673A9F9AA6D7E2CFDF3AFC12D5BFE4317BFF005F32FF00E86D5F5AFF
            00C13FFF00E0BBBA97C47F893A4782BE2FE9DA45AB6B73A5958F88B4D468225B
            873B512E61258287621448840048CA804B0FA02E3FE08CBF0BEE6E6595B59F1B
            EE95DA438BE83192493FF2C7DEBE8B2DCCF0F8CA7ED283BF7EE8FC578DB80B39
            E15C6AC0E714F95C95E324EF192EF17F9A766BAA5747E61D15F63FFC1407FE09
            EDE0BFD953E0959F893C3DA8788EEAFAE35786C192FEE6292211BC72B1202C6A
            7765077F5E2BE376385AF4D3B9F182D7B2FF00C13D3FE4F5BE1E7FD8424FFD26
            9ABEA7F80DFF00049AF873F143E0A784FC477FAB78C22BED7749B6BFB8482F21
            5895E48D5D8283092064F1926B9DFDA0FE057C31FF0082666B5E18F186892F8A
            75FF001B7DA257D1B4EBDBF885A1DB1949269F6441BCB5120E1482CC40C81922
            7996C16EA7E85515F937AE7FC1587E35EAD7ED2C1AE68DA64649C416DA442C8A
            3EB26F6FD6B2AC7FE0A79F1C2C2495878CD65F34E489B4AB4709D7EEFEEF8EB5
            3C8CAB9FAF3457E74FECA9FF000570F154BF1174AD13E23AE97A8E8FAADC25A1
            D56DEDC5B4F62EE76ABBAAFC8F1EE23761548073CE315BBFF051DF8C9F1B3F65
            FF008AF1DF689E33BF8FC17E25CBE9E3EC36AE2C6751FBCB62C6227FDB4C9C95
            2C39D86972BBD82E7DF3457E62FEC93FF053DF1C697F1CF4983E21F895F57F0A
            6AADF61B9696D608BEC0EE408EE331A29C2B60367236B31ED5F44FFC14F7F6D7
            BFFD9DFC33A5786FC21A8AD9F8BF5B617725C2C692B69F66A7EF6D6057748C36
            8C83C2B9EC28E577B05CFAC68AFC93F87DFB73FED09F14FC71A5787342F19DED
            DEAFACDC2DADB45FD9F698DC7AB31F2B85500B31ECAA4D7EAAF80743D43C33E0
            AD2EC356D5A7D7753B5B648EEF509A348DEF2503E67DA802AE4E7000E0629356
            1DCD7A28AF85BF6FDFDB33E2078BFF006AFF00067ECF7F0275A5D27C63793ADE
            78975A4B68EE5747B72BBB630915946D8C995F8CF30A839722B8F198C861A9FB
            49EB76924B76DEC91F4BC2BC2D8BCFF1AF07859460A3194E739B6A14E105794E
            6D26D25B6CEEDA4B73EE9A2BE40FF82A27EDB3ABFEC75F043C3FE0DF06DF5D6B
            3F173C6DE5695A2398A39AEC60A4725E347B76191988441B769924E98422BE80
            FD97BC21E33F03FC09F0F58FC43F1149E29F1AFD9FCED5EFDA28A34F3DC96689
            046AABB23C84071960B93D6953C6C2788961E29DE2936FA2BECBD7A978DE14C4
            E1326A39DD79C542B4E51A71D79E6A1F1544AD6E44FDDBB69B96CB46CEA3C7FE
            36B0F86BE05D67C45AACA20D3342B29B50BB909C6C8A242EC7F2535FCD3FC5CF
            8A1A87C6DF8ABE24F18EAA4FF68F8A3529F539C1FF009666572C107B2AED51EC
            A2BF637FE0BDDFB42FFC2A8FD8DD3C25693F97AA7C47BE5D3B00FCDF6287135C
            9FA1C4719F69ABF142593CA899B9F9413C57C1F19E339EBC70CB68ABBF57FF00
            03F33FB2BE8A9C29F56C9F119F555EF6225C91FF0004376BFC536D3FF023F4CB
            FE084DFB2159FC5AF815F1975ED6E03F62F19D9BF82ADA4201C42622F72C07FB
            F24383EB17B57E6EF8ABC2B7DE04F14EA7A16A71B43A968979369F768C305258
            5DA371FF007D29AFE847FE09BFF01FFE19C3F627F87FE19962116A234C4D4351
            1B36B1BAB92679437BAB49B3E882BF25FF00E0B6DF027FE14BFEDE9AE5FDBC3E
            569BE3BB58BC410103E5333662B81F5F3632E7FEBA8A8CEB29F619650A896B1D
            FF00EDED7F07A1D1E147895FDAFE206738394EF4EB6B4BB5A87EED5BFC50F79F
            F84FAEBFE0DDBFDA1FFE126F83FE2DF86579366EFC2B7A356D39598926D2E49F
            3140F449D58FFDB715F347FC17E7E255CF8C3F6EC4D09DDBEC7E11D02D6DE18F
            3F289272D3C8D8F521A21FF001E95E53FF0004B1FDA1FF00E19ABF6E3F05EB17
            3388347D6A73E1FD5199B6A082E8AA2BB7B24C2173ECA6BA6FF82D8583D87FC1
            49BC765F1FE936DA6CE98FEE9B2857F9A9AC2B63DD5C8E34AFAC64A2FD2CDAFF
            002F91EC657C194B2DF17EB660A3EE57C3CEAC7CAA73429D4F9BBB93FF0019C3
            7FC13D7F62EB9FDBB3F6878BC1CBA949A2E97676526A9AADFC70896482DD1910
            2A29E37BBC8AA09E07CC707183F697EDA7FF000415F0A7C2EFD9FB5EF167C39F
            11789E5D63C2DA7C9A94F61ABCB15C45A945129794232468D1C9B0315EA09006
            06723CE3FE0DD7D7ACF4EFDAF3C616339896EF52F0A31B52CD876F2EEA12EAA3
            BF0C09FF0073EB5FAABFB55F882D3C2BFB317C44D46FA64B7B4B3F0D6A324923
            1002816D27AF73D07B915E9E479460EBE5B2AB563793BEBDADFD5CF81F183C4F
            E27C9F8F6865D96D670A31F65EE24AD3E77EF7369777F87CADA59EA7F356C16E
            21C7DE475FCC1AFB7BFE0A3BF13AEFE2FF00FC13BFF64CD72FE66B8BE934FD4E
            CEE256396924B616D6ECC4F724C5927D4D7C3F64862B3894F055003F957D6DFB
            5C44D17FC12EBF64FDCA5773F8918647506F1483F88AF94C0C9FD5F111E9CABF
            F4B8FF0099FD1DC5F87A6F3AC96B35EF47115127E52C2E21BFBF957DC79AFF00
            C1397FE4FE7E0FFF00D8D16BFF00B35775FF00056CFDB48FED89FB52DE8D2EE8
            CDE0BF0599349D0C2B7EEEE5837FA45D8FFAE8EA029FF9E71A7A9AF35FD84746
            7F12FED97F0DB4C8EE1ED24D4F595B34B84FBD034B1C881C7BA96CFE15C0FC46
            F865AC7C15F1F6B1E11F105AB596B7E1BBB7D3EF216ECF19C6E07BAB0C329EEA
            C0F7A1622AC700E947E194F5F92565FAFC875326CBEBF192CCAB34EBD1C3A505
            D94EA54539AF3D146FD149A7F123EDDFF8219FEC1A3E3B7C596F8A7E25B3F33C
            27E07BA0BA5C52AFC9A96A8B860D8EE9002ADEF2327F718579B7FC16BBE27DC7
            C48FF8287F8BADE49246B5F0A5B59E896A8DD23558566931F592773F957E817F
            C108FF00698F0EFC4FFD916CFC036A9069FE26F879BE1BEB55C03790CD2BC91D
            DA8EA77166573D9D4F665AFCD3FF0082AE44D0FF00C145FE2C07565275689806
            18C83690107E95EEE6146951C928FB177E7926DF9D9E9F2DBE47E41C159AE619
            AF8B599FF6AC1C5E1A8CA14A2F68C3DA53B4979D44F9AFDA56D922D7FC1337F6
            083FB7DFC69D4745BCD5EE742F0EF876C96FF54BAB6883DC49BDF6470C5BB2AA
            CD873B88380878248AFA77FE0A1BFF000440F0AFECF7FB3BEB7E3FF87BE20F12
            4AFE15B7FB66A1A66AF247742EA00C048F1C888851914EEC10C0853D0F34CFF8
            36EB5CB683E29FC55D35A502F2E74AD3EE6288F578E39A75761F432A67FDE15F
            7AFF00C14CB5CB6F0F7EC01F176E2EE510C4FE19BBB7563DE4953CA8D7EACEEA
            3F1AEECAB28C1D5CA255EA46F2B49DFB5AF6FC8F90F11BC4DE26CBBC4CA39460
            ABB8E1E33A11F676569AA8A0E57D2EDB72693DD74B33F9E1901643B58A37F0B0
            EAA7B115FD24FEC79F132E3E32FECA7F0EBC5376ED25E6B9E1DB2BBB9761CBCC
            D0AF98DF8BEE3F8D7F36F5FD0A7FC12E34F934BFF8279FC228A591E473E1CB79
            32C08203E5D473E8180FC2B9F82A4D622A47A72FE4FF00E09ED7D2D30D4A5926
            0710FE38D5697A4A0DBFC631385FF82CDFFC9A8E99FF00632DAFFE89B8AFCC07
            FB87E95FA7FF00F059BFF9351D33FEC65B5FFD13715F980FF70FD2BF4C86C7F0
            6BDCFDAEFD8FBFE4D4FE1CFF00D8B963FF00A212BE06FF0082CBEB4DA87ED4FA
            55A65F669DE1D80283D019279D891F90FCABEF9FD8FBFE4D4FE1CFFD8B963FFA
            212BF3EFFE0B1103C5FB5E42EC8CAB2F87AD0A123860259C1C7E3531DCAE878A
            FECCFE17F0278BBE2BDBDB7C48D7E6F0EF8523B79269EE21DDE64F20DA122055
            58AE724938E8A46466BD7FF696F863FB33E91F096FEF7E1C78E353BBF15DAB46
            D6B652493CE97A0BAABA1DF1285C292DBB70FBBDF38AF01F86BF0ABC47F18FC4
            8747F0B69175ADEA8216B936D6E543F96A54337CC40C02CBDFBD77FF00F0C03F
            1A3FE89CEBDFF7DC1FFC72AFA9278E5D315B690A9C3052411D8D7ECF78CFE106
            9DFB5BFEC95A7E87AF655B5ED1AD2EE2B9C0692CEE8C2AE932FBAB1E7D4161D0
            D7E6B7847FE09AFF0019BC69AF41A7CBE0DBCD1A0B870935EDF5C4290DB21386
            73872CD819385049AFD71F0C6856FE08F0869FA644F8B4D22CE3B547738C2468
            1413E9C2D44DF61A3F0D7E247C3BD57E15F8E757F0CEBD6DF66D5747B86B5B98
            CFDD623A329EE8CA4329EE18541E2CF18EA9E39D5FFB4359BFB8D46F5608ADBC
            F9DF7308A2411C6B9F455503F327924D7AB7EDFDF1D349FDA17F69FD6B5DD0A3
            8BFB26D628F4CB6BA45C1D4161DC0CE7D4316217FD854AF169177211C1E3A30C
            83F5AD093F497FE0927FB227FC203E0D3F12F5EB62BAD788A0F2F488654C3595
            89C1F339E8F3601F640BFDE22BED1AF34FD923E3E68FFB46FC0AD175FD2162B6
            2912D9DED8A71FD9F711A80F163B28E0AFAAB29EF5E8D7979169D692DC5C4B1C
            10408649249182A46A064B1278000EA4D62DF7344AFA23C5FF00E0A05FB64697
            FB0FFECDBABF8C2EFC89F57901B2D0EC646C7DBAF5D4EC0475D8801773D950F7
            22BE7DFF0082667C0687F638FD9C7C5DFB417C60BD78FC69E37B693C41ADDF5E
            8FDFD858B1332C383CF9B2B10EC839DCD1478F90579B7C35B49BFE0B21FF0005
            119FC637D1C937C0BF8333F91A4C1203E4EB577B83292A783E632ACAFC711242
            87EF9AD6FF008289FC41D63FE0A29FB60E83FB2FF816F658BC37A1DCAEA5E3BD
            52DF9587CA2098C9E87C90CA003C19E48C1FF566BE46B633DA4DE392BA4F9692
            FE693D1CBFCBC9367F4B657C2CB01848F08CA7ECA7522B119855FF009F342369
            428FF8ACD4A4BAD49423AA4C97FE099DF0BF5AFDBBFF006A9F117ED55F102C9E
            1D3E1B87D3BC0DA6CDF325AC71EE8FCD51D08894B206030D33CEDD5457E8ED62
            FC3AF87DA47C27F01E91E19D02CA2D3B45D0AD23B2B2B688616289142A8F73C7
            24F24924F26B6ABDFCBB07F56A3C8DDE4F593EEDEEFF00CBC8FC6B8E78A9E7D9
            9BC4D287B3A14D2A7469F4A74A1A423EBD64FAC9B67E18FF00C170BF686FF85D
            DFB71EA3A3DACDE6693F0F2D57428402769B93FBDBA6C7AEF658CFFD71AF18FD
            83FE067FC348FED87F0FBC20F099ACAFB568EE7505071FE896F99E7CFD5232BF
            5615FA57E27FF83797C13E32F136A5AC6A5F137C7D77A96AF772DF5DCEF159EE
            9A695CC8EC7F75DD989FC6BD5FF61CFF008245782BF61BF8B979E32D2BC45E21
            F11EA93E9AFA6C2BA9A4012D15DD19DD3CB453B8EC0BC9E84FAD7C43E1EC7623
            1FF58C44572B95DEAB6BEDF7687F5C43C71E10C9783BFB1B23AF2957A547921E
            E4D5EA38DB9AED24BDE6E6CFACC0C0AFCF2FF83887E067FC25BFB3A785BC7D6D
            0EEBAF066ABF63BA70BCFD92EC04E4FA09921FFBE8D7E86D717FB457C0DD2BF6
            96F81FE26F01EB724F0E99E27B17B2966831E6DB9382B226E046E460AC323195
            15F6D9A613EB5849D0EAD69EBBAFC4FE49F0F789FF00D5EE24C1E70FE1A735CD
            6FE47EECFF00F256EDE67F344C095F95991BB329C153D88F7AFAFBFE0A37677D
            FB467C10F83FFB43C1135C43E21D0A3F0B78A264F9BEC9ABD9BC881A4FEE897F
            79B73FDD51D5867EBB1FF06E17C3CFFA28BE3BFF00BF567FFC6ABE8FFD91FF00
            E09C1E15FD963E0978A3E1DDC6A9A878F3C21E2ABA37771A76BF6D0490C6CD1A
            A4802A200436C43CF4650460D7C2E0B8631B69D1ACAD192DEE9D9AD53FCD7CCF
            EC1E2EFA4170A7B5C2E6B94D4955AD426EF1709479E9545CB522A4D593D21357
            D2F04BA9F827F0E7E246BDF087C6FA77893C31AB5E687AF6932F9B697B6AFB64
            85B041F62A4120A90430241041AF5BFDA0FF00E0A59F1ABF6A1F028F0CF8C7C6
            4F75A0B6D3716765670D925F15391E7794A0C83201DA4EDC8076F15FA77E3EFF
            0082007C09F16EB325DE99278CFC2C92B9636BA76A8B25BA0E78513C72301FF0
            2ED5CF5AFF00C1BABF082376F37C5BF11A55326E502EED170BC7CBFF001EFF00
            5E7DEB25C359B538BA54E5EEBDED2D1FC8F46AF8F9E1AE3ABD2CC71945BAF4FE
            194E8294E1D7497BD6B3D7496FAA3F1FBC2BE15D4FC79E29D3742D12CA6D4B59
            D66EA3B2B0B48972F733C8C15100F727AF61927815FA07FF0005A9F82E9FB3AF
            ECADFB33F81D59246F0CD8DF58CD227DD966586CFCD71ECD2163F8D7E82FECA7
            FF0004D5F845FB1C6A4753F087870C9AF9468FFB67549DAF2F911861951DBE58
            C1EFE5AAE738391543F6FCFF008274787BFE0A0769E15875EF116BBA00F0A497
            524074D4858CE671106DFE62B74F28631EA6BD2A3C2F5E8E06AC347527649744
            934F767C2E6BF487CA733E2FCB71094E9E070AEA4A5292BCA529529C13E58F35
            92BD96ADFBCDBB1F8BFF00F04E5FF93F9F83FF00F6345AFF00335F7BFF00C17D
            FF0061BFF848BC3B6FF1BBC39699BED1E38EC7C511C4BCCF699DB0DD90072622
            7631FF009E6CA7A475E8DF01BFE083BE06F809F1ABC2DE36B1F1D78CAFEF7C2B
            A8C7A9416D731DA88A774CE15B6C61B073D8D7DBDE22F0F58F8BBC3F7DA56A76
            B0DF69BA9DBC96B776D32EE8EE22752AE8C3B82A4823DEBA32BE1EA9F50AB85C
            5AB393BAEB6D347FD743C3F10BC6FC03E31CBF88B872A3A90A30E4A89A71E68B
            9B728EA96E9DD3E9249F43F9C1FD94BF698D7FF643F8EFA1F8EFC3CC5EE34B93
            65DD997DB1EA768F8135B3FB301907F85D51BF86BE88FF0082C8784AC3E22FC4
            7F0AFC7CF08B9BFF00027C5BD26DF6DDAAE3ECBA85BA794F04A07DC93CB45183
            FC514A3F86BEB0BCFF0083717E1B4B7B335BF8FF00C776D6EF23345085B47F25
            092553718B27030327938E6BDE7F659FF825FF0084FF0066FF00847E28F87FA8
            EB5AA7C43F03F8A265B99745F10DB5BC96D693630F245B114A97C213E8C81860
            E49F3B0BC3B8F746584AE9283D53BA7692FD1AD1FC99F75C47E38F064334C3F1
            3653394F134D3A738724A2EA51934DC799AB295395A71BBB3B4A2DEA9AFC2EF8
            47F18FC51F017C7969E27F076B77BE1FD7AC432C5776AC3251BEF232B02AE8D8
            1956041C0E3815E85FB497FC141FE2FF00ED6DE1FB6D23C75E2F9B51D1ED9D65
            1A7DADAC5656D2C8BF764912251E6303C8DC480790057EA278CFFE0DF6F817E2
            3D59EE74DBBF1C78763762C6D6CF5549615F65F3E391C0FF00811ACAB7FF0083
            76BE0D473A349E27F88F2C60E593EDF6ABBC7A645BE47E15CCB86B36841D184B
            DD7BA52D1FC8F76A78FBE1B62B134F34C4D16EBC17BB29504EA47C94B5B7CA47
            E447C2CF85BAD7C6FF00893A2783FC3B6D25DEB7E23BB4B1B48D067696383237
            A222E5D8F40AA4D7F4A7F0B7C036BF0A7E19F87BC3163CD978774DB7D32038C6
            E486258D4E3D485AF35FD95BFE09FDF0ABF63549A5F03F86A3B6D56EA3F2AE35
            6BC95AEF50993AEDF35F2554900954DAA481C715ED15F55C3D91CB01094AABBC
            E5DB6491FCE3E3878BB478CF1342865F4E50C350E66B9ADCD294AD76D26D2492
            B455DBD5B7BD97C93FF059BFF9351D33FEC65B5FFD13715F980FF70FD2BF6BFF
            0069FF00D99B44FDAB7E1E41E1AD7AF354B2B2B7BE8F50592C244494BA2BA804
            BAB0C61CF6EC2BC0CFFC1167E1A11FF230F8DFFF0002ADBFF8C57D3C64923F05
            68F7BFD8FBFE4D4FE1CFFD8B963FFA212BE28FF82D8781AE6C7E2CF83BC4A216
            FB0EA1A5C9A61947413452B4814FA12B2923D76B7A57E817C35F01DAFC2EF87B
            A2786EC64B89ACB42B186C2092720CAE91A0452C4003381CE00AA9F177E0EF87
            3E3B781EE7C3BE29D2E1D574AB921CC6F95689C7DD91186191C6786041EBEB52
            9D9DC7D0FC4EF86FF1275DF843E34B3F10F86F519B4AD62C0930DC44012030C3
            2956055948E0820835EC7FF0F44F8E3FF438C3FF00828B3FFE375F5C5E7FC117
            BE184D72ED0EB7E36B78C9CAC62F20709F8B424FE66A3FF872D7C35FFA187C6F
            FF008156DFFC62B4E688ACCF3EFF00827CFF00C145BE207C54FDA0AC3C1BE33B
            CB4D72C75F8E616F70B671DBCD67347134A3FD580AC8C11810464120E7A8AEBB
            FE0ACDFB637FC207E166F865E1DBA2BADEBB007D6A689BE6B2B36E90E4747987
            5F48F3FDF535E81F02FF00E0979E06F801F15B49F17E93ACF8AAEB51D1CC8D0C
            5773C0D0B6F89E33B82C4A7A39E87AE2B13C67FF00048AF03FC42F176A7AEEB1
            E2BF1DDF6ABABDCBDD5D4EF756D991D8F3C791C01C000700000702A74B8F53F3
            6BE137C2ED57E34FC48D1BC29A145E66A5AD5C0B78B23E5857ABCADFECA20663
            ECB5EE5FF0511FD8853F64FD7344D4B4337173E13D5EDD2D5A69725ADEF6341B
            C39EC2500C8BEE2403802BEF0FD96FF600F04FEC9FE29D435AD0E6D6353D52FE
            DC5A89F5296390DAC59DCCB1EC45C6E21771E49DA3F1F4FF008ADF09BC3FF1B7
            C153F87BC4DA745AA693732472C904991968DC3A904723951D3A82474269F3EA
            2B1F33FF00C1233F66FD4FE147C21BEF176AF2DDDBDC78E3CA9ADB4F662B1C56
            A80F952B27FCF4937120F64D9EA6B88FF82C77ED39ADEB8DE1FF00D9C3E1AB35
            DF8FFE28C8906A2217C1B1D3DC9051D87DCF376B163FC30C7293F7857D53FB55
            FED23E1FFD8F7F67ED73C6FAE6C5B2D16DC25A59A108D7D70DF2C36D18F566C0
            FF006464F4535F22FF00C1287E075F2D8F8BFF006AEF8C371145E27F1C453EA1
            673DDFC91E8FA501B9A719FB8AE88A13FBB0449FDF35E0E6D5A55A6B0349D9CB
            593FE5875F9BD91FAE787396D1CBA854E31CC61CF0C3C946841FFCBEC4BD611B
            758D3FE24FD22B5BD8EA7F686F88BE1EFF008232FF00C13C349F0AF853CAB8F1
            85F44DA768DFBA065D4B529141B8BF74EA4213BB1CFF00CB28FB8AEBBFE0933F
            B0FCDFB247C067D5FC4C8F3FC48F1F3AEABE21B99CEF9E02D978ED8B1E494DEC
            CE7BC923F50057CFBFB1DF866FFF00E0AB3FB786ABF1F3C4F6932FC31F87373F
            D9DE0CD3AE54ECB99E33B91CAF4CA92277FF00A68F12F22322BF4BAB0CB29471
            157EB695A9C572D35E5B397CF65E5EA7A9E206655B25CBDF0DCE7CD8CC44956C
            6CFAB9BF7A142FDA9DF9A7D3DA3D3E1B0514515F427E22145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145007E7AFED43F053C7BFF000529FF00828068
            9E0DD77C2FE27F0F7C06F86B235E5D5E5FD9496B07896E1701FCA660378727CA
            523A442671F7C5749FF055FD27E277C7B9BC21F007E19784F5EB3F0D7892683F
            E125F1245A7489A4E9D68ADF25B194009B542798EA3A848D07DF228A2BE6E584
            8CE8CDB6EF565693EB6DACBCADA1FBD50E26AF86CD7094E9D287B3CBF0EE7460
            D371551C799D592E6F7A6E4F99BBDAF18E96563EB6F807F04341FD9BFE0F681E
            09F0D5B7D9B47F0FDAADB459FBF3375795CF77772CEC7B9635D851457D142118
            45422AC91F8662B155B135A789C449CA736E526F56DB776DF9B61451455181FF
            D9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 18.897650000000000000
          Top = 113.385900000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D6167652A090000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080010006903012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00C5D7
            7E04FC7AD3FF00E0B176FF00B270FDAE7E361B7BAB459FFE128FED6BB13216D3
            1AFB1F66FB56DE08D9FEB3BE7DAB07E2F7FC1433E347ECC5FF00058BF156B97F
            F127E246A7F0B7E1CFC50B7D1F5CB07D66E24D3058BB344D135B96318DF0C570
            EAB8FBD1F072335FA67AE7FC1263C79AA7FC1762CFF6A54F1178457C116F691D
            BB694CD71FDAA597496B2240F2FCAC798437DFFBBEFC5792FC71FF00837FFC75
            F19EF3F6BC9E7F14F822397E39F88B4CF127839D9AE49D227B4BC9E622F3F75C
            078A778FF75BFEF1EC39FD329679829A82C44934E9C54B4FB52769F4E8B5EDA6
            879FF565ED7DD8A4BD1797E3BD8F917F619FF82807C59FDA73FE0B99E13B9BDF
            1FF8FD3E1AFC46F15EB373A6787DF5DB91A649A5F937F1408B00708157C91D86
            1D370E79ACBFDAD7F6ACFDA5BFE0985FB557C5FF00D9E2C7E307887C5F6DF10E
            3B1B3F0CEBBAF788E5B8BAF0DDBDDCE0C33A4D2331B69844F24123123002CC3A
            29AFB5BE0BFF00C1063E207C00FDAFFF00674F889A2788FC0973A47C16F04C3A
            36A56734B7715C6ADAA0875169A58C8859442F717AA72486D8ADF2E702B8AF1D
            FF00C1B53E38FDA37E137C62F13FC55F1EF84B5CFDA1BE21EBF0EAFA46B36A6E
            FF00B1F49810E1ED1B72090C7246E63E233E5AC16FB7386CBFED5CB3EB0A5294
            7D972C55AD7D54DD9FC96AFF0053A1518AD7957DC7D817BFB5AFC2BFF822E7EC
            F1F087C0DF1D3E2DEB5ABF897C5328D3FF00B775892EF54BAD5AF09537377239
            DED0DAA3CA8B9621515907A9AF08FDAEBE32FC4BFDB0FF00E0ABB6DFB3E7873E
            216BBF0CBC29A4DB8692EF43B878E7BC7163F6D699991919890CB1AAEED802EE
            C126BE83FD9FFF00E09B43E23FECA3F0CBC1DFB56E87F0FBE2F78BFE135DEED0
            F598D67B9468E3DA2095FCD48D8CBB15124521924F2919B24E0737FB5E7FC130
            3C75E28FDB1EC3E3A7C13F1BE8DE0FF1A18845A843AC5BB4B6D21583C8F3136A
            3E7745846465C7CA086078AF1F8771784A398579E2671E6709A84DABC54DFC32
            B59E9BFD9D3B1F2DC5B82C5D6C1D286162DC5548BA918BB395357E64B55E5D51
            8BF0AFE3EFC60FF8260FECCBE3AD4FF68BB997C6FA568DA84369E0DBD875049F
            50D619CC8820958E59148459434859954C80962156B5FF00658FF82CAFFC2E9F
            8C369E04F16F80E1F096BDAEE8CFAD68725978860D56D6F105BB4E2195E300C3
            2948DFE4396046D60A700F23A7FF00C11135CD77F63DF1E785FC53F111B55F89
            5E39D6E0F114BAAFEF5F4EB7B984CA563DADF3B2BF9F3177014E5930B88C02DF
            D953FE0909E2EF827F146CFC65E2EB8F85EABE12D1A5874DB0F08E84CB3EA577
            F679221713CF2A093CC3BC93E5FDF6C70A320FB95FFD5CAF471156BCE32ACDBB
            38A94137CB1B38C6F6B395EF7DF7F751F3743FD65A15B0F4A84251A292BA938C
            DDB99F329CAC9DD46D6B6DB7BCCE6B4CFF00838575D93E155978DEEBE065EAF8
            51759FEC6D475387C40AD0C339884CB0C59841697CA0CE43055C01F373C777FB
            517FC16B353F823FB44EADE08F0E7C3AD2FC4B69A7E85078823D46F7C4A9A679
            F6CF64978D85788AEF08D854562CE400A0938AF933F645FF0082587C76FDA57F
            65CB8F03EAAD6FF0D7C1B178C1358BCB1F12E877767ABC93ADA243F68B7DD18D
            F1F97232852546F43CD7D11FB55FFC1167C6BF157F697D4FC59E17BBF86173E1
            B93C396BE1ED3F4FF1225DB3598874F8ED16E02431EC1246537C783B41032BC6
            2BD6C565FC25431CE8D4E5B253D14A6D6F0E4BBBEFF16CED6DFA1E3E1731E2FC
            460156A7CD76E1AB8C13DA7CF65CBB7C3AB57BEDD4EB3C7DFF0005C0FF008467
            F673F84DF102D3E1C4C23F891AA5E697716BA8EA9F664D3CDB3C48D347208984
            D11F3090D85FBA73DEB5FE0D7FC16DBC37F15BE2EFC5AB16F0F0B5F037C32D0E
            FB5E8B5E8AFBCC9B578ADE78A1012028A14CAD27C9F39CFCBD33C7927C47FF00
            82197C48F177EC89F0DBE1DC7F10BC3B79A8F84F58D4B52BCB8BE373F66B48AE
            92055B7B401198A2794CFF0030405A46C000F1D77C1FFF00821CB7807E2A7C5E
            B7B9D634687E1BF8FF00C2B2F86F4BB7B479A4D4AC1BCCB4962B890322A16125
            B99080E41240E84E3CDA987E1058697BDEFDE76B397C3ED15B7EBC9B77D6FAD8
            F4E189E3278987BBEE5A17BA8FC5ECDDF6E9CFBF6D12D2E757FB2E7FC1617C41
            F1CFE2DF81749F10FC18D77C2BE15F89AD709E1CD7A1BE37F1CC62764CCAAB12
            845DCBB4B6EE0907057E61F73D7C27FB1F7FC13DBF683F817E2BF87BA37883E3
            068F17C2FF0087667F2F49F0E8B886E35C4699A748EE83A84DBBD867049D994C
            9CEEAFBB2BE3F8A21974712965BCBC967F0B935F13B5F9B54F96D749B5F91F69
            C2D3CCA5856F33E6E7BAF89453F855D2E5D1AE6BD9B499FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Color = clRed
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1048#1057#1068#1052#1054' '#171#1054' '#1053#1040#1056#1059#1064#1045#1053#1048#1048' '#1056#1045#1046#1048#1052#1040' '#1069#1050#1057#1055#1051#1059#1040#1058#1040#1062#1048#1048#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 529.134200000000000000
          Top = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1053#1053)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 532.913730000000000000
          Top = 94.488250000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1043#1056#1053)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 604.724800000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          HAlign = haCenter
          Memo.UTF8W = (
            '7704758153')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 604.724800000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          HAlign = haCenter
          Memo.UTF8W = (
            '1107746515887')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 498.897960000000000000
          Top = 56.692950000000000000
          Width = 11.338590000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 132.283550000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          Memo.UTF8W = (
            #1060#1080#1083#1080#1072#1083' '#171' [firm_name_fil] '#187' '#1054#1054#1054' '#171#1058#1052#1061'-'#1057#1077#1088#1074#1080#1089' '#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 170.078850000000000000
          Width = 283.464750000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          Memo.UTF8W = (
            '[adress_sld]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Top = 151.181200000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          Memo.UTF8W = (
            #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1077' '#1076#1077#1087#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 188.976500000000000000
          Top = 151.181200000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          Memo.UTF8W = (
            '[firm_name_sld]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 411.968770000000000000
          Top = 170.078850000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1075#1086' '#1076#1077#1087#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 411.968770000000000000
          Top = 207.874150000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 411.968770000000000000
          Top = 226.771800000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 411.968770000000000000
          Top = 283.464750000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1075#1086' '#1076#1077#1087#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 411.968770000000000000
          Top = 313.700990000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 411.968770000000000000
          Top = 340.157700000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 411.968770000000000000
          Top = 257.008040000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          Memo.UTF8W = (
            #1050#1086#1087#1080#1103':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 18.897650000000000000
          Top = 245.669450000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '______________'#8470'______________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 18.897650000000000000
          Top = 317.480520000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072' '#8470'____________'#1086#1090'____________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 396.850650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Color = clRed
          Memo.UTF8W = (
            #171#1054' '#1085#1072#1088#1091#1096#1077#1085#1080#1080' '#1088#1077#1078#1080#1084#1086#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086#1074#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Top = 427.086890000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Color = clRed
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1074#1072#1078#1072#1077#1084#1099#1077' '#1075#1086#1089#1087#1086#1076#1072'!')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 453.543600000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          HAlign = haBlock
          Memo.UTF8W = (
            
              #1047#1072' '#1087#1077#1088#1080#1086#1076' '#1089' [p_date_begin] '#1087#1086' [p_date_and] '#1074#1099#1103#1074#1083#1077#1085#1086' [p_count_nre' +
              '] '#1089#1083#1091#1095#1072#1103' '#1085#1072#1088#1091#1096#1077#1085#1080#1103' '#1088#1077#1078#1080#1084#1086#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086#1074' '#1080#1084#1077#1102#1097#1080#1081' '#1089#1080#1089#1090 +
              #1077#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1093#1072#1088#1072#1082#1090#1077#1088':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 411.968770000000000000
          Top = 207.874150000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[firm_name]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 411.968770000000000000
          Top = 313.700990000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[depo_prip]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 551.811380000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 820.158010000000000000
        Width = 718.110700000000000000
        object Memo42: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 102.047310000000000000
        Top = 634.961040000000000000
        Width = 718.110700000000000000
        DataSet = frxDS12
        DataSetName = 'frxDS12'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Top = 7.559060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          HAlign = haBlock
          Memo.UTF8W = (
            '[Line#].')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 684.094930000000000000
          Height = 94.488250000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Color = clRed
          HAlign = haBlock
          Memo.UTF8W = (
            
              '[frxDS12."date_fail"] '#1075#1086#1076#1072' '#1084#1072#1096#1080#1085#1080#1089#1090' [frxDS12."brig_name"] ('#1090#1072#1073'. ' +
              #8470' [frxDS12."brig_t_nom"]) '#1087#1088#1080#1087#1080#1089#1082#1080' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086 +
              #1075#1086' '#1076#1077#1087#1086' '#1058#1063#1069' [frxDS12."firm_name_sld"], '#1087#1088#1080' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1086 +
              #1084' [frxDS12."ser_name"] - [frxDS12."nom_loc"] '#1089' '#1087#1086#1077#1076#1086#1084' '#8470' [frxDS12' +
              '."train_num"], '#1074#1077#1089' [frxDS12."weight"] '#1090' '#1087#1088#1080#1087#1080#1089#1082#1080' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1086#1085#1085#1086 +
              #1075#1086' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1075#1086' '#1076#1077#1087#1086' [frxDS12."depo_prip"], '#1076#1086#1087#1091#1089#1090#1080#1083' '#1085#1072#1088#1091#1096#1077#1085#1080#1077' ' +
              '[frxDS12."incident_descr_e"], '#1074' '#1095#1072#1089#1090#1080' [frxDS12."reason_name_full' +
              '"].'
            
              #1044#1072#1085#1085#1086#1077' '#1085#1072#1088#1091#1096#1077#1085#1080#1077' '#1085#1077#1089#1077#1090' '#1088#1080#1089#1082' '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1089#1090#1088#1086#1103' [frxDS12."detail_nam' +
              'e"].')
          ParentFont = False
          WordBreak = True
        end
      end
      object Header1: TfrxHeader
        Top = 612.283860000000000000
        Width = 718.110700000000000000
      end
      object Footer1: TfrxFooter
        Top = 759.685530000000000000
        Width = 718.110700000000000000
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object ReportTitle2: TfrxReportTitle
        Height = 207.874150000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Color = clRed
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Color = clRed
          Memo.UTF8W = (
            #1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1075#1086' '#1076#1077#1087#1086' [firm_name_sld]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 529.134200000000000000
          Top = 75.590600000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 37.795300000000000000
          Top = 170.078850000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1058#1077#1083'./'#1092#1072#1082#1089':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 37.795300000000000000
          Top = 151.181200000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 37.795300000000000000
          Top = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1048#1089#1087'.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 128.504020000000000000
          Top = 170.078850000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[p_user_tel]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[p_user_pred]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 128.504020000000000000
          Top = 132.283550000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[p_fio]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 37.795300000000000000
          Top = 188.976500000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'E-Mail: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 128.504020000000000000
          Top = 188.976500000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[p_user_mail]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Width = 151.181200000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Color = clRed
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader2: TfrxPageHeader
        Top = 249.448980000000000000
        Width = 718.110700000000000000
      end
      object PageFooter2: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FrxRprtDoc13: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42447.457574421300000000
    ReportOptions.LastChange = 42457.491443969900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      
        '                                                                ' +
        '                           '
      'End.          ')
    Left = 416
    Top = 560
    Datasets = <
      item
        DataSet = frxDS13_1
        DataSetName = 'frxDS13_1'
      end
      item
        DataSet = frxDS13_2
        DataSetName = 'frxDS13_2'
      end
      item
        DataSet = frxDS13_3
        DataSetName = 'frxDS13_3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object ReportTitle1: TfrxReportTitle
        Height = 264.567100000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072' '#1085#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1077' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1086#1073#1098#1077#1084#1077' [name] [ser_name] [nom_object]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 400.630180000000000000
          Top = 56.692950000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103':  [Date()]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 359.055350000000000000
          Top = 94.488250000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1073#1077#1075#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072', ('#1082#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 359.055350000000000000
          Top = 113.385900000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1055#1086#1089#1090#1088#1086#1081#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 359.055350000000000000
          Top = 132.283550000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 359.055350000000000000
          Top = 151.181200000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1057#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 359.055350000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 359.055350000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 359.055350000000000000
          Top = 207.874150000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 359.055350000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1054'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 566.929500000000000000
          Top = 113.385900000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_postr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 566.929500000000000000
          Top = 132.283550000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_kr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 566.929500000000000000
          Top = 151.181200000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_sr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Top = 170.078850000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr3_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 566.929500000000000000
          Top = 188.976500000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr2_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 566.929500000000000000
          Top = 207.874150000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr1_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 566.929500000000000000
          Top = 226.771800000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_to3_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Top = 245.669450000000000000
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 306.141930000000000000
        Width = 718.110700000000000000
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo23: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 18.897650000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo38: TfrxMemoView
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -96
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        DataSet = frxDS13_1
        DataSetName = 'frxDS13_1'
        RowCount = 0
        Stretched = True
        object Subreport1: TfrxSubreport
          Left = 359.055350000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = FrxRprtDoc13.Page6
          PrintOnParent = True
        end
        object Subreport2: TfrxSubreport
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = FrxRprtDoc13.Page4
          PrintOnParent = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 529.134200000000000000
        Width = 718.110700000000000000
        object Memo61: TfrxMemoView
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object PageHeader2: TfrxPageHeader
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageFooter2: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 37.795300000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo28: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1074#1090#1086#1088#1085#1099#1077' '#1079#1072#1084#1077#1095#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 18.897650000000000000
          Width = 566.929268110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 566.929500000000000000
          Top = 18.897650000000000000
          Width = 151.180968110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDS13_2
        DataSetName = 'frxDS13_2'
        RowCount = 0
        Stretched = True
        object Memo31: TfrxMemoView
          Width = 566.929268110000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'obstoyat_inc'
          DataSet = frxDS13_2
          DataSetName = 'frxDS13_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS13_2."obstoyat_inc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.180968110000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'date_fail'
          DataSet = frxDS13_2
          DataSetName = 'frxDS13_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS13_2."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo37: TfrxMemoView
          Width = 566.929268110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object ReportTitle3: TfrxReportTitle
        Height = 325.039580000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo101: TfrxMemoView
          Top = 151.181200000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1083' '#1080#1085#1078#1077#1085#1077#1088' '#1075#1088#1091#1087#1087#1099' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1080)
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 491.338900000000000000
          Top = 151.181200000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[p_fio]')
          ParentFont = False
          WordBreak = True
        end
        object Memo103: TfrxMemoView
          Top = 192.756030000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1074' '#1058#1059'-28 '#1074#1085#1077#1089#1077#1085#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Top = 230.551330000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '________________ '#1054#1054#1054' "'#1058#1052#1061'-'#1057#1077#1088#1074#1080#1089'"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 491.338900000000000000
          Top = 230.551330000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Top = 268.346630000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Top = 306.141930000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1052#1072#1089#1090#1077#1088' '#1094#1077#1093#1072' '#1058#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 491.338900000000000000
          Top = 302.362400000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Width = 173.858267720000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1077#1081)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 173.858267720000000000
          Width = 173.858267720000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1095#1080#1085#1072' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 347.716535430000000000
          Width = 173.858267720000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077' '#1088#1072#1073#1086#1090#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 521.574795830000000000
          Width = 94.488188980000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054' '#1080' '#1088#1086#1089#1087#1080#1089#1100' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047248980000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054' '#1080' '#1088#1086#1089#1087#1080#1089#1100' '#1084#1072#1089#1090#1077#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Top = 37.795300000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 173.858380000000000000
          Top = 37.795300000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 347.716760000000000000
          Top = 37.795300000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 521.575140000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 616.063390000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Top = 56.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 173.858380000000000000
          Top = 56.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 347.716760000000000000
          Top = 56.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 521.575140000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 616.063390000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Top = 75.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 173.858380000000000000
          Top = 75.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 347.716760000000000000
          Top = 75.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 521.575140000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 616.063390000000000000
          Top = 75.590600000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Top = 94.488250000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 173.858380000000000000
          Top = 94.488250000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 347.716760000000000000
          Top = 94.488250000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 521.575140000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 616.063390000000000000
          Top = 94.488250000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 173.858380000000000000
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 347.716760000000000000
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 521.575140000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 616.063390000000000000
          Top = 113.385900000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader3: TfrxPageHeader
        Top = 366.614410000000000000
        Width = 718.110700000000000000
      end
      object PageFooter3: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Memo62: TfrxMemoView
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 718.110700000000000000
        DataSet = frxDS13_3
        DataSetName = 'frxDS13_3'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS13_3
          DataSetName = 'frxDS13_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Line#]. [frxDS13_3."oborud"]')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object Footer3: TfrxFooter
        Top = 83.149660000000000000
        Width = 718.110700000000000000
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 18.897650000000000000
        Top = 41.574830000000000000
        Width = 718.110700000000000000
        DataSet = frxDS13_1
        DataSetName = 'frxDS13_1'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'class_name'
          DataSet = frxDS13_1
          DataSetName = 'frxDS13_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDS13_1."class_name"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object Footer4: TfrxFooter
        Top = 83.149660000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object FrxRprtDoc8: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42408.654991423600000000
    ReportOptions.LastChange = 42451.477466238400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 480
    Datasets = <
      item
        DataSet = frxDS8_1
        DataSetName = 'frxDS8_1'
      end
      item
        DataSet = frxDS8_2
        DataSetName = 'frxDS8_2'
      end
      item
        DataSet = frxDS8_3
        DataSetName = 'frxDS8_3'
      end
      item
        DataSet = frxDS8_4
        DataSetName = 'frxDS8_4'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 359.055350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo10: TfrxMemoView
          Top = 68.031540000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072' '#1085#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1077' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086
            #1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1086#1073#1098#1077#1084#1077' [mnemo] [ser_name] '#8470' [nom_loc]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 415.748300000000000000
          Top = 132.283550000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #1044#1072#1090#1072
            #1057#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 132.283550000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo13: TfrxMemoView
          Left = 491.338900000000000000
          Top = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1073#1077#1075#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072', ('#1082#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 491.338900000000000000
          Top = 207.874150000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1055#1086#1089#1090#1088#1086#1081#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 585.827150000000000000
          Top = 207.874150000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_postr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 491.338900000000000000
          Top = 226.771800000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 585.827150000000000000
          Top = 226.771800000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_kr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 491.338900000000000000
          Top = 245.669450000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1057#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 585.827150000000000000
          Top = 245.669450000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_sr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Width = 268.346630000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D616765F2200000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080038010C03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
            AF99FF00E0AC7FB5D5EFEC7BFB21EA7ABE8574969E2CD7EE23D17459080CD04B
            265A49C29EA63892461C11BB6678AFA62BF19BFE0E08FDA18FC44FDA8F46F015
            A4DBB4EF87FA7896E541C837D7615DBF1585611EDBDABC5E20C73C2E0A738BB4
            9E8BD5FF0092BB3F59F04F8421C45C5B86C2D78F351A77A9513D538C364D7552
            938C5F933E19F15F8C357F1EEBD71AAEBBAB6A7ADEA976C5A7BCD42E9EE6794F
            5F99DC926BECFF00F822C7EDCDE25F84BFB4F681F0F759D7EFEF3C0DE3366D36
            1B2BCB86962D32F0A936EF06E27CB0ECBE5155C29F314E32057C61A0F84F52F1
            441A9C9A7595C5E47A358BEA57CD12E45ADB23A234AFE8A1A441FF0002155F47
            D6AF3C35AC59EA5A74CD6DA869B711DDDA4CA70629A360E8C3E8CA0FE15F9560
            F17530D5E3888B7A3BFAF75F33FD1DE29E18C067D93D7C92BC63CB28B8AD17B9
            2B7BB24BA38BB35FE47F50F4570BFB327C6CB4FDA3BF67DF07F8E6CB6795E25D
            2E1BC744E90CA5712C7FF00903AFFC06B81FF82807EDE9E1DFD823E11C5AE6A9
            6CFAC6B9ABCAD6BA2E8F148237BF95402CCCF83B22404166C1EAA002580AFD9E
            78BA50A3F589CAD0B5EFE47F94B83E1BCCB179AAC930D49CB12E6E1C8B7E64DA
            6BB2B59DDBD124DB7647BC515F869E3DFF0082ED7ED0BE2ED5A69B4DD63C39E1
            7B4909F2ED6C3468A6F281EDBE7F3189F7E3E95CC68FFF000596FDA4B4698B8F
            88ED75B86DDB75A35848A3E83C91CD7CD4B8CF029D9464FE4BFCCFDEE87D1578
            BA74F9E75A845F6739DFE76A6D7DCD9FBE5457E54FEC51FF0005FBD6F52F1FE9
            9E1DF8CBA768FF00D95A9CCB6ABE23D32136CD6323B0557B884B153164FCCE9B
            4A8E76900D7B57FC16C7F6D8F88FFB1EE93F0DA6F875AEDB68C7C453EA0B7CD2
            69F05E09D624B731E3CD56DB8F31BA75CD7A51E20C24F0B2C5C1B6A36BAEAAEE
            DB7FC13E0F11E0A71361B88B0FC358A8C2156BF33A73726E9C9422E52F7926F4
            4B671BABABA49A67DD9457E57FFC12EBFE0B19F11BE2EFED33A57C3FF89F77A7
            6BD65E2E2F6FA76A10D84767716174B1B48A8444023C6E11872BB836DE71915F
            6B7FC147BF6CAB5FD893F664D57C4C8D0C9E24D43FE25BE1EB5939F3EF5D4ED6
            2BDD2301A46F64C75615B61739C357C34B171768C6F7BEEAC799C43E14E7F93F
            1050E1BAF08CEBD7E5E4E46DC64A4DABDDA4D24D3E6BA56B37B6A7BD515F8389
            FF0005B4FDA5C8551E39B291CE1405F0E58967278000117249EC3D6BEF5F88FF
            00F050CF197FC13E3F63AF0BDF7C60BB8BC6FF001A7C6EB25E59E891C10D843A
            6478521663120C2440A07382CF23B2AF0372F161789F095D4A4949462AEDB4AD
            E5B37ABE88FAAE22FA3F712E51530F879CE955AD88972D3A74E52729595E52F7
            A114A315ACA4DA4AE8FBBA8AFC27F1E7FC1713F68AF19DF4EF6BE27D1BC356D2
            B652DF4BD160C42339003CE2473F89F5AC4D27FE0B2BFB4969175E68F88EF73C
            6DD973A358C89DBB79239E3F9D71BE33C12765197DCBFCCFA8A5F454E2D953E7
            957C3C5F673A9F9AA6D7E2CFDF3AFC12D5BFE4317BFF005F32FF00E86D5F5AFF
            00C13FFF00E0BBBA97C47F893A4782BE2FE9DA45AB6B73A5958F88B4D468225B
            873B512E61258287621448840048CA804B0FA02E3FE08CBF0BEE6E6595B59F1B
            EE95DA438BE83192493FF2C7DEBE8B2DCCF0F8CA7ED283BF7EE8FC578DB80B39
            E15C6AC0E714F95C95E324EF192EF17F9A766BAA5747E61D15F63FFC1407FE09
            EDE0BFD953E0959F893C3DA8788EEAFAE35786C192FEE6292211BC72B1202C6A
            7765077F5E2BE376385AF4D3B9F182D7B2FF00C13D3FE4F5BE1E7FD8424FFD26
            9ABEA7F80DFF00049AF873F143E0A784FC477FAB78C22BED7749B6BFB8482F21
            5895E48D5D8283092064F1926B9DFDA0FE057C31FF0082666B5E18F186892F8A
            75FF001B7DA257D1B4EBDBF885A1DB1949269F6441BCB5120E1482CC40C81922
            7996C16EA7E85515F937AE7FC1587E35EAD7ED2C1AE68DA64649C416DA442C8A
            3EB26F6FD6B2AC7FE0A79F1C2C2495878CD65F34E489B4AB4709D7EEFEEF8EB5
            3C8CAB9FAF3457E74FECA9FF000570F154BF1174AD13E23AE97A8E8FAADC25A1
            D56DEDC5B4F62EE76ABBAAFC8F1EE23761548073CE315BBFF051DF8C9F1B3F65
            FF008AF1DF689E33BF8FC17E25CBE9E3EC36AE2C6751FBCB62C6227FDB4C9C95
            2C39D86972BBD82E7DF3457E62FEC93FF053DF1C697F1CF4983E21F895F57F0A
            6AADF61B9696D608BEC0EE408EE331A29C2B60367236B31ED5F44FFC14F7F6D7
            BFFD9DFC33A5786FC21A8AD9F8BF5B617725C2C692B69F66A7EF6D6057748C36
            8C83C2B9EC28E577B05CFAC68AFC93F87DFB73FED09F14FC71A5787342F19DED
            DEAFACDC2DADB45FD9F698DC7AB31F2B85500B31ECAA4D7EAAF80743D43C33E0
            AD2EC356D5A7D7753B5B648EEF509A348DEF2503E67DA802AE4E7000E0629356
            1DCD7A28AF85BF6FDFDB33E2078BFF006AFF00067ECF7F0275A5D27C63793ADE
            78975A4B68EE5747B72BBB630915946D8C995F8CF30A839722B8F198C861A9FB
            49EB76924B76DEC91F4BC2BC2D8BCFF1AF07859460A3194E739B6A14E105794E
            6D26D25B6CEEDA4B73EE9A2BE40FF82A27EDB3ABFEC75F043C3FE0DF06DF5D6B
            3F173C6DE5695A2398A39AEC60A4725E347B76191988441B769924E98422BE80
            FD97BC21E33F03FC09F0F58FC43F1149E29F1AFD9FCED5EFDA28A34F3DC96689
            046AABB23C84071960B93D6953C6C2788961E29DE2936FA2BECBD7A978DE14C4
            E1326A39DD79C542B4E51A71D79E6A1F1544AD6E44FDDBB69B96CB46CEA3C7FE
            36B0F86BE05D67C45AACA20D3342B29B50BB909C6C8A242EC7F2535FCD3FC5CF
            8A1A87C6DF8ABE24F18EAA4FF68F8A3529F539C1FF009666572C107B2AED51EC
            A2BF637FE0BDDFB42FFC2A8FD8DD3C25693F97AA7C47BE5D3B00FCDF6287135C
            9FA1C4719F69ABF142593CA899B9F9413C57C1F19E339EBC70CB68ABBF57FF00
            03F33FB2BE8A9C29F56C9F119F555EF6225C91FF0004376BFC536D3FF023F4CB
            FE084DFB2159FC5AF815F1975ED6E03F62F19D9BF82ADA4201C42622F72C07FB
            F24383EB17B57E6EF8ABC2B7DE04F14EA7A16A71B43A968979369F768C305258
            5DA371FF007D29AFE847FE09BFF01FFE19C3F627F87FE19962116A234C4D4351
            1B36B1BAB92679437BAB49B3E882BF25FF00E0B6DF027FE14BFEDE9AE5FDBC3E
            569BE3BB58BC410103E5333662B81F5F3632E7FEBA8A8CEB29F619650A896B1D
            FF00EDED7F07A1D1E147895FDAFE206738394EF4EB6B4BB5A87EED5BFC50F79F
            F84FAEBFE0DDBFDA1FFE126F83FE2DF86579366EFC2B7A356D39598926D2E49F
            3140F449D58FFDB715F347FC17E7E255CF8C3F6EC4D09DDBEC7E11D02D6DE18F
            3F289272D3C8D8F521A21FF001E95E53FF0004B1FDA1FF00E19ABF6E3F05EB17
            3388347D6A73E1FD5199B6A082E8AA2BB7B24C2173ECA6BA6FF82D8583D87FC1
            49BC765F1FE936DA6CE98FEE9B2857F9A9AC2B63DD5C8E34AFAC64A2FD2CDAFF
            002F91EC657C194B2DF17EB660A3EE57C3CEAC7CAA73429D4F9BBB93FF0019C3
            7FC13D7F62EB9FDBB3F6878BC1CBA949A2E97676526A9AADFC70896482DD1910
            2A29E37BBC8AA09E07CC707183F697EDA7FF000415F0A7C2EFD9FB5EF167C39F
            11789E5D63C2DA7C9A94F61ABCB15C45A945129794232468D1C9B0315EA09006
            06723CE3FE0DD7D7ACF4EFDAF3C616339896EF52F0A31B52CD876F2EEA12EAA3
            BF0C09FF0073EB5FAABFB55F882D3C2BFB317C44D46FA64B7B4B3F0D6A324923
            1002816D27AF73D07B915E9E479460EBE5B2AB563793BEBDADFD5CF81F183C4F
            E27C9F8F6865D96D670A31F65EE24AD3E77EF7369777F87CADA59EA7F356C16E
            21C7DE475FCC1AFB7BFE0A3BF13AEFE2FF00FC13BFF64CD72FE66B8BE934FD4E
            CEE256396924B616D6ECC4F724C5927D4D7C3F64862B3894F055003F957D6DFB
            5C44D17FC12EBF64FDCA5773F8918647506F1483F88AF94C0C9FD5F111E9CABF
            F4B8FF0099FD1DC5F87A6F3AC96B35EF47115127E52C2E21BFBF957DC79AFF00
            C1397FE4FE7E0FFF00D8D16BFF00B35775FF00056CFDB48FED89FB52DE8D2EE8
            CDE0BF0599349D0C2B7EEEE5837FA45D8FFAE8EA029FF9E71A7A9AF35FD84746
            7F12FED97F0DB4C8EE1ED24D4F595B34B84FBD034B1C881C7BA96CFE15C0FC46
            F865AC7C15F1F6B1E11F105AB596B7E1BBB7D3EF216ECF19C6E07BAB0C329EEA
            C0F7A1622AC700E947E194F5F92565FAFC875326CBEBF192CCAB34EBD1C3A505
            D94EA54539AF3D146FD149A7F123EDDFF8219FEC1A3E3B7C596F8A7E25B3F33C
            27E07BA0BA5C52AFC9A96A8B860D8EE9002ADEF2327F718579B7FC16BBE27DC7
            C48FF8287F8BADE49246B5F0A5B59E896A8DD23558566931F592773F957E817F
            C108FF00698F0EFC4FFD916CFC036A9069FE26F879BE1BEB55C03790CD2BC91D
            DA8EA77166573D9D4F665AFCD3FF0082AE44D0FF00C145FE2C07565275689806
            18C83690107E95EEE6146951C928FB177E7926DF9D9E9F2DBE47E41C159AE619
            AF8B599FF6AC1C5E1A8CA14A2F68C3DA53B4979D44F9AFDA56D922D7FC1337F6
            083FB7DFC69D4745BCD5EE742F0EF876C96FF54BAB6883DC49BDF6470C5BB2AA
            CD873B88380878248AFA77FE0A1BFF000440F0AFECF7FB3BEB7E3FF87BE20F12
            4AFE15B7FB66A1A66AF247742EA00C048F1C888851914EEC10C0853D0F34CFF8
            36EB5CB683E29FC55D35A502F2E74AD3EE6288F578E39A75761F432A67FDE15F
            7AFF00C14CB5CB6F0F7EC01F176E2EE510C4FE19BBB7563DE4953CA8D7EACEEA
            3F1AEECAB28C1D5CA255EA46F2B49DFB5AF6FC8F90F11BC4DE26CBBC4CA39460
            ABB8E1E33A11F676569AA8A0E57D2EDB72693DD74B33F9E1901643B58A37F0B0
            EAA7B115FD24FEC79F132E3E32FECA7F0EBC5376ED25E6B9E1DB2BBB9761CBCC
            D0AF98DF8BEE3F8D7F36F5FD0A7FC12E34F934BFF8279FC228A591E473E1CB79
            32C08203E5D473E8180FC2B9F82A4D622A47A72FE4FF00E09ED7D2D30D4A5926
            0710FE38D5697A4A0DBFC631385FF82CDFFC9A8E99FF00632DAFFE89B8AFCC07
            FB87E95FA7FF00F059BFF9351D33FEC65B5FFD13715F980FF70FD2BF4C86C7F0
            6BDCFDAEFD8FBFE4D4FE1CFF00D8B963FF00A212BE06FF0082CBEB4DA87ED4FA
            55A65F669DE1D80283D019279D891F90FCABEF9FD8FBFE4D4FE1CFFD8B963FFA
            212BF3EFFE0B1103C5FB5E42EC8CAB2F87AD0A123860259C1C7E3531DCAE878A
            FECCFE17F0278BBE2BDBDB7C48D7E6F0EF8523B79269EE21DDE64F20DA122055
            58AE724938E8A46466BD7FF696F863FB33E91F096FEF7E1C78E353BBF15DAB46
            D6B652493CE97A0BAABA1DF1285C292DBB70FBBDF38AF01F86BF0ABC47F18FC4
            8747F0B69175ADEA8216B936D6E543F96A54337CC40C02CBDFBD77FF00F0C03F
            1A3FE89CEBDFF7DC1FFC72AFA9278E5D315B690A9C3052411D8D7ECF78CFE106
            9DFB5BFEC95A7E87AF655B5ED1AD2EE2B9C0692CEE8C2AE932FBAB1E7D4161D0
            D7E6B7847FE09AFF0019BC69AF41A7CBE0DBCD1A0B870935EDF5C4290DB21386
            73872CD819385049AFD71F0C6856FE08F0869FA644F8B4D22CE3B547738C2468
            1413E9C2D44DF61A3F0D7E247C3BD57E15F8E757F0CEBD6DF66D5747B86B5B98
            CFDD623A329EE8CA4329EE18541E2CF18EA9E39D5FFB4359BFB8D46F5608ADBC
            F9DF7308A2411C6B9F455503F327924D7AB7EDFDF1D349FDA17F69FD6B5DD0A3
            8BFB26D628F4CB6BA45C1D4161DC0CE7D4316217FD854AF169177211C1E3A30C
            83F5AD093F497FE0927FB227FC203E0D3F12F5EB62BAD788A0F2F488654C3595
            89C1F339E8F3601F640BFDE22BED1AF34FD923E3E68FFB46FC0AD175FD2162B6
            2912D9DED8A71FD9F711A80F163B28E0AFAAB29EF5E8D7979169D692DC5C4B1C
            10408649249182A46A064B1278000EA4D62DF7344AFA23C5FF00E0A05FB64697
            FB0FFECDBABF8C2EFC89F57901B2D0EC646C7DBAF5D4EC0475D8801773D950F7
            22BE7DFF0082667C0687F638FD9C7C5DFB417C60BD78FC69E37B693C41ADDF5E
            8FDFD858B1332C383CF9B2B10EC839DCD1478F90579B7C35B49BFE0B21FF0005
            119FC637D1C937C0BF8333F91A4C1203E4EB577B83292A783E632ACAFC711242
            87EF9AD6FF008289FC41D63FE0A29FB60E83FB2FF816F658BC37A1DCAEA5E3BD
            52DF9587CA2098C9E87C90CA003C19E48C1FF566BE46B633DA4DE392BA4F9692
            FE693D1CBFCBC9367F4B657C2CB01848F08CA7ECA7522B119855FF009F342369
            428FF8ACD4A4BAD49423AA4C97FE099DF0BF5AFDBBFF006A9F117ED55F102C9E
            1D3E1B87D3BC0DA6CDF325AC71EE8FCD51D08894B206030D33CEDD5457E8ED62
            FC3AF87DA47C27F01E91E19D02CA2D3B45D0AD23B2B2B688616289142A8F73C7
            24F24924F26B6ABDFCBB07F56A3C8DDE4F593EEDEEFF00CBC8FC6B8E78A9E7D9
            9BC4D287B3A14D2A7469F4A74A1A423EBD64FAC9B67E18FF00C170BF686FF85D
            DFB71EA3A3DACDE6693F0F2D57428402769B93FBDBA6C7AEF658CFFD71AF18FD
            83FE067FC348FED87F0FBC20F099ACAFB568EE7505071FE896F99E7CFD5232BF
            5615FA57E27FF83797C13E32F136A5AC6A5F137C7D77A96AF772DF5DCEF159EE
            9A695CC8EC7F75DD989FC6BD5FF61CFF008245782BF61BF8B979E32D2BC45E21
            F11EA93E9AFA6C2BA9A4012D15DD19DD3CB453B8EC0BC9E84FAD7C43E1EC7623
            1FF58C44572B95DEAB6BEDF7687F5C43C71E10C9783BFB1B23AF2957A547921E
            E4D5EA38DB9AED24BDE6E6CFACC0C0AFCF2FF83887E067FC25BFB3A785BC7D6D
            0EEBAF066ABF63BA70BCFD92EC04E4FA09921FFBE8D7E86D717FB457C0DD2BF6
            96F81FE26F01EB724F0E99E27B17B2966831E6DB9382B226E046E460AC323195
            15F6D9A613EB5849D0EAD69EBBAFC4FE49F0F789FF00D5EE24C1E70FE1A735CD
            6FE47EECFF00F256EDE67F344C095F95991BB329C153D88F7AFAFBFE0A37677D
            FB467C10F83FFB43C1135C43E21D0A3F0B78A264F9BEC9ABD9BC881A4FEE897F
            79B73FDD51D5867EBB1FF06E17C3CFFA28BE3BFF00BF567FFC6ABE8FFD91FF00
            E09C1E15FD963E0978A3E1DDC6A9A878F3C21E2ABA37771A76BF6D0490C6CD1A
            A4802A200436C43CF4650460D7C2E0B8631B69D1ACAD192DEE9D9AD53FCD7CCF
            EC1E2EFA4170A7B5C2E6B94D4955AD426EF1709479E9545CB522A4D593D21357
            D2F04BA9F827F0E7E246BDF087C6FA77893C31AB5E687AF6932F9B697B6AFB64
            85B041F62A4120A90430241041AF5BFDA0FF00E0A59F1ABF6A1F028F0CF8C7C6
            4F75A0B6D3716765670D925F15391E7794A0C83201DA4EDC8076F15FA77E3EFF
            0082007C09F16EB325DE99278CFC2C92B9636BA76A8B25BA0E78513C72301FF0
            2ED5CF5AFF00C1BABF082376F37C5BF11A55326E502EED170BC7CBFF001EFF00
            5E7DEB25C359B538BA54E5EEBDED2D1FC8F46AF8F9E1AE3ABD2CC71945BAF4FE
            194E8294E1D7497BD6B3D7496FAA3F1FBC2BE15D4FC79E29D3742D12CA6D4B59
            D66EA3B2B0B48972F733C8C15100F727AF61927815FA07FF0005A9F82E9FB3AF
            ECADFB33F81D59246F0CD8DF58CD227DD966586CFCD71ECD2163F8D7E82FECA7
            FF0004D5F845FB1C6A4753F087870C9AF9468FFB67549DAF2F911861951DBE58
            C1EFE5AAE738391543F6FCFF008274787BFE0A0769E15875EF116BBA00F0A497
            524074D4858CE671106DFE62B74F28631EA6BD2A3C2F5E8E06AC347527649744
            934F767C2E6BF487CA733E2FCB71094E9E070AEA4A5292BCA529529C13E58F35
            92BD96ADFBCDBB1F8BFF00F04E5FF93F9F83FF00F6345AFF00335F7BFF00C17D
            FF0061BFF848BC3B6FF1BBC39699BED1E38EC7C511C4BCCF699DB0DD90072622
            7631FF009E6CA7A475E8DF01BFE083BE06F809F1ABC2DE36B1F1D78CAFEF7C2B
            A8C7A9416D731DA88A774CE15B6C61B073D8D7DBDE22F0F58F8BBC3F7DA56A76
            B0DF69BA9DBC96B776D32EE8EE22752AE8C3B82A4823DEBA32BE1EA9F50AB85C
            5AB393BAEB6D347FD743C3F10BC6FC03E31CBF88B872A3A90A30E4A89A71E68B
            9B728EA96E9DD3E9249F43F9C1FD94BF698D7FF643F8EFA1F8EFC3CC5EE34B93
            65DD997DB1EA768F8135B3FB301907F85D51BF86BE88FF0082C8784AC3E22FC4
            7F0AFC7CF08B9BFF00027C5BD26DF6DDAAE3ECBA85BA794F04A07DC93CB45183
            FC514A3F86BEB0BCFF0083717E1B4B7B335BF8FF00C776D6EF23345085B47F25
            092553718B27030327938E6BDE7F659FF825FF0084FF0066FF00847E28F87FA8
            EB5AA7C43F03F8A265B99745F10DB5BC96D693630F245B114A97C213E8C81860
            E49F3B0BC3B8F746584AE9283D53BA7692FD1AD1FC99F75C47E38F064334C3F1
            3653394F134D3A738724A2EA51934DC799AB295395A71BBB3B4A2DEA9AFC2EF8
            47F18FC51F017C7969E27F076B77BE1FD7AC432C5776AC3251BEF232B02AE8D8
            1956041C0E3815E85FB497FC141FE2FF00ED6DE1FB6D23C75E2F9B51D1ED9D65
            1A7DADAC5656D2C8BF764912251E6303C8DC480790057EA278CFFE0DF6F817E2
            3D59EE74DBBF1C78763762C6D6CF5549615F65F3E391C0FF00811ACAB7FF0083
            76BE0D473A349E27F88F2C60E593EDF6ABBC7A645BE47E15CCB86B36841D184B
            DD7BA52D1FC8F76A78FBE1B62B134F34C4D16EBC17BB29504EA47C94B5B7CA47
            E447C2CF85BAD7C6FF00893A2783FC3B6D25DEB7E23BB4B1B48D067696383237
            A222E5D8F40AA4D7F4A7F0B7C036BF0A7E19F87BC3163CD978774DB7D32038C6
            E486258D4E3D485AF35FD95BFE09FDF0ABF63549A5F03F86A3B6D56EA3F2AE35
            6BC95AEF50993AEDF35F2554900954DAA481C715ED15F55C3D91CB01094AABBC
            E5DB6491FCE3E3878BB478CF1342865F4E50C350E66B9ADCD294AD76D26D2492
            B455DBD5B7BD97C93FF059BFF9351D33FEC65B5FFD13715F980FF70FD2BF6BFF
            0069FF00D99B44FDAB7E1E41E1AD7AF354B2B2B7BE8F50592C244494BA2BA804
            BAB0C61CF6EC2BC0CFFC1167E1A11FF230F8DFFF0002ADBFF8C57D3C64923F05
            68F7BFD8FBFE4D4FE1CFFD8B963FFA212BE28FF82D8781AE6C7E2CF83BC4A216
            FB0EA1A5C9A61947413452B4814FA12B2923D76B7A57E817C35F01DAFC2EF87B
            A2786EC64B89ACB42B186C2092720CAE91A0452C4003381CE00AA9F177E0EF87
            3E3B781EE7C3BE29D2E1D574AB921CC6F95689C7DD91186191C6786041EBEB52
            9D9DC7D0FC4EF86FF1275DF843E34B3F10F86F519B4AD62C0930DC44012030C3
            2956055948E0820835EC7FF0F44F8E3FF438C3FF00828B3FFE375F5C5E7FC117
            BE184D72ED0EB7E36B78C9CAC62F20709F8B424FE66A3FF872D7C35FFA187C6F
            FF008156DFFC62B4E688ACCF3EFF00827CFF00C145BE207C54FDA0AC3C1BE33B
            CB4D72C75F8E616F70B671DBCD67347134A3FD580AC8C11810464120E7A8AEBB
            FE0ACDFB637FC207E166F865E1DBA2BADEBB007D6A689BE6B2B36E90E4747987
            5F48F3FDF535E81F02FF00E0979E06F801F15B49F17E93ACF8AAEB51D1CC8D0C
            5773C0D0B6F89E33B82C4A7A39E87AE2B13C67FF00048AF03FC42F176A7AEEB1
            E2BF1DDF6ABABDCBDD5D4EF756D991D8F3C791C01C000700000702A74B8F53F3
            6BE137C2ED57E34FC48D1BC29A145E66A5AD5C0B78B23E5857ABCADFECA20663
            ECB5EE5FF0511FD8853F64FD7344D4B4337173E13D5EDD2D5A69725ADEF6341B
            C39EC2500C8BEE2403802BEF0FD96FF600F04FEC9FE29D435AD0E6D6353D52FE
            DC5A89F5296390DAC59DCCB1EC45C6E21771E49DA3F1F4FF008ADF09BC3FF1B7
            C153F87BC4DA745AA693732472C904991968DC3A904723951D3A82474269F3EA
            2B1F33FF00C1233F66FD4FE147C21BEF176AF2DDDBDC78E3CA9ADB4F662B1C56
            A80F952B27FCF4937120F64D9EA6B88FF82C77ED39ADEB8DE1FF00D9C3E1AB35
            DF8FFE28C8906A2217C1B1D3DC9051D87DCF376B163FC30C7293F7857D53FB55
            FED23E1FFD8F7F67ED73C6FAE6C5B2D16DC25A59A108D7D70DF2C36D18F566C0
            FF006464F4535F22FF00C1287E075F2D8F8BFF006AEF8C371145E27F1C453EA1
            673DDFC91E8FA501B9A719FB8AE88A13FBB0449FDF35E0E6D5A55A6B0349D9CB
            593FE5875F9BD91FAE787396D1CBA854E31CC61CF0C3C946841FFCBEC4BD611B
            758D3FE24FD22B5BD8EA7F686F88BE1EFF008232FF00C13C349F0AF853CAB8F1
            85F44DA768DFBA065D4B529141B8BF74EA4213BB1CFF00CB28FB8AEBBFE0933F
            B0FCDFB247C067D5FC4C8F3FC48F1F3AEABE21B99CEF9E02D978ED8B1E494DEC
            CE7BC923F50057CFBFB1DF866FFF00E0AB3FB786ABF1F3C4F6932FC31F87373F
            D9DE0CD3AE54ECB99E33B91CAF4CA92277FF00A68F12F22322BF4BAB0CB29471
            157EB695A9C572D35E5B397CF65E5EA7A9E206655B25CBDF0DCE7CD8CC44956C
            6CFAB9BF7A142FDA9DF9A7D3DA3D3E1B0514515F427E22145145001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145001451450014514500145145007E7AFED43F053C7BFF000529FF00828068
            9E0DD77C2FE27F0F7C06F86B235E5D5E5FD9496B07896E1701FCA660378727CA
            523A442671F7C5749FF055FD27E277C7B9BC21F007E19784F5EB3F0D7892683F
            E125F1245A7489A4E9D68ADF25B194009B542798EA3A848D07DF228A2BE6E584
            8CE8CDB6EF565693EB6DACBCADA1FBD50E26AF86CD7094E9D287B3CBF0EE7460
            D371551C799D592E6F7A6E4F99BBDAF18E96563EB6F807F04341FD9BFE0F681E
            09F0D5B7D9B47F0FDAADB459FBF3375795CF77772CEC7B9635D851457D142118
            45422AC91F8662B155B135A789C449CA736E526F56DB776DF9B61451455181FF
            D9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 268.346630000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1054#1073#1097#1077#1089#1090#1074#1086' '#1089' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1085#1086#1081' '#1086#1090#1074#1077#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100#1102' '#171#1058#1052#1061'-'#1057#1077#1088#1074#1080#1089#187)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 268.346630000000000000
          Top = 18.897650000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1060#1080#1083#1080#1072#1083' '#171'[firm_name_fil]'#187)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 268.346630000000000000
          Top = 37.795300000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1085#1086#1077' '#1076#1077#1087#1086' '#171'[firm_name_sld]'#187)
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Top = 151.181200000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470'___________________')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo87: TfrxMemoView
          Left = 491.338900000000000000
          Top = 264.567100000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 585.827150000000000000
          Top = 264.567100000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr3_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 491.338900000000000000
          Top = 283.464750000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 585.827150000000000000
          Top = 283.464750000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr2_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 491.338900000000000000
          Top = 302.362400000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 585.827150000000000000
          Top = 302.362400000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr1_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 491.338900000000000000
          Top = 321.260050000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1054'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 585.827150000000000000
          Top = 321.260050000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_to3_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Top = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxDS8_1
        DataSetName = 'frxDS8_1'
        KeepFooter = True
        KeepHeader = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo27: TfrxMemoView
          Left = 75.590600000000000000
          Width = 188.976302280000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'reason_name_full'
          DataSet = frxDS8_1
          DataSetName = 'frxDS8_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDS8_1."reason_name_full"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Width = 75.590538980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'date_fail'
          DataSet = frxDS8_1
          DataSetName = 'frxDS8_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_1."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 264.567100000000000000
          Width = 204.094558980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'oborud'
          DataSet = frxDS8_1
          DataSetName = 'frxDS8_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_1."oborud"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 468.661720000000000000
          Width = 211.653618980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'prin_meri'
          DataSet = frxDS8_1
          DataSetName = 'frxDS8_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDS8_1."prin_meri"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 400.630180000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 680.315400000000000000
        Width = 718.110700000000000000
        object Memo64: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 56.692950000000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo24: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1082#1072#1079#1099', '#1087#1088#1080#1074#1077#1076#1096#1080#1077' '#1082' '#1079#1072#1076#1077#1088#1078#1082#1072#1084' '#1087#1086#1077#1079#1076#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590538980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 188.976302280000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1095#1080#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 264.567100000000000000
          Top = 18.897650000000000000
          Width = 204.094558980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1099#1096#1077#1076#1096#1077#1077' '#1080#1079' '#1089#1090#1088#1086#1103' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 468.661720000000000000
          Top = 18.897650000000000000
          Width = 211.653618980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795300000000000000
        Top = 582.047620000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo35: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 75.590600000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 264.567100000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 468.661720000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object PageHeader2: TfrxPageHeader
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageFooter2: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Memo33: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 56.692950000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo122: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1087#1083#1072#1085#1086#1074#1099#1081' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590538980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 188.976302280000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1095#1080#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 264.567100000000000000
          Top = 18.897650000000000000
          Width = 204.094558980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1099#1096#1077#1076#1096#1077#1077' '#1080#1079' '#1089#1090#1088#1086#1103' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 468.661720000000000000
          Top = 18.897650000000000000
          Width = 211.653618980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Height = 37.795300000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo90: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo91: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 75.590600000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 264.567100000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 468.661720000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxDS8_2
        DataSetName = 'frxDS8_2'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 75.590600000000000000
          Width = 188.976302280000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'reason_name_full'
          DataSet = frxDS8_2
          DataSetName = 'frxDS8_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDS8_2."reason_name_full"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Width = 75.590538980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'date_fail'
          DataSet = frxDS8_2
          DataSetName = 'frxDS8_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_2."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 264.567100000000000000
          Width = 204.094558980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'oborud'
          DataSet = frxDS8_2
          DataSetName = 'frxDS8_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_2."oborud"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 468.661720000000000000
          Width = 211.653618980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'prin_meri'
          DataSet = frxDS8_2
          DataSetName = 'frxDS8_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDS8_2."prin_meri"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object PageHeader3: TfrxPageHeader
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
      object PageFooter3: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Memo45: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header3: TfrxHeader
        Height = 56.692950000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo70: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1080#1079' '#1078#1091#1088#1085#1072#1083#1072' '#1058#1059'-152')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590538980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 188.976302280000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1095#1080#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 264.567100000000000000
          Top = 18.897650000000000000
          Width = 204.094558980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1099#1096#1077#1076#1096#1077#1077' '#1080#1079' '#1089#1090#1088#1086#1103' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 468.661720000000000000
          Top = 18.897650000000000000
          Width = 211.653618980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1085#1103#1090#1099#1077' '#1084#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxDS8_3
        DataSetName = 'frxDS8_3'
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Left = 75.590600000000000000
          Width = 188.976302280000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'reason_name_full'
          DataSet = frxDS8_3
          DataSetName = 'frxDS8_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDS8_3."reason_name_full"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Width = 75.590538980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'date_fail'
          DataSet = frxDS8_3
          DataSetName = 'frxDS8_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_3."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 264.567100000000000000
          Width = 204.094558980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'oborud'
          DataSet = frxDS8_3
          DataSetName = 'frxDS8_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_3."oborud"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 468.661720000000000000
          Width = 211.653618980000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'prin_meri'
          DataSet = frxDS8_3
          DataSetName = 'frxDS8_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDS8_3."prin_meri"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        Height = 151.181200000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo69: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo99: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo100: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 75.590600000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 264.567100000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 468.661720000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object ReportTitle2: TfrxReportTitle
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo37: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1076#1086#1089#1090#1072#1102#1097#1077#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 18.897650000000000000
          Width = 514.016018980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 514.016080000000000000
          Top = 18.897650000000000000
          Width = 166.299258980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 56.692950000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 514.016080000000000000
          Top = 56.692950000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Top = 75.590600000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 514.016080000000000000
          Top = 75.590600000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Top = 94.488250000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 514.016080000000000000
          Top = 94.488250000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object PageHeader4: TfrxPageHeader
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        Stretched = True
      end
      object PageFooter4: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Memo85: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header4: TfrxHeader
        Height = 75.590587800000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo76: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080' '#1092#1072#1081#1083#1086#1074' '#1052#1055#1057#1059)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590538980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 302.362204720000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1099#1103#1074#1083#1077#1085#1085#1099#1081' '#1076#1077#1092#1077#1082#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 377.953000000000000000
          Top = 18.897650000000000000
          Width = 302.362204720000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1077#1076#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        Height = 18.897637800000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        DataSet = frxDS8_4
        DataSetName = 'frxDS8_4'
        RowCount = 0
        Stretched = True
        object Memo80: TfrxMemoView
          Width = 75.590538980000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 75.590600000000000000
          Width = 302.362204720000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'incident_descr_e'
          DataSet = frxDS8_4
          DataSetName = 'frxDS8_4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_4."incident_descr_e"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 377.953000000000000000
          Width = 302.362204720000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'reason_name_full'
          DataSet = frxDS8_4
          DataSetName = 'frxDS8_4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS8_4."reason_name_full"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer4: TfrxFooter
        Height = 18.897650000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo104: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object ReportTitle3: TfrxReportTitle
        Height = 472.441250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo47: TfrxMemoView
          Top = 321.260050000000000000
          Width = 264.567038980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1083' '#1080#1085#1078#1077#1085#1077#1088' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1081' '#1075#1088#1091#1087#1087#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 480.000310000000000000
          Top = 321.260050000000000000
          Width = 200.315028980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fio]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 377.953000000000000000
          Width = 325.039518980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1092#1077#1082#1090#1099' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1081' '#1082#1072#1088#1090#1086#1081' '#1091#1089#1090#1088#1072#1085#1077#1085#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 491.338900000000000000
          Top = 434.645950000000000000
          Width = 170.078788980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 491.338900000000000000
          Top = 453.543600000000000000
          Width = 170.078788980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Top = 434.645950000000000000
          Width = 170.078788980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1085#1090#1088#1086#1083#1077#1088' '#1054#1054#1054' "'#1058#1052#1061'-'#1057#1077#1088#1074#1080#1089'"')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Top = 453.543600000000000000
          Width = 45.354298980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1089#1090#1077#1088)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1082#1086#1085#1090#1088#1086#1083#1077#1088#1072' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077' '#1074' '#1088#1077#1084#1086#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Top = 56.692950000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 113.385900000000000000
          Top = 56.692950000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 113.385900000000000000
          Top = 75.590600000000000000
          Width = 566.929500000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 480.000310000000000000
          Top = 132.283550000000000000
          Width = 200.315090000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077' '#1088#1072#1073#1086#1090#1099', '#1074#1099#1103#1074#1083#1077#1085#1085#1099#1077' '#1085#1077#1076#1086#1089#1090#1072#1090#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Top = 132.283550000000000000
          Width = 480.000248980000000000
          Height = 75.590600000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1077#1081)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 480.000310000000000000
          Top = 170.078850000000000000
          Width = 52.913358980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1080' '#1088#1072#1073#1086#1090#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 532.913730000000000000
          Top = 170.078850000000000000
          Width = 102.047248980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 634.961040000000000000
          Top = 170.078850000000000000
          Width = 45.354298980000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1050)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Top = 207.874150000000000000
          Width = 480.000310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 480.000310000000000000
          Top = 207.874150000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 532.913730000000000000
          Top = 207.874150000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 634.961040000000000000
          Top = 207.874150000000000000
          Width = 45.354360000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Top = 245.669450000000000000
          Width = 480.000310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 480.000310000000000000
          Top = 245.669450000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 532.913730000000000000
          Top = 245.669450000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 634.961040000000000000
          Top = 245.669450000000000000
          Width = 45.354360000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object PageHeader5: TfrxPageHeader
        Top = 514.016080000000000000
        Width = 718.110700000000000000
      end
      object PageFooter5: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 574.488560000000000000
        Width = 718.110700000000000000
        object Memo142: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object tmpTable8: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 200
    Top = 152
    object tmpTable8incident_descr_e: TStringField
      FieldName = 'incident_descr_e'
      Size = 250
    end
    object tmpTable8reason_name_full: TStringField
      FieldName = 'reason_name_full'
      Size = 250
    end
    object tmpTable8descr_table_MPSU: TStringField
      FieldName = 'descr_table'
      Size = 250
    end
  end
  object tmpData8: TDataSource
    DataSet = tmpTable8
    Left = 200
    Top = 200
  end
  object tmpTable8_1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 264
    Top = 160
    object tmpTable8_1date_fail: TStringField
      FieldName = 'date_fail'
      Size = 250
    end
    object tmpTable8_1reason_name_full: TStringField
      FieldName = 'reason_name_full'
      Size = 250
    end
    object tmpTable8_1oborud: TStringField
      FieldName = 'oborud'
      Size = 250
    end
    object tmpTable8_1prin_meri: TStringField
      FieldName = 'prin_meri'
      Size = 250
    end
    object tmpTable8_1descr_table: TStringField
      FieldName = 'descr_table'
      Size = 250
    end
  end
  object tmpData8_1: TDataSource
    DataSet = tmpTable8_1
    Left = 264
    Top = 208
  end
  object frxDS12: TfrxDBDataset
    UserName = 'frxDS12'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ser_name=ser_name'
      'nom_loc=nom_loc'
      'depo_prip=depo_prip'
      'firm_name_fil=firm_name_fil'
      'firm_name_sld=firm_name_sld'
      'adress_sld=adress_sld'
      'date_fail=date_fail'
      'incident_descr_e=incident_descr_e'
      'reason_name_full=reason_name_full'
      'detail_name=detail_name'
      'train_num=train_num'
      'weight=weight'
      'brig_name=brig_name'
      'brig_t_nom=brig_t_nom'
      'firm_name=firm_name')
    BCDToCurrency = False
    Left = 480
    Top = 504
  end
  object frxDS8_2: TfrxDBDataset
    UserName = 'frxDS8_2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'date_fail=date_fail'
      'incident_descr_e=incident_descr_e'
      'reason_name_full=reason_name_full'
      'oborud=oborud'
      'prin_meri=prin_meri'
      'descr_table=descr_table'
      'idx1=idx1')
    BCDToCurrency = False
    Left = 16
    Top = 248
  end
  object t8_2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 48
    Top = 248
    object StringField1: TStringField
      FieldName = 'date_fail'
      Size = 250
    end
    object StringField2: TStringField
      FieldName = 'reason_name_full'
      Size = 250
    end
    object StringField3: TStringField
      FieldName = 'oborud'
      Size = 250
    end
    object StringField4: TStringField
      FieldName = 'prin_meri'
      Size = 250
    end
    object StringField5: TStringField
      FieldName = 'descr_table'
      Size = 250
    end
  end
  object ds_8_2: TDataSource
    DataSet = t8_2
    Left = 80
    Top = 248
  end
  object ds_8_3: TDataSource
    DataSet = t8_3
    Left = 80
    Top = 296
  end
  object t8_3: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 48
    Top = 296
    object StringField6: TStringField
      FieldName = 'date_fail'
      Size = 250
    end
    object StringField7: TStringField
      FieldName = 'reason_name_full'
      Size = 250
    end
    object StringField8: TStringField
      FieldName = 'oborud'
      Size = 250
    end
    object StringField9: TStringField
      FieldName = 'prin_meri'
      Size = 250
    end
    object StringField10: TStringField
      FieldName = 'descr_table'
      Size = 250
    end
  end
  object frxDS8_3: TfrxDBDataset
    UserName = 'frxDS8_3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'date_fail=date_fail'
      'incident_descr_e=incident_descr_e'
      'reason_name_full=reason_name_full'
      'oborud=oborud'
      'prin_meri=prin_meri'
      'descr_table=descr_table'
      'idx1=idx1')
    BCDToCurrency = False
    Left = 16
    Top = 296
  end
  object frxDS8_1: TfrxDBDataset
    UserName = 'frxDS8_1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'date_fail=date_fail'
      'incident_descr_e=incident_descr_e'
      'reason_name_full=reason_name_full'
      'oborud=oborud'
      'prin_meri=prin_meri'
      'descr_table=descr_table'
      'idx1=idx1')
    BCDToCurrency = False
    Left = 16
    Top = 200
  end
  object t8_1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 48
    Top = 200
    object StringField11: TStringField
      FieldName = 'date_fail'
      Size = 250
    end
    object StringField12: TStringField
      FieldName = 'reason_name_full'
      Size = 250
    end
    object StringField13: TStringField
      FieldName = 'oborud'
      Size = 250
    end
    object StringField14: TStringField
      FieldName = 'prin_meri'
      Size = 250
    end
    object StringField15: TStringField
      FieldName = 'descr_table'
      Size = 250
    end
  end
  object ds_8_1: TDataSource
    DataSet = t8_1
    Left = 80
    Top = 200
  end
  object ds_8_4: TDataSource
    DataSet = t8_4
    Left = 80
    Top = 344
  end
  object frxDS8_4: TfrxDBDataset
    UserName = 'frxDS8_4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'incident_descr_e=incident_descr_e'
      'reason_name_full=reason_name_full'
      'descr_table=descr_table')
    BCDToCurrency = False
    Left = 16
    Top = 344
  end
  object t8_4: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 48
    Top = 344
    object StringField21: TStringField
      FieldName = 'incident_descr_e'
      Size = 250
    end
    object StringField22: TStringField
      FieldName = 'reason_name_full'
      Size = 250
    end
    object t8_4descr_table: TStringField
      FieldName = 'descr_table'
      Size = 250
    end
  end
  object frxDS13_1: TfrxDBDataset
    UserName = 'frxDS13_1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'class_name=class_name'
      'oborud=oborud')
    BCDToCurrency = False
    Left = 544
    Top = 552
  end
  object t13_1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvSortOptions]
    FormatOptions.SortOptions = [soDescNullLast]
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 584
    Top = 552
    object t13_1class_name: TStringField
      FieldName = 'class_name'
      Size = 250
    end
    object t13_1obstoyat_inc: TStringField
      FieldName = 'oborud'
      Size = 250
    end
  end
  object ds13_1: TDataSource
    DataSet = t13_1
    Left = 616
    Top = 552
  end
  object frxDS13_2: TfrxDBDataset
    UserName = 'frxDS13_2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'obstoyat_inc=obstoyat_inc'
      'date_fail=date_fail')
    BCDToCurrency = False
    Left = 544
    Top = 504
  end
  object t13_2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 584
    Top = 504
    object StringField17: TStringField
      FieldName = 'obstoyat_inc'
      Size = 250
    end
    object StringField18: TStringField
      FieldName = 'date_fail'
      Size = 250
    end
  end
  object ds13_2: TDataSource
    DataSet = t13_2
    Left = 616
    Top = 504
  end
  object frxDS13_3: TfrxDBDataset
    UserName = 'frxDS13_3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'oborud=oborud')
    BCDToCurrency = False
    Left = 664
    Top = 552
  end
  object t13_3: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 704
    Top = 552
    object StringField16: TStringField
      FieldName = 'oborud'
      Size = 250
    end
  end
  object ds13_3: TDataSource
    DataSet = t13_3
    Left = 736
    Top = 552
  end
  object FrxRprtDoc13tt: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42447.457574421300000000
    ReportOptions.LastChange = 42454.603844976850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Begin'
      
        '                                                                ' +
        '                           '
      'End.          ')
    Left = 968
    Top = 496
    Datasets = <
      item
        DataSet = frxDS13_1
        DataSetName = 'frxDS13_1'
      end
      item
        DataSet = frxDS13_2
        DataSetName = 'frxDS13_2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object ReportTitle1: TfrxReportTitle
        Height = 264.567100000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072' '#1085#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1077' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072' '#1074' '#1086#1073#1098#1077#1084#1077' [name] [ser_name] [nom_object]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 400.630180000000000000
          Top = 56.692950000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103':  [Date()]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 359.055350000000000000
          Top = 94.488250000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1073#1077#1075#1080' '#1083#1086#1082#1086#1084#1086#1090#1080#1074#1072', ('#1082#1084')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 359.055350000000000000
          Top = 113.385900000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1055#1086#1089#1090#1088#1086#1081#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 359.055350000000000000
          Top = 132.283550000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 359.055350000000000000
          Top = 151.181200000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1057#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 359.055350000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 359.055350000000000000
          Top = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 359.055350000000000000
          Top = 207.874150000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1056'-1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 359.055350000000000000
          Top = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' '#1058#1054'-3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 566.929500000000000000
          Top = 113.385900000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_postr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 566.929500000000000000
          Top = 132.283550000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_kr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 566.929500000000000000
          Top = 151.181200000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_sr_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Top = 170.078850000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr3_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 566.929500000000000000
          Top = 188.976500000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr2_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 566.929500000000000000
          Top = 207.874150000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_tr1_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 566.929500000000000000
          Top = 226.771800000000000000
          Width = 151.181029130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[prob_to3_km]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Top = 245.669450000000000000
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 306.141930000000000000
        Width = 718.110700000000000000
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo23: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 18.897650000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo38: TfrxMemoView
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -96
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        DataSet = frxDS13_1
        DataSetName = 'frxDS13_1'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'class_name'
          DataSet = frxDS13_1
          DataSetName = 'frxDS13_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDS13_1."class_name"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 359.055350000000000000
          Width = 359.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'oborud'
          DataSet = frxDS13_1
          DataSetName = 'frxDS13_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDS13_1."oborud"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 529.134200000000000000
        Width = 718.110700000000000000
        object Memo61: TfrxMemoView
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1045#1057#1052#1058)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object PageHeader2: TfrxPageHeader
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageFooter2: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1045#1057#1052#1058)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 37.795300000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo28: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1074#1090#1086#1088#1085#1099#1077' '#1079#1072#1084#1077#1095#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 18.897650000000000000
          Width = 566.929268110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 566.929500000000000000
          Top = 18.897650000000000000
          Width = 151.180968110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDS13_2
        DataSetName = 'frxDS13_2'
        RowCount = 0
        Stretched = True
        object Memo31: TfrxMemoView
          Width = 566.929268110000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'obstoyat_inc'
          DataSet = frxDS13_2
          DataSetName = 'frxDS13_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS13_2."obstoyat_inc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.180968110000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'date_fail'
          DataSet = frxDS13_2
          DataSetName = 'frxDS13_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDS13_2."date_fail"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo37: TfrxMemoView
          Width = 566.929268110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object ReportTitle3: TfrxReportTitle
        Height = 325.039580000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo101: TfrxMemoView
          Top = 154.960730000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1083' '#1080#1085#1078#1077#1085#1077#1088' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1086#1081' '#1075#1088#1091#1087#1087#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 521.575140000000000000
          Top = 154.960730000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[p_fio]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Top = 192.756030000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1074' '#1058#1059'-28 '#1074#1085#1077#1089#1077#1085#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Top = 230.551330000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '________________ '#1054#1054#1054' "'#1058#1052#1061'-'#1057#1077#1088#1074#1080#1089'"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 521.575140000000000000
          Top = 230.551330000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Top = 268.346630000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1044#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1072#1103' '#1082#1072#1088#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Top = 306.141930000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1052#1077#1089#1090#1077#1088' '#1094#1077#1093#1072' '#1058#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 521.575140000000000000
          Top = 302.362400000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Width = 173.858267720000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1077#1081)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 173.858267720000000000
          Width = 173.858267720000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1095#1080#1085#1072' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 347.716535430000000000
          Width = 173.858267720000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077' '#1088#1072#1073#1086#1090#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 521.574795830000000000
          Width = 94.488188980000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054' '#1080' '#1088#1086#1089#1087#1080#1089#1100' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047248980000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054' '#1080' '#1088#1086#1089#1087#1080#1089#1100' '#1084#1072#1089#1090#1077#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Top = 37.795300000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 173.858380000000000000
          Top = 37.795300000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 347.716760000000000000
          Top = 37.795300000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 521.575140000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 616.063390000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Top = 56.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 173.858380000000000000
          Top = 56.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 347.716760000000000000
          Top = 56.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 521.575140000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 616.063390000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Top = 75.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 173.858380000000000000
          Top = 75.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 347.716760000000000000
          Top = 75.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 521.575140000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 616.063390000000000000
          Top = 75.590600000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Top = 94.488250000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 173.858380000000000000
          Top = 94.488250000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 347.716760000000000000
          Top = 94.488250000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 521.575140000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 616.063390000000000000
          Top = 94.488250000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 173.858380000000000000
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 347.716760000000000000
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 521.575140000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 616.063390000000000000
          Top = 113.385900000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader3: TfrxPageHeader
        Top = 366.614410000000000000
        Width = 718.110700000000000000
      end
      object PageFooter3: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Memo62: TfrxMemoView
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1045#1057#1052#1058)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
