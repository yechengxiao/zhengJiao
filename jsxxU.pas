unit jsxxU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ComCtrls, ToolWin, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxContainer, cxLabel,
  ExtCtrls, ADODB;

type
  TjsxxF = class(TForm)
    pnl_kf1: TPanel;
    pnl2_search: TPanel;
    showBox: TPaintBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxText_bj: TcxTextEdit;
    cxText_xm: TcxTextEdit;
    cxGrid_koufen: TcxGrid;
    cxGrid_koufenDBTableView1: TcxGridDBTableView;
    cxGrid_koufenLevel1: TcxGridLevel;
    ToolBar1: TToolBar;
    btn_select: TToolButton;
    sp1: TToolButton;
    btn_insert: TToolButton;
    sp2: TToolButton;
    btn_update: TToolButton;
    cxGrid_koufenDBTableView1jsxm: TcxGridDBColumn;
    cxGrid_koufenDBTableView1lxfs: TcxGridDBColumn;
    cxGrid_koufenDBTableView1xb: TcxGridDBColumn;
    cxGrid_koufenDBTableView1bjdm: TcxGridDBColumn;
    cxGrid_koufenDBTableView1bjmc: TcxGridDBColumn;
    cxGrid_koufenDBTableView1memo: TcxGridDBColumn;
    cxGrid_koufenDBTableView1jsid: TcxGridDBColumn;
    procedure btn_selectClick(Sender: TObject);
    procedure btn_insertClick(Sender: TObject);
    procedure btn_updateClick(Sender: TObject);
    procedure cxGrid_koufenDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    callBy: string;
    { Public declarations }
  end;

var
  jsxxF: TjsxxF;

implementation

uses bjxx_nrU, utilU, xsxxU, dataModule, jsxx_nrU, kfxxMainU, bjxx;

{$R *.dfm}

procedure TjsxxF.btn_selectClick(Sender: TObject);
var
  sql, xm, bj: string;
begin
  bj := Trim(cxText_bj.Text);
  xm := Trim(cxText_xm.Text);

  if bj <> '' then
  begin
    sql := sql + ' AND bjmc LIKE ''%' + bj + '%'' ';
  end;
  if xm <> '' then
  begin
    sql := sql + ' AND jsxm LIKE ''%' + xm + '%'' ';
  end;

  sql := 'SELECT * FROM jsxx WHERE 1=1 ' + sql + ' ORDER BY jsid DESC';

  showBox.Canvas.TextOut(20, 5, '正在查询数据，请稍候...');
  try
    try
      OpenDataSet(dm1.dset_js, sql);
    except
      on e: Exception do
      begin
        ShowMsg(e.message, 'fail');
      end;
    end;
  finally
    showBox.Refresh;
  end;
end;

procedure TjsxxF.btn_insertClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_js) then
    begin
      ActiveDataSet(dm1.dset_js, 'jsxx');
    end;

    dm1.dset_js.Append;

    if not Assigned(jsxx_nrF) then
      jsxx_nrF := Tjsxx_nrF.Create(jsxx_nrF);

    jsxx_nrF.state := 'Append';
    jsxx_nrF.ShowModal;
  finally
    FreeAndNil(jsxx_nrF);
  end;
end;

procedure TjsxxF.btn_updateClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_js) then
    begin
      ActiveDataSet(dm1.dset_js, 'kfxx');
    end;

    dm1.dset_js.Edit;

    if not Assigned(jsxx_nrF) then
      jsxx_nrF := Tjsxx_nrF.Create(jsxx_nrF);
    jsxx_nrF.state := 'Edit';
    jsxx_nrF.ShowModal;
  finally
    FreeAndNil(jsxx_nrF);
  end;
end;

procedure TjsxxF.cxGrid_koufenDBTableView1DblClick(Sender: TObject);
var
  jsxm, jsid, bjdm, bjmc: string;
begin
  jsxm := dm1.dset_js.FieldByName('jsxm').AsString;
  jsid := dm1.dset_js.FieldByName('jsid').AsString;
  bjdm := dm1.dset_js.FieldByName('bjdm').AsString;
  bjmc := dm1.dset_js.FieldByName('bjmc').AsString;
  if callBy = 'kfxxU' then
  begin
    dm1.dset_koufen.FieldByName('kfrmc').AsString := jsxm;
    Close;
  end
  else if callBy = 'xsxx_nrU' then
  begin
    dm1.dset_xs.FieldByName('jsxm').AsString := jsxm;
    dm1.dset_xs.FieldByName('jsid').AsString := jsid;
    dm1.dset_xs.FieldByName('bjdm').AsString := bjdm;
    dm1.dset_xs.FieldByName('bjmc').AsString := bjmc;
    Close;
  end
  else if callBy = 'bjxx_nrU' then
  begin
    dm1.dset_bj.FieldByName('jsxm').AsString := jsxm;
    dm1.dset_bj.FieldByName('jsid').AsString := jsid;
    Close;
  end;

end;

end.

