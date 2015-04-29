unit mainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, ToolWin, ComCtrls, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  cxContainer, cxLabel, cxTextEdit, cxGroupBox, cxRadioGroup, cxMaskEdit,
  cxDropDownEdit, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TmainF = class(TForm)
    pageCtl: TcxPageControl;
    cxStyleRepo: TcxStyleRepository;
    cxStyle_content: TcxStyle;
    cxStyle_box: TcxStyle;
    cxStyle_header: TcxStyle;
    cxStyle_selected: TcxStyle;
    tab_ssgl: TcxTabSheet;
    tab_jcxx: TcxTabSheet;
    pageCtl_jc: TcxPageControl;
    tab_bj: TcxTabSheet;
    tab_js: TcxTabSheet;
    tab_xsgl: TcxTabSheet;
    tab_kfgl: TcxTabSheet;
    procedure pageCtlChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pageCtl_jcChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainF: TmainF;

implementation
uses dataModule, utilU, bjxx, xsxxU, jsxxU, kfxxMainU, objectU;
{$R *.dfm}

procedure TmainF.pageCtlChange(Sender: TObject);
  function SetFormIntoTab(sonForm: TForm; fatherForm: TForm;
    tab: TcxTabSheet):
      Boolean;
  begin
    //    if Assigned(sonForm) then
    //      FreeAndNil(sonForm);
    //
    //    sonForm := fatherForm.Create(tab);
    //    sonForm.Parent := tab;
    //    sonForm.Align := alClient;
    //    sonForm.BorderStyle := bsNone;
    //    tab.Caption := sonForm.Caption;
    //    sonForm.Visible := true;
  end;
begin
  if pageCtl.ActivePage = tab_jcxx then
  begin
    pageCtl_jcChange(Sender);
  end
  else if pageCtl.ActivePage = tab_xsgl then
  begin
    if Assigned(xsxxF) then
      FreeAndNil(xsxxF);

    xsxxF := TxsxxF.Create(tab_xsgl);
    xsxxF.Parent := tab_xsgl;
    xsxxF.Align := alClient;
    xsxxF.BorderStyle := bsNone;
    tab_xsgl.Caption := xsxxF.Caption;
    xsxxF.Visible := true;
  end
  else if pageCtl.ActivePage = tab_ssgl then
  begin

  end
  else if pageCtl.ActivePage = tab_kfgl then
  begin
    if Assigned(kfxxMainF) then
      FreeAndNil(kfxxMainF);

    kfxxMainF := TkfxxMainF.Create(tab_kfgl);
    kfxxMainF.Parent := tab_kfgl;
    kfxxMainF.Align := alClient;
    kfxxMainF.BorderStyle := bsNone;
    tab_kfgl.Caption := kfxxMainF.Caption;
    kfxxMainF.Visible := true;
  end;

end;

procedure TmainF.FormShow(Sender: TObject);
begin
  // 显示特定的标签
  pageCtl.ActivePage := tab_kfgl;
  pageCtl_jc.ActivePage := tab_bj;

  pageCtlChange(Sender);
end;

procedure TmainF.pageCtl_jcChange(Sender: TObject);
begin
  if pageCtl_jc.ActivePage = tab_bj then
  begin
    // FormStyle 不要fsMDIChild
    if Assigned(bjxxF) then
      FreeAndNil(bjxxF);

    bjxxF := TbjxxF.Create(tab_bj);

    bjxxF.Parent := tab_bj;
    bjxxF.Align := alClient;
    bjxxF.BorderStyle := bsNone;
    tab_bj.Caption := bjxxF.Caption;
    bjxxF.Visible := true;
  end
  else if pageCtl_jc.ActivePage = tab_js then
  begin
    if Assigned(jsxxF) then
      FreeAndNil(jsxxF);

    jsxxF := TjsxxF.Create(tab_js);
    jsxxF.Parent := tab_js;
    jsxxF.Align := alClient;
    jsxxF.BorderStyle := bsNone;
    tab_js.Caption := jsxxF.Caption;
    jsxxF.Visible := true;
  end;
end;

end.

