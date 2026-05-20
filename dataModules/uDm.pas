unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DataSet.Serialize.Config,
  RestRequest4D,
  DataSet.Serialize.Adapter.RESTRequest4D,
  System.JSON, uSession;

type
  TDm = class(TDataModule)
  private
    { Private declarations }
  public
    function Login(email, senha: string): boolean;
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

      result := true;

    end;

    //erro autenticação
    if resp.StatusCode <> 200 then
      raise Exception.Create(resp.content);

  finally
    freeandnil(json);
  end;
end;


end.
