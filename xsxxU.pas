unit xsxxU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ComCtrls, ToolWin, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxContainer, cxLabel,
  ExtCtrls, ComObj, ADODB, cxPC;

type
  TxsxxF = class(TForm)
    OpenDialog1: TOpenDialog;
    pageCtl_xs: TcxPageControl;
    tab_xsxx: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    showBox: TPaintBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit_bj: TcxTextEdit;
    cxTextEdit2_xh: TcxTextEdit;
    cxTextEdit3_xsxm: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ToolBar1: TToolBar;
    btn_select: TToolButton;
    sp1: TToolButton;
    btn_insert: TToolButton;
    sp2: TToolButton;
    btn_update: TToolButton;
    sp3: TToolButton;
    btn_del: TToolButton;
    sp4: TToolButton;
    btn_temOut: TToolButton;
    ToolButton1: TToolButton;
    btn_import: TToolButton;
    cxGridDBTableView1xh: TcxGridDBColumn;
    cxGridDBTableView1xsxm: TcxGridDBColumn;
    cxGridDBTableView1xb: TcxGridDBColumn;
    cxGridDBTableView1bjmc: TcxGridDBColumn;
    cxGridDBTableView1jsxm: TcxGridDBColumn;
    cxGridDBTableView1memo: TcxGridDBColumn;
    procedure btn_importClick(Sender: TObject);
    procedure btn_selectClick(Sender: TObject);
    procedure btn_insertClick(Sender: TObject);
    procedure btn_updateClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_temOutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    callBy: string;
    { Public declarations }
  end;

var
  xsxxF: TxsxxF;

implementation
uses mainU, utilU, dataModule, xsxx_nrU, kfxxMainU;

{$R *.dfm}

procedure TxsxxF.btn_selectClick(Sender: TObject);
var
  sql, xm, bj, xh: string;
begin
  bj := Trim(cxTextEdit_bj.Text);
  xm := Trim(cxTextEdit3_xsxm.Text);
  xh := Trim(cxTextEdit2_xh.Text);

  if bj <> '' then
  begin
    sql := sql + ' AND bjmc LIKE ''%' + bj + '%'' ';
  end;
  if xm <> '' then
  begin
    sql := sql + ' AND xsxm LIKE ''%' + xm + '%'' ';
  end;
  if xh <> '' then
  begin
    sql := sql + ' AND xh LIKE ''%' + xh + '%'' ';
  end;

  sql := 'SELECT * FROM xsxx WHERE 1=1 ' + sql + ' ORDER BY xh DESC';

  showBox.Canvas.TextOut(20, 5, '正在查询数据，请稍候...');
  try
    try
      OpenDataSet(dm1.dset_xs, sql);
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

procedure TxsxxF.btn_insertClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_xs) then
    begin
      ActiveDataSet(dm1.dset_xs, 'xsxx');
    end;

    dm1.dset_xs.Append;

    if not Assigned(xsxx_nrF) then
      xsxx_nrF := Txsxx_nrF.Create(xsxx_nrF);

    xsxx_nrF.state := 'Append';
    xsxx_nrF.ShowModal;
  finally
    FreeAndNil(xsxx_nrF);
  end;
end;

procedure TxsxxF.btn_updateClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_xs) then
    begin
      ActiveDataSet(dm1.dset_xs, 'kfxx');
    end;

    if dm1.dset_xs.RecordCount < 1 then
    begin
      ShowMsg('目前没有数据!');
      Exit;
    end;

    dm1.dset_xs.Edit;

    if not Assigned(xsxx_nrF) then
      xsxx_nrF := Txsxx_nrF.Create(xsxx_nrF);
    xsxx_nrF.state := 'Edit';
    xsxx_nrF.ShowModal;
  finally
    FreeAndNil(xsxx_nrF);
  end;
end;

procedure TxsxxF.btn_delClick(Sender: TObject);
begin
  try
    if not IsDataSetActive(dm1.dset_xs) then
    begin
      ActiveDataSet(dm1.dset_xs, 'kfxx');
    end;
    if dm1.dset_xs.RecordCount < 1 then
    begin
      ShowMsg('没有数据可以删除!');
      Exit;
    end;

    if ShowMsg('确认删除？', 'alert') <> 1 then
    begin
      Exit;
    end;

    dm1.dset_xs.Delete;
    ShowMsg('      删除成功！！');
  except
    on e: Exception do
    begin
      ShowMsg(e.message, 'error');
    end;
  end;
end;

procedure TxsxxF.btn_temOutClick(Sender: TObject);
var
  fileName: string;
const
  field_array: array[0..4] of string =
  ('学号(必填)', '姓名(必填)', '性别(必填)', '班级(必填)',
    '班主任');
begin
  showBox.Canvas.TextOut(20, 5, '正在生产模板，请稍候...');

  try
    try
      fileName := '学生信息导入格式';
      Template_out(field_array, fileName);
    except
      on e: Exception do
      begin
        ShowMsg(e.Message, 'fail');
      end;
    end;
  finally
    showBox.Refresh;
  end;
end;

procedure TxsxxF.btn_importClick(Sender: TObject);
var
  eclapp, workbook, excelsheet: variant;
  sql_update, sql_select, sql_insert, str_insert: string;
  hang, lie: integer; // 行、列、操作excel后的提示信息
  xh, xsid, xsid1, tmp: string; // 学号
  idTmp: Integer;
  flag: Boolean;
  fieldValue_List: TStringList;
