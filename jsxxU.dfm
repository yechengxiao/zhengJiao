object jsxxF: TjsxxF
  Left = 416
  Top = 203
  Width = 682
  Height = 320
  Caption = #25945#24072#20449#24687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_kf1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 282
    Align = alClient
    TabOrder = 0
    object pnl2_search: TPanel
      Left = 1
      Top = 28
      Width = 664
      Height = 52
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object showBox: TPaintBox
        Left = 471
        Top = 1
        Width = 192
        Height = 50
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cxLabel1: TcxLabel
        Left = 167
        Top = 18
        Caption = #29677#32423
      end
      object cxLabel2: TcxLabel
        Left = 18
        Top = 18
        Caption = #25945#24072#22995#21517
      end
      object cxText_bj: TcxTextEdit
        Left = 204
        Top = 14
        TabOrder = 2
        Width = 78
      end
      object cxText_xm: TcxTextEdit
        Left = 79
        Top = 14
        TabOrder = 3
        Width = 78
      end
    end
    object cxGrid_koufen: TcxGrid
      Left = 1
      Top = 80
      Width = 664
      Height = 201
      Align = alClient
      TabOrder = 1
      object cxGrid_koufenDBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid_koufenDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dm1.dsource_js
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        Styles.Content = mainF.cxStyle_content
        Styles.Selection = mainF.cxStyle_selected
        Styles.GroupByBox = mainF.cxStyle_box
        Styles.Header = mainF.cxStyle_header
        object cxGrid_koufenDBTableView1jsid: TcxGridDBColumn
          DataBinding.FieldName = 'jsid'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGrid_koufenDBTableView1jsxm: TcxGridDBColumn
          DataBinding.FieldName = 'jsxm'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid_koufenDBTableView1lxfs: TcxGridDBColumn
          DataBinding.FieldName = 'lxfs'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid_koufenDBTableView1xb: TcxGridDBColumn
          DataBinding.FieldName = 'xb'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid_koufenDBTableView1bjdm: TcxGridDBColumn
          DataBinding.FieldName = 'bjdm'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid_koufenDBTableView1bjmc: TcxGridDBColumn
          DataBinding.FieldName = 'bjmc'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid_koufenDBTableView1memo: TcxGridDBColumn
          DataBinding.FieldName = 'memo'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
      end
      object cxGrid_koufenLevel1: TcxGridLevel
        GridView = cxGrid_koufenDBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 664
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
      TabOrder = 2
      object btn_select: TToolButton
        Left = 0
        Top = 0
        Caption = #26597#35810
        ImageIndex = 3
        OnClick = btn_selectClick
      end
      object sp1: TToolButton
        Left = 47
        Top = 0
        Width = 8
        Caption = 'btn7'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object btn_insert: TToolButton
        Left = 55
        Top = 0
        AutoSize = True
        Caption = #26032#22686
        ImageIndex = 0
        OnClick = btn_insertClick
      end
      object sp2: TToolButton
        Left = 106
        Top = 0
        Width = 8
        AutoSize = True
        Caption = 'btn2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object btn_update: TToolButton
        Left = 114
        Top = 0
        Caption = #20462#25913
        ImageIndex = 1
        OnClick = btn_updateClick
      end
    end
  end
end
