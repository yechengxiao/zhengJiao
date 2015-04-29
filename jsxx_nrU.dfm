object jsxx_nrF: Tjsxx_nrF
  Left = 695
  Top = 253
  BorderStyle = bsDialog
  Caption = #25945#24072#20449#24687
  ClientHeight = 257
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 257
    Align = alClient
    TabOrder = 0
    object tlb1: TToolBar
      Left = 1
      Top = 1
      Width = 446
      Height = 27
      AutoSize = True
      ButtonHeight = 27
      ButtonWidth = 47
      Caption = 'tlb1'
      Color = clSkyBlue
      EdgeBorders = []
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      object btn_save: TToolButton
        Left = 0
        Top = 0
        Caption = #20445#23384
        ImageIndex = 0
        OnClick = btn_saveClick
      end
      object btn2: TToolButton
        Left = 47
        Top = 0
        Width = 8
        Caption = 'btn2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object btn3: TToolButton
        Left = 55
        Top = 0
        Caption = #20851#38381
        ImageIndex = 1
        OnClick = btn3Click
      end
    end
    object grp1: TGroupBox
      Left = 1
      Top = 28
      Width = 446
      Height = 228
      Align = alClient
      TabOrder = 1
      object cxDBMemo1: TcxDBMemo
        Left = 79
        Top = 120
        DataBinding.DataField = 'memo'
        DataBinding.DataSource = dm1.dsource_js
        TabOrder = 0
        Height = 89
        Width = 340
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 297
        Top = 79
        DataBinding.DataField = 'bjdm'
        DataBinding.DataSource = dm1.dsource_js
        Properties.ReadOnly = True
        Style.Color = clScrollBar
        TabOrder = 1
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 22
        Top = 43
        Caption = #25945#24072#22995#21517
      end
      object cxLabel3: TcxLabel
        Left = 234
        Top = 83
        Caption = #29677#32423#20195#30721
      end
      object cxLabel4: TcxLabel
        Left = 46
        Top = 120
        Caption = #22791#27880
      end
      object cxLabel5: TcxLabel
        Left = 46
        Top = 82
        Caption = #29677#32423
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 79
        Top = 79
        Hint = #29677#20027#20219#38656#35201#22635#20889#65292#21452#20987#21487#36873#25321#29677#32423
        DataBinding.DataField = 'bjmc'
        DataBinding.DataSource = dm1.dsource_js
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 6
        OnDblClick = cxDBTextEdit3DblClick
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 79
        Top = 39
        DataBinding.DataField = 'jsxm'
        DataBinding.DataSource = dm1.dsource_js
        TabOrder = 7
        Width = 121
      end
      object cxLabel6: TcxLabel
        Left = 234
        Top = 43
        Caption = #32852#31995#26041#24335
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 297
        Top = 39
        DataBinding.DataField = 'lxfs'
        DataBinding.DataSource = dm1.dsource_js
        TabOrder = 9
        Width = 121
      end
      object cxLabel8_start: TcxLabel
        Left = 200
        Top = 39
        Caption = '*'
        ParentColor = False
        ParentFont = False
        Properties.ShadowedColor = clRed
        Style.BorderColor = clBtnFace
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextColor = clRed
        Style.IsFontAssigned = True
      end
    end
  end
end