const
  TABLE_NAME = 'xsxx';
  LIE_TIPS = 7; // 列提示位置
  FIELDS_ARRAY: array[0..4] of string = ('xh', 'xsxm', 'xb', 'bjmc', 'jsxm');
begin
  if OpenDialog1.Execute then
  begin
    if trim(OpenDialog1.FileName) <> '' then
    begin
      try
        //打开EXCEL
        eclapp := createoleobject('excel.application');
        workbook := createoleobject('excel.sheet');
        workbook := eclapp.workbooks.open(OpenDialog1.FileName);
        eclapp.workbooks.item[1].activate;
        excelsheet := workbook.sheets[1];
      except
        ShowMsg('读取Excel出错！！', 'fail');
        Exit;
      end;

      try
        fieldValue_List := TStringList.create;
        hang := 2;
        // Get_ServerDateTime  '20150402114203 000'
        idTmp := 100;
        xsid1 := Copy(Get_ServerDateTime, 1, 14);

        // insert xsid xh xsxm xb bjmc jsxm
        str_insert := 'INSERT INTO ' + TABLE_NAME + '(xsid, ';
        for lie := 0 to Length(FIELDS_ARRAY) - 1 do
        begin
          str_insert := str_insert + FIELDS_ARRAY[lie] + ', ';
        end;
        str_insert := copy(str_insert, 1, length(str_insert) - 2) +
          ') VALUES (';

        showBox.Canvas.TextOut(20, 5, '正在导入，请稍候...');
        while trim(excelsheet.cells.item[hang, 1]) <> '' do
        begin
          if idTmp > 900 then
          begin
            idTmp := 100;
            xsid1 := Copy(Get_ServerDateTime, 1, 14);
          end;

          xsid := xsid1 + IntToStr(idTmp);
          flag := False;
          fieldValue_List.Clear;

          // 获取整行数据
          for lie := 1 to Length(FIELDS_ARRAY) do
          begin
            tmp := Trim(excelsheet.cells.item[hang, lie]);

            if (lie <> 5) and (tmp = '') then
            begin
              excelsheet.cells(hang, LIE_TIPS) := '字段为空，跳过导入！';
              flag := True;
              Break;
            end;
            fieldValue_List.Add(tmp);
          end;

          if flag then
          begin
            Continue;
          end;

          { 确定数据唯一性 }
          xh := Trim(fieldValue_List[0]);

          try

            sql_select := 'SELECT count(xsid) AS num FROM ' + TABLE_NAME +
              ' WHERE xh=' + QuotedStr(xh);

            if Fetch_Count(sql_select) then
            begin
              // 先不做覆盖导入，直接跳过，提示信息已存在
              excelsheet.cells(hang, LIE_TIPS) :=
                '学生信息已存在，跳过导入！';

              {
              // 覆盖导入

              // 创建UPDATE 语句
              sql_update := '';
              for lie := 0 to Length(FIELDS_ARRAY) - 1 do
              begin
                sql_update := sql_update + FIELDS_ARRAY[lie] + '=' +
                  QuotedStr(fieldValue_List[lie]) + ', ';
              end;
              sql_update := 'UPDATE ' + TABLE_NAME
                + ' SET ' + copy(sql_update, 1, length(sql_update) - 2)
                + ' WHERE bh=' + QuotedStr(bh);

              if ExecOrOpen_cds_tmp(sql_update, 'e') then
              begin
                excelsheet.cells(hang, LIE_TIPS) := '更新成功';
              end
              else
              begin
                excelsheet.cells(hang, LIE_TIPS) := '更新失败';
              end;
              }

            end
            else
            begin
              // 插入数据

              // 创建INSERT INTO 语句 Value部分
              sql_insert := str_insert + QuotedStr(xsid) + ',';
              for lie := 0 to Length(FIELDS_ARRAY) - 1 do
              begin
                sql_insert := sql_insert + QuotedStr(fieldValue_List[lie])
                  + ', ';
              end;
              sql_insert := copy(sql_insert, 1, length(sql_insert) - 2) + ')';

              if ExecADOCMD(sql_insert) then
              begin
                excelsheet.cells(hang, LIE_TIPS) := '导入成功';
              end
              else
              begin
                excelsheet.cells(hang, LIE_TIPS) := '导入失败';
              end;
            end;
            Inc(hang);
            Inc(idTmp);
          except
            excelsheet.cells(hang, LIE_TIPS) := '导入失败！';
          end;
        end;
        eclapp.visible := true;

      finally
        showBox.Refresh;
        FreeAndNil(fieldValue_List);
      end;
    end;
  end;
end;

procedure TxsxxF.FormShow(Sender: TObject);
begin
  pageCtl_xs.ActivePage := tab_xsxx;
end;

procedure TxsxxF.cxGridDBTableView1DblClick(Sender: TObject);
begin

  if callBy = 'kfxxU' then
  begin
    dm1.dset_koufen.FieldByName('xsid').AsString :=
      dm1.dset_xs.FieldByName('xh').AsString;
    dm1.dset_koufen.FieldByName('xsxm').AsString :=
      dm1.dset_xs.FieldByName('xsxm').AsString;
    dm1.dset_koufen.FieldByName('bj').AsString :=
      dm1.dset_xs.FieldByName('bjmc').AsString;
    Close;
  end;

end;

end.

