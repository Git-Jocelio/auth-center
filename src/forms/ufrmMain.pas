unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.Grids, Data.DB, Vcl.DBGrids, uDm,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmMain = class(TForm)
    PageControl1: TPageControl;
    tbs_users: TTabSheet;
    tbs_config: TTabSheet;
    tbs_logs: TTabSheet;
    pnl_user_topo: TPanel;
    pnl_users_main: TPanel;
    btn_usuarios: TBitBtn;
    pnNavBar: TPanel;
    pnUsuario: TPanel;
    lbl_nome: TLabel;
    Label1: TLabel;
    pnl_img: TPanel;
    imgUsuario: TImage;
    pnl_conf_main: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Panel1: TPanel;
    Label6: TLabel;
    dtp_data: TDateTimePicker;
    btn_logs: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    ds_logs: TDataSource;
    mtb_logs: TFDMemTable;
    mtb_logstype: TStringField;
    mtb_logsstatus: TStringField;
    mtb_logsip: TStringField;
    mtb_logsldap_code: TStringField;
    mtb_logsldap_message: TStringField;
    mtb_logsdate: TStringField;
    mtb_logsusername: TStringField;
    Label9: TLabel;
    mtb_usuarios: TFDMemTable;
    mtb_usuariosname: TStringField;
    mtb_usuarioslogin: TStringField;
    mtb_usuariosemail: TStringField;
    ds_usuarios: TDataSource;
    DBGrid2: TDBGrid;
    procedure btn_logsClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure btn_usuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btn_usuariosClick(Sender: TObject);
begin
  dm.GetUsers(mtb_usuarios);
end;

procedure TfrmMain.btn_logsClick(Sender: TObject);
begin
  dm.GetLogs(mtb_logs, FormatDateTime( 'yyyy-mm-dd', dtp_data.Date ));
end;

procedure TfrmMain.Label9Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
