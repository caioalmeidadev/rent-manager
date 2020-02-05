unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxRibbonCustomizationForm,
  dxSkinsForm, System.ImageList, Vcl.ImgList, cxImageList, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  dxStatusBar,TDI, dxRibbon,dxSkinOffice2013White, Vcl.ExtCtrls,
  dxGDIPlusClasses, dxSkinsDefaultPainters;

type
  TFrmPrincipal = class(TForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxStatusBar1: TdxStatusBar;
    ActionManager1: TActionManager;
    cad_clientes: TAction;
    cad_veiculo: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    imgs32x32: TcxImageList;
    dxSkinController1: TdxSkinController;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxRibbon1Tab2: TdxRibbonTab;
    btn_cad_clientes: TdxBarLargeButton;
    btn_cad_veiculos: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    locar_veiculo: TAction;
    devolver_veiculo: TAction;
    retorno_veiculo: TAction;
    btn_locar: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    btn_devolver: TdxBarLargeButton;
    btn_lista_veiculos: TdxBarLargeButton;
    veiculos_disponiveis: TAction;
    cad_municipios: TAction;
    cad_estados: TAction;
    cad_bairros: TAction;
    btn_cad_estados: TdxBarButton;
    btn_cad_municipios: TdxBarButton;
    btn_cad_bairros: TdxBarButton;
    imgs16x16: TcxImageList;
    cad_empresa: TAction;
    sys_config: TAction;
    img_fundo: TImage;
    Shape1: TShape;
    btn_cad_empresa: TdxBarLargeButton;
    btn_config: TdxBarLargeButton;
    rel_contrato: TAction;
    rel_recibo: TAction;
    rel_clientes: TAction;
    dxBarManager1Bar6: TdxBar;
    cad_usuarios: TAction;
    cad_perfil_usuario: TAction;
    cad_senha: TAction;
    btn_cad_usuario: TdxBarLargeButton;
    btn_cad_acesso: TdxBarLargeButton;
    btn_altera_senha: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    btn_rel_contrato: TdxBarLargeButton;
    btn_rel_recibo: TdxBarLargeButton;
    btn_rel_locacoes: TdxBarLargeButton;
    btn_rel_clientes: TdxBarLargeButton;
    rel_locacoes: TAction;
    rel_veiculos: TAction;
    btn_rel_veiculos: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure cad_veiculoExecute(Sender: TObject);
    procedure cad_estadosExecute(Sender: TObject);
    procedure cad_municipiosExecute(Sender: TObject);
    procedure cad_bairrosExecute(Sender: TObject);
    procedure locar_veiculoExecute(Sender: TObject);
    procedure cad_clientesExecute(Sender: TObject);
    procedure veiculos_disponiveisExecute(Sender: TObject);
    procedure retorno_veiculoExecute(Sender: TObject);
    procedure rel_clientesExecute(Sender: TObject);
    procedure devolver_veiculoExecute(Sender: TObject);
    procedure rel_contratoExecute(Sender: TObject);
    procedure rel_reciboExecute(Sender: TObject);
    procedure configura_acesso;
    procedure cad_senhaExecute(Sender: TObject);
    procedure cad_usuariosExecute(Sender: TObject);
    procedure cad_perfil_usuarioExecute(Sender: TObject);
    procedure cad_empresaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sys_configExecute(Sender: TObject);
    procedure rel_locacoesExecute(Sender: TObject);

    procedure rel_veiculosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    USUARIO_LOGADO:Boolean;
  end;

var
  FrmPrincipal: TFrmPrincipal;
  FTDI : TTDI;

implementation

{$R *.dfm}

uses FCadVericulo,FDM, App.Constantes, App.Funcoes, FCadCliente, FCadEstado,
  FLocacao,FCadMunicipio,FCadBairro, FVeiculosDisponivel, FRetorno, FDevolucao,
  FRelClientes, FRelContrato, FRelRecibo, Flogin, FCadEmpresa, FAlteraSenha,
  FCadUsuario, FAcessoUsuarios, FParametros, FRelLocacoes, FRelVeiculos;


procedure TFrmPrincipal.cad_bairrosExecute(Sender: TObject);
begin
  FTDI.MostrarFormulario(TFrmCadBairro,False);
end;

procedure TFrmPrincipal.cad_clientesExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmCadCliente,False);
end;

procedure TFrmPrincipal.cad_empresaExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmCadEmpresa,False);
end;

procedure TFrmPrincipal.cad_estadosExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmCadEstado,False);
end;

procedure TFrmPrincipal.cad_municipiosExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmCadMunicipio,False);
end;

procedure TFrmPrincipal.cad_perfil_usuarioExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmAcessoUsuarios,false);
end;

procedure TFrmPrincipal.cad_senhaExecute(Sender: TObject);
begin
 if not Assigned(FrmAlteraSenha) then
  FrmAlteraSenha := TFrmAlteraSenha.Create(Self);
 FrmAlteraSenha.ShowModal;
 FreeAndNil(FrmAlteraSenha);
end;

procedure TFrmPrincipal.cad_usuariosExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmCadUsuario,False);
end;

procedure TFrmPrincipal.cad_veiculoExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmCadVeiculo,False);
end;

