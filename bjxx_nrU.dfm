object bjxx_nrF: Tbjxx_nrF
  Left = 649
  Top = 214
  BorderStyle = bsDialog
  Caption = #29677#32423#20449#24687
  ClientHeight = 235
  ClientWidth = 429
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
    Width = 429
    Height = 235
    Align = alClient
    TabOrder = 0
    object tlb1: TToolBar
      Left = 1
      Top = 1
      Width = 427
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
      Width = 427
      Height = 206
      Align = alClient
      TabOrder = 1
      object cxDBMemo1: TcxDBMemo
        Left = 75
        Top = 106
        DataBinding.DataField = 'memo'
        DataBinding.DataSource = dm1.dsource_bj
        TabOrder = 0
        Height = 89
        Width = 318
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 271
        Top = 73
        DataBinding.DataField = 'jsid'
        DataBinding.DataSource = dm1.dsource_bj
        Properties.ReadOnly = True
        Style.Color = clScrollBar
        TabOrder = 1
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 39
        Top = 44
        Caption = #29677#32423
      end
      object cxLabel2: TcxLabel
        Left = 236
        Top = 44
        Caption = #19987#19994
      end
      object cxLabel3: TcxLabel
        Left = 213
        Top = 77
        Caption = #29677#20027#20219'ID'
      end
      object cxLabel4: TcxLabel
        Left = 39
        Top = 106
        Caption = #22791#27880
      end
      object cxLabel7: TcxLabel
        Left = 27
        Top = 77
        Caption = #29677#20027#20219
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 74
        Top = 73
        Hint = #21452#20987#36873#25321#29677#20027#20219
        DataBinding.DataField = 'jsxm'
        DataBinding.DataSource = dm1.dsource_bj
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 7
        OnDblClick = cxDBTextEdit5DblClick
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 74
        Top = 40
        DataBinding.DataField = 'bjmc'
        DataBinding.DataSource = dm1.dsource_bj
        TabOrder = 8
        Width = 121
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 271
        Top = 40
        DataBinding.DataField = 'bjzy'
        DataBinding.DataSource = dm1.dsource_bj
        TabOrder = 9
        Width = 121
      end
      object cxLabel8_start: TcxLabel
        Left = 195
        Top = 40
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
