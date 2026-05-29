unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.Grids, Data.DB, Vcl.DBGrids, uDm,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.WinXCtrls, System.ImageList,
  Vcl.ImgList, Vcl.CategoryButtons;

type
  TfrmMain = class(TForm)
    ds_logs: TDataSource;
    ds_usuarios: TDataSource;
    pnlMain: TPanel;
    pnNavBar: TPanel;
    pnUsuario: TPanel;
    lbl_nome: TLabel;
    pnl_img: TPanel;
    imgLogout: TImage;
    PageControl1: TPageControl;
    tbsUsuarios: TTabSheet;
    pnl_user_topo: TPanel;
    pnl_users_main: TPanel;
    dbgUsuarios: TDBGrid;
    tbs_logs: TTabSheet;
    Panel1: TPanel;
    Label6: TLabel;
    dtp_data: TDateTimePicker;
    dbgLogs: TDBGrid;
    tbsDashBoard: TTabSheet;
    SplitView: TSplitView;
    pnlMenu: TPanel;
    ImageList: TImageList;
    CategoryButtons1: TCategoryButtons;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnlUsuarios: TPanel;
    SpeedButton1: TSpeedButton;
    pnlLogOut: TPanel;
    imgUsuario: TImage;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    pnlDashBoardTop: TPanel;
    pnlDashBoardMain: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    pnlOnline: TPanel;
    Label7: TLabel;
    Image2: TImage;
    Image3: TImage;
    lblOnLine: TLabel;
    imgOnLine: TImage;
    pnltotalUsuarios: TPanel;
    Label9: TLabel;
    Image5: TImage;
    Image6: TImage;
    lblTotalUsuarios: TLabel;
    pnlLogins: TPanel;
    Label8: TLabel;
    Image4: TImage;
    Image7: TImage;
    lblTentativasDeLoginsNoDia: TLabel;
    pnlFalhas: TPanel;
    Label11: TLabel;
    Image8: TImage;
    Image9: TImage;
    lblFalhasLDAP: TLabel;
    imgMenu: TImage;
    imgLogo: TImage;
    Panel3: TPanel;
    Label13: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label14: TLabel;
    Panel5: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lblDataUltimaAtualizacao: TLabel;
    Image1: TImage;
    Label24: TLabel;
    lblServidor: TLabel;
    Image11: TImage;
    Label26: TLabel;
    imgOffLine: TImage;
    Label28: TLabel;
    lblDataSelecionada: TLabel;
    lblLDAP: TLabel;
    pnlSeparador: TPanel;
    procedure FormShow(Sender: TObject);
    procedure CategoryButtons1Categories0Items3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CategoryButtons1Categories0Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items0Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure tbsDashBoardShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation


{$R *.dfm}

procedure TfrmMain.CategoryButtons1Categories0Items0Click(Sender: TObject);
begin
  PageControl1.ActivePage := tbsDashBoard;

end;

procedure TfrmMain.CategoryButtons1Categories0Items1Click(Sender: TObject);
begin
   PageControl1.ActivePage := tbsUsuarios;
end;

procedure TfrmMain.CategoryButtons1Categories0Items2Click(Sender: TObject);
begin
  PageControl1.ActivePage := tbs_logs;
end;

procedure TfrmMain.CategoryButtons1Categories0Items3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm.Free;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  SplitView.Opened := false;

  dm := TDm.Create(self);

  PageControl1.Style := tsButtons;
  PageControl1.TabHeight := 1;
  PageControl1.ActivePage := tbsDashBoard;

  lblDataUltimaAtualizacao.Caption := datetostr(date);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  dtp_data.Date := Date;
end;

procedure TfrmMain.imgMenuClick(Sender: TObject);
begin
  SplitView.Opened := not SplitView.Opened;
end;

procedure TfrmMain.imgLogoutClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  dm.GetUsers(dm.mtb_usuarios);
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
  dm.GetLogs(dm.mtb_logs, FormatDateTime( 'yyyy-mm-dd', dtp_data.Date ));
end;

procedure TfrmMain.tbsDashBoardShow(Sender: TObject);
var
 LCondicao : string;
begin

  lblDataSelecionada.Caption := FormatDateTime('dd/mm/yyyy', dtp_data.DateTime);

  // atualiza paineis online, status e total usuários
  if dm.mtb_usuarios.RecordCount = 0 then
  begin
    lblOnLine.Caption := 'OFFLINE';
    lblOnLine.Font.Color := clRed;

    lblTotalUsuarios.Caption := '0';
    imgOffLine.Visible := true;
    imgOnLine.Visible := false;

    lblServidor.Caption := 'OFFLINE';
    lblServidor.Font.Color := clRed;

    lblLDAP.Caption := 'OFFLINE';
    lblLDAP.Font.Color := clRed;


  end else
  begin
    lblOnLine.Caption := 'ONLINE';
    lblOnLine.Font.Color := clGreen;

    lblTotalUsuarios.Caption := inttostr(dm.mtb_usuarios.RecordCount);
    imgOffLine.Visible := false;
    imgOnLine.Visible := true;

    lblServidor.Caption := 'ONLINE';
    lblServidor.Font.Color := clGreen;

    lblLDAP.Caption := 'ONLINE';
    lblLDAP.Font.Color := clGreen;


  end;


  // atualiza paineis de logins
  if dm.mtb_logs.RecordCount = 0 then
  begin
    lblTentativasDeLoginsNoDia.Caption := '0';
    lblFalhasLDAP.Caption := '0';

  end else
  begin

    lblTentativasDeLoginsNoDia.Caption := inttostr(dm.mtb_logs.RecordCount);

    // filtra para calacular as falhas
    LCondicao := 'ldap_code <> 0';
    dm.mtb_logs.Filter := LCondicao;
    dm.mtb_logs.Filtered := true;

    lblFalhasLDAP.Caption := inttostr(dm.mtb_logs.RecordCount);
    dm.mtb_logs.Filtered := false;
  end;





end;

end.
