-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.33 - MySQL Community Server (GPL)
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para vando
CREATE DATABASE IF NOT EXISTS `vando` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vando`;

-- Copiando estrutura para tabela vando.tb_auditoria
CREATE TABLE IF NOT EXISTS `tb_auditoria` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_lancamento` date DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `tipo_operacao` varchar(100) DEFAULT NULL,
  `info_adcionais` text,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_auditoria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_auditoria` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_bairros
CREATE TABLE IF NOT EXISTS `tb_bairros` (
  `id_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `obs` varchar(120) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_bairros: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_bairros` DISABLE KEYS */;
INSERT INTO `tb_bairros` (`id_bairro`, `nome`, `obs`, `cep`, `municipio_id`) VALUES
	(106, 'AREAL', NULL, NULL, 1);
/*!40000 ALTER TABLE `tb_bairros` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_clientes
CREATE TABLE IF NOT EXISTS `tb_clientes` (
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
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_clientes: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` (`id_cliente`, `nome_razao`, `apelido_fantasia`, `telefone1`, `telefone2`, `cpf_cnpj`, `fl_tipo_pessoa`, `rg`, `rg_uf`, `rg_orgao_emisor`, `cnh`, `ref_nome_1`, `ref_contato_1`, `ref_nome_2`, `ref_contato_2`, `endereco`, `nu_endereco`, `cep`, `obs`, `fl_status`, `estado_id`, `municipio_id`, `bairro_id`, `insc_est`) VALUES
	(271, 'CAIO ALMEIDA', 'CAIO ALMEIDA', '6992270582', '6992270582', '92441920200', 'F', '770032', 'RO', 'SSP', '234165321564', NULL, NULL, NULL, NULL, 'RUA RIO DE JANEIRO', '1358', '76804033', NULL, 'A', 1, 1, 106, NULL),
	(272, 'JULIANA CAMURÇA', 'JULIANA CAMURÇA', NULL, NULL, '32612558496', 'F', '123456', 'RO', 'SSP', NULL, NULL, NULL, NULL, NULL, 'RUA CAPITAO ESRON DE MENEZES', '1433', '76804033', NULL, 'A', 1, 1, 106, NULL);
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_contas_receber
CREATE TABLE IF NOT EXISTS `tb_contas_receber` (
  `id_conta_receber` int(11) NOT NULL AUTO_INCREMENT,
  `id_locacao` int(11) DEFAULT NULL,
  `vl_total` decimal(10,2) DEFAULT NULL,
  `vl_recebido` decimal(10,2) DEFAULT NULL,
  `dt_pagamento` date DEFAULT NULL,
  PRIMARY KEY (`id_conta_receber`)
) ENGINE=InnoDB AUTO_INCREMENT=1094 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_contas_receber: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_contas_receber` DISABLE KEYS */;
INSERT INTO `tb_contas_receber` (`id_conta_receber`, `id_locacao`, `vl_total`, `vl_recebido`, `dt_pagamento`) VALUES
	(1089, 4, 70.00, 70.00, '2022-03-20'),
	(1090, 4, 70.00, 70.00, '2022-03-20'),
	(1091, 5, 350.00, 350.00, '2022-04-03'),
	(1092, 7, 800.00, 800.00, '2022-12-16'),
	(1093, 9, 200.00, 200.00, '2022-12-16');
/*!40000 ALTER TABLE `tb_contas_receber` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_empresa
CREATE TABLE IF NOT EXISTS `tb_empresa` (
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

-- Copiando dados para a tabela vando.tb_empresa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_empresa` DISABLE KEYS */;
INSERT INTO `tb_empresa` (`id_empresa`, `razao_social`, `nome_fantasia`, `cnpj`, `ins_est`, `endereco`, `nu_endereco`, `bairro`, `cep`, `telefone1`, `telefone2`, `municipio`, `estado`) VALUES
	(1, 'M L FREITAS MENDONCA LTDA ME', 'M L LOCADORA', '21667735000143', NULL, 'AV AMAZONAS', '2245', 'AGENOR DE CARVALHO', '76820163', '69992341152', NULL, 'PORTO VELHO', 'RO');
