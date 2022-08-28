object frmTextEditDialog: TfrmTextEditDialog
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 134
  ClientWidth = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    252
    134)
  PixelsPerInch = 96
  TextHeight = 18
  object edt: TcxTextEdit
    Left = 0
    Top = 24
    Anchors = [akLeft, akTop, akRight]
    Properties.LookupItems.Strings = (
      'dgdfbfhn'
      'fgdfgds'
      'fgjhnsfjnfsdsj'
      'fthnsj')
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
    TabOrder = 0
    Text = 'edt'
    OnKeyPress = edtKeyPress
    OnKeyUp = edtKeyUp
    Width = 250
  end
  object lbl: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'lbl'
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 93
    Width = 252
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object btnOk: TcxButton
      Left = 2
      Top = 2
      Width = 119
      Height = 37
      Align = alClient
      Caption = #1054#1050
      Default = True
      Enabled = False
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      OnClick = btnOkClick
    end
    object cxButton2: TcxButton
      Left = 121
      Top = 2
      Width = 129
      Height = 37
      Align = alRight
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
end
