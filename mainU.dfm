object mainF: TmainF
  Left = 568
  Top = 182
  Width = 759
  Height = 486
  Caption = #25919#25945#31649#29702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pageCtl: TcxPageControl
    Left = 0
    Top = 0
    Width = 743
    Height = 448
    ActivePage = tab_jcxx
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Rotate = True
    TabOrder = 0
    TabPosition = tpLeft
    OnChange = pageCtlChange
    ClientRectBottom = 448
    ClientRectLeft = 91
    ClientRectRight = 743
    ClientRectTop = 0
    object tab_kfgl: TcxTabSheet
      Caption = #25187#20998#31649#29702
      ImageIndex = 0
    end
    object tab_xsgl: TcxTabSheet
      Caption = #23398#29983#31649#29702
      ImageIndex = 1
    end
    object tab_ssgl: TcxTabSheet
      Caption = #23487#33293#31649#29702
      ImageIndex = 2
      TabVisible = False
    end
    object tab_jcxx: TcxTabSheet
      Caption = #22522#30784#20449#24687
      ImageIndex = 3
      object pageCtl_jc: TcxPageControl
        Left = 0
        Top = 0
        Width = 652
        Height = 448
        ActivePage = tab_bj
        Align = alClient
        TabOrder = 0
        OnChange = pageCtl_jcChange
        ClientRectBottom = 448
        ClientRectRight = 652
        ClientRectTop = 30
        object tab_bj: TcxTabSheet
          Caption = #29677#32423
          ImageIndex = 0
        end
        object tab_js: TcxTabSheet
          Caption = #25945#24072
          ImageIndex = 1
        end
      end
    end
  end
  object cxStyleRepo: TcxStyleRepository
    Left = 8
    Top = 216
    PixelsPerInch = 96
    object cxStyle_content: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clCream
      TextColor = clBlue
    end
    object cxStyle_box: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle_header: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clCream
      TextColor = clBlack
    end
    object cxStyle_selected: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSkyBlue
      TextColor = clBlack
    end
  end
end
