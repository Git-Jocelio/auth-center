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
    mtb_logs: TFDMemTable;
    mtb_logstype: TStringField;
    mtb_logsstatus: TStringField;
    mtb_logsip: TStringField;
    mtb_logsldap_code: TStringField;
    mtb_logsldap_message: TStringField;
    mtb_logsdate: TStringField;
    mtb_logsusername: TStringField;
    mtb_usuarios: TFDMemTable;
    mtb_usuariosname: TStringField;
    mtb_usuarioslogin: TStringField;
    mtb_usuariosemail: TStringField;
    ds_usuarios: TDataSource;
    pnlMain: TPanel;
    pnNavBar: TPanel;
    pnUsuario: TPanel;
    lbl_nome: TLabel;
    pnl_img: TPanel;
    imgUsuario: TImage;
    PageControl1: TPageControl;
    tbsUsuarios: TTabSheet;
    pnl_user_topo: TPanel;
    pnl_users_main: TPanel;
    DBGrid2: TDBGrid;
    tbs_logs: TTabSheet;
    Panel1: TPanel;
    Label6: TLabel;
    btn_logs: TSpeedButton;
    dtp_data: TDateTimePicker;
    DBGrid1: TDBGrid;
    tbsDashBoard: TTabSheet;
    SplitView: TSplitView;
    pnlMenu: TPanel;
    btnMenu: TSpeedButton;
    ImageList: TImageList;
    CategoryButtons1: TCategoryButtons;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnlUsuarios: TPanel;
    SpeedButton1: TSpeedButton;
    pnlLogOut: TPanel;
    Image1: TImage;
    procedure btn_logsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CategoryButtons1Categories0Items3Click(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CategoryButtons1Categories0Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items0Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
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

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  PageControl1.Style := tsButtons;

  PageControl1.TabHeight := 1;

  PageControl1.ActivePage := tbsDashBoard;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  dtp_data.Date := Date;
end;

procedure TfrmMain.imgUsuarioClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
dm.GetUsers(mtb_usuarios);
end;

procedure TfrmMain.btnMenuClick(Sender: TObject);
begin
  SplitView.Opened := not SplitView.Opened;
end;

procedure TfrmMain.btn_logsClick(Sender: TObject);
begin
  dm.GetLogs(mtb_logs, FormatDateTime( 'yyyy-mm-dd', dtp_data.Date ));
end;

end.