/*!40000 ALTER TABLE `tb_empresa` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_estados
CREATE TABLE IF NOT EXISTS `tb_estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `obs` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_estados: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_estados` DISABLE KEYS */;
INSERT INTO `tb_estados` (`id_estado`, `nome`, `uf`, `obs`) VALUES
	(1, 'RONDONIA', 'RO', NULL),
	(2, 'PARANA', 'PR', NULL),
	(3, 'AMAZONAS', 'AM', NULL),
	(4, 'BAHIA', 'BA', NULL),
	(5, 'CEARA', 'CE', NULL);
/*!40000 ALTER TABLE `tb_estados` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_locacao
CREATE TABLE IF NOT EXISTS `tb_locacao` (
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
  `pc_desconto` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_locacao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_locacao: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_locacao` DISABLE KEYS */;
INSERT INTO `tb_locacao` (`id_locacao`, `data_abertura`, `data_retorno`, `fl_situacao`, `cliente_id`, `cliente_fone`, `veiculo_id`, `km_abertura`, `km_fechamento`, `vl_diaria`, `vl_desconto`, `vl_subtotal`, `vl_total`, `obs`, `pc_desconto`) VALUES
	(1, '2022-03-20', '2022-03-23', 0, 271, '6992270582', 43, '', NULL, 120.00, 60.00, 360.00, 300.00, 'NADA COM NADA', 16.67),
	(2, '2022-03-20', '2022-03-24', 0, 272, '', 44, '', NULL, 35.00, 0.00, 140.00, 140.00, '', 0.00),
	(3, '2022-03-20', '2022-03-21', 0, 272, '', 44, '', NULL, 35.00, 0.00, 70.00, 70.00, '', 0.00),
	(4, '2022-03-20', '2022-03-21', 2, 272, '', 44, '', NULL, 35.00, 0.00, 70.00, 70.00, '', 0.00),
	(5, '2022-04-03', '2022-04-13', 1, 271, '6992270582', 44, '2150', NULL, 35.00, 0.00, 350.00, 350.00, '', 0.00),
	(6, '2022-10-29', '2022-10-30', 0, 271, '6992270582', 44, '12233333', NULL, 35.00, 0.00, 70.00, 70.00, '', 0.00),
	(7, '2022-12-16', '2022-12-23', 2, 272, '', 43, '', NULL, 120.00, 40.00, 840.00, 800.00, 'TANQUE CHEIO E LAVADO\r\nRETORNAR NA MESMA CONDIÇÃO', 4.76),
	(8, '2022-12-16', '2022-12-17', 1, 272, '', 43, '8783828', NULL, 120.00, 0.00, 240.00, 240.00, 'TANQUE CHEIO', 0.00),
	(9, '2022-12-16', '2022-12-17', 2, 272, '', 43, '8783828', NULL, 120.00, 40.00, 240.00, 200.00, 'RETORNO DA MESMA FORMA DE RETIRADA', 16.67);
/*!40000 ALTER TABLE `tb_locacao` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_municipios
CREATE TABLE IF NOT EXISTS `tb_municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `sigla` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_municipios: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_municipios` DISABLE KEYS */;
INSERT INTO `tb_municipios` (`id_municipio`, `nome`, `estado_id`, `sigla`) VALUES
	(1, 'PORTO VELHO', 1, NULL),
	(2, 'JI PARANA', 1, NULL),
	(3, 'PRESIDENTE MEDICI', 1, NULL),
	(4, 'SAO FRANCISCO DO GUAPORE', 1, NULL),
	(5, 'ARIQUEMES', 1, NULL),
	(6, 'ASSIS CHATEAUBRIAND', 2, NULL),
	(7, 'MANAUS', 3, NULL),
	(8, 'FEIRA DE SANTANA', 4, NULL),
	(9, 'OURO PRETO DO OESTE', 1, NULL),
	(10, 'ALVORADA DO OESTE', 1, NULL),
	(11, 'FORTALEZA', 5, NULL),
	(12, 'CANDEIAS DO JAMARI', 1, NULL),
	(13, 'ROLÃ?NDIA', 2, NULL),
	(14, 'COSTA MARQUES', 1, NULL),
	(15, 'GUAJARA MIRIM', 1, NULL),
	(16, 'SANTO ANTONIO DO MATUPI', 3, NULL);
