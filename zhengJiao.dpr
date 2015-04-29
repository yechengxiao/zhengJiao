program zhengJiao;

uses
  Windows,
  Forms,
  mainU in 'mainU.pas' {mainF},
  dataModule in 'dataModule.pas' {dm1: TDataModule},
  kfxxU in 'kfxxU.pas' {kfxxF},
  utilU in 'utilU.pas',
  startU in 'startU.pas' {startF},
  xsxxU in 'xsxxU.pas' {xsxxF},
  bjxx in 'bjxx.pas' {bjxxF},
  bjxx_nrU in 'bjxx_nrU.pas' {jsxx_nrF},
  jsxxU in 'jsxxU.pas' {jsxxF},
  jsxx_nrU in 'jsxx_nrU.pas' {jsxx_nrF},
  kfxxMainU in 'kfxxMainU.pas' {kfxxMainF},
  xsxx_nrU in 'xsxx_nrU.pas' {xsxx_nrF},
  objectU in 'objectU.pas' {objectF},
  createObject in 'createObject.pas' {createF};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm1, dm1);
  // 创建启动画面窗口
  startF := TstartF.Create(startF);
  // 显示启动画面窗口
  startF.Visible := False;
  startF.ShowModal;
  startF.Update;

  // 载入延时
  // Delay(1000);

  if startF.login then
  begin
    Application.CreateForm(TmainF, mainF);
  end;

  startF.Hide;
  startF.Free;

  Application.Run;

end.

