object frmLoginDlg: TfrmLoginDlg
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 136
  ClientWidth = 285
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object LoginPanel: TPanel
    Left = 0
    Top = 0
    Width = 285
    Height = 116
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      285
      116)
    object Label1: TcxLabel
      Left = 8
      Top = 33
      Caption = #1051#1086#1075#1080#1085
      Style.Edges = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 60
      Caption = #1055#1072#1088#1086#1083#1100
      Style.Edges = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      Transparent = True
    end
    object LoginEdit: TcxTextEdit
      Left = 112
      Top = 30
      Hint = #1055#1086#1083#1077' '#1074#1074#1086#1076#1072' '#1080#1084#1077#1085#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      ParentShowHint = False
      ShowHint = True
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
      TabOrder = 2
      OnKeyUp = LoginEditKeyUp
      Width = 156
    end
    object PassEdit: TcxTextEdit
      Left = 112
      Top = 58
      Hint = #1055#1086#1083#1077' '#1074#1074#1086#1076#1072' '#1087#1072#1088#1086#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      ParentShowHint = False
      Properties.EchoMode = eemPassword
      ShowHint = True
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
      TabOrder = 3
      OnKeyUp = PassEditKeyUp
      Width = 156
    end
    object OKBtn: TcxButton
      Left = 112
      Top = 88
      Width = 78
      Height = 25
      Anchors = [akLeft]
      Caption = #1042#1093#1086#1076
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 4
      OnClick = OKBtnClick
    end
    object CancelBtn: TcxButton
      Left = 190
      Top = 88
      Width = 78
      Height = 25
      Anchors = [akLeft]
      Caption = #1054#1090#1084#1077#1085#1072
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 5
      OnClick = CancelBtnClick
    end
    object chbIsInternet: TcxCheckBox
      Left = 0
      Top = 0
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100', '#1077#1089#1083#1080' '#1088#1072#1073#1086#1095#1077#1077' '#1084#1077#1089#1090#1086' '#1074' '#1089#1077#1090#1080' '#1080#1085#1090#1077#1088#1085#1077#1090
      Align = alTop
      Caption = #1048#1085#1090#1077#1088#1085#1077#1090
      ParentFont = False
      Properties.Alignment = taLeftJustify
      Properties.FullFocusRect = True
      Properties.Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C30E0000C30E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809AD1809AD1809AD1809AD1809AD1809AD1809AD1809AD18
        09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600006600FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
        6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660031C24F22B7381AB02D21
        B437006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
        A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FF0066004FD67953DE7F31B54D006600FF00FF00
        6600179D271EAE31006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
        00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF006600149D21006600FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD18
        09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FF
        FF00FFFF00FFAD1809AD1809AD1809AD1809AD1809AD1809AD1809AD1809AD18
        09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Properties.GlyphCount = 2
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbIsInternetPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
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
      TabOrder = 6
      Width = 285
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 116
    Width = 285
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #1054#1078#1080#1076#1072#1085#1080#1077' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' ...'
      end>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
end
