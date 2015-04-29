object kfxxF: TkfxxF
  Left = 778
  Top = 218
  BorderStyle = bsDialog
  Caption = #25187#20998#20449#24687
  ClientHeight = 281
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 281
    Align = alClient
    TabOrder = 0
    object tlb1: TToolBar
      Left = 1
      Top = 1
      Width = 469
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
      Width = 469
      Height = 252
      Align = alClient
      Caption = #25187#20998#24773#20917
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object cxDBMemo1: TcxDBMemo
        Left = 67
        Top = 106
        DataBinding.DataField = 'kfyy'
        DataBinding.DataSource = dm1.dsource_koufen
        TabOrder = 0
        Height = 89
        Width = 358
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 67
        Top = 34
        Hint = #21452#20987#36873#25321#23398#29983
        DataBinding.DataField = 'xsid'
        DataBinding.DataSource = dm1.dsource_koufen
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 1
        OnDblClick = cxDBTextEdit1DblClick
        Width = 139
      end
      object ComBox_bj: TcxDBComboBox
        Left = 285
        Top = 34
        DataBinding.DataField = 'bj'
        DataBinding.DataSource = dm1.dsource_koufen
        Properties.ReadOnly = True
        Properties.OnInitPopup = ComBox_bjPropertiesInitPopup
        TabOrder = 2
        Width = 140
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 67
        Top = 209
        Hint = #21452#20987#36873#25321#25187#20998#20154
        DataBinding.DataField = 'kfrmc'
        DataBinding.DataSource = dm1.dsource_koufen
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 3
        OnDblClick = cxDBTextEdit2DblClick
        Width = 140
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 67
        Top = 70
        Hint = #21452#20987#36873#25321#23398#29983
        DataBinding.DataField = 'xsxm'
        DataBinding.DataSource = dm1.dsource_koufen
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 4
        OnDblClick = cxDBTextEdit1DblClick
        Width = 139
      end
      object cxLabel1: TcxLabel
        Left = 255
        Top = 38
        Caption = #29677#32423
      end
      object cxLabel2: TcxLabel
        Left = 39
        Top = 38
        Caption = #23398#21495
      end
      object cxLabel3: TcxLabel
        Left = 39
        Top = 74
        Caption = #23398#29983
      end
      object cxLabel4: TcxLabel
        Left = 39
        Top = 106
        Caption = #21407#22240
      end
      object cxLabel5: TcxLabel
        Left = 231
        Top = 213
        Caption = #25187#20998#26085#26399
      end
      object cxLabel6: TcxLabel
        Left = 27
        Top = 213
        Caption = #25187#20998#20154
      end
      object cxLabel7: TcxLabel
        Left = 243
        Top = 74
        Caption = #25187#20998#25968
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 285
        Top = 70
        DataBinding.DataField = 'kffs'
        DataBinding.DataSource = dm1.dsource_koufen
        TabOrder = 12
        Width = 140
      end
      object cxLabel8_start: TcxLabel
        Left = 425
        Top = 34
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
      object cxLabel8: TcxLabel
        Left = 425
        Top = 70
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
      object cxLabel9: TcxLabel
        Left = 206
        Top = 70
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
      object cxLabel10: TcxLabel
        Left = 206
        Top = 34
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
      object cxLabel11: TcxLabel
        Left = 207
        Top = 209
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
      object cxDateEdit1: TcxDateEdit
        Left = 286
        Top = 209
        Properties.InputKind = ikRegExpr
        Properties.ReadOnly = False
        TabOrder = 18
        OnKeyPress = cxDateEdit1KeyPress
        Width = 139
      end
    end
  end
end
