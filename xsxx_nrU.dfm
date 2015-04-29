object xsxx_nrF: Txsxx_nrF
  Left = 741
  Top = 174
  BorderStyle = bsDialog
  Caption = #23398#29983#20449#24687
  ClientHeight = 278
  ClientWidth = 479
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
    Width = 479
    Height = 278
    Align = alClient
    TabOrder = 0
    object tlb1: TToolBar
      Left = 1
      Top = 1
      Width = 477
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
      Width = 477
      Height = 249
      Align = alClient
      TabOrder = 1
      object cxDBMemo1: TcxDBMemo
        Left = 77
        Top = 133
        DataBinding.DataField = 'memo'
        DataBinding.DataSource = dm1.dsource_xs
        TabOrder = 0
        Height = 97
        Width = 358
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 313
        Top = 59
        DataBinding.DataField = 'jsid'
        DataBinding.DataSource = dm1.dsource_xs
        Properties.ReadOnly = True
        Style.Color = clScrollBar
        TabOrder = 1
        Width = 121
      end
      object cxLabel3: TcxLabel
        Left = 257
        Top = 63
        Caption = #29677#20027#20219'ID'
      end
      object cxLabel4: TcxLabel
        Left = 43
        Top = 133
        Caption = #22791#27880
      end
      object cxLabel5: TcxLabel
        Left = 32
        Top = 63
        Caption = #29677#20027#20219
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 77
        Top = 59
        Hint = #21452#20987#36873#25321#29677#20027#20219
        DataBinding.DataField = 'jsxm'
        DataBinding.DataSource = dm1.dsource_xs
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 5
        OnDblClick = cxDBTextEdit3DblClick
        Width = 121
      end
      object cxLabel6: TcxLabel
        Left = 44
        Top = 100
        Caption = #29677#32423
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 77
        Top = 96
        Hint = #21452#20987#36873#25321#29677#32423
        DataBinding.DataField = 'bjmc'
        DataBinding.DataSource = dm1.dsource_xs
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 7
        OnDblClick = cxDBTextEdit4DblClick
        Width = 121
      end
      object cxLabel7: TcxLabel
        Left = 257
        Top = 100
        Caption = #29677#32423#32534#21495
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 313
        Top = 96
        DataBinding.DataField = 'bjdm'
        DataBinding.DataSource = dm1.dsource_xs
        Properties.ReadOnly = True
        Style.Color = clScrollBar
        TabOrder = 9
        Width = 121
      end
      object cxLabel8: TcxLabel
        Left = 44
        Top = 26
        Caption = #23398#29983
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 77
        Top = 22
        DataBinding.DataField = 'xsxm'
        DataBinding.DataSource = dm1.dsource_xs
        TabOrder = 11
        Width = 121
      end
      object cxLabel9: TcxLabel
        Left = 278
        Top = 26
        Caption = #23398#21495
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 313
        Top = 22
        DataBinding.DataField = 'xsid'
        DataBinding.DataSource = dm1.dsource_xs
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 13
        Width = 121
      end
      object cxLabel8_start: TcxLabel
        Left = 198
        Top = 22
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
      object cxLabel1: TcxLabel
        Left = 434
        Top = 22
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
