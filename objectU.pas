unit objectU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ComCtrls, ToolWin, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls;

type
  TobjectF = class(TForm)
    pnl_kf1: TPanel;
    pnl2_search: TPanel;
    showBox: TPaintBox;
    cxGrid_koufen: TcxGrid;
    cxGrid_koufenDBTableView1: TcxGridDBTableView;
    cxGrid_koufenLevel1: TcxGridLevel;
    ToolBar1: TToolBar;
    btn_select: TToolButton;
    sp1: TToolButton;
    btn_insert: TToolButton;
    sp2: TToolButton;
    btn_update: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  objectF: TobjectF;

implementation

{$R *.dfm}

end.
