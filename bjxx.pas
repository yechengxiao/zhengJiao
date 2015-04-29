unit bjxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ComCtrls, ToolWin, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxContainer, cxLabel,
  ExtCtrls, ADODB;

type
  TbjxxF = class(TForm)
    pnl_kf1: TPanel;
    pnl2_search: TPanel;
    showBox: TPaintBox;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxText_bj: TcxTextEdit;
    cxText_zy: TcxTextEdit;
    cxGrid_koufen: TcxGrid;
    cxGrid_koufenDBTableView1: TcxGridDBTableView;
    cxGrid_koufenLevel1: TcxGridLevel;
    ToolBar1: TToolBar;
    btn_select: TToolButton;
    sp1: TToolButton;
    btn_insert: TToolButton;
    sp2: TToolButton;
    btn_update: TToolButton;
    cxGrid_koufenDBTableView1bjdm: TcxGridDBColumn;
    cxGrid_koufenDBTableView1bjmc: TcxGridDBColumn;
    cxGrid_koufenDBTableView1bjzy: TcxGridDBColumn;
    cxGrid_koufenDBTableView1jsid: TcxGridDBColumn;
    cxGrid_koufenDBTableView1jsxm: TcxGridDBColumn;
    cxGrid_koufenDBTableView1memo: TcxGridDBColumn;
    procedure btn_insertClick(Sender: TObject);
    procedure btn_updateClick(Sender: TObject);
    procedure btn_selectClick(Sender: TObject);
    procedure cxGrid_koufenDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    callBy: string;
    { Public declarations }
  end;

var
  bjxxF: TbjxxF;

implementation
uses dataModule, utilU, mainU, bjxx_nrU, xsxxU, jsxxU;
{$R *.dfm}

procedure TbjxxF.btn_insertClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_bj) then
    begin
      ActiveDataSet(dm1.dset_bj, 'bjxx');
    end;

    dm1.dset_bj.Append;

    if not Assigned(jsxx_nrF) then
      jsxx_nrF := Tbjxx_nrF.Create(jsxx_nrF);

    jsxx_nrF.state := 'Append';
    jsxx_nrF.ShowModal;
  finally
    FreeAndNil(jsxx_nrF);
  end;
end;

procedure TbjxxF.btn_updateClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_bj) then
    begin
      ActiveDataSet(dm1.dset_bj, 'kfxx');
    end;

    dm1.dset_bj.Edit;

    if not Assigned(jsxx_nrF) then
      jsxx_nrF := Tbjxx_nrF.Create(jsxx_nrF);
    jsxx_nrF.state := 'Edit';
    jsxx_nrF.ShowModal;
  finally
    FreeAndNil(jsxx_nrF);
  end;
end;

procedure TbjxxF.btn_selectClick(Sender: TObject);
var
  sql, bj, zy: string;
begin
  bj := Trim(cxText_bj.Text);
  zy := Trim(cxText_zy.Text);

  if bj <> '' then
  begin
    sql := sql + ' AND bjmc LIKE ''%' + bj + '%'' ';
  end;
  if zy <> '' then
  begin
    sql := sql + ' AND bjzy LIKE ''%' + zy + '%'' ';
  end;

  sql := 'SELECT * FROM bjxx WHERE 1=1 ' + sql + ' ORDER BY bjdm DESC';

  showBox.Canvas.TextOut(20, 5, '正在查询数据，请稍候...');
  try
    try
      OpenDataSet(dm1.dset_bj, sql);
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

procedure TbjxxF.cxGrid_koufenDBTableView1DblClick(Sender: TObject);
var
  bjmc, bjdm: string;
begin

  bjmc := dm1.dset_bj.FieldByName('bjmc').AsString;
  bjdm := dm1.dset_bj.FieldByName('bjdm').AsString;
  if callBy = 'xsxx_nrU' then
  begin
    dm1.dset_xs.FieldByName('bjmc').AsString := bjmc;
    dm1.dset_xs.FieldByName('bjdm').AsString := bjdm;
    Close;
  end
  else if callBy = 'jsxx_nrU' then
  begin
    dm1.dset_js.FieldByName('bjmc').AsString := bjmc;
    dm1.dset_js.FieldByName('bjdm').AsString := bjdm;
    Close;
  end;

end;

end.
d.

