unit dataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm1 = class(TDataModule)
    con_main: TADOConnection;
    pub_dset: TADODataSet;
    pub_dsource: TDataSource;
    pub_cmd: TADOCommand;
    dset_bj: TADODataSet;
    dset_bjbjmc: TStringField;
    dset_bjbjzy: TStringField;
    dset_bjjsid: TStringField;
    dset_bjjsxm: TStringField;
    dset_bjmemo: TStringField;
    dset_bjbjdm: TStringField;
    dsource_bj: TDataSource;
    dset_js: TADODataSet;
    dset_jsjsxm: TStringField;
    dset_jslxfs: TStringField;
    dset_jsxb: TStringField;
    dset_jsbjdm: TStringField;
    dset_jsbjmc: TStringField;
    dset_jsmemo: TStringField;
    dset_jsjsid: TStringField;
    dsource_js: TDataSource;
    dset_koufen: TADODataSet;
    cdsdset_koufenbj: TStringField;
    cdsdset_koufenxsid: TStringField;
    cdsdset_koufenxsxm: TStringField;
    cdsdset_koufenkfyy: TStringField;
    cdsdset_koufenkfrmc: TStringField;
    cdsdset_koufenkfrq: TStringField;
    dset_koufenkffs: TFloatField;
    dset_koufenzyh: TStringField;
    dset_koufenmemo: TStringField;
    dsource_koufen: TDataSource;
    dset_xs: TADODataSet;
    dset_xsxsid: TStringField;
    dset_xsxh: TStringField;
    dset_xsxsxm: TStringField;
    dset_xsxb: TStringField;
    dset_xsbjdm: TStringField;
    dset_xsbjmc: TStringField;
    dset_xsjsid: TStringField;
    dset_xsjsxm: TStringField;
    dset_xsmemo: TStringField;
    dsource_xs: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{$R *.dfm}

end.

