unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.Grids;

type
  TfrmMain = class(TForm)
    PageControl1: TPageControl;
    tbs_users: TTabSheet;
    tbs_config: TTabSheet;
    tbs_logs: TTabSheet;
    pnl_user_topo: TPanel;
    pnl_users_main: TPanel;
    BitBtn1: TBitBtn;
    pnNavBar: TPanel;
    pnUsuario: TPanel;
    lbl_nome: TLabel;
    Label1: TLabel;
    StringGrid1: TStringGrid;
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
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

end.
