object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 153
    Width = 36
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
  end
  object Button1: TButton
    Left = 168
    Top = 27
    Width = 89
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 27
    Width = 81
    Height = 25
    Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 216
    Top = 139
    Width = 185
    Height = 41
    Caption = 'Panel1'
    TabOrder = 2
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=216564;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=test;Data Source=192.168.21.12'
    Provider = 'SQLOLEDB.1'
    OnDisconnect = ADOConnection1Disconnect
    OnConnectComplete = ADOConnection1ConnectComplete
    Left = 72
    Top = 88
  end
  object MainMenu1: TMainMenu
    Left = 72
    Top = 40
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N3: TMenuItem
        AutoCheck = True
        Caption = #1040#1074#1090#1086#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
        Checked = True
      end
    end
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
