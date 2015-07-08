program pnMP3;

uses
  Forms,
  frmMain in 'frmMain.pas' {MainForm},
  frmInfo in 'frmInfo.pas' {InfoForm},
  frmList in 'frmList.pas' {ListForm},
  frmTag in 'frmTag.pas' {TagForm},
  pasProcs in 'pasProcs.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'pnMP3 2.2';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TListForm, ListForm);
  Application.CreateForm(TTagForm, TagForm);
  Application.Run;
end.
