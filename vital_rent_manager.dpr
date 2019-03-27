program vital_rent_manager;

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {FrmPrincipal},
  FCadVericulo in 'FCadVericulo.pas' {FrmCadVeiculo},
  PageControlEx in 'TDI\PageControlEx.pas',
  TabCloseButton in 'TDI\TabCloseButton.pas',
  TDI in 'TDI\TDI.pas',
  VisualizaImagensDasGuiasAbertas in 'TDI\VisualizaImagensDasGuiasAbertas.pas',
  FDM in 'FDM.pas' {DM: TDataModule},
  FCadCliente in 'FCadCliente.pas' {FrmCadCliente},
  FLocacao in 'FLocacao.pas' {FrmLocacao},
  App.Funcoes in 'App.Funcoes.pas',
  App.Constantes in 'App.Constantes.pas',
  FCadEstado in 'FCadEstado.pas' {FrmCadEstado},
  FCadMunicipio in 'FCadMunicipio.pas' {FrmCadMunicipio},
  FCadBairro in 'FCadBairro.pas' {FrmCadBairro},
  FVeiculosDisponivel in 'FVeiculosDisponivel.pas' {FrmVeiculoDisponivel},
  FListaClientes in 'FListaClientes.pas' {FrmListaClientes},
  FRetorno in 'FRetorno.pas' {FrmRetorno},
  FDevolucao in 'FDevolucao.pas' {FrmDevolucao},
  FLocLocacao in 'FLocLocacao.pas' {FrmLocLocacao},
  App.FExtenso in 'App.FExtenso.pas',
  FRelClientes in 'FRelClientes.pas' {FrmRelClientes},
  FRelContrato in 'FRelContrato.pas' {FrmRelContrato},
  FRelRecibo in 'FRelRecibo.pas' {FrmRelRecibo},
  FCadEmpresa in 'FCadEmpresa.pas' {FrmCadEmpresa},
  Flogin in 'Flogin.pas' {FrmLogin},
  FCadUsuario in 'FCadUsuario.pas' {FrmCadUsuario},
  FAlteraSenha in 'FAlteraSenha.pas' {FrmAlteraSenha},
  FAcessoUsuarios in 'FAcessoUsuarios.pas' {FrmAcessoUsuarios},
  FParametros in 'FParametros.pas' {FrmParametros},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