/*!40000 ALTER TABLE `tb_municipios` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_parametros
CREATE TABLE IF NOT EXISTS `tb_parametros` (
  `id_paramentros` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) DEFAULT NULL,
  `img_fundo` blob,
  `img_locacao` blob,
  PRIMARY KEY (`id_paramentros`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_parametros: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_parametros` DISABLE KEYS */;
INSERT INTO `tb_parametros` (`id_paramentros`, `empresa_id`, `img_fundo`, `img_locacao`) VALUES
	(1, 1, NULL, NULL),
	(2, 0, NULL, NULL);
/*!40000 ALTER TABLE `tb_parametros` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_usuarios
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `empresa_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` (`id_usuario`, `nome_usuario`, `login`, `senha`, `acesso_id`, `empresa_id`) VALUES
	(1, 'Admin', 'ADMIN', '123456', 1, '%'),
	(2, 'VENDEDOR', 'VENDEDOR', '123', 2, '01'),
	(4, 'LOCADORA', 'LOCADORA', '123', 1, '%');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_usuario_acesso
CREATE TABLE IF NOT EXISTS `tb_usuario_acesso` (
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
  `rel_veiculos` char(1) DEFAULT 'N',
  `rel_locacoes` char(1) DEFAULT 'N',
  `dar_desconto_locacao` char(1) DEFAULT 'N',
  `prc_desconto_locacao` decimal(10,2) DEFAULT '0.00',
  `altera_vl_diaria` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_acesso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_usuario_acesso: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_usuario_acesso` DISABLE KEYS */;
INSERT INTO `tb_usuario_acesso` (`id_acesso`, `nome_acesso`, `cad_usuario`, `cad_veiculo`, `cad_cliente`, `cad_bairro`, `cad_municipio`, `cad_estado`, `nova_locacao`, `cancela_locacao`, `finaliza_locacao`, `rel_clientes`, `rel_recibo`, `rel_contrato`, `config`, `cad_empresa`, `cad_parametros`, `cad_acesso_usuario`, `rel_veiculos`, `rel_locacoes`, `dar_desconto_locacao`, `prc_desconto_locacao`, `altera_vl_diaria`) VALUES
	(1, 'ADMIN', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 100.00, 'X'),
	(2, 'VENDEDOR', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'N', 'X', 'X', 'X', 'X', 'N', 'X', 'X', 'X', 'X', 'N', 'X', 100.00, 'X');
/*!40000 ALTER TABLE `tb_usuario_acesso` ENABLE KEYS */;

-- Copiando estrutura para tabela vando.tb_veiculos
CREATE TABLE IF NOT EXISTS `tb_veiculos` (
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vando.tb_veiculos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_veiculos` DISABLE KEYS */;
INSERT INTO `tb_veiculos` (`id_veiculo`, `descricao`, `fl_combustivel`, `ano_veiculo`, `cor_veiculo`, `marca_veiculo`, `placa`, `chassis`, `valor_veiculo`, `km_compra`, `km_atual`, `data_cadastro`, `fl_tipo_veiculo`, `fl_locacao`, `fl_status_veiculo`, `vl_diaria`, `modelo_veiculo`) VALUES
	(43, 'KIA CERATO', 'GASOLINA', '2010', 'PRATA', 'KIA', 'NBK-0310', NULL, 30000.00, NULL, '12098310', '2022-03-20', 'CARRO', 'N', 'USADO', 120.00, '2010/2010'),
	(44, 'BIZ AZUL', 'FLEX', '2015', 'AZUL', 'HONDA', 'NBB-9695', NULL, NULL, NULL, '12233333', '2022-03-20', 'MOTOCICLETA', 'S', 'SEMINOVO', 35.00, '2015/2015');
/*!40000 ALTER TABLE `tb_veiculos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
