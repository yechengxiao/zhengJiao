object objectF: TobjectF
  Left = 281
  Top = 256
  Width = 626
  Height = 359
  Caption = 'objectF'
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
    Width = 610
    Height = 321
    Align = alClient
    TabOrder = 0
    object pnl2_search: TPanel
      Left = 1
      Top = 28
      Width = 608
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
        Left = 415
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
    end
    object cxGrid_koufen: TcxGrid
      Left = 1
      Top = 80
      Width = 608
      Height = 240
      Align = alClient
      TabOrder = 1
      object cxGrid_koufenDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dm1.dsource_bj
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
      end
      object cxGrid_koufenLevel1: TcxGridLevel
        GridView = cxGrid_koufenDBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 608
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
      end
    end
  end
end
