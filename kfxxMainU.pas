unit kfxxMainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxDropDownEdit,
  ComCtrls, ToolWin, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxContainer, cxLabel, ExtCtrls, cxPC, ADODB;

type
  TkfxxMainF = class(TForm)
    pageCtl_kf: TcxPageControl;
    tab_kf1: TcxTabSheet;
    pnl_kf1: TPanel;
    pnl2_search: TPanel;
    showBox: TPaintBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxText_bj: TcxTextEdit;
    cxText_id: TcxTextEdit;
    cxText_xs: TcxTextEdit;
    cxText_yy: TcxTextEdit;
    cxGrid_koufen: TcxGrid;
    cxGrid_koufenDBTableView1: TcxGridDBTableView;
    cxgrdbclmn_cxGrid_koufenDBTableView1zyh: TcxGridDBColumn;
    cxgrdbclmn_cxGrid_koufenDBTableView1bj: TcxGridDBColumn;
    cxgrdbclmn_cxGrid_koufenDBTableView1xsid: TcxGridDBColumn;
    cxgrdbclmn_cxGrid_koufenDBTableView1xsxm: TcxGridDBColumn;
    cxGrid_koufenDBTableView1kffs: TcxGridDBColumn;
    cxgrdbclmn_cxGrid_koufenDBTableView1kfyy: TcxGridDBColumn;
    cxgrdbclmn_cxGrid_koufenDBTableView1kfrmc: TcxGridDBColumn;
    cxgrdbclmn_cxGrid_koufenDBTableView1kfrq: TcxGridDBColumn;
    cxGrid_koufenLevel1: TcxGridLevel;
    ToolBar1: TToolBar;
    btn_select: TToolButton;
    sp1: TToolButton;
    btn_insert: TToolButton;
    sp2: TToolButton;
    btn_update: TToolButton;
    sp3: TToolButton;
    btn_del: TToolButton;
    tab_kf2: TcxTabSheet;
    pnl_kf2: TPanel;
    ToolBar2: TToolBar;
    btn_tj: TToolButton;
    Panel1: TPanel;
    showBoxTJ: TPaintBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxTextTJbj: TcxTextEdit;
    cxTextTJxh: TcxTextEdit;
    cxTextTJxs: TcxTextEdit;
    cxLabel5: TcxLabel;
    cmb_tjfs: TcxComboBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1_item: TcxGridDBColumn;
    cxGridDBTableView1_num: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure btn_selectClick(Sender: TObject);
    procedure btn_insertClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_updateClick(Sender: TObject);
    procedure btn_tjClick(Sender: TObject);
    procedure cmb_tjfsPropertiesChange(Sender: TObject);
    procedure cmb_tjfsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kfxxMainF: TkfxxMainF;

implementation
uses mainU, utilU, dataModule, kfxxU;

{$R *.dfm}

procedure TkfxxMainF.btn_selectClick(Sender: TObject);
var
  sql, bj, xsid, xsxm, kfyy: string;
begin
  bj := Trim(cxText_bj.Text);
  xsid := Trim(cxText_id.Text);
  xsxm := Trim(cxText_xs.Text);
  kfyy := Trim(cxText_yy.Text);

  if bj <> '' then
  begin
    sql := sql + ' AND bj LIKE ''%' + bj + '%'' ';
  end;
  if xsid <> '' then
  begin
    sql := sql + ' AND xsid LIKE ''%' + xsid + '%'' ';
  end;
  if xsxm <> '' then
  begin
    sql := sql + ' AND xsxm LIKE ''' + xsxm + '%'' ';
  end;
  if kfyy <> '' then
  begin
    sql := sql + ' AND kfyy LIKE ''' + kfyy + '%'' ';
  end;

  sql := 'SELECT * FROM kfxx WHERE 1=1 ' + sql + ' ORDER BY zyh DESC';

  showBox.Canvas.TextOut(20, 5, '正在查询数据，请稍候...');
  try
    try
      OpenDataSet(dm1.dset_koufen, sql);
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

