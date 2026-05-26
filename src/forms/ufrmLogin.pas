unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDm,
  Vcl.Grids, Vcl.DBGrids, uSession, ufrmMain;

type
  TfrmLogin = class(TForm)
    pnLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Senha: TLabel;
    PnlBotaoAcessar: TPanel;
    btn_acessar: TSpeedButton;
    Panel2: TPanel;
    edt_email: TEdit;
    Panel3: TPanel;
    edt_senha: TEdit;
    Exit: TBitBtn;
    ImgFundo: TImage;
    procedure btn_acessarClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}


procedure TfrmLogin.ExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLogin.btn_acessarClick(Sender: TObject);
begin
  try

    if Dm.Login(edt_email.text, edt_senha.text) then
    begin
      //ShowMessage('Token :' + TSession.Token + sLineBreak + 'User :' + TSession.user);

      Hide;

      if frmMain = nil then
        frmMain := TfrmMain.Create(nil) ;

      frmMain.lbl_nome.Caption := 'User : ' + TSession.User;

      frmMain.Show;


    end;

  except
     on e: exception do
       ShowMessage(e.Message);
  end;
end;

end.
