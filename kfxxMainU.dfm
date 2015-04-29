object kfxxMainF: TkfxxMainF
  Left = 298
  Top = 165
  Width = 781
  Height = 454
  Caption = #25187#20998#20449#24687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pageCtl_kf: TcxPageControl
    Left = 0
    Top = 0
    Width = 765
    Height = 416
    ActivePage = tab_kf2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ClientRectBottom = 416
    ClientRectRight = 765
    ClientRectTop = 27
    object tab_kf1: TcxTabSheet
      Caption = #25187#20998#20449#24687
      ImageIndex = 0
      object pnl_kf1: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 389
        Align = alClient
        TabOrder = 0
        object pnl2_search: TPanel
          Left = 1
          Top = 28
          Width = 763
          Height = 63
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object showBox: TPaintBox
            Left = 570
            Top = 1
            Width = 192
            Height = 61
            Align = alRight
          end
          object cxLabel1: TcxLabel
            Left = 31
            Top = 11
            Caption = #29677#32423
          end
          object cxLabel2: TcxLabel
            Left = 7
            Top = 38
            Caption = #25187#20998#21407#22240
          end
          object cxLabel3: TcxLabel
            Left = 291
            Top = 11
            Caption = #23398#29983
          end
          object cxLabel4: TcxLabel
            Left = 161
            Top = 11
            Caption = #23398#21495
          end
          object cxText_bj: TcxTextEdit
            Left = 64
            Top = 7
            TabOrder = 4
            Width = 78
          end
          object cxText_id: TcxTextEdit
            Left = 193
            Top = 7
            TabOrder = 5
            Width = 78
          end
          object cxText_xs: TcxTextEdit
            Left = 324
            Top = 7
            TabOrder = 6
            Width = 78
          end
          object cxText_yy: TcxTextEdit
            Left = 63
            Top = 34
            TabOrder = 7
            Width = 208
          end
        end
        object cxGrid_koufen: TcxGrid
          Left = 1
          Top = 91
          Width = 763
          Height = 297
          Align = alClient
          TabOrder = 1
          object cxGrid_koufenDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm1.dsource_koufen
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
            object cxgrdbclmn_cxGrid_koufenDBTableView1zyh: TcxGridDBColumn
              DataBinding.FieldName = 'zyh'
              HeaderAlignmentHorz = taCenter
              Width = 160
            end
            object cxgrdbclmn_cxGrid_koufenDBTableView1xsid: TcxGridDBColumn
              DataBinding.FieldName = 'xsid'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxgrdbclmn_cxGrid_koufenDBTableView1xsxm: TcxGridDBColumn
              DataBinding.FieldName = 'xsxm'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxgrdbclmn_cxGrid_koufenDBTableView1bj: TcxGridDBColumn
              DataBinding.FieldName = 'bj'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxGrid_koufenDBTableView1kffs: TcxGridDBColumn
              DataBinding.FieldName = 'kffs'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxgrdbclmn_cxGrid_koufenDBTableView1kfyy: TcxGridDBColumn
              DataBinding.FieldName = 'kfyy'
              HeaderAlignmentHorz = taCenter
              Width = 300
            end
            object cxgrdbclmn_cxGrid_koufenDBTableView1kfrmc: TcxGridDBColumn
              DataBinding.FieldName = 'kfrmc'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxgrdbclmn_cxGrid_koufenDBTableView1kfrq: TcxGridDBColumn
              DataBinding.FieldName = 'kfrq'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object cxGrid_koufenLevel1: TcxGridLevel
            GridView = cxGrid_koufenDBTableView1
          end
        end
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 763
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
          object sp3: TToolButton
            Left = 161
            Top = 0
            Width = 8
            Caption = 'btn5'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btn_del: TToolButton
            Left = 169
            Top = 0
            Caption = #21024#38500
            ImageIndex = 2
            OnClick = btn_delClick
          end
        end
      end
    end
    object tab_kf2: TcxTabSheet
      Caption = #25187#20998#32479#35745
      ImageIndex = 1
      object pnl_kf2: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 389
        Align = alClient
        TabOrder = 0
        object ToolBar2: TToolBar
          Left = 1
          Top = 1
          Width = 763
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
          object btn_tj: TToolButton
            Left = 0
            Top = 0
            Caption = #32479#35745
            ImageIndex = 3
            OnClick = btn_tjClick
          end
        end
        object Panel1: TPanel
          Left = 1
          Top = 28
          Width = 763
          Height = 37
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object showBoxTJ: TPaintBox
            Left = 570
            Top = 1
            Width = 192
            Height = 35
            Align = alRight
          end
          object cxLabel6: TcxLabel
            Left = 164
            Top = 11
            Caption = #29677#32423
          end
          object cxLabel7: TcxLabel
            Left = 424
            Top = 11
            Caption = #23398#29983
          end
          object cxLabel8: TcxLabel
            Left = 294
            Top = 11
            Caption = #23398#21495
          end
          object cxTextTJbj: TcxTextEdit
            Left = 197
            Top = 7
            TabOrder = 3
            Width = 78
          end
          object cxTextTJxh: TcxTextEdit
            Left = 326
            Top = 7
            TabOrder = 4
            Width = 78
          end
          object cxTextTJxs: TcxTextEdit
            Left = 457
            Top = 7
            TabOrder = 5
            Width = 78
          end
          object cxLabel5: TcxLabel
            Left = 6
            Top = 11
            Caption = #32479#35745#26041#24335
          end
          object cmb_tjfs: TcxComboBox
            Left = 62
            Top = 7
            Properties.Items.Strings = (
              ''
              #25353#29677#32423#32479#35745
              #25353#23398#29983#32479#35745)
            Properties.ReadOnly = False
            Properties.OnChange = cmb_tjfsPropertiesChange
            TabOrder = 7
            Text = #29677#32423
            OnKeyPress = cmb_tjfsKeyPress
            Width = 93
          end
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 65
          Width = 763
          Height = 323
          Align = alClient
          TabOrder = 2
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm1.pub_dsource
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.Content = mainF.cxStyle_content
            Styles.Selection = mainF.cxStyle_selected
            Styles.GroupByBox = mainF.cxStyle_box
            Styles.Header = mainF.cxStyle_header
            object cxGridDBTableView1_item: TcxGridDBColumn
              Caption = #20869#23481
              DataBinding.FieldName = 'item'
              HeaderAlignmentHorz = taCenter
              Width = 198
            end
            object cxGridDBTableView1_num: TcxGridDBColumn
              Caption = #25187#20998#25968
              DataBinding.FieldName = 'num'
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
end
