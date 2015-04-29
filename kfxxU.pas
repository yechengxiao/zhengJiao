unit kfxxU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, StdCtrls, DBCtrls, Mask,
  cxGraphics, cxDropDownEdit, cxCalendar, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxMemo,
  cxLabel;

type
  TkfxxF = class(TForm)
    pnl1: TPanel;
    tlb1: TToolBar;
    btn_save: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    grp1: TGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit1: TcxDBTextEdit;
    ComBox_bj: TcxDBComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel8_start: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    procedure btn_saveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn3Click(Sender: TObject);
    procedure ComBox_bjPropertiesInitPopup(Sender: TObject);
    procedure cxDBTextEdit1DblClick(Sender: TObject);
    procedure cxDBTextEdit2DblClick(Sender: TObject);
    procedure cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    state: string;
    { Public declarations }
  end;

var
  kfxxF: TkfxxF;

implementation
uses kfxxMainU, dataModule, utilU, mainU, xsxxU, jsxxU;

{$R *.dfm}

procedure TkfxxF.ComBox_bjPropertiesInitPopup(Sender: TObject);
var
  sql: string;
begin
  {
  Combox_bj.Properties.Items.Add(''); // 没有这句，弹不出来
   //  ComBox_bj.DroppedDown := True;
   sql := 'SELECT DISTINCT bjmc FROM bjxx';
   SetCxComBoxItem(dm1.pub_dset, ComBox_bj, sql, 'bjmc');
    }
end;

procedure TkfxxF.btn_saveClick(Sender: TObject);
begin
  try

    if Trim(cxDBTextEdit5.Text) = '' then
    begin
      ShowMsg('扣分数必填！！');
      Exit;
    end;
    if Trim(ComBox_bj.Text) = '' then
    begin
      ShowMsg('班级必填！！');
      Exit;
    end;
    if Trim(cxDBTextEdit1.Text) = '' then
    begin
      ShowMsg('学号必填！！');
      Exit;
    end;
    if Trim(cxDBTextEdit4.Text) = '' then
    begin
      ShowMsg('学生必填！！');
      Exit;
    end;
    if Trim(cxDBTextEdit2.Text) = '' then
    begin
      ShowMsg('扣分人必填！！');
      Exit;
    end;

    if LowerCase(state) = 'append' then
    begin
      dm1.dset_koufen.FieldByName('zyh').AsString := Get_ServerDateTime;
    end;

    dm1.dset_koufen.FieldByName('kfrq').AsString :=
      StringReplace(cxDateEdit1.Text, '-', '', [rfReplaceAll]);

    dm1.dset_koufen.Post;
    ShowMsg('      保存成功！！      ');
    dm1.dset_koufen.Refresh;
    Close;
  except
    on e: Exception do
    begin
      ShowMsg(e.Message, 'error');
      Exit;
    end;
  end;
end;

procedure TkfxxF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TkfxxF.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TkfxxF.cxDBTextEdit1DblClick(Sender: TObject);
var
  i: Integer;
begin
  if Assigned(xsxxF) then
    FreeAndNil(xsxxF);
  xsxxF := TxsxxF.Create(xsxxF);

  for i := 1 to xsxxF.ToolBar1.ControlCount - 1 do
  begin
    xsxxF.ToolBar1.Controls[i].Visible := False;
  end;
  xsxxF.callBy := 'kfxxU';

  SetForm(xsxxF);
end;

procedure TkfxxF.cxDBTextEdit2DblClick(Sender: TObject);
var
  i: Integer;
begin
  if Assigned(jsxxF) then
    FreeAndNil(jsxxF);
  jsxxF := TjsxxF.Create(jsxxF);

  for i := 1 to jsxxF.ToolBar1.ControlCount - 1 do
  begin
    jsxxF.ToolBar1.Controls[i].Visible := False;
  end;
  jsxxF.callBy := 'kfxxU';
  SetForm(jsxxF);
end;

procedure TkfxxF.cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

end.