procedure TkfxxMainF.btn_insertClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_koufen) then
    begin
      ActiveDataSet(dm1.dset_koufen, 'kfxx');
    end;

    dm1.dset_koufen.Append;

    if not Assigned(kfxxF) then
      kfxxF := TkfxxF.Create(kfxxF);

    kfxxf.state := 'Append';
    kfxxf.ShowModal;
  finally
    FreeAndNil(kfxxf);
  end;
end;

procedure TkfxxMainF.btn_updateClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_koufen) then
    begin
      ActiveDataSet(dm1.dset_koufen, 'kfxx');
    end;

    if dm1.dset_koufen.RecordCount < 1 then
    begin
      ShowMsg('目前没有数据!');
      Exit;
    end;

    dm1.dset_koufen.Edit;

    if not Assigned(kfxxF) then
      kfxxF := TkfxxF.Create(kfxxF);
    kfxxf.state := 'Edit';
    kfxxf.ShowModal;
  finally
    FreeAndNil(kfxxf);
  end;
end;

procedure TkfxxMainF.btn_delClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_koufen) then
    begin
      ActiveDataSet(dm1.dset_koufen, 'kfxx');
    end;
    if dm1.dset_koufen.RecordCount < 1 then
    begin
      ShowMsg('没有数据可以删除!');
      Exit;
    end;

    if ShowMsg('确认删除？', 'alert') <> 1 then
    begin
      Exit;
    end;

    dm1.dset_koufen.Delete;
    ShowMsg('      删除成功！！');
  except
    on e: Exception do
    begin
      ShowMsg(e.message, 'error');
    end;
  end;
end;

procedure TkfxxMainF.FormShow(Sender: TObject);
begin
  pageCtl_kf.ActivePage := tab_kf1;
end;

procedure TkfxxMainF.btn_tjClick(Sender: TObject);
var
  sql, bj, xsid, xsxm, yy, tjfs, column: string;
begin
  tjfs := Trim(cmb_tjfs.Text);
  if tjfs = '' then
  begin
    ShowMsg('请选择统计方式！！');
    Exit;
  end;

  bj := Trim(cxTextTJbj.Text);
  xsid := Trim(cxTextTJxh.Text);
  xsxm := Trim(cxTextTJxs.Text);

  if POS('班级', tjfs) <> 0 then
  begin
    if bj <> '' then
    begin
      sql := sql + ' AND bj LIKE ''%' + bj + '%'' ';
    end;

    column := 'bj';
    cxGridDBTableView1_item.Caption := '班级';
  end
  else if POS('学生', tjfs) <> 0 then
  begin
    if xsid <> '' then
    begin
      sql := sql + ' AND xsid LIKE ''%' + xsid + '%'' ';
    end;
    if xsxm <> '' then
    begin
      sql := sql + ' AND xsxm LIKE ''' + xsxm + '%'' ';
    end;

    column := 'xsid+''_''+xsxm';
    cxGridDBTableView1_item.Caption := '学生';
  end;

  showBoxTJ.Canvas.TextOut(20, 5, '正在统计数据，请稍候...');
  try
    try
      sql := 'SELECT ' + column
        + ' AS item, SUM(ISNULL(kffs,0)) AS num FROM kfxx WHERE 1=1 ' + sql
        + ' GROUP BY ' + column + ' ORDER BY num DESC';

      OpenDataSet(dm1.pub_dset, sql);
    except
      on e: Exception do
      begin
        ShowMsg(e.message, 'fail');
      end;
    end;
  finally
    showBoxTJ.Refresh;
  end;
end;

procedure TkfxxMainF.cmb_tjfsPropertiesChange(Sender: TObject);
var
  tjfs: string;
begin
  tjfs := Trim(cmb_tjfs.Text);
  if POS('班级', tjfs) <> 0 then
  begin
    cxTextTJbj.Enabled := True;
    cxTextTJxh.Enabled := False;
    cxTextTJxs.Enabled := False;
  end
  else if POS('学生', tjfs) <> 0 then
  begin
    cxTextTJbj.Enabled := False;
    cxTextTJxh.Enabled := True;
    cxTextTJxs.Enabled := True;
  end
  else
  begin
    cxTextTJbj.Enabled := True;
    cxTextTJxh.Enabled := True;
    cxTextTJxs.Enabled := True;
  end;
end;

procedure TkfxxMainF.cmb_tjfsKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

end.

