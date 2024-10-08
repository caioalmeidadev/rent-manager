unit FDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,IniFiles,VCL.Forms, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    Conn: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qrEmpresa: TFDQuery;
    dsEmpresa: TDataSource;
    qrEmpresaid_empresa: TFDAutoIncField;
    qrEmpresarazao_social: TStringField;
    qrEmpresanome_fantasia: TStringField;
    qrEmpresacnpj: TStringField;
    qrEmpresains_est: TStringField;
    qrEmpresaendereco: TStringField;
    qrEmpresanu_endereco: TStringField;
    qrEmpresabairro: TStringField;
    qrEmpresacep: TStringField;
    qrEmpresatelefone1: TStringField;
    qrEmpresatelefone2: TStringField;
    qrEmpresamunicipio: TStringField;
    qrEmpresaestado: TStringField;
    qrUsuario: TFDQuery;
    qrUsuarioAcesso: TFDQuery;
    qrUsuarioid_usuario: TFDAutoIncField;
    qrUsuarionome_usuario: TStringField;
    qrUsuariologin: TStringField;
    qrUsuariosenha: TStringField;
    qrUsuarioacesso_id: TIntegerField;
    qrUsuarioAcessoid_acesso: TFDAutoIncField;
    qrUsuarioAcessonome_acesso: TStringField;
    qrUsuarioAcessocad_usuario: TStringField;
    qrUsuarioAcessocad_veiculo: TStringField;
    qrUsuarioAcessocad_cliente: TStringField;
    qrUsuarioAcessocad_bairro: TStringField;
    qrUsuarioAcessocad_municipio: TStringField;
    qrUsuarioAcessocad_estado: TStringField;
    qrUsuarioAcessonova_locacao: TStringField;
    qrUsuarioAcessocancela_locacao: TStringField;
    qrUsuarioAcessofinaliza_locacao: TStringField;
    qrUsuarioAcessorel_clientes: TStringField;
    qrUsuarioAcessorel_recibo: TStringField;
    qrUsuarioAcessorel_contrato: TStringField;
    qrUsuarioAcessoconfig: TStringField;
    dsUsuario: TDataSource;
    qrParametros: TFDQuery;
    dsParametros: TDataSource;
    qrUsuarioAcessocad_empresa: TStringField;
    qrUsuarioAcessocad_parametros: TStringField;
    frxDBDsEmpresa: TfrxDBDataset;
    frxDBDsParametros: TfrxDBDataset;
    qrUsuarioAcessocad_acesso_usuario: TStringField;
    qrUsuarioAcessorel_veiculos: TStringField;
    qrUsuarioAcessorel_locacoes: TStringField;
    qrUsuarioAcessodar_desconto_locacao: TStringField;
    qrUsuarioAcessoprc_desconto_locacao: TBCDField;
    qrUsuarioAcessoaltera_vl_diaria: TStringField;
    qrUsuarioempresa_id: TStringField;
    qrTemp: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    function readIni(xSecao:string; xChave:string; xPadrao:string):string;
    procedure ConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    EMPRESA_ID : Integer;
    procedure checkEmpresa;
    function login(xUsuario:string; xSenha:string;xEmpresa:string):Boolean;
    procedure load_parametros(xIdEmpresa:Integer);
    procedure atualizaBanco;


  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses App.Funcoes, FPrincipal;

{$R *.dfm}

