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
    sp_atualiza_km: TFDStoredProc;
    sp_altera_status_veiculo: TFDStoredProc;
    sp_devolucao: TFDStoredProc;
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
    sp_finaliza_locacao: TFDStoredProc;
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
    procedure DataModuleCreate(Sender: TObject);
    function readIni(xSecao:string; xChave:string; xPadrao:string):string;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure checkEmpresa;
    function login(xUsuario:string; xSenha:string):Boolean;
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

 if not checkColuna('tb_usuario_acesso','rel_locacoes') then
 begin
    try
     Conn.ExecSQL('ALTER TABLE `sisloc`.`tb_usuario_acesso`'+
                  ' ADD COLUMN `rel_veiculos` CHAR(1) NULL DEFAULT ''N'' ,' +
                  ' ADD COLUMN `rel_locacoes` CHAR(1) NULL DEFAULT ''N'' ,' +
                  ' ADD COLUMN `altera_vl_desconto` CHAR(1) NULL DEFAULT ''N'', ' +
                  ' ADD COLUMN `dar_desconto_locacao` CHAR(1) NULL DEFAULT ''N'',' +
                  ' ADD COLUMN `prc_desconto_locacao` DECIMAL(10,2) NULL DEFAULT 0');
    except
     raise Exception.Create('Ocorreu um erro ao criar as colunas da versão 1.5');
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

procedure TDM.DataModuleCreate(Sender: TObject);
begin

  Conn.Close;
  try
   Conn.Params.Values['Server']   := readIni('CONEXAO','SERVER','localhost');
   Conn.Params.Values['Database'] := readIni('CONEXAO','DATABASE','sisloc');
   Conn.Connected                 := True;

  finally

  end;


  


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

function TDM.login(xUsuario, xSenha: string): Boolean;
begin
 qrUsuario.Close;
 qrUsuario.ParamByName('USUARIO').AsString := xUsuario;
 qrUsuario.Open;
 if qrUsuario.RecordCount > 0 then
 begin
   Result := qrUsuariosenha.AsString = xSenha;
 end
 else
  Result := False;
end;

function TDM.readIni(xSecao, xChave, xPadrao: string): string;
var
arqIni:TIniFile;
begin

  try
    if FileExists(ExtractFilePath(Application.exename) + '\vital_rent_manager.ini') then
      arqIni := TIniFile.Create(ExtractFilePath(Application.exename) + '\vital_rent_manager.ini');
    Result := arqIni.ReadString(xSecao,xChave,xPadrao);
  finally
    FreeAndNil(arqIni);
  end;

end;

end.
