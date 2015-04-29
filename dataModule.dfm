object dm1: Tdm1
  OldCreateOrder = False
  Left = 419
  Top = 83
  Height = 560
  Width = 711
  object con_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sxzy2008!@#;Persist Security Info=T' +
      'rue;User ID=zy;Initial Catalog=carsellmis;Data Source=122.225.10' +
      '2.238,50000;Use Procedure for Prepare=1;Auto Translate=True;Pack' +
      'et Size=4096;Workstation ID=YCX;Use Encryption for Data=False;Ta' +
      'g with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 39
    Top = 17
  end
  object pub_dset: TADODataSet
    Connection = con_main
    Parameters = <>
    Left = 112
    Top = 19
  end
  object pub_dsource: TDataSource
    DataSet = pub_dset
    Left = 110
    Top = 75
  end
  object pub_cmd: TADOCommand
    Connection = con_main
    Parameters = <>
    Left = 193
    Top = 19
  end
  object dset_bj: TADODataSet
    Connection = con_main
    CursorType = ctStatic
    CommandText = 'select top 0 * from bjxx'
    FieldDefs = <
      item
        Name = 'bjdm'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 17
      end
      item
        Name = 'bjmc'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'bjzy'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'jsid'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'jsxm'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'memo'
        DataType = ftString
        Size = 200
      end>
    Parameters = <>
    StoreDefs = True
    Left = 41
    Top = 143
    object dset_bjbjmc: TStringField
      DisplayLabel = #29677#32423
      FieldName = 'bjmc'
      Size = 100
    end
    object dset_bjbjzy: TStringField
      DisplayLabel = #25152#23646#19987#19994
      FieldName = 'bjzy'
      Size = 100
    end
    object dset_bjjsid: TStringField
      DisplayLabel = #29677#20027#20219'ID'
      FieldName = 'jsid'
      Size = 50
    end
    object dset_bjjsxm: TStringField
      DisplayLabel = #29677#20027#20219
      FieldName = 'jsxm'
    end
    object dset_bjmemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 200
    end
    object dset_bjbjdm: TStringField
      DisplayLabel = #29677#32423#32534#21495
      FieldName = 'bjdm'
      FixedChar = True
      Size = 17
    end
  end
  object dsource_bj: TDataSource
    DataSet = dset_bj
    Left = 43
    Top = 202
  end
  object dset_js: TADODataSet
    Connection = con_main
    CursorType = ctStatic
    CommandText = 'select top 0 * from jsxx'
    FieldDefs = <
      item
        Name = 'jsid'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 17
      end
      item
        Name = 'jsxm'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'lxfs'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'xb'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'bjdm'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'bjmc'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'memo'
        DataType = ftString
        Size = 200
      end>
    Parameters = <>
    StoreDefs = True
    Left = 117
    Top = 149
    object dset_jsjsxm: TStringField
      DisplayLabel = #25945#24072#22995#21517
      FieldName = 'jsxm'
    end
    object dset_jslxfs: TStringField
      DisplayLabel = #32852#31995#26041#24335
      FieldName = 'lxfs'
    end
    object dset_jsxb: TStringField
      DisplayLabel = #24615#21035
      FieldName = 'xb'
      Size = 4
    end
    object dset_jsbjdm: TStringField
      DisplayLabel = #29677#32423#20195#30721
      FieldName = 'bjdm'
      Size = 14
    end
    object dset_jsbjmc: TStringField
      DisplayLabel = #29677#32423
      FieldName = 'bjmc'
      Size = 100
    end
    object dset_jsmemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 200
    end
    object dset_jsjsid: TStringField
      DisplayLabel = #25945#24072'ID'
      FieldName = 'jsid'
      FixedChar = True
      Size = 17
    end
  end
  object dsource_js: TDataSource
    DataSet = dset_js
    Left = 121
    Top = 205
  end
  object dset_koufen: TADODataSet
    Connection = con_main
    CursorType = ctStatic
    CommandText = 'select top 0 * from kfxx'
    Parameters = <>
    Left = 211
    Top = 146
    object cdsdset_koufenbj: TStringField
      DisplayLabel = #29677#32423
      FieldName = 'bj'
      Size = 40
    end
    object cdsdset_koufenxsid: TStringField
      DisplayLabel = #23398#21495
      FieldName = 'xsid'
    end
    object cdsdset_koufenxsxm: TStringField
      DisplayLabel = #23398#29983
      FieldName = 'xsxm'
      Size = 10
    end
    object cdsdset_koufenkfyy: TStringField
      DisplayLabel = #25187#20998#21407#22240
      FieldName = 'kfyy'
      Size = 200
    end
    object cdsdset_koufenkfrmc: TStringField
      DisplayLabel = #25187#20998#20154
      FieldName = 'kfrmc'
      Size = 200
    end
    object cdsdset_koufenkfrq: TStringField
      DisplayLabel = #25187#20998#26085#26399
      FieldName = 'kfrq'
      EditMask = '!9999/99/99;0;_'
      Size = 14
    end
    object dset_koufenkffs: TFloatField
      DisplayLabel = #25187#20998#20998#25968
      FieldName = 'kffs'
    end
    object dset_koufenzyh: TStringField
      DisplayLabel = #27969#27700#21495
      FieldName = 'zyh'
      FixedChar = True
      Size = 17
    end
    object dset_koufenmemo: TStringField
      FieldName = 'memo'
      Size = 200
    end
  end
  object dsource_koufen: TDataSource
    DataSet = dset_koufen
    Left = 208
    Top = 204
  end
  object dset_xs: TADODataSet
    Connection = con_main
    CursorType = ctStatic
    CommandText = 'select top 0 * from xsxx'
    Parameters = <>
    Left = 320
    Top = 142
    object dset_xsxsid: TStringField
      FieldName = 'xsid'
      FixedChar = True
      Size = 17
    end
    object dset_xsxh: TStringField
      DisplayLabel = #23398#21495
      FieldName = 'xh'
      Size = 50
    end
    object dset_xsxsxm: TStringField
      DisplayLabel = #23398#29983
      FieldName = 'xsxm'
    end
    object dset_xsxb: TStringField
      DisplayLabel = #24615#21035
      FieldName = 'xb'
      Size = 4
    end
    object dset_xsbjdm: TStringField
      FieldName = 'bjdm'
      Size = 50
    end
    object dset_xsbjmc: TStringField
      DisplayLabel = #29677#32423
      FieldName = 'bjmc'
      Size = 100
    end
    object dset_xsjsid: TStringField
      FieldName = 'jsid'
      Size = 50
    end
    object dset_xsjsxm: TStringField
      DisplayLabel = #29677#20027#20219
      FieldName = 'jsxm'
    end
    object dset_xsmemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'memo'
      Size = 200
    end
  end
  object dsource_xs: TDataSource
    DataSet = dset_xs
    Left = 317
    Top = 208
  end
end
