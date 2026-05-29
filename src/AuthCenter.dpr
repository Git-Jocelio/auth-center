program AuthCenter;

uses
  Vcl.Forms,
  ufrmLogin in 'forms\ufrmLogin.pas' {frmLogin},
  uDm in '..\dataModules\uDm.pas' {Dm: TDataModule},
  uSession in 'session\uSession.pas',
  ufrmMain in 'forms\ufrmMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
