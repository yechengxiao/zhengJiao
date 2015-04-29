object xsxxF: TxsxxF
  Left = 230
  Top = 158
  Width = 828
  Height = 430
  Caption = #23398#29983#20449#24687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pageCtl_xs: TcxPageControl
    Left = 0
    Top = 0
    Width = 812
    Height = 392
    ActivePage = tab_xsxx
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ClientRectBottom = 392
    ClientRectRight = 812
    ClientRectTop = 27
    object tab_xsxx: TcxTabSheet
      Caption = #23398#29983#20449#24687
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 812
        Height = 365
        Align = alClient
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 28
          Width = 810
          Height = 41
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object showBox: TPaintBox
            Left = 617
            Top = 1
            Width = 192
            Height = 39
            Align = alRight
          end
          object cxLabel1: TcxLabel
            Left = 31
            Top = 11
            Caption = #29677#32423
          end
          object cxLabel2: TcxLabel
            Left = 291
            Top = 10
            Caption = #23398#29983
          end
          object cxLabel3: TcxLabel
            Left = 161
            Top = 11
            Caption = #23398#21495
          end
          object cxTextEdit_bj: TcxTextEdit
            Left = 64
            Top = 7
            TabOrder = 3
            Width = 78
          end
          object cxTextEdit2_xh: TcxTextEdit
            Left = 193
            Top = 7
            TabOrder = 4
            Width = 78
          end
          object cxTextEdit3_xsxm: TcxTextEdit
            Left = 324
            Top = 7
            TabOrder = 5
            Width = 78
          end
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 69
          Width = 810
          Height = 295
          Align = alClient
          TabOrder = 1
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dm1.dsource_xs
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
            object cxGridDBTableView1xh: TcxGridDBColumn
              DataBinding.FieldName = 'xh'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxGridDBTableView1xsxm: TcxGridDBColumn
              DataBinding.FieldName = 'xsxm'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBTableView1xb: TcxGridDBColumn
              DataBinding.FieldName = 'xb'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBTableView1bjmc: TcxGridDBColumn
              DataBinding.FieldName = 'bjmc'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxGridDBTableView1jsxm: TcxGridDBColumn
              DataBinding.FieldName = 'jsxm'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBTableView1memo: TcxGridDBColumn
              DataBinding.FieldName = 'memo'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 810
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
          object sp4: TToolButton
            Left = 216
            Top = 0
            Width = 8
            Caption = 'sp4'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object btn_temOut: TToolButton
            Left = 224
            Top = 0
            Caption = #27169#26495
            ImageIndex = 4
            OnClick = btn_temOutClick
          end
          object ToolButton1: TToolButton
            Left = 271
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object btn_import: TToolButton
            Left = 279
            Top = 0
            Hint = #24517#39035#20351#29992#27169#26495#25165#33021#27491#30830#23548#20837
            Caption = #23548#20837
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = btn_importClick
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel'#25991#26723#65288'*.xls'#65289'|*.xls'
    Left = 702
    Top = 16
  end
end
