unit bjxx_nrU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLabel, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, ComCtrls,
  ToolWin, ExtCtrls;

type
  Tbjxx_nrF = class(TForm)
    pnl1: TPanel;
    tlb1: TToolBar;
    btn_save: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    grp1: TGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel8_start: TcxLabel;
    procedure btn_saveClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBTextEdit5DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    state: string;
    { Public declarations }
  end;

var
  jsxx_nrF: Tbjxx_nrF;

implementation
uses dataModule, utilU, bjxx, mainU, jsxxU;

{$R *.dfm}

procedure Tbjxx_nrF.btn_saveClick(Sender: TObject);
begin
  try
    if Trim(cxDBTextEdit1.Text) = '' then
    begin
      ShowMsg('班级必填！！！');
      Exit;
    end;

    if LowerCase(state) = 'append' then
    begin
      dm1.dset_bj.FieldByName('bjdm').AsString := Get_ServerDateTime;
    end;

    dm1.dset_bj.Post;
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

procedure Tbjxx_nrF.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure Tbjxx_nrF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tbjxx_nrF.cxDBTextEdit5DblClick(Sender: TObject);
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
  jsxxF.callBy := 'bjxx_nrU';

  SetForm(jsxxF);

end;

end.
d.