procedure TDM.atualizaBanco;
begin
 if checkColuna('tb_usuario_acesso','config') then
 begin
    try
     Conn.ExecSQL('ALTER TABLE `tb_usuario_acesso`'+
                  ' ADD COLUMN `config` CHAR(1) NULL DEFAULT ''N''');
    except
     raise Exception.Create('Ocorreu um erro ao atualizar. Entre em contato com o suporte.');
    end;
 end;


 if checkColuna('tb_usuario_acesso','altera_vl_diaria') then
 begin
    try
     Conn.ExecSQL('ALTER TABLE `tb_usuario_acesso`'+
                  ' ADD COLUMN `altera_vl_diaria` CHAR(1) NULL DEFAULT ''N''');
    except
     raise Exception.Create('Ocorreu um erro ao atualizar. Entre em contato com o suporte.');
    end;
 end;

 if checkColuna('tb_usuarios','empresa_id') then
 begin
   try
     Conn.ExecSQL('ALTER TABLE `tb_usuarios` ADD COLUMN `empresa_id` VARCHAR(6) NULL AFTER `acesso_id`;');
   except
     raise Exception.Create('Ocorreu um erro ao atualizar. Entre em contato com o suporte.');
    end;
   end;


 if checkColuna('tb_usuario_acesso','rel_veiculos') then
 begin
    try
     Conn.ExecSQL('ALTER TABLE `tb_usuario_acesso`'+
                  ' ADD COLUMN `rel_veiculos` CHAR(1) NULL DEFAULT ''N''');
    except
     raise Exception.Create('Ocorreu um erro ao atualizar. Entre em contato com o suporte.');
    end;
 end;

 if checkColuna('tb_usuario_acesso','rel_locacoes') then
 begin
    try
     Conn.ExecSQL('ALTER TABLE `tb_usuario_acesso`'+
                  ' ADD COLUMN `rel_locacoes` CHAR(1) NULL DEFAULT ''N''');
    except
     raise Exception.Create('Ocorreu um erro ao atualizar. Entre em contato com o suporte.');
    end;
 end;

end;
procedure TDM.checkEmpresa;
begin

 qrEmpresa.Open;
 if not qrEmpresa.RecordCount > 0 then
 begin
  try
   Conn.ExecSQL('insert into tb_empresa(nome_razao)values(''Locadora'')');
   qrEmpresa.Open;
  finally

  end;
 end;
end;

procedure TDM.ConnBeforeConnect(Sender: TObject);
begin
 FDPhysMySQLDriverLink1.VendorLib :=  ExtractFilePath(Application.exename) + 'libmysql.dll';
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin

  Conn.Close;
  try

   Conn.Params.Clear;
   Conn.Params.Add('DriverID=MySQL');
   Conn.Params.Add('Database=' + readIni('CONEXAO','DATABASE','rent'));
   Conn.Params.Add('Port=' + readIni('CONEXAO','PORT','3306'));
   Conn.Params.Add('User_Name=' + readIni('CONEXAO','USERNAME','root'));
   Conn.Params.Add('Password=' + readIni('CONEXAO','PASSWORD','masterkey'));
   Conn.Params.Add('Server=' + readIni('CONEXAO','SERVER','localhost'));

   Conn.Connected                 := True;

  finally

  end;
   EMPRESA_ID := 0;

  


end;

procedure TDM.load_parametros(xIdEmpresa: Integer);

begin
 try
  qrParametros.Close;
  qrParametros.ParamByName('ID_').AsInteger := xIdEmpresa;
  qrParametros.Open;
  if qrParametros.RecordCount > 0  then
  begin
   if not qrParametros.FieldByName('img_fundo').IsNull then
     FrmPrincipal.img_fundo.Picture.Assign(TGraphicField((qrParametros.FieldByName('img_fundo') as TBlobField))) ;
  end
  else
   Conn.ExecSQL('insert into tb_parametros(empresa_id)values(' + IntToStr(xIdEmpresa) + ')');
 finally

 end;
end;

function TDM.login(xUsuario, xSenha,xEmpresa: string): Boolean;
begin
 qrUsuario.Close;
 qrUsuario.ParamByName('USUARIO').AsString := xUsuario;
 qrUsuario.Open;
 if qrUsuario.RecordCount > 0 then
 begin
    if qrUsuariosenha.AsString = xSenha then
    begin
       if (qrUsuarioempresa_id.AsString = xEmpresa) or (qrUsuarioempresa_id.AsString = '%') then
       begin
         EMPRESA_ID := StrToInt(xEmpresa);
         Result := True;
       end
       else Result := False;
    end
    else Result := False;
 end
 else
  Result := False;
end;

function TDM.readIni(xSecao, xChave, xPadrao: string): string;
var
arqIni:TIniFile;
begin

  try
    if FileExists(ExtractFilePath(Application.exename) + '\config.ini') then
      arqIni := TIniFile.Create(ExtractFilePath(Application.exename) + '\config.ini');
    Result := arqIni.ReadString(xSecao,xChave,xPadrao);
  finally
    FreeAndNil(arqIni);
  end;

end;

end.
