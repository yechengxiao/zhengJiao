unit xsxx_nrU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, ComCtrls,
  ToolWin, ExtCtrls;

type
  Txsxx_nrF = class(TForm)
    pnl1: TPanel;
    tlb1: TToolBar;
    btn_save: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    grp1: TGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel8_start: TcxLabel;
    cxLabel1: TcxLabel;
    procedure btn_saveClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBTextEdit3DblClick(Sender: TObject);
    procedure cxDBTextEdit4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    state: string;
    { Public declarations }
  end;

var
  xsxx_nrF: Txsxx_nrF;

implementation
uses xsxxU, utilU, dataModule, jsxxU, bjxx;

{$R *.dfm}

procedure Txsxx_nrF.btn_saveClick(Sender: TObject);
begin
  try
    if Trim(cxDBTextEdit6.Text) = '' then
    begin
      ShowMsg('学生必填！！！');
      Exit;
    end;
    if Trim(cxDBTextEdit7.Text) = '' then
    begin
      ShowMsg('学号必填！！！');
      Exit;
    end;

    if LowerCase(state) = 'append' then
    begin
      dm1.dset_xs.FieldByName('xsid').AsString := Get_ServerDateTime;
    end;

    dm1.dset_xs.Post;
    ShowMsg('      保存成功！！');
    Close;
  except
    on e: Exception do
    begin
      ShowMsg(e.Message, 'error');
      Exit;
    end;
  end;
end;

procedure Txsxx_nrF.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure Txsxx_nrF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Txsxx_nrF.cxDBTextEdit3DblClick(Sender: TObject);
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
  jsxxF.callBy := 'xsxx_nrU';
  SetForm(jsxxF);
end;

procedure Txsxx_nrF.cxDBTextEdit4DblClick(Sender: TObject);
var
  i: Integer;
begin
  if Assigned(bjxxF) then
    FreeAndNil(bjxxF);
  bjxxF := TbjxxF.Create(bjxxF);

  for i := 1 to bjxxF.ToolBar1.ControlCount - 1 do
  begin
    bjxxF.ToolBar1.Controls[i].Visible := False;
  end;
  bjxxF.callBy := 'xsxx_nrU';
  SetForm(bjxxF);
end;

end.

