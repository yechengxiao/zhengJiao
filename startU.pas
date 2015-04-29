unit startU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, dxGDIPlusClasses, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons;

type
  TstartF = class(TForm)
    Image1: TImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edt_name: TcxTextEdit;
    edt_pass: TcxTextEdit;
    btn_exit: TcxButton;
    btn_sure: TcxButton;
    procedure btn_sureClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
  private
    { Private declarations }
  public
    login: Boolean;
    { Public declarations }
  end;

var
  startF: TstartF;

implementation

{$R *.dfm}

procedure TstartF.btn_sureClick(Sender: TObject);
var
  name, pass: string;
begin
  name := Trim(edt_name.Text);
  pass := Trim(edt_pass.Text);

  if (name = 'admin') and (pass = 'admin') then
  begin
    login := True;
    Close;
  end;

end;

procedure TstartF.btn_exitClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.