procedure TFrmPrincipal.configura_acesso;
begin
  with DM do
  begin
    qrUsuarioAcesso.Close;
    qrUsuarioAcesso.Open;
    if qrUsuarioAcesso.RecordCount > 0 then
    begin

     btn_cad_clientes.Enabled      := qrUsuarioAcesso.FieldByName('cad_cliente').AsString = 'X';
     btn_cad_veiculos.Enabled      := qrUsuarioAcesso.FieldByName('cad_veiculo').AsString = 'X';
     btn_cad_usuario.Enabled       := qrUsuarioAcesso.FieldByName('cad_usuario').AsString = 'X';
     btn_cad_empresa.Enabled       := qrUsuarioAcesso.FieldByName('cad_empresa').AsString = 'X';
     btn_cad_acesso.Enabled        := qrUsuarioAcesso.FieldByName('cad_acesso_usuario').AsString = 'X';
     btn_cad_estados.Enabled       := qrUsuarioAcesso.FieldByName('cad_estado').AsString = 'X';
     btn_cad_municipios.Enabled    := qrUsuarioAcesso.FieldByName('cad_municipio').AsString = 'X';
     btn_cad_bairros.Enabled       := qrUsuarioAcesso.FieldByName('cad_bairro').AsString = 'X';

     btn_locar.Enabled             := qrUsuarioAcesso.FieldByName('nova_locacao').AsString = 'X';
     btn_devolver.Enabled          := qrUsuarioAcesso.FieldByName('cancela_locacao').AsString = 'X';
     btn_lista_veiculos.Enabled    := True; //qrUsuarioAcesso.FieldByName('').AsString = 'X';


     btn_rel_contrato.Enabled      := qrUsuarioAcesso.FieldByName('rel_contrato').AsString = 'X';
     btn_rel_recibo.Enabled        := qrUsuarioAcesso.FieldByName('rel_recibo').AsString = 'X';
     btn_rel_clientes.Enabled      := qrUsuarioAcesso.FieldByName('rel_clientes').AsString = 'X';
     btn_rel_locacoes.Enabled      := qrUsuarioAcesso.FieldByName('rel_locacoes').AsString = 'X';
     btn_rel_veiculos.Enabled      := qrUsuarioAcesso.FieldByName('rel_veiculos').AsString = 'X';

     btn_config.Enabled            := qrUsuarioAcesso.FieldByName('config').AsString = 'X';
     btn_altera_senha.Enabled      := True;
    end;

  end;
end;

procedure TFrmPrincipal.devolver_veiculoExecute(Sender: TObject);
begin
  if not Assigned(FrmDevolucao) then

   FrmDevolucao := TFrmDevolucao.Create(Self,-1);
 FrmDevolucao.ShowModal;
 FreeAndNil(FrmDevolucao);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FTDI := TTDI.Create(Self,nil);
  FTDI.MostrarMenuPopup := False;

  if not Assigned(DM) then
    DM := TDM.Create(Self);

  DM.atualizaBanco;
  DM.checkEmpresa;


  USUARIO_LOGADO := False;


  if not Assigned(FrmLogin) then
   FrmLogin := TFrmLogin.Create(Self);
  FrmLogin.ShowModal;
  FreeAndNil(FrmLogin);

  configura_acesso;
  DM.load_parametros(DM.EMPRESA_ID);
  if not USUARIO_LOGADO then
  begin
    ShowMessage('Usuário não logado! Fechamando o sistema.');
    Application.Terminate;
  end;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
 dxRibbon1.ActiveTab := dxRibbon1Tab1;
 FrmPrincipal.Caption := FrmPrincipal.Caption + ' ' + SYSTEM_VERSION;
 if USUARIO_LOGADO then
 begin
   dxStatusBar1.Panels.Items[0].Text := 'Usuário: ' + DM.qrUsuariologin.AsString;
   dxStatusBar1.Panels.Items[1].Text := 'Servidor: ' + DM.Conn.Params.Values['Server'];
   dxStatusBar1.Panels.Items[2].Text := 'Empresa: ' + DM.qrEmpresarazao_social.AsString;
 end;
end;

procedure TFrmPrincipal.locar_veiculoExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmLocacao,False);
end;

procedure TFrmPrincipal.rel_clientesExecute(Sender: TObject);
begin
 if not Assigned(FrmRelClientes) then
  FrmRelClientes := TFrmRelClientes.Create(Self);
 FrmRelClientes.ShowModal;
 FreeAndNil(FrmRelClientes);
end;

procedure TFrmPrincipal.rel_contratoExecute(Sender: TObject);
begin
 if not Assigned(FrmRelContrato) then
  FrmRelContrato := TFrmRelContrato.Create(Self);
 FrmRelContrato.ShowModal;
 FreeAndNil(FrmRelContrato);
end;

procedure TFrmPrincipal.rel_locacoesExecute(Sender: TObject);
begin
  FTDI.MostrarFormulario(TFrmRelLocacoes,False);
end;

procedure TFrmPrincipal.rel_reciboExecute(Sender: TObject);
begin
 if not Assigned(FrmRelRecibo) then
  FrmRelRecibo := TFrmRelRecibo.Create(Self);
 FrmRelRecibo.ShowModal;
end;

procedure TFrmPrincipal.rel_veiculosExecute(Sender: TObject);
begin
 if not Assigned(FrmRelVeiculo) then
  FrmRelVeiculo := TFrmRelVeiculo.Create(Self);
 FrmRelVeiculo.ShowModal;
end;

procedure TFrmPrincipal.retorno_veiculoExecute(Sender: TObject);
begin
  FTDI.MostrarFormulario(TFrmRetorno,False);
end;

procedure TFrmPrincipal.sys_configExecute(Sender: TObject);
begin
 FTDI.MostrarFormulario(TFrmParametros,False);
end;

procedure TFrmPrincipal.veiculos_disponiveisExecute(Sender: TObject);
begin
   try
   if not Assigned(FrmVeiculoDisponivel) then
    FrmVeiculoDisponivel := TFrmVeiculoDisponivel.Create(nil);
   FrmVeiculoDisponivel.ShowModal;
   finally
     FreeAndNil(FrmVeiculoDisponivel);
   end;
end;

end.
