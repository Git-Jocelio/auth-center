unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DataSet.Serialize.Config,
  RestRequest4D,
  DataSet.Serialize.Adapter.RESTRequest4D,
  System.JSON, uSession, dialogs;

type
  TDm = class(TDataModule)
    mtb_logs: TFDMemTable;
    mtb_logstype: TStringField;
    mtb_logsstatus: TStringField;
    mtb_logsusername: TStringField;
    mtb_logsip: TStringField;
    mtb_logsldap_code: TStringField;
    mtb_logsldap_message: TStringField;
    mtb_logsdate: TStringField;
    mtb_usuarios: TFDMemTable;
    mtb_usuariosname: TStringField;
    mtb_usuarioslogin: TStringField;
    mtb_usuariosemail: TStringField;
  private
    { Private declarations }
  public
    function Login(email, senha: string): boolean;
    procedure GetLogs(MemTable: TFDMemTable; const ADate: string);
    procedure GetUsers(MemTable: TFDMemTable);
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDm.Login(email, senha: string): boolean;
var
  resp : IResponse;
  json : TJSONObject;
begin

  try
    result := false;
    // criar um objeto json com os dados do cliente
    json := TJSONObject.Create;

    json.AddPair('login', email);
    json.AddPair('password', senha);

    //chamada AuthService
    resp := TRequest.New.BaseURL('http://192.168.100.40:9000') // criando uma requisição do servidor
                        .Resource('/login')                    // nessa rota
                        .AddBody(json.ToJSON)                  // passando um json como string email, senha
                        .Accept('application/json')            // trabalhar com json
                        .Post;                                 // passando um Post
    // resposta
    json := TJSONObject.ParseJSONValue(resp.Content) as TJSONObject;

    if not Assigned(json) then exit;

    if json.GetValue<Boolean>('success') then
    begin

      TSession.Token := json.GetValue<string>('token');

      TSession.User := json.GetValue<string>('user');

      TSession.Password := senha;

      result := true;

    end;

    //erro autenticação
    if resp.StatusCode <> 200 then
      raise Exception.Create(resp.content);

  finally
    freeandnil(json);
  end;
end;

procedure TDm.GetLogs(MemTable: TFDMemTable; const ADate: string);
var
  Resp : IResponse;
begin

  MemTable.EmptyDataSet;


  Resp := TRequest.New
         .BaseURL('http://192.168.100.40:9000')
         .Resource('/logs')
         .AddParam('date', ADate)
         .AddHeader('Authorization','Bearer ' + TSession.Token)
         .Accept('application/json')
         .Adapters(TDataSetSerializeAdapter.New(MemTable))
         .Get;

  if Resp.Content.trim.isEmpty then
  begin
     raise Exception.Create('Nenhum Log encontrado');
  end;

end;

procedure TDm.GetUsers(MemTable: TFDMemTable);
var
  Resp : IResponse;
begin
  MemTable.EmptyDataSet;

//ShowMessage('Bearer ' + TSession.Token);

  Resp := TRequest.New
         .BaseURL('http://192.168.100.40:9000')
         .Resource('/users')
         .AddHeader('Authorization','Bearer ' + TSession.Token)
         .AddHeader('x-login', TSession.User)
         .AddHeader('x-password', TSession.Password)
         .Accept('application/json')
         .Adapters(TDataSetSerializeAdapter.New(MemTable))
         .Get;

(*
 ShowMessage(Resp.Content);
 ShowMessage(IntToStr(MemTable.RecordCount));
 if MemTable.RecordCount > 0 then
 begin

   MemTable.First;

   ShowMessage(
     MemTable.FieldByName('username').AsString
   );

 end;
*)

  if Resp.Content.trim = '[]' then
  begin
     raise Exception.Create('Nenhum Usuário encontrado');
  end;

end;


end.
