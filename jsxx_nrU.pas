unit jsxx_nrU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, ComCtrls,
  ToolWin, ExtCtrls;

type
  Tjsxx_nrF = class(TForm)
    pnl1: TPanel;
    tlb1: TToolBar;
    btn_save: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    grp1: TGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel8_start: TcxLabel;
    procedure btn_saveClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBTextEdit3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    state: string;
    { Public declarations }
  end;

var
  jsxx_nrF: Tjsxx_nrF;

implementation
uses jsxxU, utilU, dataModule, bjxx;
{$R *.dfm}

procedure Tjsxx_nrF.btn_saveClick(Sender: TObject);
begin
  try
    if Trim(cxDBTextEdit1.Text) = '' then
    begin
      ShowMsg('教师姓名必填！！！');
      Exit;
    end;

    if LowerCase(state) = 'append' then
    begin
      dm1.dset_js.FieldByName('jsid').AsString := Get_ServerDateTime;
    end;

    dm1.dset_js.Post;
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

procedure Tjsxx_nrF.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure Tjsxx_nrF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tjsxx_nrF.cxDBTextEdit3DblClick(Sender: TObject);
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
  bjxxF.callBy := 'jsxx_nrU';
  SetForm(bjxxF);
end;

end.

