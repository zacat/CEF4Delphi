object MiniBrowserFrm: TMiniBrowserFrm
  Left = 0
  Top = 0
  Caption = 'MiniBrowser'
  ClientHeight = 658
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 414
    Top = 41
    Width = 5
    Height = 598
    Visible = False
    ExplicitLeft = 403
    ExplicitTop = 60
    ExplicitHeight = 743
  end
  object NavControlPnl: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 1031
    object NavButtonPnl: TPanel
      Left = 0
      Top = 0
      Width = 133
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
      object BackBtn: TButton
        Left = 8
        Top = 8
        Width = 25
        Height = 25
        Caption = '3'
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Webdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BackBtnClick
      end
      object ForwardBtn: TButton
        Left = 39
        Top = 8
        Width = 25
        Height = 25
        Caption = '4'
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Webdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = ForwardBtnClick
      end
      object ReloadBtn: TButton
        Left = 70
        Top = 8
        Width = 25
        Height = 25
        Caption = 'q'
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Webdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ReloadBtnClick
      end
      object StopBtn: TButton
        Left = 101
        Top = 8
        Width = 25
        Height = 25
        Caption = '='
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Webdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = ReloadBtnClick
      end
    end
    object URLEditPnl: TPanel
      Left = 133
      Top = 0
      Width = 618
      Height = 41
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 9
      Padding.Bottom = 8
      ShowCaption = False
      TabOrder = 1
      ExplicitWidth = 825
      object URLCbx: TComboBox
        Left = 0
        Top = 9
        Width = 618
        Height = 21
        Align = alClient
        TabOrder = 0
        Items.Strings = (
          'https://www.google.com'
          'hello://world/'
          
            'https://www.whatismybrowser.com/detect/what-http-headers-is-my-b' +
            'rowser-sending'
          'https://www.w3schools.com/js/tryit.asp?filename=tryjs_win_close'
          'http://fhh.yeece55.com/list.php?uid=2437')
        ExplicitWidth = 825
      end
    end
    object ConfigPnl: TPanel
      Left = 751
      Top = 0
      Width = 73
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 958
      object ConfigBtn: TButton
        Left = 40
        Top = 8
        Width = 25
        Height = 25
        Caption = #8801
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = ConfigBtnClick
      end
      object GoBtn: TButton
        Left = 8
        Top = 8
        Width = 25
        Height = 25
        Caption = #9658
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = GoBtnClick
      end
    end
  end
  object CEFWindowParent1: TCEFWindowParent
    Left = 0
    Top = 41
    Width = 414
    Height = 598
    Align = alLeft
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 52
    ExplicitHeight = 743
  end
  object DevTools: TCEFWindowParent
    Left = 419
    Top = 41
    Width = 405
    Height = 598
    Align = alClient
    TabOrder = 2
    Visible = False
    ExplicitLeft = 710
    ExplicitTop = 52
    ExplicitWidth = 407
    ExplicitHeight = 743
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 639
    Width = 824
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 784
    ExplicitWidth = 1031
  end
  object Chromium1: TChromium
    OnTextResultAvailable = Chromium1TextResultAvailable
    OnProcessMessageReceived = Chromium1ProcessMessageReceived
    OnLoadingStateChange = Chromium1LoadingStateChange
    OnBeforeContextMenu = Chromium1BeforeContextMenu
    OnContextMenuCommand = Chromium1ContextMenuCommand
    OnAddressChange = Chromium1AddressChange
    OnTitleChange = Chromium1TitleChange
    OnStatusMessage = Chromium1StatusMessage
    OnAfterCreated = Chromium1AfterCreated
    Left = 424
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 664
    Top = 104
    object DevTools1: TMenuItem
      Caption = 'DevTools'
      OnClick = DevTools1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Preferences1: TMenuItem
      Caption = 'Preferences...'
      OnClick = Preferences1Click
    end
  end
end
