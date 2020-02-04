## Banco de Dados para Vital Rent Manager
## Criar banco de dados antes


## Tabelas

CREATE TABLE `tb_auditoria` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_lancamento` date DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `tipo_operacao` varchar(100) DEFAULT NULL,
  `info_adcionais` text,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_bairros` (
  `id_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `obs` varchar(120) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_razao` varchar(120) DEFAULT NULL,
  `apelido_fantasia` varchar(120) DEFAULT NULL,
  `telefone1` varchar(14) DEFAULT NULL,
  `telefone2` varchar(14) DEFAULT NULL,
  `cpf_cnpj` varchar(14) DEFAULT NULL,
  `fl_tipo_pessoa` char(1) DEFAULT NULL,
  `rg` varchar(12) DEFAULT NULL,
  `rg_uf` varchar(2) DEFAULT NULL,
  `rg_orgao_emisor` varchar(45) DEFAULT NULL,
  `cnh` varchar(45) DEFAULT NULL,
  `ref_nome_1` varchar(120) DEFAULT NULL,
  `ref_contato_1` varchar(14) DEFAULT NULL,
  `ref_nome_2` varchar(120) DEFAULT NULL,
  `ref_contato_2` varchar(14) DEFAULT NULL,
  `endereco` varchar(160) DEFAULT NULL,
  `nu_endereco` varchar(8) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `obs` varchar(160) DEFAULT NULL,
  `fl_status` char(1) DEFAULT 'A',
  `estado_id` int(11) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  `bairro_id` int(11) DEFAULT NULL,
  `insc_est` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contas_receber` (
  `id_conta_receber` int(11) NOT NULL AUTO_INCREMENT,
  `id_locacao` int(11) DEFAULT NULL,
  `vl_total` decimal(10,2) DEFAULT NULL,
  `vl_recebido` decimal(10,2) DEFAULT NULL,
  `dt_pagamento` date DEFAULT NULL,
  PRIMARY KEY (`id_conta_receber`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `razao_social` varchar(120) DEFAULT NULL,
  `nome_fantasia` varchar(80) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `ins_est` varchar(14) DEFAULT NULL,
  `endereco` varchar(160) DEFAULT NULL,
  `nu_endereco` varchar(8) DEFAULT NULL,
  `bairro` varchar(80) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `telefone1` varchar(12) DEFAULT NULL,
  `telefone2` varchar(12) DEFAULT NULL,
  `municipio` varchar(80) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `obs` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_locacao` (
  `id_locacao` int(11) NOT NULL AUTO_INCREMENT,
  `data_abertura` date DEFAULT NULL,
  `data_retorno` date DEFAULT NULL,
  `fl_situacao` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `cliente_fone` varchar(14) DEFAULT NULL,
  `veiculo_id` int(11) DEFAULT NULL,
  `km_abertura` varchar(10) DEFAULT NULL,
  `km_fechamento` varchar(10) DEFAULT NULL,
  `vl_diaria` decimal(12,2) DEFAULT NULL,
  `vl_desconto` decimal(12,2) DEFAULT NULL,
  `vl_subtotal` decimal(12,2) DEFAULT NULL,
  `vl_total` decimal(12,2) DEFAULT NULL,
  `obs` text,
  PRIMARY KEY (`id_locacao`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `sigla` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_parametros` (
  `id_paramentros` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) DEFAULT NULL,
  `img_fundo` blob,
  `img_locacao` blob,
  PRIMARY KEY (`id_paramentros`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_usuario_acesso` (
  `id_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_acesso` varchar(50) DEFAULT 'N',
  `cad_usuario` char(1) DEFAULT 'N',
  `cad_veiculo` char(1) DEFAULT 'N',
  `cad_cliente` char(1) DEFAULT 'N',
  `cad_bairro` char(1) DEFAULT 'N',
  `cad_municipio` char(1) DEFAULT 'N',
  `cad_estado` char(1) DEFAULT 'N',
  `nova_locacao` char(1) DEFAULT 'N',
  `cancela_locacao` char(1) DEFAULT 'N',
  `finaliza_locacao` char(1) DEFAULT 'N',
  `rel_clientes` char(1) DEFAULT 'N',
  `rel_recibo` char(1) DEFAULT 'N',
  `rel_contrato` char(1) DEFAULT 'N',
  `config` char(1) DEFAULT 'N',
  `cad_empresa` char(1) DEFAULT 'N',
  `cad_parametros` char(1) DEFAULT 'N',
  `cad_acesso_usuario` char(1) DEFAULT 'N',
  PRIMARY KEY (`id_acesso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_veiculos` (
  `id_veiculo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) DEFAULT NULL,
  `fl_combustivel` varchar(15) DEFAULT NULL,
  `ano_veiculo` varchar(10) DEFAULT NULL,
  `cor_veiculo` varchar(45) DEFAULT NULL,
  `marca_veiculo` varchar(45) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `chassis` varchar(45) DEFAULT NULL,
  `valor_veiculo` decimal(10,2) DEFAULT NULL,
  `km_compra` varchar(45) DEFAULT NULL,
  `km_atual` varchar(45) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `fl_tipo_veiculo` varchar(45) DEFAULT NULL,
  `fl_locacao` char(1) DEFAULT 'N',
  `fl_status_veiculo` varchar(45) DEFAULT NULL,
  `vl_diaria` decimal(10,2) DEFAULT NULL,
  `modelo_veiculo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

## Views

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_clientes` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nome_razao` AS `nome_razao`,`c`.`apelido_fantasia` AS `apelido_fantasia`,`c`.`telefone1` AS `telefone1`,`c`.`telefone2` AS `telefone2`,`c`.`cpf_cnpj` AS `cpf_cnpj`,`c`.`fl_tipo_pessoa` AS `fl_tipo_pessoa`,`c`.`rg` AS `rg`,`c`.`rg_uf` AS `rg_uf`,`c`.`rg_orgao_emisor` AS `rg_orgao_emisor`,`c`.`cnh` AS `cnh`,`c`.`ref_nome_1` AS `ref_nome_1`,`c`.`ref_contato_1` AS `ref_contato_1`,`c`.`ref_nome_2` AS `ref_nome_2`,`c`.`ref_contato_2` AS `ref_contato_2`,`c`.`endereco` AS `endereco`,`c`.`nu_endereco` AS `nu_endereco`,`c`.`cep` AS `cep`,`c`.`obs` AS `obs`,`c`.`fl_status` AS `fl_status`,`c`.`estado_id` AS `estado_id`,`c`.`municipio_id` AS `municipio_id`,`c`.`bairro_id` AS `bairro_id`,`c`.`insc_est` AS `insc_est`,`e`.`nome` AS `estado`,`e`.`uf` AS `uf`,`m`.`nome` AS `municipio`,`b`.`nome` AS `bairro` from (((`tb_clientes` `c` left join `tb_estados` `e` on((`c`.`estado_id` = `e`.`id_estado`))) left join `tb_municipios` `m` on((`c`.`municipio_id` = `m`.`id_municipio`))) left join `tb_bairros` `b` on((`c`.`bairro_id` = `b`.`id_bairro`)));

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_contrato` AS select `c`.`nome_razao` AS `nome_razao`,`c`.`endereco` AS `endereco`,`c`.`nu_endereco` AS `nu_endereco`,`c`.`telefone1` AS `telefone1`,`c`.`telefone2` AS `telefone2`,`c`.`rg` AS `rg`,`c`.`cpf_cnpj` AS `cpf_cnpj`,`c`.`cnh` AS `cnh`,`v`.`marca_veiculo` AS `marca_veiculo`,`v`.`cor_veiculo` AS `cor_veiculo`,`v`.`placa` AS `placa`,`v`.`chassis` AS `chassis`,`v`.`descricao` AS `descricao`,`l`.`data_abertura` AS `data_abertura`,`l`.`data_retorno` AS `data_retorno`,`v`.`valor_veiculo` AS `valor_veiculo`,`l`.`obs` AS `obs`,`l`.`id_locacao` AS `id_locacao`,`c`.`id_cliente` AS `id_cliente`,`v`.`id_veiculo` AS `id_veiculo`,`v`.`fl_tipo_veiculo` AS `fl_tipo_veiculo`,`b`.`nome` AS `bairro` from (((`tb_locacao` `l` left join `tb_veiculos` `v` on((`l`.`veiculo_id` = `v`.`id_veiculo`))) left join `tb_clientes` `c` on((`l`.`cliente_id` = `c`.`id_cliente`))) left join `tb_bairros` `b` on((`c`.`bairro_id` = `b`.`id_bairro`)));

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_locacoes` AS select `l`.`id_locacao` AS `id_locacao`,`l`.`data_abertura` AS `data_abertura`,`l`.`data_retorno` AS `data_retorno`,`l`.`cliente_fone` AS `cliente_fone`,`l`.`vl_diaria` AS `vl_diaria`,`l`.`vl_total` AS `vl_total`,`l`.`km_abertura` AS `km_abertura`,`l`.`km_fechamento` AS `km_fechamento`,`l`.`obs` AS `obs`,`l`.`fl_situacao` AS `fl_situacao`,(case when (`l`.`fl_situacao` = 0) then 'ABERTA' when (`l`.`fl_situacao` = 1) then 'CANCELADA' when (`l`.`fl_situacao` = 2) then 'FECHADA' end) AS `fl_situacao_nome`,`v`.`placa` AS `placa`,`v`.`descricao` AS `veiculo_descricao`,`c`.`nome_razao` AS `cliente_nome`,`l`.`veiculo_id` AS `veiculo_id`,`l`.`cliente_id` AS `cliente_id`,(to_days(`l`.`data_retorno`) - to_days(`l`.`data_abertura`)) AS `qtde_dias` from ((`tb_locacao` `l` left join `tb_clientes` `c` on((`l`.`cliente_id` = `c`.`id_cliente`))) left join `tb_veiculos` `v` on((`l`.`veiculo_id` = `v`.`id_veiculo`)));

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_recibo` AS select `c`.`nome_razao` AS `nome_razao`,`c`.`endereco` AS `endereco`,`c`.`nu_endereco` AS `nu_endereco`,`l`.`vl_total` AS `vl_total`,`v`.`placa` AS `placa`,`v`.`chassis` AS `chassis`,`l`.`id_locacao` AS `id_locacao`,`l`.`cliente_id` AS `cliente_id`,`l`.`veiculo_id` AS `veiculo_id` from ((`tb_locacao` `l` join `tb_clientes` `c`) join `tb_veiculos` `v`) where ((`l`.`cliente_id` = `c`.`id_cliente`) and (`l`.`veiculo_id` = `v`.`id_veiculo`));

## Store Procedures

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_altera_status_veiculo`(in id_veiculo_att integer, in fl_loc char(1))
BEGIN
  update tb_veiculos set fl_locacao = fl_loc where id_veiculo = id_veiculo_att;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_atualiza_km`(in id_veiculo_att integer,in km_novo varchar(45))
BEGIN
 update tb_veiculos set km_atual = km_novo where id_veiculo = id_veiculo_att;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_devolucao`(in id_loc int , in mot_cancelamento varchar(120))
BEGIN
 update tb_locacao set obs = mot_cancelamento where id_locacao = id_loc;
 update tb_locacao set fl_situacao = 1 where id_locacao = id_loc;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_finaliza_locacao`(in vl_total_ decimal(10,2), in id_loc int, in vl_pago decimal(10,2))
BEGIN

update tb_locacao set fl_situacao = 2 where id_locacao = id_loc;

insert into tb_contas_receber (vl_total,vl_recebido,dt_pagamento,id_locacao)values(vl_total_,vl_pago,now(),id_loc);
END$$
DELIMITER ;
