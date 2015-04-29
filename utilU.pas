unit utilU;

interface
uses
  SysUtils, DB, ADODB, cxDBEdit, Forms, Windows, ComObj, ShlObj, ComCtrls,
  Variants;

function SetCxComBoxItem(dset: TADODataSet; cxComBox: TcxDBComboBox; sql, field:
  string): Boolean;
function ShowMsg(message: string; bz: string = ''): Integer;
function IsDataSetActive(dset: TADODataSet): Boolean;
function ActiveDataSet(dset: TADODataSet; tableName: string): Boolean;
function Get_ServerDateTime: string;
procedure OpenDataSet(dset: TADODataSet; sql: string);
function Fetch_Count(ASql: string): Boolean;
function ExecADOCMD(sql_insert: string): Boolean;
procedure Delay(dwMilliseconds: DWORD); //Longint
function GetDesktopDir: string;
procedure SetForm(form: TForm);
procedure Template_out(const field_array: array of string; fileName:
  string);

implementation
uses dataModule;

function SetCxComBoxItem(dset: TADODataSet; cxComBox: TcxDBComboBox; sql, field:
  string): Boolean;
var
  item: string;
begin
  if (Trim(sql) = '') or (Trim(field) = '') then
  begin
    Result := False;
    Exit;
  end;

  with dset do
  begin
    Close;
    CommandText := sql;
    Open;

    cxComBox.Properties.Items.Clear;
    cxComBox.Properties.Items.Add('');
    while not Eof do
    begin
      item := Trim(FieldByName(field).AsString);
      if item <> '' then
      begin
        cxComBox.Properties.Items.Add(item);
      end;
      Next;
    end;
  end;
  Result := True;
end;

function ShowMsg(message: string; bz: string = ''): Integer;
begin
  if LowerCase(bz) = 'error' then
  begin
    Result := Application.MessageBox(pchar('错误原因：' + message),
      '错误', MB_OK + MB_ICONERROR);
  end
  else if LowerCase(bz) = 'alert' then
  begin
    Result := Application.MessageBox(PChar(message),
      '请问', MB_OKCANCEL + MB_ICONQUESTION)
  end
  else
  begin
    Result := Application.MessageBox(pchar(message),
      '提示', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

function IsDataSetActive(dset: TADODataSet): Boolean;
begin
  if dset.Active then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function ActiveDataSet(dset: TADODataSet; tableName: string): Boolean;
begin
  if not dset.Active then
  begin
    dset.Close;
    dset.CommandText := 'SELECT top 0 * FROM ' + tableName + ' ';
    dset.Open;
    Result := True;
    Exit;
  end;
  Result := False;
end;

function Get_ServerDateTime: string; //获取应用服务器时间,毫秒级
var
  time: string;
begin
  dm1.pub_dset.Close;
  dm1.pub_dset.CommandText := 'SELECT convert(varchar(23),GETDATE(),121) AS sj';
  dm1.pub_dset.Open;

  // 2015-04-01 10:33:03.111
  time := dm1.pub_dset.FieldByname('sj').AsString;
  time := Copy(time, 1, 4) + Copy(time, 6, 2) + Copy(time, 9, 2) + Copy(time,
    12, 2) + Copy(time, 15, 2) + Copy(time, 18, 2) + Copy(time, 21, 3);

  Result := time;
end;

procedure OpenDataSet(dset: TADODataSet; sql: string);
begin
  try
    with dset do
    begin
      Close;
      CommandText := sql;
      Open;
    end;
  except
    on e: Exception do
    begin
      ShowMsg(e.message, 'fail');
    end;
  end;
end;

function Fetch_Count(ASql: string): Boolean;
begin
  Result := false;
  try
    dm1.pub_dset.Close;
    dm1.pub_dset.CommandText := ASql;
    dm1.pub_dset.Open;

    if dm1.pub_dset.FieldByName('num').AsInteger > 0 then
    begin
      Result := True;
    end;
  except
    Result := False;
  end;
end;

function ExecADOCMD(sql_insert: string): Boolean;
begin
  try
    dm1.pub_cmd.CommandText := sql_insert;
    dm1.pub_cmd.Execute;
    Result := True;
  except
    Result := False;
  end;
end;

procedure Delay(dwMilliseconds: DWORD); //Longint
var
  iStart, iStop: DWORD;
begin
  iStart := GetTickCount;
  repeat
    iStop := GetTickCount;
    Application.ProcessMessages;
  until (iStop - iStart) >= dwMilliseconds;
end;

procedure Template_out(const field_array: array of string; fileName:
  string);
{  导入格式模板  }
var
  saveURL: string;
  xlsApp, xlsWorkbook, xlsSheet: Variant;
  i: Integer;
begin
  try
    saveURL := GetDesktopDir + fileName + '.xls';
    try
      xlsApp := CreateOleObject('excel.application');
      xlsWorkbook := CreateOleObject('excel.sheet');
    except
      ShowMsg('创建 Excel 对象出错，请检查你的系统是否安装了 Microsoft Excel 2000以上版本！');
      Exit;
    end;

    xlsWorkbook := xlsApp.workbooks.add;
    xlsApp.workbooks.item[1].activate;
    xlsSheet := xlsWorkbook.sheets[1];
    xlsApp.visible := 0;

    // 写入Excel，作为标题行
    for i := 0 to Length(field_array) - 1 do
    begin
      xlsSheet.Cells.Item[1, i + 1] := field_array[i];
    end;
    // 设置为粗体
    xlsApp.ActiveSheet.Rows[1].Font.Bold := True;

    try
      xlsWorkbook.saveas(saveURL);
    except
      Exit;
    end;

    ShowMsg(fileName + '已经保存到您的桌面上！ ');
  finally
    xlsWorkbook.close;
    xlsApp.quit;
    xlsSheet := unassigned;
    xlsWorkbook := unassigned;
    xlsApp := unassigned;
  end;
end;

function GetDesktopDir: string;
var
  pidl: PITEMIDLIST;
  desktop_dir: array[0..MAX_PATH] of Char;
  function RightStr(const AStr: string; Len: Integer): string;
  var
    LStrLen: Integer;
  begin
    LStrLen := Length(AStr);
    if (Len > LStrLen) or (Len < 0) then
    begin
      Result := AStr;
    end //f ( Len > Length ( st ) ) or ( Len < 0 ) then
    else
    begin
      //+1 is necessary for the Index because it is one based
      Result := Copy(AStr, LStrLen - Len + 1, Len);
    end; //else ... f ( Len > Length ( st ) ) or ( Len < 0 ) then
  end;
begin
  SHGetSpecialFolderLocation(0, CSIDL_DESKTOPDIRECTORY, pidl);
  //获得桌面的Itemidlist
  SHGetPathFromIDList(pidl, desktop_dir); //获得桌面路径

  Result := Trim(desktop_dir);

  if RightStr(Result, 1) <> '\' then
    Result := Result + '\';
end;

procedure SetForm(form: TForm);
begin
  form.BorderStyle := bsDialog;
  form.FormStyle := FsNormal;
  form.Visible := False;
  form.Position := poScreenCenter;
  form.ShowModal;
end;

end.

